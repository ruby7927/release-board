-- ============================================================
-- 規則：填了執行結束時間，狀態就一定是「完成」
--
-- 一、把既有資料裡不符合的補正（兩個場地都會處理）
-- 二、加上資料庫層的保障，之後不論從哪裡寫入都會自動修正
--
-- 在 Supabase Dashboard → SQL Editor 貼上，整份執行一次。
-- ============================================================

-- ---------- 一、補正既有資料 ----------
-- 先看有幾筆不符合
select w.venue as 場地, count(*) as 待補正筆數
  from public.maintenance_tasks t
  join public.maintenance_windows w on w.id = t.window_id
 where t.end_time is not null and t.status <> 'done'
 group by w.venue order by w.venue;

-- 補正（trigger 先關掉，這不算「有人編輯」）
alter table public.maintenance_tasks disable trigger trg_mt_log;

update public.maintenance_tasks
   set status = 'done'
 where end_time is not null and status <> 'done';

alter table public.maintenance_tasks enable trigger trg_mt_log;

-- ---------- 二、之後一律自動套用 ----------
-- 前端已經擋過一次，這裡是繞過畫面直接寫入時的保障
create or replace function public.mt_status_by_end()
returns trigger language plpgsql as $$
begin
  if new.end_time is not null then
    new.status := 'done';
  end if;
  return new;
end $$;

comment on function public.mt_status_by_end is '填了執行結束時間就一定是完成';

drop trigger if exists trg_mt_status on public.maintenance_tasks;
create trigger trg_mt_status
  before insert or update on public.maintenance_tasks
  for each row execute function public.mt_status_by_end();

-- ---------- 確認 ----------
select count(*) as 仍不符合的筆數
  from public.maintenance_tasks
 where end_time is not null and status <> 'done';
