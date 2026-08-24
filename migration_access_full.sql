-- ============================================================
-- 權限設定（完整版，一次執行完）
--
-- 這份包含了 migration_page_access.sql 與 migration_access_v2.sql 的全部內容，
-- 可重複執行。已經跑過其中一份也沒關係，直接跑這份即可。
--
-- 執行後的結果
--   ruby.hsieh@united-link.com.tw   管理者，看得到全部、可編輯全部
--   @north.com.tw 任何人            看得到 1234 全部分頁，可填寫維護排程
--   @united-link.com.tw 任何人      看得到 1234 全部分頁，可填寫維護排程
--   tony.kuo@neutec.com.tw          只看得到 Maintenance Schedule，可填寫
--   其他                             擋在登入牆外，什麼都看不到
--
-- 前提：schema.sql、schema_maintenance.sql、migration_manual_files.sql、
--       migration_add_section.sql 都已經執行過。
-- ============================================================


-- ============================================================
-- 一、誰是管理者
-- ============================================================
create or replace function public.is_admin()
returns boolean language sql stable security definer set search_path = public as $$
  select coalesce(
    lower(auth.jwt() ->> 'email') in (
      'ruby.hsieh@united-link.com.tw'
    ), false)
$$;

comment on function public.is_admin is '管理者：可以動所有資料。改名單就改這個函式。';


-- ============================================================
-- 二、誰進得來（登入牆）
--   ★ 這份規則要跟 index.html 的 STAFF_DOMAINS / STAFF_EXTRA 一致 ★
-- ============================================================
create or replace function public.is_staff()
returns boolean language sql stable security definer set search_path = public as $$
  select public.is_admin() or coalesce(
       lower(auth.jwt() ->> 'email') like '%@north.com.tw'
    or lower(auth.jwt() ->> 'email') like '%@united-link.com.tw'
    or lower(auth.jwt() ->> 'email') in (
         'tony.kuo@neutec.com.tw'      -- 網域外的例外，一個一行
       )
  , false)
$$;

comment on function public.is_staff is '同仁：north / united-link 網域，加上逐一列出的例外帳號。';


-- ============================================================
-- 三、分頁權限對應表
--   一個人一個分頁一行。沒有任何一行的人＝看得到全部。
--   一旦有任何一行，就只看得到列出來的那幾個分頁。
--
--   page_key
--     notes                  1. 系統更版訊息
--     maint                  2. Maintenance Schedule（含填寫）
--     操作手冊|<系統名稱>     3. 操作手冊底下的某個系統
--     系統網址|<系統名稱>     4. 系統網址底下的某個系統
-- ============================================================
create table if not exists public.page_access (
  user_email text not null,
  page_key   text not null,
  primary key (user_email, page_key)
);

comment on table public.page_access is '分頁權限：email ↔ 看得到的分頁。沒有任何一行的人＝看得到全部。';

alter table public.page_access enable row level security;

-- 自己看得到自己的設定（前端要靠這個決定選單顯示什麼），管理者看得到全部
drop policy if exists "read own access" on public.page_access;
create policy "read own access" on public.page_access
  for select to authenticated
  using ( public.is_admin() or user_email = lower(auth.jwt() ->> 'email') );


-- ============================================================
-- 四、判斷函式
--   security definer：要能查別人的設定，得繞過上面那條 RLS
-- ============================================================
create or replace function public.has_page_limits()
returns boolean language sql stable security definer set search_path = public as $$
  select exists (select 1 from public.page_access
                  where user_email = lower(auth.jwt() ->> 'email'))
$$;

create or replace function public.can_view_page(k text)
returns boolean language sql stable security definer set search_path = public as $$
  select public.is_admin()
      or not public.has_page_limits()
      or exists (select 1 from public.page_access
                  where user_email = lower(auth.jwt() ->> 'email')
                    and page_key = k)
$$;

-- 手冊／網址的資料列 → page_key
-- 「網址連結」是舊名稱，一併正規化成「系統網址」，否則舊資料會對不上
create or replace function public.mf_page_key(sec text, sys text)
returns text language sql immutable as $$
  select case when sec = '網址連結' then '系統網址'
              else coalesce(sec, '操作手冊') end || '|' || sys
$$;

grant execute on function public.has_page_limits()          to authenticated;
grant execute on function public.can_view_page(text)        to authenticated;
grant execute on function public.mf_page_key(text, text)    to authenticated;

comment on function public.can_view_page is '該帳號看不看得到某個分頁。沒被指定過的人一律 true。';


-- ============================================================
-- 五、指定權限
-- ============================================================
-- tony.kuo 只看得到維護排程（有指定＝只看得到指定的，其餘分頁自動關閉）
insert into public.page_access (user_email, page_key) values
  ('tony.kuo@neutec.com.tw', 'maint')
on conflict do nothing;


-- ============================================================
-- 六、套用到各張表
-- ============================================================

-- ---------- 1. 首頁：更版公告 ----------
drop policy if exists "public read"   on public.release_notes;
drop policy if exists "staff read"    on public.release_notes;
drop policy if exists "editor insert" on public.release_notes;
drop policy if exists "editor update" on public.release_notes;
drop policy if exists "editor delete" on public.release_notes;
drop policy if exists "admin insert"  on public.release_notes;
drop policy if exists "admin update"  on public.release_notes;
drop policy if exists "admin delete"  on public.release_notes;

create policy "staff read" on public.release_notes
  for select to authenticated
  using ( public.is_staff() and public.can_view_page('notes') );
create policy "admin insert" on public.release_notes
  for insert to authenticated with check ( public.is_admin() );
create policy "admin update" on public.release_notes
  for update to authenticated using ( public.is_admin() ) with check ( public.is_admin() );
create policy "admin delete" on public.release_notes
  for delete to authenticated using ( public.is_admin() );


-- ---------- 3、4. 操作手冊與系統網址 ----------
drop policy if exists "public read files"   on public.manual_files;
drop policy if exists "staff read files"    on public.manual_files;
drop policy if exists "editor insert files" on public.manual_files;
drop policy if exists "editor update files" on public.manual_files;
drop policy if exists "editor delete files" on public.manual_files;
drop policy if exists "admin insert files"  on public.manual_files;
drop policy if exists "admin update files"  on public.manual_files;
drop policy if exists "admin delete files"  on public.manual_files;

create policy "staff read files" on public.manual_files
  for select to authenticated
  using ( public.is_staff() and public.can_view_page(public.mf_page_key(section, system)) );
create policy "admin insert files" on public.manual_files
  for insert to authenticated with check ( public.is_admin() );
create policy "admin update files" on public.manual_files
  for update to authenticated using ( public.is_admin() ) with check ( public.is_admin() );
create policy "admin delete files" on public.manual_files
  for delete to authenticated using ( public.is_admin() );


-- ---------- 2. 維護排程：讀與寫都要有 maint 權限，刪除只有管理者 ----------
drop policy if exists "mw read"      on public.maintenance_windows;
drop policy if exists "mw insert"    on public.maintenance_windows;
drop policy if exists "mw update"    on public.maintenance_windows;
drop policy if exists "mw delete"    on public.maintenance_windows;
drop policy if exists "staff read"   on public.maintenance_windows;
drop policy if exists "staff insert" on public.maintenance_windows;
drop policy if exists "staff update" on public.maintenance_windows;
drop policy if exists "admin delete" on public.maintenance_windows;

create policy "staff read"   on public.maintenance_windows
  for select to authenticated using ( public.is_staff() and public.can_view_page('maint') );
create policy "staff insert" on public.maintenance_windows
  for insert to authenticated with check ( public.is_staff() and public.can_view_page('maint') );
create policy "staff update" on public.maintenance_windows
  for update to authenticated using ( public.is_staff() and public.can_view_page('maint') )
                              with check ( public.is_staff() and public.can_view_page('maint') );
create policy "admin delete" on public.maintenance_windows
  for delete to authenticated using ( public.is_admin() );

drop policy if exists "mt read"      on public.maintenance_tasks;
drop policy if exists "mt insert"    on public.maintenance_tasks;
drop policy if exists "mt update"    on public.maintenance_tasks;
drop policy if exists "mt delete"    on public.maintenance_tasks;
drop policy if exists "staff read"   on public.maintenance_tasks;
drop policy if exists "staff insert" on public.maintenance_tasks;
drop policy if exists "staff update" on public.maintenance_tasks;
drop policy if exists "admin delete" on public.maintenance_tasks;

create policy "staff read"   on public.maintenance_tasks
  for select to authenticated using ( public.is_staff() and public.can_view_page('maint') );
create policy "staff insert" on public.maintenance_tasks
  for insert to authenticated with check ( public.is_staff() and public.can_view_page('maint') );
create policy "staff update" on public.maintenance_tasks
  for update to authenticated using ( public.is_staff() and public.can_view_page('maint') )
                              with check ( public.is_staff() and public.can_view_page('maint') );
create policy "admin delete" on public.maintenance_tasks
  for delete to authenticated using ( public.is_admin() );

-- 修改紀錄：看得到維護排程的人才看得到，只有 trigger 寫得進去
drop policy if exists "ml read"    on public.maintenance_log;
drop policy if exists "staff read" on public.maintenance_log;
create policy "staff read" on public.maintenance_log
  for select to authenticated using ( public.is_staff() and public.can_view_page('maint') );


-- ============================================================
-- 七、之後要怎麼調整
-- ============================================================
-- 新增一個只看維護排程的外部帳號：
--   1) 加進第二段 is_staff() 的例外清單，重新執行第二段
--   2) insert into public.page_access (user_email, page_key)
--        values ('someone@x.com', 'maint') on conflict do nothing;
--   3) index.html 的 STAFF_EXTRA 也加一筆（否則會被前端的登入牆擋下）
--
-- 只讓某人看某個系統的手冊與網址：
--   insert into public.page_access (user_email, page_key) values
--     ('someone@x.com', '操作手冊|荷官排班系統'),
--     ('someone@x.com', '系統網址|荷官排班系統')
--   on conflict do nothing;
--
-- 讓某人恢復成看得到全部分頁：
--   delete from public.page_access where user_email = 'someone@x.com';
--
-- 收回單一分頁：
--   delete from public.page_access
--    where user_email = 'someone@x.com' and page_key = 'maint';


-- ============================================================
-- 八、確認結果
-- ============================================================
-- 目前的權限指定（沒列到的帳號＝看得到全部）
select user_email as 帳號, page_key as 看得到的分頁
  from public.page_access
 order by user_email, page_key;

-- 每張表都應該只剩 authenticated，看不到 {anon}
select tablename as 資料表, cmd as 動作, policyname as 政策, roles as 對象
  from pg_policies
 where schemaname = 'public'
   and tablename in ('release_notes','manual_files','page_access',
                     'maintenance_windows','maintenance_tasks','maintenance_log')
 order by tablename, cmd, policyname;
