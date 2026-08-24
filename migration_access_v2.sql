-- ============================================================
-- 白名單改為依網域，並把「首頁」與「Maintenance Schedule」也納入分頁權限
--
-- 規則
--   @north.com.tw、@united-link.com.tw   一律放行，看得到全部分頁、可填寫維護排程
--   tony.kuo@neutec.com.tw              只看得到 Maintenance Schedule，可填寫
--   其他                                 擋在登入牆外
--
-- 前提：請先執行過 migration_page_access.sql（page_access 表與 can_view_page）
-- 在 Supabase Dashboard → SQL Editor 貼上，整份執行一次。
-- ============================================================

-- ------------------------------------------------------------
-- 1. 同仁白名單：兩個網域 + 網域外的例外
--    ★ 這份規則要跟 index.html 的 STAFF_DOMAINS / STAFF_EXTRA 一致 ★
-- ------------------------------------------------------------
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

-- ------------------------------------------------------------
-- 2. 分頁權限的兩個新代碼
--      notes  = 1. 系統更版訊息
--      maint  = 2. Maintenance Schedule（含填寫）
--    操作手冊與系統網址沿用「分區|系統名稱」，不變。
-- ------------------------------------------------------------

-- 只讓 tony.kuo 看得到維護排程（有指定＝只看得到指定的，其餘分頁自動關閉）
insert into public.page_access (user_email, page_key) values
  ('tony.kuo@neutec.com.tw', 'maint')
on conflict do nothing;

-- ------------------------------------------------------------
-- 3. 首頁：更版公告
-- ------------------------------------------------------------
drop policy if exists "staff read" on public.release_notes;
create policy "staff read" on public.release_notes
  for select to authenticated
  using ( public.is_staff() and public.can_view_page('notes') );

-- ------------------------------------------------------------
-- 4. 維護排程：讀與寫都要有 maint 權限
-- ------------------------------------------------------------
drop policy if exists "staff read"   on public.maintenance_windows;
drop policy if exists "staff insert" on public.maintenance_windows;
drop policy if exists "staff update" on public.maintenance_windows;

create policy "staff read"   on public.maintenance_windows
  for select to authenticated using ( public.is_staff() and public.can_view_page('maint') );
create policy "staff insert" on public.maintenance_windows
  for insert to authenticated with check ( public.is_staff() and public.can_view_page('maint') );
create policy "staff update" on public.maintenance_windows
  for update to authenticated using ( public.is_staff() and public.can_view_page('maint') )
                              with check ( public.is_staff() and public.can_view_page('maint') );

drop policy if exists "staff read"   on public.maintenance_tasks;
drop policy if exists "staff insert" on public.maintenance_tasks;
drop policy if exists "staff update" on public.maintenance_tasks;

create policy "staff read"   on public.maintenance_tasks
  for select to authenticated using ( public.is_staff() and public.can_view_page('maint') );
create policy "staff insert" on public.maintenance_tasks
  for insert to authenticated with check ( public.is_staff() and public.can_view_page('maint') );
create policy "staff update" on public.maintenance_tasks
  for update to authenticated using ( public.is_staff() and public.can_view_page('maint') )
                              with check ( public.is_staff() and public.can_view_page('maint') );

drop policy if exists "staff read" on public.maintenance_log;
create policy "staff read" on public.maintenance_log
  for select to authenticated using ( public.is_staff() and public.can_view_page('maint') );

-- 刪除權限維持只有管理者，不受這裡影響

-- ============================================================
-- 之後要怎麼調整
-- ============================================================
-- 新增一個只看維護排程的外部帳號：
--   1) 加進 is_staff() 的例外清單，重新執行第 1 段
--   2) insert into public.page_access values ('someone@x.com','maint');
--   3) index.html 的 STAFF_EXTRA 也加一筆（否則會被前端的登入牆擋下）
--
-- 讓某人恢復成看得到全部分頁：
--   delete from public.page_access where user_email = 'someone@x.com';
--
-- 可用的 page_key：
--   notes                       系統更版訊息
--   maint                       Maintenance Schedule
--   操作手冊|<系統名稱>          系統網址|<系統名稱>

-- ============================================================
-- 確認結果
-- ============================================================
select user_email as 帳號, page_key as 看得到的分頁
  from public.page_access order by user_email, page_key;
