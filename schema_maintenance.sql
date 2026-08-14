-- ============================================================
-- 每週維護排程 — Supabase 資料庫 Schema
-- 在 Supabase Dashboard → SQL Editor 貼上，整份執行一次
-- 執行完再執行 seed_maintenance.sql 匯入 Excel 的歷史資料
-- ============================================================

-- ------------------------------------------------------------
-- 維護視窗：一週一筆（對應原本 Excel 的一個分頁）
-- ------------------------------------------------------------
create table if not exists public.maintenance_windows (
  id           uuid primary key default gen_random_uuid(),
  venue        text not null default 'CB',        -- 場地代碼：CB=Cebu、MX=Mexico
  week_date    date not null,                     -- 維護日期，等同原本的分頁名稱
  start_time   time,                              -- 維護時段起（GMT+8）
  end_time     time,                              -- 維護時段訖（GMT+8）
  downtime     boolean,                           -- true=停機維護 false=不停機維護 null=未註明
  note         text,                              -- 表頭括號內的補充，例如「地震_停機維護」
  release_team text,                              -- 本週各系統負責人名單（多行）
  created_at   timestamptz not null default now(),
  updated_at   timestamptz not null default now(),
  unique (venue, week_date)                       -- 同一場地同一天只會有一個維護視窗
);

comment on table  public.maintenance_windows          is '每週維護視窗（現場免登入可讀）';
comment on column public.maintenance_windows.venue    is '場地代碼，對應 config.js 的 maintenance.venues';
comment on column public.maintenance_windows.downtime is 'true=停機維護、false=不停機維護、null=未註明';

-- ------------------------------------------------------------
-- 任務明細：一個視窗底下 N 筆，各 System Owner 各自填自己那列
-- ------------------------------------------------------------
create table if not exists public.maintenance_tasks (
  id           uuid primary key default gen_random_uuid(),
  window_id    uuid not null references public.maintenance_windows(id) on delete cascade,
  seq          int  not null default 0,           -- 顯示順序
  system       text not null,                     -- 系統名稱
  owner        text,                              -- 負責人（可能多人，例「Zet/Gary」）
  details      text,                              -- 更新項目，一行一項；沒有就填「無」
  start_time   time,
  end_time     time,
  duration_min int,                               -- 工時（分鐘），有起訖時自動算
  status       text not null default 'pending'
                 check (status in ('pending','done','na')),
  notes        text,
  updated_by   text,                              -- 最後填寫人，免登入填寫時的可追溯依據
  created_at   timestamptz not null default now(),
  updated_at   timestamptz not null default now(),
  unique (window_id, seq)
);

comment on table  public.maintenance_tasks            is '維護任務明細（現場免登入可讀、可填寫）';
comment on column public.maintenance_tasks.status     is 'pending=待執行、done=完成、na=本週無更新項目';
comment on column public.maintenance_tasks.updated_by is '最後填寫人姓名，免登入填寫的追溯依據';

create index if not exists idx_mw_date    on public.maintenance_windows (venue, week_date desc);
create index if not exists idx_mt_window  on public.maintenance_tasks (window_id, seq);
create index if not exists idx_mt_system  on public.maintenance_tasks (system);
create index if not exists idx_mt_owner   on public.maintenance_tasks (owner);

-- ------------------------------------------------------------
-- updated_at 自動更新；有起訖時間但沒填工時的自動補算
-- ------------------------------------------------------------
create or replace function public.set_updated_at()
returns trigger language plpgsql as $$
begin
  new.updated_at = now();
  return new;
end $$;

create or replace function public.mt_before_write()
returns trigger language plpgsql as $$
begin
  new.updated_at = now();
  if new.duration_min is null and new.start_time is not null and new.end_time is not null
     and new.end_time > new.start_time then
    new.duration_min = extract(epoch from (new.end_time - new.start_time)) / 60;
  end if;
  return new;
end $$;

drop trigger if exists trg_mw_updated_at on public.maintenance_windows;
create trigger trg_mw_updated_at
  before update on public.maintenance_windows
  for each row execute function public.set_updated_at();

drop trigger if exists trg_mt_before_write on public.maintenance_tasks;
create trigger trg_mt_before_write
  before insert or update on public.maintenance_tasks
  for each row execute function public.mt_before_write();

-- ============================================================
-- 過去的排程封存
--   維護日過後仍可完整編輯，直到「下一場維護開始」才固定下來。
--   例：8/12 那場在 8/13～8/18 都能改；8/19 那場一開始，8/12 就只剩
--   「執行時間」「狀態」「備註」還能補——各 Owner 常是做完之後才回來回填結果。
--   還沒排下一場的話，以維護日七天後為界（配合每週一次的節奏）。
--   封存後也不能再新增或刪除列。
--   只限制 anon（未登入）；管理者登入後不受限，方便更正。
--   前端有同一套規則（index.html 的 lockFrom / isLocked），這裡是真正把關的一層。
--   注意：下面的 7 天要跟 index.html 的 LOCK_FALLBACK_DAYS 一致。
-- ============================================================

-- 這一週從哪一天起封存＝同場地下一場維護的日期
create or replace function public.mw_lock_from(p_window uuid)
returns date language sql stable security definer set search_path = public as $$
  select coalesce(
    (select min(n.week_date)
       from public.maintenance_windows n, public.maintenance_windows w
      where w.id = p_window and n.venue = w.venue and n.week_date > w.week_date),
    (select w.week_date + 7 from public.maintenance_windows w where w.id = p_window)
  )
$$;

create or replace function public.mt_guard_locked()
returns trigger language plpgsql security definer set search_path = public as $$
declare
  w_date    date;
  lock_from date;
begin
  -- 只擋未登入的匿名寫入；SQL Editor 匯入與管理者登入都放行
  if coalesce(auth.role(), '') <> 'anon' then
    return case when tg_op = 'DELETE' then old else new end;
  end if;

  select week_date into w_date from public.maintenance_windows
    where id = coalesce(new.window_id, old.window_id);
  lock_from := public.mw_lock_from(coalesce(new.window_id, old.window_id));

  -- 還沒到封存日就完全放行
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

  -- UPDATE：把不允許異動的欄位一律還原成原值，改了也不會生效。
  -- start_time / end_time / status / notes / updated_by 放行，
  -- 這幾項常是維護做完之後才回頭補的。
  new.system  := old.system;
  new.owner   := old.owner;
  new.details := old.details;
  new.seq     := old.seq;
  new.window_id := old.window_id;
  return new;
end $$;

drop trigger if exists trg_mt_guard on public.maintenance_tasks;
create trigger trg_mt_guard
  before insert or update or delete on public.maintenance_tasks
  for each row execute function public.mt_guard_locked();

-- 已封存那一週的視窗本身（時段、停機與否、Release Team）也不給匿名改
create or replace function public.mw_guard_locked()
returns trigger language plpgsql security definer set search_path = public as $$
declare
  lock_from date;
begin
  if coalesce(auth.role(), '') <> 'anon' then
    return case when tg_op = 'DELETE' then old else new end;
  end if;
  lock_from := public.mw_lock_from(old.id);
  if lock_from is not null and current_date >= lock_from then
    raise exception '% 的維護視窗已於 % 封存，需要管理者登入才能修改', old.week_date, lock_from
      using errcode = 'check_violation';
  end if;
  return new;
end $$;

drop trigger if exists trg_mw_guard on public.maintenance_windows;
create trigger trg_mw_guard
  before update or delete on public.maintenance_windows
  for each row execute function public.mw_guard_locked();

-- ============================================================
-- 修改紀錄
--   因為填寫不需要帳號，改用紀錄表留下軌跡：誰、什麼時候、改了哪一列
--   由 trigger 自動寫入，前端不會也不能直接寫這張表
-- ============================================================
create table if not exists public.maintenance_log (
  id         bigint generated always as identity primary key,
  task_id    uuid,
  venue      text,
  week_date  date,
  system     text,
  editor     text,                                -- 填寫人自報姓名
  action     text,                                -- insert / update / delete
  changed    text[],                              -- 這次動到哪些欄位
  before     jsonb,
  after      jsonb,
  created_at timestamptz not null default now()
);

create index if not exists idx_ml_task on public.maintenance_log (task_id, created_at desc);
create index if not exists idx_ml_week on public.maintenance_log (venue, week_date, created_at desc);

-- SECURITY DEFINER：讓未登入的填寫也能留下紀錄，但前端無法自行竄改這張表
create or replace function public.mt_write_log()
returns trigger language plpgsql security definer set search_path = public as $$
declare
  w_date  date;
  w_venue text;
  diff    text[];
begin
  if tg_op = 'DELETE' then
    select venue, week_date into w_venue, w_date
      from public.maintenance_windows where id = old.window_id;
    insert into public.maintenance_log (task_id, venue, week_date, system, editor, action, before)
      values (old.id, w_venue, w_date, old.system, old.updated_by, 'delete', to_jsonb(old));
    return old;
  end if;

  select venue, week_date into w_venue, w_date
    from public.maintenance_windows where id = new.window_id;

  if tg_op = 'UPDATE' then
    select coalesce(array_agg(key), '{}') into diff
    from jsonb_each_text(to_jsonb(new)) n
    join jsonb_each_text(to_jsonb(old)) o using (key)
    where n.value is distinct from o.value
      and key not in ('updated_at', 'updated_by');
    -- 只動到時間戳就不用記
    if diff = '{}' then return new; end if;
  end if;

  insert into public.maintenance_log (task_id, venue, week_date, system, editor, action, changed, before, after)
    values (new.id, w_venue, w_date, new.system, new.updated_by, lower(tg_op), diff,
            case when tg_op = 'UPDATE' then to_jsonb(old) end, to_jsonb(new));
  return new;
end $$;

drop trigger if exists trg_mt_log on public.maintenance_tasks;
create trigger trg_mt_log
  after insert or update or delete on public.maintenance_tasks
  for each row execute function public.mt_write_log();

-- ============================================================
-- Row Level Security
--   讀：任何人（含未登入）都能看 → 現場免帳號密碼
--   寫：任何人都能新增與修改 → 各 Owner 免帳號填寫
--   刪：只有登入的管理者 → 免登入者改得動但刪不掉，資料不會憑空消失
-- ============================================================
alter table public.maintenance_windows enable row level security;
alter table public.maintenance_tasks   enable row level security;
alter table public.maintenance_log     enable row level security;

drop policy if exists "mw read"   on public.maintenance_windows;
drop policy if exists "mw insert" on public.maintenance_windows;
drop policy if exists "mw update" on public.maintenance_windows;
drop policy if exists "mw delete" on public.maintenance_windows;

create policy "mw read"   on public.maintenance_windows for select to anon, authenticated using ( true );
create policy "mw insert" on public.maintenance_windows for insert to anon, authenticated with check ( true );
create policy "mw update" on public.maintenance_windows for update to anon, authenticated using ( true ) with check ( true );
create policy "mw delete" on public.maintenance_windows for delete to authenticated using ( true );

drop policy if exists "mt read"   on public.maintenance_tasks;
drop policy if exists "mt insert" on public.maintenance_tasks;
drop policy if exists "mt update" on public.maintenance_tasks;
drop policy if exists "mt delete" on public.maintenance_tasks;

create policy "mt read"   on public.maintenance_tasks for select to anon, authenticated using ( true );
create policy "mt insert" on public.maintenance_tasks for insert to anon, authenticated with check ( true );
create policy "mt update" on public.maintenance_tasks for update to anon, authenticated using ( true ) with check ( true );
create policy "mt delete" on public.maintenance_tasks for delete to authenticated using ( true );

-- 修改紀錄：大家都看得到，但只有 trigger 寫得進去（沒有任何 insert 政策）
drop policy if exists "ml read" on public.maintenance_log;
create policy "ml read" on public.maintenance_log for select to anon, authenticated using ( true );

-- ------------------------------------------------------------
-- 若日後想收緊成「要登入才能填寫」
--   把上面 mt / mw 的 insert、update 政策裡的 anon 拿掉，只留 authenticated，
--   重新執行這四條 create policy 即可，前端不用改。
-- ------------------------------------------------------------
