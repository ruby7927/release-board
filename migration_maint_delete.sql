-- ============================================================
-- 維護排程的刪除權限：依場地授權給指定帳號
--
-- 目前：michelle.huang@united-link.com.tw 可刪 Cebu（CB）的整週與單筆項目
-- 管理者不受限；其餘同仁一律不能刪，但新增與修改不受影響。
--
-- ★ 這份名單要跟 index.html 的 MAINT_DELETE 一致 ★
-- 在 Supabase Dashboard → SQL Editor 貼上，整份執行一次。
-- ============================================================

-- ------------------------------------------------------------
-- 對應表：一個人一個場地一行
-- ------------------------------------------------------------
create table if not exists public.maint_delete_access (
  user_email text not null,
  venue      text not null,
  primary key (user_email, venue)
);

comment on table public.maint_delete_access is '維護排程刪除權限：email ↔ 可刪除的場地。';

alter table public.maint_delete_access enable row level security;

drop policy if exists "read own delete access" on public.maint_delete_access;
create policy "read own delete access" on public.maint_delete_access
  for select to authenticated
  using ( public.is_admin() or user_email = lower(auth.jwt() ->> 'email') );

insert into public.maint_delete_access (user_email, venue) values
  ('michelle.huang@united-link.com.tw', 'CB')
on conflict do nothing;

-- ------------------------------------------------------------
-- 判斷函式（security definer：要繞過上面那條 RLS 才查得到）
-- ------------------------------------------------------------
create or replace function public.can_delete_maint(v text)
returns boolean language sql stable security definer set search_path = public as $$
  select public.is_admin()
      or exists (select 1 from public.maint_delete_access
                  where user_email = lower(auth.jwt() ->> 'email')
                    and venue = v)
$$;

grant execute on function public.can_delete_maint(text) to authenticated;

comment on function public.can_delete_maint is '該帳號能不能刪除某個場地的維護排程。';

-- ------------------------------------------------------------
-- 套用到刪除政策
-- ------------------------------------------------------------
drop policy if exists "admin delete" on public.maintenance_windows;
create policy "admin delete" on public.maintenance_windows
  for delete to authenticated using ( public.can_delete_maint(venue) );

-- 任務的場地在母表上，要繞一層查
drop policy if exists "admin delete" on public.maintenance_tasks;
create policy "admin delete" on public.maintenance_tasks
  for delete to authenticated
  using ( exists (select 1 from public.maintenance_windows w
                   where w.id = window_id and public.can_delete_maint(w.venue)) );

-- ------------------------------------------------------------
-- 封存保護也要放行
--   已封存的週次原本只有管理者動得了。既然給了刪除權，
--   連帶要能刪封存週的項目，否則授權形同虛設。
--   注意：這只放行「刪除」，修改仍受封存規則約束。
-- ------------------------------------------------------------
create or replace function public.mt_guard_locked()
returns trigger language plpgsql security definer set search_path = public as $$
declare
  w_date    date;
  w_venue   text;
  lock_from date;
begin
  select week_date, venue into w_date, w_venue from public.maintenance_windows
    where id = coalesce(new.window_id, old.window_id);

  -- SQL Editor / service_role（沒有 auth.role()）與管理者放行
  if auth.role() is null or public.is_admin() then
    return case when tg_op = 'DELETE' then old else new end;
  end if;

  -- 有該場地刪除權的人，刪除不受封存限制
  if tg_op = 'DELETE' and public.can_delete_maint(w_venue) then
    return old;
  end if;

  lock_from := public.mw_lock_from(coalesce(new.window_id, old.window_id));

  if w_date is null or lock_from is null or current_date < lock_from then
    return case when tg_op = 'DELETE' then old else new end;
  end if;

  if tg_op = 'INSERT' then
    raise exception '% 的維護排程已於 % 封存，不能再新增項目', w_date, lock_from
      using errcode = 'check_violation';
  end if;

  if tg_op = 'DELETE' then
    raise exception '% 的維護排程已於 % 封存，不能刪除項目', w_date, lock_from
      using errcode = 'check_violation';
  end if;

  -- UPDATE：不允許異動的欄位一律還原成原值
  new.system    := old.system;
  new.owner     := old.owner;
  new.details   := old.details;
  new.seq       := old.seq;
  new.window_id := old.window_id;
  return new;
end $$;

-- ============================================================
-- 之後要怎麼調整
-- ============================================================
-- 再給一個人 Mexico 的刪除權：
--   insert into public.maint_delete_access (user_email, venue)
--     values ('someone@united-link.com.tw', 'MX') on conflict do nothing;
--   （index.html 的 MAINT_DELETE 也要加，否則畫面上看不到刪除鈕）
--
-- 收回：
--   delete from public.maint_delete_access
--    where user_email = 'someone@united-link.com.tw' and venue = 'MX';

-- ============================================================
-- 確認結果
-- ============================================================
select user_email as 帳號, venue as 可刪除的場地
  from public.maint_delete_access order by user_email, venue;

select tablename as 資料表, policyname as 政策, qual as 條件
  from pg_policies
 where schemaname = 'public' and cmd = 'DELETE'
   and tablename in ('maintenance_windows','maintenance_tasks');
