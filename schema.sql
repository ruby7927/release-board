-- ============================================================
-- 每週更版公告板 — Supabase 資料庫 Schema
-- 在 Supabase Dashboard → SQL Editor 貼上，整份執行一次即可
-- ============================================================

-- ------------------------------------------------------------
-- 公告主表
-- ------------------------------------------------------------
create table if not exists public.release_notes (
  id           uuid primary key default gen_random_uuid(),
  created_date date not null default current_date,   -- 建立日期
  release_at   timestamp not null,                   -- 上正式系統日期及時間（本地時間，預設 08:00）
  category     text not null,                        -- 系統分類
  venues       text[] not null default '{}',         -- 場地（可複選：CB / MX / SIV）
  content      text not null,                        -- 更版內容（一行一項）
  link_url     text,                                 -- 連結（選填）
  created_at   timestamptz not null default now(),
  updated_at   timestamptz not null default now()
);

-- release_at 用 timestamp（不含時區）＝ 直接記錄「現場看到的時間」，
-- 不會因瀏覽器時區不同而位移。

comment on table  public.release_notes            is '每週更版公告（現場人員免登入可讀）';
comment on column public.release_notes.release_at is '上正式系統日期及時間，時間預設 08:00';

-- ------------------------------------------------------------
-- 索引（清單依 release_at 排序，篩選用 category / venues）
-- ------------------------------------------------------------
create index if not exists idx_rn_release  on public.release_notes (release_at desc);
create index if not exists idx_rn_category on public.release_notes (category);
create index if not exists idx_rn_venues   on public.release_notes using gin (venues);

-- ------------------------------------------------------------
-- updated_at 自動更新
-- ------------------------------------------------------------
create or replace function public.set_updated_at()
returns trigger language plpgsql as $$
begin
  new.updated_at = now();
  return new;
end $$;

drop trigger if exists trg_rn_updated_at on public.release_notes;
create trigger trg_rn_updated_at
  before update on public.release_notes
  for each row execute function public.set_updated_at();

-- ============================================================
-- Row Level Security
--   讀：任何人（含未登入的 anon）都能看 → 現場人員免帳號密碼
--   寫：只有已登入帳號；帳號由 Dashboard 手動建立，不開放註冊
-- ============================================================
alter table public.release_notes enable row level security;

drop policy if exists "public read" on public.release_notes;
create policy "public read" on public.release_notes
  for select to anon, authenticated using ( true );

drop policy if exists "editor insert" on public.release_notes;
create policy "editor insert" on public.release_notes
  for insert to authenticated with check ( true );

drop policy if exists "editor update" on public.release_notes;
create policy "editor update" on public.release_notes
  for update to authenticated using ( true ) with check ( true );

drop policy if exists "editor delete" on public.release_notes;
create policy "editor delete" on public.release_notes
  for delete to authenticated using ( true );

-- ------------------------------------------------------------
-- 若日後想再收緊：只有名單內的 email 能寫入
-- 把上面三條 editor 政策的 true 換成 public.is_editor()，並執行以下函式
-- ------------------------------------------------------------
-- create or replace function public.is_editor()
-- returns boolean language sql stable as $$
--   select (auth.jwt() ->> 'email') in ('release@example.com')
-- $$;
