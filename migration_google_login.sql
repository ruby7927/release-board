-- ============================================================
-- 登入與權限：三層
--   管理者（is_admin）  Email + 密碼登入，可以動所有資料
--   同仁（is_staff）    Google 登入，且 email 在白名單內，只能用維護排程
--   未登入              什麼都看不到
--
-- 在 Supabase Dashboard → SQL Editor 貼上，整份執行一次。
--
-- ⚠ 執行前務必先確認：
--    1. Supabase 已開好 Google 登入
--    2. 下面的同仁名單已經填好真實 email
--    這份 SQL 會關掉「免登入查看」，沒填好名單的話同仁會全部進不去。
-- ============================================================

-- ------------------------------------------------------------
-- 管理者：只有這些 email。用 Email + 密碼登入。
-- ------------------------------------------------------------
create or replace function public.is_admin()
returns boolean language sql stable security definer set search_path = public as $$
  select coalesce(
    lower(auth.jwt() ->> 'email') in (
      'ruby.hsieh@united-link.com.tw'
    ), false)
$$;

comment on function public.is_admin is '管理者：可以動所有資料。改名單就改這個函式。';

-- ------------------------------------------------------------
-- 同仁白名單：用 Google 登入的人，一個一個列。
-- 管理者自動也算同仁，不用重複列。
--
-- ★★ 下面是範例，請換成真實的 email ★★
--    每加一個人就多一行，改完重新執行這段即可，政策不用重設。
-- ------------------------------------------------------------
create or replace function public.is_staff()
returns boolean language sql stable security definer set search_path = public as $$
  select public.is_admin() or coalesce(
    lower(auth.jwt() ->> 'email') in (
      -- ↓↓↓ 換成真實 email ↓↓↓
      'tony@united-link.com.tw',
      'bernard@united-link.com.tw',
      'fanny@united-link.com.tw',
      'gary@united-link.com.tw',
      'rossi@united-link.com.tw',
      'zet@united-link.com.tw',
      'emanuel@united-link.com.tw',
      'michelle@united-link.com.tw',
      'neroal@united-link.com.tw',
      'zach@united-link.com.tw'
      -- ↑↑↑ 換成真實 email ↑↑↑
    ), false)
$$;

comment on function public.is_staff is '同仁：白名單內的 Google 帳號，只能用維護排程。';

-- ============================================================
-- 全站改成要登入才看得到
--   所有 select 政策都從 anon 收回，只留 authenticated 且在名單內。
-- ============================================================

-- ---------- 更版公告：同仁看得到，只有管理者能寫 ----------
drop policy if exists "public read"  on public.release_notes;
drop policy if exists "editor insert" on public.release_notes;
drop policy if exists "editor update" on public.release_notes;
drop policy if exists "editor delete" on public.release_notes;
drop policy if exists "admin insert" on public.release_notes;
drop policy if exists "admin update" on public.release_notes;
drop policy if exists "admin delete" on public.release_notes;

create policy "staff read"   on public.release_notes
  for select to authenticated using ( public.is_staff() );
create policy "admin insert" on public.release_notes
  for insert to authenticated with check ( public.is_admin() );
create policy "admin update" on public.release_notes
  for update to authenticated using ( public.is_admin() ) with check ( public.is_admin() );
create policy "admin delete" on public.release_notes
  for delete to authenticated using ( public.is_admin() );

-- ---------- 操作手冊與系統網址 ----------
drop policy if exists "public read files"  on public.manual_files;
drop policy if exists "editor insert files" on public.manual_files;
drop policy if exists "editor update files" on public.manual_files;
drop policy if exists "editor delete files" on public.manual_files;
drop policy if exists "admin insert files" on public.manual_files;
drop policy if exists "admin update files" on public.manual_files;
drop policy if exists "admin delete files" on public.manual_files;

create policy "staff read files"   on public.manual_files
  for select to authenticated using ( public.is_staff() );
create policy "admin insert files" on public.manual_files
  for insert to authenticated with check ( public.is_admin() );
create policy "admin update files" on public.manual_files
  for update to authenticated using ( public.is_admin() ) with check ( public.is_admin() );
create policy "admin delete files" on public.manual_files
  for delete to authenticated using ( public.is_admin() );

-- ---------- 維護排程：同仁可讀可填，只有管理者能刪 ----------
drop policy if exists "mw read"   on public.maintenance_windows;
drop policy if exists "mw insert" on public.maintenance_windows;
drop policy if exists "mw update" on public.maintenance_windows;
drop policy if exists "mw delete" on public.maintenance_windows;
drop policy if exists "staff insert" on public.maintenance_windows;
drop policy if exists "staff update" on public.maintenance_windows;
drop policy if exists "admin delete" on public.maintenance_windows;

create policy "staff read"   on public.maintenance_windows
  for select to authenticated using ( public.is_staff() );
create policy "staff insert" on public.maintenance_windows
  for insert to authenticated with check ( public.is_staff() );
create policy "staff update" on public.maintenance_windows
  for update to authenticated using ( public.is_staff() ) with check ( public.is_staff() );
create policy "admin delete" on public.maintenance_windows
  for delete to authenticated using ( public.is_admin() );

drop policy if exists "mt read"   on public.maintenance_tasks;
drop policy if exists "mt insert" on public.maintenance_tasks;
drop policy if exists "mt update" on public.maintenance_tasks;
drop policy if exists "mt delete" on public.maintenance_tasks;
drop policy if exists "staff insert" on public.maintenance_tasks;
drop policy if exists "staff update" on public.maintenance_tasks;
drop policy if exists "admin delete" on public.maintenance_tasks;

create policy "staff read"   on public.maintenance_tasks
  for select to authenticated using ( public.is_staff() );
create policy "staff insert" on public.maintenance_tasks
  for insert to authenticated with check ( public.is_staff() );
create policy "staff update" on public.maintenance_tasks
  for update to authenticated using ( public.is_staff() ) with check ( public.is_staff() );
create policy "admin delete" on public.maintenance_tasks
  for delete to authenticated using ( public.is_admin() );

-- ---------- 修改紀錄：同仁看得到，只有 trigger 寫得進去 ----------
drop policy if exists "ml read" on public.maintenance_log;
create policy "staff read" on public.maintenance_log
  for select to authenticated using ( public.is_staff() );

-- ============================================================
-- 封存保護：只有管理者不受限
--   同仁登入後一樣受封存規則約束，改不動過去的紀錄。
-- ============================================================
create or replace function public.mt_guard_locked()
returns trigger language plpgsql security definer set search_path = public as $$
declare
  w_date    date;
  lock_from date;
begin
  -- SQL Editor / service_role（沒有 auth.role()）與管理者放行
  if auth.role() is null or public.is_admin() then
    return case when tg_op = 'DELETE' then old else new end;
  end if;

  select week_date into w_date from public.maintenance_windows
    where id = coalesce(new.window_id, old.window_id);
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

  -- UPDATE：不允許異動的欄位一律還原成原值。
  -- start_time / end_time / status / notes / updated_by 放行，
  -- 這幾項常是維護做完之後才回頭補的。
  new.system  := old.system;
  new.owner   := old.owner;
  new.details := old.details;
  new.seq     := old.seq;
  new.window_id := old.window_id;
  return new;
end $$;

create or replace function public.mw_guard_locked()
returns trigger language plpgsql security definer set search_path = public as $$
declare
  lock_from date;
begin
  if auth.role() is null or public.is_admin() then
    return case when tg_op = 'DELETE' then old else new end;
  end if;
  lock_from := public.mw_lock_from(old.id);
  if lock_from is not null and current_date >= lock_from then
    raise exception '% 的維護視窗已於 % 封存，需要管理者才能修改', old.week_date, lock_from
      using errcode = 'check_violation';
  end if;
  return new;
end $$;

-- ============================================================
-- 填寫人一律以登入帳號為準，不採信前端送上來的值
-- ============================================================
create or replace function public.mt_stamp_editor()
returns trigger language plpgsql security definer set search_path = public as $$
begin
  if auth.jwt() ->> 'email' is not null then
    new.updated_by = split_part(auth.jwt() ->> 'email', '@', 1);
  end if;
  return new;
end $$;

drop trigger if exists trg_mt_stamp on public.maintenance_tasks;
create trigger trg_mt_stamp
  before insert or update on public.maintenance_tasks
  for each row execute function public.mt_stamp_editor();

-- ============================================================
-- 確認結果
-- ============================================================
select public.is_admin() as 我是管理者, public.is_staff() as 我是同仁;

-- 每張表都應該只剩 authenticated，看不到 {anon}
select tablename as 資料表, cmd as 動作, policyname as 政策, roles as 對象
  from pg_policies
 where schemaname = 'public'
   and tablename in ('release_notes','manual_files',
                     'maintenance_windows','maintenance_tasks','maintenance_log')
 order by tablename, cmd, policyname;
