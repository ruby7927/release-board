-- ============================================================
-- 分頁權限：指定哪些 email 看得到「操作手冊」與「系統網址」的哪些系統
--
-- 規則
--   管理者              看得到全部
--   沒被指定的同仁      看得到全部（維持現狀，不必逐一設定）
--   有被指定的同仁      只看得到被指定的那幾個分頁
--
-- 首頁與 Maintenance Schedule 不受這裡影響，所有同仁一律看得到。
--
-- 在 Supabase Dashboard → SQL Editor 貼上，整份執行一次。
-- ============================================================

-- ------------------------------------------------------------
-- 對應表：一個人一個分頁一行
--   page_key 格式＝「分區|系統名稱」，例如 操作手冊|荷官排班系統
-- ------------------------------------------------------------
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

-- ------------------------------------------------------------
-- 判斷函式（security definer：繞過上面的 RLS 才能查別人的設定）
-- ------------------------------------------------------------
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

grant execute on function public.has_page_limits() to authenticated;
grant execute on function public.can_view_page(text) to authenticated;

comment on function public.can_view_page is '該帳號看不看得到某個分頁。沒被指定過的人一律 true。';

-- ------------------------------------------------------------
-- 套用到操作手冊 / 系統網址的資料
--   「網址連結」是舊名稱，一併正規化成「系統網址」，否則舊資料會對不上
-- ------------------------------------------------------------
create or replace function public.mf_page_key(sec text, sys text)
returns text language sql immutable as $$
  select case when sec = '網址連結' then '系統網址'
              else coalesce(sec, '操作手冊') end || '|' || sys
$$;

grant execute on function public.mf_page_key(text, text) to authenticated;

drop policy if exists "staff read files" on public.manual_files;
create policy "staff read files" on public.manual_files
  for select to authenticated
  using ( public.is_staff() and public.can_view_page(public.mf_page_key(section, system)) );

-- ============================================================
-- 怎麼指定權限
-- ============================================================
-- 只讓某人看得到荷官排班系統的手冊與網址：
--
--   insert into public.page_access (user_email, page_key) values
--     ('tony@united-link.com.tw', '操作手冊|荷官排班系統'),
--     ('tony@united-link.com.tw', '系統網址|荷官排班系統')
--   on conflict do nothing;
--
-- 收回某一個分頁：
--   delete from public.page_access
--    where user_email = 'tony@united-link.com.tw' and page_key = '操作手冊|荷官排班系統';
--
-- 讓某人恢復成「看得到全部」：把他的所有設定刪掉
--   delete from public.page_access where user_email = 'tony@united-link.com.tw';
--
-- 目前可用的 page_key（依 config.js 的 manuals / links 而定）：
--   操作手冊|荷官排班系統       系統網址|荷官排班系統
--   操作手冊|Incident Reporting System   系統網址|Incident Reporting System
--   操作手冊|請假系統           系統網址|請假系統

-- ============================================================
-- 確認結果
-- ============================================================
select user_email as 帳號, page_key as 看得到的分頁
  from public.page_access order by user_email, page_key;
