-- ============================================================
-- 檔案清單加上「分區」與「場地」欄位
-- 讓 2.操作手冊 與 3.網址連結 共用同一張表
-- 在 Supabase Dashboard → SQL Editor 貼上執行一次
-- ============================================================

alter table public.manual_files
  add column if not exists section text not null default '操作手冊';

alter table public.manual_files
  add column if not exists venues text[] not null default '{}';

comment on column public.manual_files.section is '分區：操作手冊 / 網址連結';
comment on column public.manual_files.venues  is '場地（網址連結用，可複選）';

-- 既有資料都是操作手冊，default 已自動填好，不需另外更新

drop index if exists idx_mf_system;
create index if not exists idx_mf_section on public.manual_files (section, system, modified_at desc);
