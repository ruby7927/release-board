-- ============================================================
-- 操作手冊檔案清單
-- 在 Supabase Dashboard → SQL Editor 貼上整份執行一次
-- ============================================================

create table if not exists public.manual_files (
  id          uuid primary key default gen_random_uuid(),
  system      text not null,                     -- 所屬系統（對應 config.js 的 manuals 名稱）
  file_name   text not null,                     -- 檔案名稱（自行定義）
  file_type   text not null default '文件',      -- 類型：簡報 / 文件 / 試算表 / PDF / 影片 / 其他
  modified_at timestamp not null,                -- 最後修改（本地時間）
  owner       text,                              -- 擁有者
  url         text not null,                     -- 檔案連結
  created_at  timestamptz not null default now(),
  updated_at  timestamptz not null default now()
);

create index if not exists idx_mf_system on public.manual_files (system, modified_at desc);

drop trigger if exists trg_mf_updated_at on public.manual_files;
create trigger trg_mf_updated_at
  before update on public.manual_files
  for each row execute function public.set_updated_at();

-- 讀：任何人（含未登入）都能看；寫：只有已登入帳號
alter table public.manual_files enable row level security;

drop policy if exists "public read files" on public.manual_files;
create policy "public read files" on public.manual_files
  for select to anon, authenticated using ( true );

drop policy if exists "editor insert files" on public.manual_files;
create policy "editor insert files" on public.manual_files
  for insert to authenticated with check ( true );

drop policy if exists "editor update files" on public.manual_files;
create policy "editor update files" on public.manual_files
  for update to authenticated using ( true ) with check ( true );

drop policy if exists "editor delete files" on public.manual_files;
create policy "editor delete files" on public.manual_files
  for delete to authenticated using ( true );
