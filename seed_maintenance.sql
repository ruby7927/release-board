-- ============================================================
-- 每週維護排程 — 歷史資料匯入（由 Excel 轉出，可重複執行）
-- 來源：Cebu_Maintenance_Schedule.xlsx、Mexico_Maintenance_Schedule_2026.xlsx
-- 內容：94 個維護視窗（CB 93 週、MX 1 週）、1125 筆任務
-- ============================================================

begin;

-- 匯入歷史資料不該被當成「有人編輯」，先把修改紀錄的 trigger 關掉
alter table public.maintenance_tasks disable trigger trg_mt_log;

-- 維護視窗
insert into public.maintenance_windows (venue, week_date, start_time, end_time, downtime, note, release_team) values
  ('CB', '2026-08-12', '07:30', '09:00', true, '停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2026-08-05', '07:00', '09:00', false, '不停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2026-07-29', '06:00', '10:00', false, '不停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2026-07-22', '08:00', '09:00', true, '停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2026-07-15', '06:00', '09:00', true, '停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2026-07-08', '07:00', '09:00', false, '不停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2026-07-01', '07:00', '09:00', false, '不停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2026-06-24', '08:00', '09:00', true, '停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2026-06-17', '08:00', '09:00', true, '停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2026-06-10', '08:00', '09:00', true, '停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2026-06-03', '07:00', '09:00', false, '不停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2026-05-27', '07:00', '09:00', false, '不停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2026-05-20', '08:00', '09:00', true, '停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2026-05-13', '08:00', '09:00', true, '停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2026-05-06', '08:00', '09:00', true, '停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2026-04-29', '07:00', '09:00', false, '不停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2026-04-22', '08:00', '09:00', true, '停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2026-04-15', '07:30', '09:00', true, '停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2026-04-08', '06:00', '09:00', false, '不停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2026-04-01', '07:00', '09:00', false, '不停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2026-03-25', '07:00', '09:00', false, '不停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2026-03-18', '08:00', '09:00', true, '停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2026-03-11', '08:00', '09:55', true, '停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2026-03-04', '07:00', '09:00', false, '不停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2026-02-25', '07:00', '09:00', false, '不停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2026-02-18', '06:00', '07:00', true, '停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2026-02-11', '08:00', '09:00', true, '停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2026-02-04', '06:00', '09:00', false, '不停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2026-01-28', '07:00', '09:00', false, '不停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2026-01-21', '08:00', '09:00', true, '停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2026-01-14', '08:00', '09:00', true, '停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2026-01-07', '07:30', '09:30', true, '停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2025-12-30', '07:00', '08:40', false, '不停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2025-12-24', '07:00', '09:00', true, '停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2025-12-17', '07:00', '09:10', true, '停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2025-12-10', '08:00', '09:00', true, '停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2025-12-03', '08:00', '10:00', false, '不停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2025-11-26', '08:00', '10:00', false, '不停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2025-11-19', '08:00', '09:00', true, '停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2025-11-12', '08:00', '09:00', true, '停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2025-11-05', '06:00', '08:00', false, '不停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2025-10-29', '05:00', '08:00', false, '不停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2025-10-22', '08:00', '09:00', true, '停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2025-10-15', '08:00', '09:00', true, '停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2025-10-08', '07:00', '08:40', false, '不停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2025-10-01', '15:00', '17:00', true, '地震_停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2025-09-24', '08:00', '09:00', true, '停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2025-09-17', '08:00', '09:00', true, '停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2025-09-10', '08:00', '09:00', true, '停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2025-09-03', '08:00', '09:00', false, '不停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2025-08-27', '08:00', '09:00', false, '不停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2025-08-20', '08:00', '09:00', true, '停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2025-08-13', '08:00', '09:00', true, '停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2025-08-06', '08:00', '09:00', false, '不停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2025-07-30', '08:00', '09:00', false, '不停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2025-07-23', '08:00', '09:00', true, '停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2025-07-16', '08:00', '09:00', true, '停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2025-07-09', '07:00', '09:00', true, '停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2025-07-02', '08:00', '09:00', true, '停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2025-06-25', '08:00', '09:00', true, '停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet,Emanuel
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2025-06-18', '07:30', '08:00', true, NULL, 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2025-06-11', '08:00', '09:00', true, '停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2025-06-03', '06:30', '07:30', true, '停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2025-05-28', '08:00', '09:00', false, '不停機維護', 'LCS : Tony
Streaming : Bernard(Temporary)
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet
辨識系統五合一:Rossi, Gary
翻譯系統:Gary'),
  ('CB', '2025-05-21', '08:00', '09:00', true, '停機維護', 'LCS : Tony
Streaming : Bernard(Temporary)
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet
辨識系統五合一:Rossi, Gary'),
  ('CB', '2025-05-14', '08:00', '09:00', true, '停機維護', 'LCS : Tony
Streaming : Bernard(Temporary)
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet
辨識系統五合一:Rossi, Gary'),
  ('CB', '2025-05-07', '08:00', '09:00', true, '停機維護', 'LCS : Tony
Streaming : Bernard(Temporary)
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet
辨識系統五合一:Rossi, Gary'),
  ('CB', '2025-04-30', '08:00', '09:00', false, '不停機維護', 'LCS : Tony
Streaming : Bernard(Temporary)
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet
辨識系統五合一:Rossi, Gary'),
  ('CB', '2025-04-23', '08:00', '09:00', true, '停機維護', 'LCS : Tony
Streaming : Bernard(Temporary)
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet
辨識系統五合一:Rossi, Gary'),
  ('CB', '2025-04-16', '08:00', '09:00', true, '停機維護', 'LCS : Tony
Streaming : Bernard(Temporary)
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet
辨識系統五合一:Rossi, Gary'),
  ('CB', '2025-04-09', '08:00', '09:00', true, '停機維護', 'LCS : Tony
Streaming : Bernard(Temporary)
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet
辨識系統五合一:Rossi, Gary'),
  ('CB', '2025-04-02', '05:00', '09:00', false, '不停機維護', 'LCS : Tony
Streaming : Bernard(Temporary)
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet
辨識系統五合一:Rossi, Gary'),
  ('CB', '2025-03-26', '08:00', '09:00', NULL, NULL, 'LCS : Tony
Streaming : Bernard(Temporary)
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet
辨識系統五合一:Rossi, Gary'),
  ('CB', '2025-03-19', '08:00', '09:00', NULL, NULL, 'LCS : Tony
Streaming : Bernard(Temporary)
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet
辨識系統五合一:Rossi, Gary'),
  ('CB', '2025-03-12', '07:00', '09:00', NULL, NULL, 'LCS : Tony
Streaming : Bernard(Temporary)
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet
辨識系統五合一:Rossi, Gary'),
  ('CB', '2025-03-05', '07:30', '09:00', NULL, NULL, 'LCS : Tony
Streaming : Bernard(Temporary)
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet
辨識系統五合一:Rossi'),
  ('CB', '2025-02-26', '08:00', '09:00', NULL, NULL, 'LCS : Tony
Streaming : Bernard(Temporary)
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet
辨識系統五合一:Rossi'),
  ('CB', '2025-02-19', '08:00', '09:00', NULL, NULL, 'LCS : Tony
Streaming : Bernard(Temporary)
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet
辨識系統五合一:Rossi'),
  ('CB', '2025-02-12', '07:30', '09:00', NULL, NULL, 'LCS : Tony
Streaming : Bernard(Temporary)
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet
辨識系統五合一:Rossi'),
  ('CB', '2025-02-05', '08:00', '09:00', NULL, NULL, 'LCS : Tony
Streaming : Bernard(Temporary)
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet
辨識系統五合一:Rossi'),
  ('CB', '2025-01-15', '09:00', '10:00', NULL, NULL, 'LCS : Tony
Streaming : Bernard(Temporary)
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(IT/OP) : Zet
辨識系統五合一:Rossi'),
  ('CB', '2025-01-08', '08:30', '10:00', NULL, NULL, 'LCS : Tony
Streaming : Bernard(Temporary)
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(OP) : Zet
辨識系統五合一:Rossi'),
  ('CB', '2025-01-01', '08:00', '09:00', NULL, NULL, 'LCS : Tony
Streaming : Bernard(Temporary)
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(OP) : Zet
辨識系統五合一:Rossi'),
  ('CB', '2024-12-25', '06:00', '07:00', NULL, NULL, 'LCS : Tony
Streaming : Bernard(Temporary)
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(OP) : Zet
辨識系統五合一:Rossi'),
  ('CB', '2024-12-18', '08:00', '10:30', NULL, NULL, 'LCS : Tony
Streaming : Bernard(Temporary)
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(OP) : Zet
辨識系統五合一:Rossi'),
  ('CB', '2024-12-11', '09:00', '10:00', NULL, NULL, 'LCS : Tony
Streaming : Bernard(Temporary)
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(OP) : Zet
辨識系統五合一:Rossi'),
  ('CB', '2024-12-04', '08:00', '09:00', NULL, NULL, 'LCS : Tony
Streaming : Bernard(Temporary)
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(OP) : Zet
辨識系統五合一:Rossi'),
  ('CB', '2024-11-27', '08:00', '09:00', NULL, NULL, 'LCS : Tony
Streaming : Bernard(Temporary)
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(OP) : Zet
辨識系統五合一:Rossi'),
  ('CB', '2024-11-20', '08:00', '10:30', NULL, NULL, 'LCS : Tony
Streaming : Bernard(Temporary)
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(OP) : Zet
辨識系統五合一:Rossi'),
  ('CB', '2024-11-13', NULL, NULL, NULL, NULL, 'LCS : Tony
Streaming : Bernard(Temporary)
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(OP) : Zet
辨識系統五合一:Rossi'),
  ('CB', '2024-11-06', NULL, NULL, NULL, NULL, 'LCS : Tony
Streaming : Bernard(Temporary)
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(OP) : Zet
辨識系統五合一:Rossi'),
  ('CB', '2024-10-30', NULL, NULL, NULL, NULL, 'LCS : Tony
Streaming : Bernard(Temporary)
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(OP) : Zet
辨識系統五合一:Rossi'),
  ('CB', '2024-10-23', NULL, NULL, NULL, NULL, 'LCS : Tony
Streaming : Bernard(Temporary)
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Cebu Studio(OP) : Zet
辨識系統五合一:Rossi'),
  ('MX', '2026-08-12', '07:30', '09:00', true, '停機維護', 'LCS : Tony
Streaming : Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Mexico Studio(IT/OP) : Stanley、John、Edith
辨識系統五合一:Rossi')
on conflict (venue, week_date) do update set
  start_time = excluded.start_time, end_time = excluded.end_time,
  downtime   = excluded.downtime,   note     = excluded.note,
  release_team = excluded.release_team;

-- 任務明細（依 venue + week_date 對回視窗）
insert into public.maintenance_tasks
  (window_id, seq, system, owner, details, start_time, end_time, duration_min, status, notes)
select w.id, t.seq, t.system, t.owner, t.details, t.start_time, t.end_time,
       t.duration_min, t.status, t.notes
from (values
  ('CB', '2026-08-12'::date, 1, 'Cebu Studio(IT)', 'Zet/Gary', '現場Proxy server重啟(Studio A/B/C)', '07:30'::time, '07:41'::time, 11, 'done', NULL),
  ('CB', '2026-08-12'::date, 2, 'Cebu Studio(OP)', 'Emanuel', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '07:30'::time, '08:00'::time, 30, 'done', NULL),
  ('CB', '2026-08-12'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '07:30'::time, NULL::time, NULL, 'pending', NULL),
  ('CB', '2026-08-12'::date, 4, 'Streaming(UL)', 'Evan
Hedy', 'CD廳 Multi-bitrate架構轉換', '07:30'::time, '08:10'::time, 40, 'done', NULL),
  ('CB', '2026-08-12'::date, 5, 'LCS', 'Tony', '1. Refactor Class Method
2. 百家樂新增注區
3. 移除EROU 73桌,該桌將移給ROU使用
4. Multi-bitrate架構調整', '07:30'::time, '08:35'::time, 65, 'done', NULL),
  ('CB', '2026-08-12'::date, 6, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('CB', '2026-08-12'::date, 7, 'DS System', 'Fanny', 'DS 35.5
1.:骰類隨機 腳本 code 併入 正式 版(尚 未 開放 啟用 )', '07:30'::time, NULL::time, NULL, 'pending', NULL),
  ('CB', '2026-08-12'::date, 8, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('CB', '2026-08-12'::date, 9, '賭具更換', 'Michelle', '1. (Baccarat)更換黃卡
2. (C121 Sicbo)更換骰子(使用440次測試骰子)
3. (C121 Sicbo)更換骰盅襯墊
4. (C132 Sicbo)更換骰子(使用440次測試骰子)
5. (C132 Sicbo)更換一組新骰盅
6. (C151 Sedie)更換色碟骰
7. (C151 Sedie)更換一組新骰盅', '07:30'::time, NULL::time, NULL, 'pending', NULL),
  ('CB', '2026-08-12'::date, 10, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('CB', '2026-08-12'::date, 11, 'CAD Server', 'Neroal', 'Server 重啟', '08:00'::time, '08:02'::time, 2, 'pending', NULL),
  ('CB', '2026-08-12'::date, 12, 'Dealer Monitor (風控)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('CB', '2026-08-12'::date, 13, 'Shoes Monitor (牌靴監控)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('CB', '2026-08-12'::date, 14, 'Roadmap (路子圖)', 'Neroal', '更新百家龍虎圖示', '08:00'::time, '08:02'::time, 2, 'pending', NULL),
  ('CB', '2026-08-12'::date, 15, 'Chat Room (聊天室)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('CB', '2026-08-12'::date, 16, 'Data Center (資料中心)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('CB', '2026-08-12'::date, 17, 'OP後台', 'Zach', '1.Prod 環境 的 MySQL 系統強制 資料 庫升級
2.Game Live State API 新 增 Response 欄 位 , 當 前 遊戲桌狀態', '07:30'::time, NULL::time, NULL, 'pending', NULL),
  ('CB', '2026-08-05'::date, 1, 'Cebu Studio(IT)', 'Zet/Gary', '現場Proxy server重啟(Studio A & B & C)
確認 C14 DS 實體網路 Port 狀態', '06:54'::time, '08:06'::time, 72, 'done', NULL),
  ('CB', '2026-08-05'::date, 2, 'Cebu Studio(OP)', 'Emanuel', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)
Reboot Media PC', '07:00'::time, '08:15'::time, 75, 'done', NULL),
  ('CB', '2026-08-05'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:55'::time, 55, 'done', NULL),
  ('CB', '2026-08-05'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. 新增AM團隊Website
3. TPO ResultOdds 列出全部的catagory odds', '08:00'::time, '09:00'::time, 60, 'done', NULL),
  ('CB', '2026-08-05'::date, 5, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-08-05'::date, 6, 'DS System', 'Fanny', 'DS 35.4 .1

1. 龍虎、 百家 達 最 大 局數, 會跳 出告 警 提醒 換靴

2.百家 最 大局 數 改為 75局
3.若 觸發 最 大局 數同 時 按 下DS Setting 視窗 的 Confi rm, 會補 發 洗牌APP 通知 燈號 改換 靴', '06:56'::time, '07:57'::time, 61, 'done', NULL),
  ('CB', '2026-08-05'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-08-05'::date, 8, '賭具更換', 'Michelle', '1. (Baccarat)更換新牌
2. (Baccarat)更換黃卡
3. (C121 Sicbo)更換骰子(使用440次測試骰子)
4. (C121 Sicbo)更換骰盅襯墊
5. (C132 Sicbo)更換骰子(使用440次測試骰子)
6. (C132 Sicbo)更換一組新骰盅
7. (C151 Sedie)更換色碟骰
8. (C151 Sedie)更換一組新骰盅', '07:00'::time, '08:00'::time, 60, 'done', NULL),
  ('CB', '2026-08-05'::date, 9, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-08-05'::date, 10, 'CAD Server', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-08-05'::date, 11, 'Dealer Monitor (風控)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-08-05'::date, 12, 'Shoes Monitor (牌靴監控)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-08-05'::date, 13, 'Roadmap (路子圖)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-08-05'::date, 14, 'Chat Room (聊天室)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-08-05'::date, 15, 'Data Center (資料中心)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-08-05'::date, 16, 'OP後台', 'Zach', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-08-05'::date, 17, '鏡頭設定', 'Emanuel', '1.C17&C18相機模式設定成標準
2.C07第二鏡校準', '07:00'::time, '07:35'::time, 35, 'done', NULL),
  ('CB', '2026-07-29'::date, 1, 'Cebu Studio(IT)', 'Zet/Gary', '現場Proxy server重啟(Studio A/B/C)', '06:00'::time, '08:12'::time, 132, 'done', NULL),
  ('CB', '2026-07-29'::date, 2, 'Cebu Studio(OP)', 'Emanuel', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '06:00'::time, '08:10'::time, 130, 'done', NULL),
  ('CB', '2026-07-29'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:56'::time, 56, 'done', NULL),
  ('CB', '2026-07-29'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. 後台部分功能新增或異動時,應有歷史紀錄
3. 色碟全滿版畫面調整
4. 泰國魚蝦蟹全滿版畫面調整', '07:15'::time, '08:15'::time, 60, 'done', NULL),
  ('CB', '2026-07-29'::date, 5, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-07-29'::date, 6, 'DS System', 'Fanny', 'DS 35.3
1. 龍虎、 百家 達 最 大 局數, 會跳 出告 警 提醒 換靴', '06:00'::time, '08:10'::time, 130, 'done', NULL),
  ('CB', '2026-07-29'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-07-29'::date, 8, '賭具更換', 'Michelle', '1. 更換所有遊戲桌桌板
2. (Baccarat)更換黃卡
3. (C121 Sicbo)更換骰子(使用440次測試骰子)
4. (C121 Sicbo)更換骰盅襯墊
5. (C132 Sicbo)更換骰子(使用440次測試骰子)
6. (C132 Sicbo)更換一組新骰盅
7. (C151 Sedie)更換色碟骰
8. (C151 Sedie)更換一組新骰盅', '06:00'::time, '08:20'::time, 140, 'done', NULL),
  ('CB', '2026-07-29'::date, 9, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-07-29'::date, 10, 'Dealer Monitor (風控)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-07-29'::date, 11, 'Shoes Monitor (牌靴監控)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-07-29'::date, 12, 'Roadmap (路子圖)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-07-29'::date, 13, 'Chat Room (聊天室)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-07-29'::date, 14, 'Data Center (資料中心)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-07-29'::date, 15, 'OP後台', 'Zach', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-07-22'::date, 1, 'Cebu Studio(IT)', 'Zet/Gary', '現場Proxy server重啟(Studio A & B)', '08:00'::time, '08:10'::time, 10, 'done', NULL),
  ('CB', '2026-07-22'::date, 2, 'Cebu Studio(OP)', 'Emanuel', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('CB', '2026-07-22'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:56'::time, 56, 'done', NULL),
  ('CB', '2026-07-22'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. 修正玩家下注倒數中進桌, 會先閃一下”資料不足, 請稍待累積X局後”
3. BAC, DT 配合墨西哥場地遊戲前端虛擬牌開牌調整優化
4. MX新增百家樂營運桌14桌
5. 修正Report By Website切換website後搜尋資料沒有正確展示', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('CB', '2026-07-22'::date, 5, '辨識系統五合一', 'Rossi
Gary', 'C121模型調整', '07:55'::time, '08:00'::time, 5, 'done', NULL),
  ('CB', '2026-07-22'::date, 6, 'DS System', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-07-22'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-07-22'::date, 8, '賭具更換', 'Michelle', '1. (Baccarat)更換新牌
2. (Baccarat)更換黃卡
3. (C121 Sicbo)更換骰子(使用440次測試骰子)
4. (C121 Sicbo)更換骰盅襯墊
5. (C132 Sicbo)更換骰子(使用440次測試骰子)
6. (C132 Sicbo)更換一組新骰盅
7. (C151 Sedie)更換色碟骰
8. (C151 Sedie)更換一組新骰盅', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('CB', '2026-07-22'::date, 9, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-07-22'::date, 10, 'CAD Server', 'Neroal', 'Monthly Reboot', '08:30'::time, '08:35'::time, 5, 'done', NULL),
  ('CB', '2026-07-22'::date, 11, 'Dealer Monitor (風控)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-07-22'::date, 12, 'Shoes Monitor (牌靴監控)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-07-22'::date, 13, 'Roadmap (路子圖)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-07-22'::date, 14, 'Chat Room (聊天室)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-07-22'::date, 15, 'Data Center (資料中心)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-07-22'::date, 16, 'OP後台', 'Zach', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-07-15'::date, 1, 'Cebu Studio(IT)', 'Zet/Gary', '現場Proxy server重啟(Studio A/B/C)', '06:00'::time, '06:10'::time, 10, 'done', NULL),
  ('CB', '2026-07-15'::date, 2, 'Cebu Studio(OP)', 'Emanuel', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '06:00'::time, '06:30'::time, 30, 'done', NULL),
  ('CB', '2026-07-15'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '06:00'::time, '09:00'::time, 180, 'done', NULL),
  ('CB', '2026-07-15'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. ExtraSicbo 全滿版畫面調整
3. ThaiHiLo 全滿版畫面調整
4. 新增 MX13
5. 新增 CB22
6. 調整荷官圖片定期同步規則', '06:00'::time, '08:05'::time, 125, 'done', NULL),
  ('CB', '2026-07-15'::date, 5, '辨識系統五合一', 'Rossi
Gary', '重啟所有辨識主機
C20大花色辨識模型調整', '06:00'::time, '06:59'::time, 59, 'done', NULL),
  ('CB', '2026-07-15'::date, 6, 'DS System', 'Fanny', 'DS 35.2.0
1. OP Server UAT URL 更換
2. CAD URL 加入Server Setting
3.傳送事件多一個Device iP
DS 設定:所有百家秒數調整(19s)', '08:00'::time, '08:40'::time, 40, 'done', NULL),
  ('CB', '2026-07-15'::date, 7, 'Proxy server', 'Fanny', 'Proxy設定:多收一個DS來源Device iP', '08:00'::time, '08:40'::time, 40, 'done', NULL),
  ('CB', '2026-07-15'::date, 8, '賭具更換', 'Michelle', '1. (Baccarat)更換大花色牌C22
2. 更換C22桌板&桌上活動佈置
3. (Baccarat)更換黃卡
4. (C121 Sicbo)更換骰子(使用440次測試骰子)
5. (C121 Sicbo)更換骰盅襯墊
6. (C132 Sicbo)更換骰子(使用440次測試骰子)
7. (C132 Sicbo)更換一組新骰盅
8. (C151 Sedie)更換色碟骰
8. (C151 Sedie)更換一組新骰盅', '06:00'::time, '07:30'::time, 90, 'done', NULL),
  ('CB', '2026-07-15'::date, 9, '翻譯系統', 'Gary', '重啟翻譯主機', '06:00'::time, '06:59'::time, 59, 'done', NULL),
  ('CB', '2026-07-15'::date, 10, 'Dealer Monitor (風控)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-07-15'::date, 11, 'Shoes Monitor (牌靴監控)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-07-15'::date, 12, 'Roadmap (路子圖)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-07-15'::date, 13, 'Chat Room (聊天室)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-07-15'::date, 14, 'Data Center (資料中心)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-07-15'::date, 15, 'OP後台', 'Zach', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-07-15'::date, 16, 'Shuffle server&DB移機', 'Gary', 'Shuffle server&DB移到機房', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-07-15'::date, 17, 'Al翻譯機移機', 'Gary', 'Al翻譯機位移空出機櫃空間', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-07-15'::date, 18, '新鏡位調整', 'Emanuel', 'C09&C10新對位調整', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-07-08'::date, 1, 'Cebu Studio(IT)', 'Zet/Gary', '現場Proxy server重啟(Studio A & B)', '07:00'::time, '08:12'::time, 72, 'done', NULL),
  ('CB', '2026-07-08'::date, 2, 'Cebu Studio(OP)', 'Emanuel', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '07:00'::time, '08:25'::time, 85, 'done', NULL),
  ('CB', '2026-07-08'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:50'::time, 50, 'done', NULL),
  ('CB', '2026-07-08'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. 檢核玩家視訊畫面與目前事件桌次是否一致
3. 新增後台功能頁面 > 查詢結算時間
4. 調整API UserID字元數限制
5. 關閉線上輪盤廣告以及NEW顯示和相關設定', '07:30'::time, '08:30'::time, 60, 'done', NULL),
  ('CB', '2026-07-08'::date, 5, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-07-08'::date, 6, 'DS System', 'Fanny', 'C11 關閉 Hyper-V ( Gary )', '08:00'::time, '08:10'::time, 10, 'done', NULL),
  ('CB', '2026-07-08'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-07-08'::date, 8, '賭具更換', 'Michelle', '1. (Baccarat)更換新牌
2. (Baccarat)更換黃卡
3. (C121 Sicbo)更換骰子(使用440次測試骰子)
4. (C121 Sicbo)更換骰盅襯墊
5. (C132 Sicbo)更換骰子(使用440次測試骰子)
6. (C132 Sicbo)更換一組新骰盅
7. (C151 Sedie)更換色碟骰
8. (C151 Sedie)更換一組新骰盅', '07:00'::time, '08:20'::time, 80, 'done', NULL),
  ('CB', '2026-07-08'::date, 9, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-07-08'::date, 10, 'Dealer Monitor (風控)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-07-08'::date, 11, 'Shoes Monitor (牌靴監控)', 'Neroal', '1. 新增設定桌號頁面', '07:55'::time, '07:56'::time, 1, 'done', NULL),
  ('CB', '2026-07-08'::date, 12, 'Roadmap (路子圖)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-07-08'::date, 13, 'Chat Room (聊天室)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-07-08'::date, 14, 'Data Center (資料中心)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-07-08'::date, 15, 'OP後台', 'Zach', '新增C 22桌外部 開 關桌 設定 (9 :00後開始 可 使用 )', '08:45'::time, '08:55'::time, 10, 'done', NULL),
  ('CB', '2026-07-01'::date, 1, 'Cebu Studio(IT)', 'Zet/Gary', '現場Proxy server重啟(Studio A/B/C)', '07:00'::time, '08:11'::time, 71, 'done', NULL),
  ('CB', '2026-07-01'::date, 2, 'Cebu Studio(OP)', 'Emanuel', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)
Reboot Media PC', '07:00'::time, '08:30'::time, 90, 'done', NULL),
  ('CB', '2026-07-01'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:51'::time, 51, 'done', NULL),
  ('CB', '2026-07-01'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method', '07:15'::time, '08:25'::time, 70, 'done', NULL),
  ('CB', '2026-07-01'::date, 5, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-07-01'::date, 6, 'DS System', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-07-01'::date, 7, 'Proxy server', 'Fanny', '新增C22桌線路設定', '07:15'::time, '07:40'::time, 25, 'done', NULL),
  ('CB', '2026-07-01'::date, 8, '賭具更換', 'Michelle', '1. (Baccarat)更換黃卡
2. (C121 Sicbo)更換骰子(使用440次測試骰子)
3. (C121 Sicbo)更換骰盅襯墊
4. (C132 Sicbo)更換骰子(使用440次測試骰子)
5. (C132 Sicbo)更換一組新骰盅
6. (C151 Sedie)更換色碟骰
7. (C151 Sedie)更換一組新骰盅', '07:00'::time, '08:15'::time, 75, 'done', NULL),
  ('CB', '2026-07-01'::date, 9, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-07-01'::date, 10, 'Dealer Monitor (風控)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-07-01'::date, 11, 'Shoes Monitor (牌靴監控)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-07-01'::date, 12, 'Roadmap (路子圖)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-07-01'::date, 13, 'Chat Room (聊天室)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-07-01'::date, 14, 'Data Center (資料中心)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-07-01'::date, 15, 'OP後台', 'Zach', '1. 分級通知擴充功能:通知拆分至廠區與桌子分開獨立分級
2. 新增 bingoPlusMachineIP 參數', '08:00'::time, '08:20'::time, 20, 'done', NULL),
  ('CB', '2026-06-24'::date, 1, 'Cebu Studio(IT)', 'Zet/Gary', '現場Proxy server重啟(Studio A & B)', '08:00'::time, '08:22'::time, 20, 'done', NULL),
  ('CB', '2026-06-24'::date, 2, 'Cebu Studio(OP)', 'Emanuel', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('CB', '2026-06-24'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:50'::time, 50, 'done', NULL),
  ('CB', '2026-06-24'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. 新增【百家樂】MX 12桌, 【百家樂】CB 21桌, 【EX骰寶】MX 132桌
3. SKY 提供每桌及時在線資訊 API
4. ResultOdds, RandomPayResult新增roundstarttime欄位
5. 修正使用3G網路,玩家TIP參數帶False登入桌內,會看到打賞關閉的中央訊息', '08:00'::time, '08:36'::time, 36, 'done', NULL),
  ('CB', '2026-06-24'::date, 5, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-06-24'::date, 6, 'DS System', 'Fanny', 'DS 35.1.0.0
1. 版本號顯示方式調整
2. 龍虎洗牌機合版', '08:00'::time, '08:20'::time, 20, 'done', NULL),
  ('CB', '2026-06-24'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-06-24'::date, 8, '賭具更換', 'Michelle', '1. (Baccarat)更換新牌
2. (Baccarat)更換黃卡
3. (C121 Sicbo)更換骰子(使用440次測試骰子)
4. (C121 Sicbo)更換骰盅襯墊
5. (C132 Sicbo)更換骰子(使用440次測試骰子)
6. (C132 Sicbo)更換一組新骰盅
7. (C151 Sedie)更換色碟骰
8. (C151 Sedie)更換一組新骰盅', '08:00'::time, '08:25'::time, 25, 'done', NULL),
  ('CB', '2026-06-24'::date, 9, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-06-24'::date, 10, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-06-24'::date, 11, '路子圖、Chat Room', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-06-24'::date, 12, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-06-24'::date, 13, 'OP後台', 'Zach', 'DS 使用的 onsite user list api 快取從 24小時到期縮短到 1小時', '08:00'::time, '08:15'::time, 15, 'done', NULL),
  ('CB', '2026-06-17'::date, 1, 'Cebu Studio(IT)', 'Zet/Gary', '現場Proxy server重啟(Studio A/B/C)', '08:00'::time, '08:24'::time, 24, 'done', NULL),
  ('CB', '2026-06-17'::date, 2, 'Cebu Studio(OP)', 'Emanuel', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)
Reboot Media PC', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('CB', '2026-06-17'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '09:00'::time, 60, 'done', NULL),
  ('CB', '2026-06-17'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. Redisson client升級Redis8
3. 新增後端投注檢查
4. 提供每桌及時在線人數&桌子資訊 API
5. CEBU C17、C18改為MultiBitRate
6. 客戶需求路子API 需求調整
7. 提供下單IP的資訊給端點&聯合進行相關分析', '08:00'::time, '08:45'::time, 45, 'done', NULL),
  ('CB', '2026-06-17'::date, 5, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-06-17'::date, 6, 'DS System', 'Fanny', 'DS 35.0.0.0
1. 彩球機、 百家 洗牌 流程 合版
2. 優化 Fatal 群 的 T G Bot 進行 分群
3. 修正 百家、 龍虎 Max Round 換靴 提示', '08:00'::time, '08:20'::time, 20, 'done', NULL),
  ('CB', '2026-06-17'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-06-17'::date, 8, '賭具更換', 'Michelle', '1. (Baccarat)更換黃卡
2. (C121 Sicbo)更換骰子(使用440次測試骰子)
3. (C121 Sicbo)更換骰盅襯墊
4. (C132 Sicbo)更換骰子(使用440次測試骰子)
5. (C132 Sicbo)更換一組新骰盅
6. (C151 Sedie)更換色碟骰
7. (C151 Sedie)更換一組新骰盅', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('CB', '2026-06-17'::date, 9, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-06-17'::date, 10, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-06-17'::date, 11, '路子圖、Chat Room', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-06-17'::date, 12, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-06-17'::date, 13, 'OP後台', 'Zach', '更新 洗牌機 Table Lis t
修正 荷官 相片 超過 上限錯 誤
修正 荷官後 台 Dealer 角色 轉換錯誤', '08:00'::time, '08:15'::time, 15, 'done', NULL),
  ('CB', '2026-06-10'::date, 1, 'Cebu Studio(IT)', 'Zet/Gary', '現場Proxy server重啟(Studio A & B)', '08:00'::time, '08:23'::time, 23, 'done', NULL),
  ('CB', '2026-06-10'::date, 2, 'Cebu Studio(OP)', 'Emanuel', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '06:00'::time, '08:21'::time, 21, 'done', NULL),
  ('CB', '2026-06-10'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:45'::time, 45, 'done', NULL),
  ('CB', '2026-06-10'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. Web新版輪盤
3. Mobile新版輪盤
4. 調整大廳桌子排序', '08:00'::time, '08:45'::time, 45, 'done', NULL),
  ('CB', '2026-06-10'::date, 5, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-06-10'::date, 6, 'DS System', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-06-10'::date, 7, 'Proxy server', 'Fanny', '增加 Endpoint C21', '08:00'::time, '08:41'::time, 41, 'done', NULL),
  ('CB', '2026-06-10'::date, 8, '賭具更換', 'Michelle', '1. (Baccarat)更換新牌
2. (Baccarat)更換黃卡
3. (C121 Sicbo)更換骰子(使用440次測試骰子)
4. (C121 Sicbo)更換骰盅襯墊
5. (C132 Sicbo)更換骰子(使用440次測試骰子)
6. (C132 Sicbo)更換一組新骰盅
7. (C151 Sedie)更換色碟骰
8. (C151 Sedie)更換一組新骰盅', '06:00'::time, '08:25'::time, 145, 'done', NULL),
  ('CB', '2026-06-10'::date, 9, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-06-10'::date, 10, 'Dealer Monitor', 'JimLin', '1. DATA串接DATA CENTER位置', '08:30'::time, '08:40'::time, 10, 'done', NULL),
  ('CB', '2026-06-10'::date, 11, '路子圖、Chat Room', 'JimLin', '1. reboot server', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-06-10'::date, 12, 'Data Center(每桌info)', 'JimLin', '1. reboot server', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-06-10'::date, 13, 'OP後台', 'Zach', '修正荷官後台下載照片問題', '08:00'::time, '08:20'::time, 20, 'done', NULL),
  ('CB', '2026-06-10'::date, 14, '活動佈置', 'Michelle', '⚽ FIFA World Cup Event ⚽ (期間:June. 10 - July. 20)
1. 現場活動佈置
2. 節慶大廳照更換', '06:00'::time, '08:40'::time, 160, 'done', NULL),
  ('CB', '2026-06-10'::date, 15, '更新骰盅', 'Emanuel', '更換Studio B C121自動骰盅盅體', '07:30'::time, '08:30'::time, 30, 'done', NULL),
  ('CB', '2026-06-10'::date, 16, '調整相機', 'Emanuel', 'C21調整成測試數據
1/125
F4
ISO 1250
4800K
Standard', '08:00'::time, '08:45'::time, 45, 'done', NULL),
  ('CB', '2026-06-03'::date, 1, 'Cebu Studio(IT)', 'Zet/Gary', '現場Proxy server重啟(Studio A & B)', '07:00'::time, '08:12'::time, 72, 'done', NULL),
  ('CB', '2026-06-03'::date, 2, 'Cebu Studio(OP)', 'Emanuel', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)
Reboot Media PC', '07:00'::time, '08:30'::time, 90, 'done', NULL),
  ('CB', '2026-06-03'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:50'::time, 50, 'done', NULL),
  ('CB', '2026-06-03'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. 更新jbl Version:v20260527-1
3. 新增API Cache Server', '07:30'::time, '08:35'::time, 65, 'done', NULL),
  ('CB', '2026-06-03'::date, 5, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-06-03'::date, 6, 'DS System', 'Fanny', 'DS 34.28
1. 修正 No data 狀態誤判(風控)
2. 優化 DS 與 BI / API 紀錄 流程
3. 洗牌機 流程合版 (僅MX 13桌 - 測試)
4. 33 桌變 更 為 自動 更新', '07:00'::time, '08:30'::time, 90, 'done', NULL),
  ('CB', '2026-06-03'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-06-03'::date, 8, '賭具更換', 'Michelle', '1. (Baccarat)更換黃卡
2. (C121 Sicbo)更換骰子
3. (C121 Sicbo)更換骰盅襯墊
4. (C132 Sicbo)更換骰子
5. (C132 Sicbo)更換一組新骰盅
6. (C151 Sedie)更換色碟骰
7. (C151 Sedie)更換一組新骰盅', '07:00'::time, '08:20'::time, 80, 'done', NULL),
  ('CB', '2026-06-03'::date, 9, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-06-03'::date, 10, 'Dealer Monitor', 'JimLin', '1. Shoes Monitor會加上 PROD UAT 標籤', '08:30'::time, '08:40'::time, 10, 'done', NULL),
  ('CB', '2026-06-03'::date, 11, '路子圖、Chat Room', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-06-03'::date, 12, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-06-03'::date, 13, 'OP後台', 'Zach', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-05-27'::date, 1, 'Cebu Studio(IT)', 'Zet/Gary', '現場Proxy server重啟(Studio A & B)', '07:00'::time, '08:04'::time, 64, 'done', NULL),
  ('CB', '2026-05-27'::date, 2, 'Cebu Studio(OP)', 'Emanuel', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '07:00'::time, '08:25'::time, 85, 'done', NULL),
  ('CB', '2026-05-27'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '09:00'::time, 60, 'done', NULL),
  ('CB', '2026-05-27'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. 更新jbl Version:v20260515-1
3. 傳送玩家geyKey部分資訊至jbl
4. 新增【百家樂】MX 11桌, 【龍虎】MX 33桌
5. 新增【輪盤】預熱廣告', '07:30'::time, '08:35'::time, 65, 'done', NULL),
  ('CB', '2026-05-27'::date, 5, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-05-27'::date, 6, 'DS System', 'Fanny', 'DS 34.27
1.龍虎No draw觸發 顯示 修正
2.LCS特別 版功 能
3.DS端 API Proxy Return code 處理', '07:00'::time, '08:10'::time, 70, 'done', NULL),
  ('CB', '2026-05-27'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-05-27'::date, 8, '賭具更換', 'Michelle', '1. (Baccarat)更換新牌
2. (Baccarat)更換黃卡
3. (C121 Sicbo)更換骰子
4. (C121 Sicbo)更換骰盅襯墊
5. (C132 Sicbo)更換骰子
6. (C132 Sicbo)更換一組新骰盅
7. (C151 Sedie)更換色碟骰
8. (C151 Sedie)更換一組新骰盅', '07:00'::time, '08:15'::time, 75, 'done', NULL),
  ('CB', '2026-05-27'::date, 9, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-05-27'::date, 10, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-05-27'::date, 11, '路子圖、Chat Room', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-05-27'::date, 12, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-05-27'::date, 13, 'OP後台', 'Zach', '修復 DS 呼叫 BI Service 併發超時(504 Gateway Timeout)問題', '07:00'::time, '08:10'::time, 70, 'done', NULL),
  ('CB', '2026-05-20'::date, 1, 'Cebu Studio(IT)', 'Zet/Gary', '現場Proxy server重啟(Studio A & B)', '08:00'::time, '08:11'::time, 11, 'done', NULL),
  ('CB', '2026-05-20'::date, 2, 'Cebu Studio(OP)', 'Emanuel', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '08:00'::time, '08:25'::time, 25, 'done', NULL),
  ('CB', '2026-05-20'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:48'::time, 48, 'done', NULL),
  ('CB', '2026-05-20'::date, 4, 'LCS', 'Tony', '1. CEBU新增百家樂營運桌C19-C20
2. 新增Currency VES 幣別
3. 龍虎 Moblie調整全滿版視訊縮放
4. 龍虎 Web移除視訊縮放與位移', '08:00'::time, '08:50'::time, 50, 'done', NULL),
  ('CB', '2026-05-20'::date, 5, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-05-20'::date, 6, 'DS System', 'Fanny', '一、 DS 34.26
1 .色 碟No draw 修正
2.龍虎辨識錯誤 提示 為 正常 關閉 修正', '09:00'::time, '10:36'::time, 96, 'done', '日期填 2026-05-19'),
  ('CB', '2026-05-20'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-05-20'::date, 8, '賭具更換', 'Michelle', '1. (Baccarat)更換新牌C19 - C20
2. (Baccarat)更換黃卡
3. (C121 Sicbo)更換骰子
4. (C121 Sicbo)更換骰盅襯墊
5. (C132 Sicbo)更換骰子
6. (C132 Sicbo)更換一組新骰盅
7. (C151 Sedie)更換色碟骰
8. (C151 Sedie)更換一組新骰盅
9. (C151 Sedie)更換桌板', '08:00'::time, '08:20'::time, 20, 'done', NULL),
  ('CB', '2026-05-20'::date, 9, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-05-20'::date, 10, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-05-20'::date, 11, '路子圖、Chat Room', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-05-20'::date, 12, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-05-13'::date, 1, 'Cebu Studio(IT)', 'Zet/Gary', '現場Proxy server重啟(Studio A & B)', '08:00'::time, '08:12'::time, 12, 'done', NULL),
  ('CB', '2026-05-13'::date, 2, 'Cebu Studio(OP)', 'Emanuel', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '08:00'::time, '08:35'::time, 35, 'done', NULL),
  ('CB', '2026-05-13'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:51'::time, 51, 'done', NULL),
  ('CB', '2026-05-13'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. 特定桌次啟用MultiBitRate Player SDK
3. 修正報表API queryTxnReport, queryRoundReport', '08:00'::time, '08:35'::time, 35, 'done', NULL),
  ('CB', '2026-05-13'::date, 5, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-05-13'::date, 6, 'DS System', 'Fanny', 'DS 34.25
風控 新版 上 線', '08:00'::time, '08:40'::time, 40, 'done', NULL),
  ('CB', '2026-05-13'::date, 7, 'Proxy server', 'Fanny', '1. Proxy Server更版
2.C17~C20 MPS Endpoint追加', '08:00'::time, '08:20'::time, 20, 'done', NULL),
  ('CB', '2026-05-13'::date, 8, '賭具更換', 'Michelle', '1. (Baccarat)更換新牌C01-C18
2. (Baccarat)更換黃卡
3. (C121 Sicbo)更換骰子
4. (C121 Sicbo)更換骰盅襯墊
5. (C132 Sicbo)更換骰子
6. (C132 Sicbo)更換一組新骰盅
7. (C151 Sedie)更換色碟骰
8. (C151 Sedie)更換一組新骰盅
9. 更換桌板', '08:00'::time, '08:40'::time, 40, 'done', NULL),
  ('CB', '2026-05-13'::date, 9, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-05-13'::date, 10, 'Dealer Monitor', 'JimLin', '1. 架構區分(依樓層)', '08:00'::time, '08:15'::time, 15, 'done', NULL),
  ('CB', '2026-05-13'::date, 11, '路子圖、Chat Room', 'JimLin', '1. 架構區分(依樓層)', '08:00'::time, '08:15'::time, 15, 'done', NULL),
  ('CB', '2026-05-13'::date, 12, 'Data Center(每桌info)', 'JimLin', '1. 架構區分(依樓層)', '08:00'::time, '08:15'::time, 15, 'done', NULL),
  ('CB', '2026-05-13'::date, 13, 'OP後台', 'Zach', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-05-13'::date, 14, 'shoe monitor', 'Emanuel', '更新shoe monitor到3廳與洗牌房', '08:40'::time, '09:00'::time, 20, 'done', NULL),
  ('CB', '2026-05-06'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '08:00'::time, '08:11'::time, 11, 'done', NULL),
  ('CB', '2026-05-06'::date, 2, 'Cebu Studio(OP)', 'Emanuel', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)
Reboot Media PC', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('CB', '2026-05-06'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:48'::time, 48, 'done', NULL),
  ('CB', '2026-05-06'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. send chat message to UL
3. 移除廣告上傳相關程式
4. ExtraSicbo WebSocket 改版 + 聊打共用', '08:00'::time, '08:37'::time, 37, 'done', NULL),
  ('CB', '2026-05-06'::date, 5, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-05-06'::date, 6, 'DS System', 'Fanny', '一、 DS 34. 24 更 版( 全 廳)

1. 全 遊 戲骰類會補T G告 警
2.Atem切 鏡 位 功能
二、 DS 34.24.0.1 風控 版本 ( C 16)
1.風控 新版 上 線', '09:00'::time, '10:00'::time, 60, 'done', '34.24 & 34.24.0.1 5/5'),
  ('CB', '2026-05-06'::date, 7, 'Proxy server', 'Fanny', 'C17~ C20 Proxy 設定Endpoint', '09:00'::time, '09:30'::time, 30, 'done', NULL),
  ('CB', '2026-05-06'::date, 8, '賭具更換', 'Michelle', '1. (Baccarat)更換黃卡
2. (C121 Sicbo)更換骰子
3. (C121 Sicbo)更換骰盅襯墊
4. (C132 Sicbo)更換骰子
5. (C132 Sicbo)更換一組新骰盅
6. (C151 Sedie)更換色碟骰
7. (C151 Sedie)更換一組新骰盅', '08:00'::time, '08:20'::time, 20, 'done', NULL),
  ('CB', '2026-05-06'::date, 9, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-05-06'::date, 10, 'Dealer Monitor', 'JimLin', '1. 重啟SERVER', '08:30'::time, '08:35'::time, 5, 'done', NULL),
  ('CB', '2026-05-06'::date, 11, '路子圖、Chat Room', 'JimLin', '1. 重啟SERVER', '08:30'::time, '08:35'::time, 5, 'done', NULL),
  ('CB', '2026-05-06'::date, 12, 'Data Center(每桌info)', 'JimLin', '1. 重啟SERVER', '08:30'::time, '08:35'::time, 5, 'done', NULL),
  ('CB', '2026-05-06'::date, 13, 'OP後台', 'Zach', '1.新增Reason功能
2.Log 新增Reason檢視功能', '08:00'::time, '08:15'::time, 15, 'done', NULL),
  ('CB', '2026-04-29'::date, 1, 'Cebu Studio(IT)', 'Zet/Gary', '現場Proxy server重啟(Studio A & B)', '07:00'::time, '08:10'::time, 21, 'done', NULL),
  ('CB', '2026-04-29'::date, 2, 'Cebu Studio(OP)', 'Emanuel', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '07:00'::time, '08:30'::time, 90, 'done', NULL),
  ('CB', '2026-04-29'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:46'::time, 46, 'done', NULL),
  ('CB', '2026-04-29'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. 調整getKey login Extension2流程
3. 更新 sdk.js version2.2.7', '07:45'::time, '08:45'::time, 60, 'done', NULL),
  ('CB', '2026-04-29'::date, 5, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-04-29'::date, 6, 'DS System', 'Fanny', 'DS 34. 23 更 版( 全 廳 )
1.T G告 警分組功能
2.龍虎 開牌 提示 邏輯 修正 參
DS 34.23.0.1 風控 版本 ( C 16)
1.風控 新版 上 線(退版)', '07:00'::time, '08:30'::time, 40, 'done', '34.23 34.23.0.1 / 34.23.0.1'),
  ('CB', '2026-04-29'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-04-29'::date, 8, '賭具更換', 'Michelle', '1. (Baccarat)更換新牌
2. (Baccarat)更換黃卡
3. (C121 Sicbo)更換骰子
4. (C121 Sicbo)更換骰盅襯墊
5. (C132 Sicbo)更換骰子
6. (C132 Sicbo)更換一組新骰盅
7. (C151 Sedie)更換色碟骰
8. (C151 Sedie)更換一組新骰盅', '07:00'::time, '08:25'::time, 85, 'done', NULL),
  ('CB', '2026-04-29'::date, 9, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-04-29'::date, 10, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-04-29'::date, 11, '路子圖、Chat Room', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-04-29'::date, 12, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-04-22'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '08:00'::time, '08:10'::time, 10, 'done', NULL),
  ('CB', '2026-04-22'::date, 2, 'Cebu Studio(OP)', 'Emanuel', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('CB', '2026-04-22'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:48'::time, 48, 'done', NULL),
  ('CB', '2026-04-22'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. 調整CancelBetNotificationManager Lock規則
3. 修正手機版泰魚&泰骰,成功下注後斷線,於下一局開始下注時重新連線repeat按鈕不會亮
4. 修正手機版泰骰&泰魚在賭桌內,斷線之後離開賭桌回到大廳,重新連上網路之後再次進桌,會持續顯示刷新連線的動畫', '08:00'::time, '08:40'::time, 40, 'done', NULL),
  ('CB', '2026-04-22'::date, 5, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-04-22'::date, 6, 'DS System', 'Fanny', '34.22.1
1. 新 增龍 虎 無牌框UI切換 版本', '08:00'::time, '08:20'::time, 20, 'done', NULL),
  ('CB', '2026-04-22'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-04-22'::date, 8, '賭具更換', 'Michelle', '1. (Baccarat)更換黃卡
2. (C121 Sicbo)更換骰子
3. (C121 Sicbo)更換骰盅襯墊
4. (C132 Sicbo)更換骰子
5. (C132 Sicbo)更換一組新骰盅
6. (C151 Sedie)更換色碟骰
7. (C151 Sedie)更換一組新骰盅', '08:00'::time, '08:25'::time, 25, 'done', NULL),
  ('CB', '2026-04-22'::date, 9, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-04-22'::date, 10, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-04-22'::date, 11, '路子圖、Chat Room', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-04-22'::date, 12, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-04-22'::date, 13, '活動佈置', 'Michelle', '💦 潑水節活動 💦 (期間:Apr. 8 - Apr. 22)
1. 移除現場活動佈置
2. 大廳照更換回平日版樣式', '08:00'::time, '08:25'::time, 25, 'done', NULL),
  ('CB', '2026-04-15'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '07:30'::time, '07:42'::time, 12, 'done', NULL),
  ('CB', '2026-04-15'::date, 2, 'Cebu Studio(OP)', 'Emanuel', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '07:30'::time, '08:30'::time, 60, 'done', NULL),
  ('CB', '2026-04-15'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '07:30'::time, '08:58'::time, 88, 'done', NULL),
  ('CB', '2026-04-15'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. Web/Mobile大廳-新增IDR,PTI幣別桌次排序
3. WEB ExtraSicbo/Sedie修正玩家真人語音開關變動與DB寫入Failed
4. 校正 msg.error.validation.betLimit.empty 各語系翻譯文字
5. 新增 index baccarat-streaming-errorcode
6. 調整 baccarat_bet_unsuccessfully 內容
7. RandonPayResult新增欄位RoundStartTime
8. ResultOdds新增欄位RoundStartTime', '07:30'::time, '08:40'::time, 70, 'done', NULL),
  ('CB', '2026-04-15'::date, 5, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-04-15'::date, 6, 'DS System', 'Fanny', '逐桌修改 Update.bat 檔', '07:30'::time, '09:00'::time, 90, 'done', NULL),
  ('CB', '2026-04-15'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-04-15'::date, 8, '賭具更換', 'Michelle', '1. (Baccarat)更換新牌
2. (Baccarat)更換黃卡
3. (C121 Sicbo)更換骰子
4. (C121 Sicbo)更換骰盅襯墊
5. (C132 Sicbo)更換骰子
6. (C132 Sicbo)更換一組新骰盅
7. (C151 Sedie)更換色碟骰
8. (C151 Sedie)更換一組新骰盅+新色碟底座', '07:30'::time, '08:20'::time, 50, 'done', NULL),
  ('CB', '2026-04-15'::date, 9, '翻譯系統', 'Gary', '新增簡體中文翻譯功能', '07:36'::time, '08:17'::time, 41, 'done', NULL),
  ('CB', '2026-04-15'::date, 10, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-04-15'::date, 11, '路子圖、Chat Room', 'JimLin', '1. 聊天室新增緬甸荷官簡體中文語系', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('CB', '2026-04-15'::date, 12, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-04-15'::date, 13, '路子圖、Chat Room', 'Emanuel', '1.chat-app-cb-3.4.17(更新)
2.roadmap-app-cb-2.4.1(更新)', '07:30'::time, '08:40'::time, 70, 'done', NULL),
  ('CB', '2026-04-08'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '06:00'::time, '07:42'::time, 24, 'done', NULL),
  ('CB', '2026-04-08'::date, 2, 'Cebu Studio(OP)', 'Emanuel', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '07:00'::time, '07:10'::time, 10, 'done', NULL),
  ('CB', '2026-04-08'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:50'::time, 50, 'done', NULL),
  ('CB', '2026-04-08'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method', '07:30'::time, '08:40'::time, 70, 'done', NULL),
  ('CB', '2026-04-08'::date, 5, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-04-08'::date, 6, 'DS System', 'Fanny', 'DS 34.21 修改測試桌讀取雲端設定檔錯誤問題', '07:00'::time, '08:30'::time, 90, 'done', NULL),
  ('CB', '2026-04-08'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-04-08'::date, 8, '賭具更換', 'Michelle', '1. (Baccarat)更換黃卡
2. (C121 Sicbo)更換骰子
3. (C121 Sicbo)更換骰盅襯墊
4. (C132 Sicbo)更換骰子
5. (C132 Sicbo)更換一組新骰盅
6. (C151 Sedie)更換色碟骰
7. (C151 Sedie)更換一組新骰盅', '06:00'::time, '08:10'::time, 20, 'done', NULL),
  ('CB', '2026-04-08'::date, 9, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-04-08'::date, 10, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-04-08'::date, 11, '路子圖、Chat Room', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-04-08'::date, 12, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-04-08'::date, 13, '活動佈置', 'Michelle', '💦 潑水節活動 💦 (期間:Apr. 8 - Apr. 22)
1. 現場活動佈置
2. 節慶大廳照更換', '06:00'::time, '08:25'::time, 145, 'done', NULL),
  ('CB', '2026-04-01'::date, 1, 'Cebu Studio(IT)', 'Zet/Gary', '現場Proxy server重啟(Studio A & B)', '07:00'::time, '08:07'::time, 67, 'done', NULL),
  ('CB', '2026-04-01'::date, 2, 'Cebu Studio(OP)', 'Emanuel', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)
Reboot Media PC', '07:00'::time, '08:30'::time, 90, 'done', NULL),
  ('CB', '2026-04-01'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:50'::time, 50, 'done', NULL),
  ('CB', '2026-04-01'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. 修正PlayerInfo初始化欄位
3. 修正主帳號與活動帳號切換登入,餘額顯示錯誤', '07:30'::time, '08:30'::time, 60, 'done', NULL),
  ('CB', '2026-04-01'::date, 5, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-04-01'::date, 6, 'DS System', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-04-01'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-04-01'::date, 8, '賭具更換', 'Michelle', '1. (Baccarat)更換新牌
2. (Baccarat)更換黃卡
3. (C121 Sicbo)更換骰子
4. (C121 Sicbo)更換骰盅襯墊
5. (C132 Sicbo)更換骰子
6. (C132 Sicbo)更換一組新骰盅
7. (C151 Sedie)更換色碟骰
8. (C151 Sedie)更換一組新骰盅', '07:00'::time, '08:20'::time, 80, 'done', NULL),
  ('CB', '2026-04-01'::date, 9, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-04-01'::date, 10, 'Dealer Monitor', 'JimLin', '1. 新增桌號', '08:00'::time, '08:20'::time, 20, 'done', NULL),
  ('CB', '2026-04-01'::date, 11, '路子圖、Chat Room', 'JimLin', '1. 聊天室從路子圖 APP 拆分獨立', '08:00'::time, '08:20'::time, 20, 'done', NULL),
  ('CB', '2026-04-01'::date, 12, 'Data Center(每桌info)', 'JimLin', '1. 新增廳別設定、主備 WebRTC 串流架構
2. webRTC player串接 DataCenter 資料', '08:00'::time, '08:20'::time, 20, 'done', NULL),
  ('CB', '2026-03-25'::date, 1, 'Cebu Studio(IT)', 'Zet/Gary', '現場Proxy server重啟(Studio A & B)', '07:00'::time, '08:13'::time, 19, 'done', NULL),
  ('CB', '2026-03-25'::date, 2, 'Cebu Studio(OP)', 'Emanuel', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '07:00'::time, '08:35'::time, 95, 'done', NULL),
  ('CB', '2026-03-25'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:55'::time, 55, 'done', NULL),
  ('CB', '2026-03-25'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. DI Index PkdResult 調整傳送欄位
3. API DOC login加入allowNoCommBet參數', '07:30'::time, '08:30'::time, 60, 'done', NULL),
  ('CB', '2026-03-25'::date, 5, '辨識系統五合一', 'Rossi
Gary', '辨識模型更新桌次為:C01 ~ C16 ( 除 C04 )', '07:00'::time, '08:20'::time, 80, 'done', NULL),
  ('CB', '2026-03-25'::date, 6, 'DS System', 'Fanny', '1. DS 34 . 20.1 逐廳更換
2. DS系統 設定 檔雲化

3. 龍虎雙鏡 位 系統 支 援', '07:00'::time, '08:40'::time, 100, 'done', NULL),
  ('CB', '2026-03-25'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-03-25'::date, 8, '賭具更換', 'Michelle', '1. (Baccarat)更換黃卡
2. (C121 Sicbo)更換骰子
3. (C121 Sicbo)更換骰盅襯墊
4. (C132 Sicbo)更換骰子
5. (C132 Sicbo)更換一組新骰盅
6. (C151 Sedie)更換色碟骰
7. (C151 Sedie)更換一組新骰盅', '07:00'::time, '08:15'::time, 75, 'done', NULL),
  ('CB', '2026-03-25'::date, 9, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-03-25'::date, 10, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-03-25'::date, 11, '路子圖、Chat Room', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-03-25'::date, 12, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-03-25'::date, 13, '服務移除', 'Emanuel', '逐步刪除CAD NUC Anydesk', '08:00'::time, '08:15'::time, 15, 'done', NULL),
  ('CB', '2026-03-18'::date, 1, 'Cebu Studio(IT)', 'Zet/Gary', '現場Proxy server重啟(Studio A & B)', '08:00'::time, '08:17'::time, 17, 'done', NULL),
  ('CB', '2026-03-18'::date, 2, 'Cebu Studio(OP)', 'Emanuel', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '08:00'::time, '08:35'::time, 35, 'done', NULL),
  ('CB', '2026-03-18'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:50'::time, 50, 'done', NULL),
  ('CB', '2026-03-18'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. StreamingInfo調整傳送頻率
3. 修正iOS手機贏錢音效有機會撥放兩次
4. 調整WEB版百家樂與龍虎遊戲N局未下注提示訊息顯示時間
5. 監聽並傳送JavaScript Error Message
6. AgentGroup依照各場地桌次數量,重新打散分流資料', '08:00'::time, '08:37'::time, 37, 'done', NULL),
  ('CB', '2026-03-18'::date, 5, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-03-18'::date, 6, 'DS System', 'Fanny', '1. DS 34 . 20, 僅 更 換 C16號桌
2. DS系統 設定 檔雲化

3. 龍虎雙鏡 位 系統 支 援', '09:00'::time, '09:24'::time, 24, 'done', '日期填 2026-03-17'),
  ('CB', '2026-03-18'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-03-18'::date, 8, '賭具更換', 'Michelle', '1. (Baccarat)更換新牌
2. (Baccarat)更換黃卡
3. (C121 Sicbo)更換骰子
4. (C121 Sicbo)更換骰盅襯墊
5. (C132 Sicbo)更換骰子
6. (C132 Sicbo)更換一組新骰盅
7. (C151 Sedie)更換色碟骰
8. (C151 Sedie)更換一組新骰盅
9. 對調C6131 & C151桌框', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('CB', '2026-03-18'::date, 9, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-03-18'::date, 10, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-03-18'::date, 11, '路子圖、Chat Room', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-03-18'::date, 12, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-03-18'::date, 13, '服務移除', 'Emanuel', '逐步刪除CAD NUC Anydesk', '08:00'::time, '08:25'::time, 25, 'done', NULL),
  ('CB', '2026-03-11'::date, 1, 'Cebu Studio(IT)', 'Zet/Gary', '現場Proxy server重啟(Studio A & B)', '08:00'::time, '08:13'::time, 13, 'done', NULL),
  ('CB', '2026-03-11'::date, 2, 'Cebu Studio(OP)', 'Emanuel', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('CB', '2026-03-11'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:55'::time, 55, 'done', NULL),
  ('CB', '2026-03-11'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. AccountGameSetting 資料清理
3. 移除ApiNotification相關程式
4. PlayFilter增加Header檢核機制
5. DI Index PkdResult, TfpcResult 新增傳送欄位
6. DI Index StreamingErrorCode 新增傳送資料
7. 新增幣別 DKK
8. 暫時停用CDNetwork Domain
9. auto Add result 多加calculate欄位判斷', '08:00'::time, '09:40'::time, 100, 'done', NULL),
  ('CB', '2026-03-11'::date, 5, '辨識系統五合一', 'Rossi
Gary', '重啟辨識主機 C04, C121; 更新辨識主機模型 C04', '08:00'::time, '08:10'::time, 10, 'done', NULL),
  ('CB', '2026-03-11'::date, 6, 'DS System', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-03-11'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-03-11'::date, 8, '賭具更換', 'Michelle', '1. 更換桌板(Studio A&B 剩餘7桌洗牌車)
2. (Baccarat)更換黃卡
3. (C121 Sicbo)更換骰子
4. (C121 Sicbo)更換骰盅襯墊
5. (C132 Sicbo)更換骰子
6. (C132 Sicbo)更換一組新骰盅
7. (C151 Sedie)更換色碟骰
8. (C151 Sedie)更換一組新骰盅', '08:00'::time, '08:25'::time, 25, 'done', NULL),
  ('CB', '2026-03-11'::date, 9, '翻譯系統', 'Gary', '匯入翻譯標註資料(韓、英 )', '08:10'::time, '08:27'::time, 17, 'done', NULL),
  ('CB', '2026-03-11'::date, 10, 'Dealer Monitor', 'JimLin', '1. SERVER重啟', '08:00'::time, '08:10'::time, 10, 'done', NULL),
  ('CB', '2026-03-11'::date, 11, '路子圖、Chat Room', 'JimLin', '1. Shoe Monitor: 配合 Data Center 進行調整
2. SERVER重啟', '08:00'::time, '08:10'::time, 10, 'done', NULL),
  ('CB', '2026-03-11'::date, 12, 'Data Center(每桌info)', 'JimLin', '1. Data Center: 串接 OP 後台資料
2. SERVER重啟', '08:00'::time, '08:10'::time, 10, 'done', NULL),
  ('CB', '2026-03-11'::date, 13, '服務移除', 'Emanuel', '逐步刪除CAD NUC & 5in1 Anydesk', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('CB', '2026-03-04'::date, 1, 'Cebu Studio(IT)', 'Zet/Gary', '現場Proxy server重啟(Studio A & B)', '07:00'::time, '08:42'::time, 102, 'done', NULL),
  ('CB', '2026-03-04'::date, 2, 'Cebu Studio(OP)', 'Emanuel', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)
Reboot Media PC', '07:00'::time, '08:30'::time, 90, 'done', NULL),
  ('CB', '2026-03-04'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:50'::time, 50, 'done', NULL),
  ('CB', '2026-03-04'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method', '08:00'::time, '08:56'::time, 56, 'done', NULL),
  ('CB', '2026-03-04'::date, 5, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-03-04'::date, 6, 'DS System', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-03-04'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-03-04'::date, 8, '賭具更換', 'Michelle', '1. 更換桌板(Baccarat 11-14無牌框樣式、Studio A&B洗牌車)
2. (Baccarat)更換新牌
3. (Baccarat)更換黃卡
4. (C121 Sicbo)更換骰子
5. (C121 Sicbo)更換骰盅襯墊
6. (C132 Sicbo)更換骰子
7. (C132 Sicbo)更換一組新骰盅
8. (C151 Sedie)更換色碟骰
9. (C151 Sedie)更換一組新骰盅', '07:00'::time, '08:20'::time, 80, 'done', NULL),
  ('CB', '2026-03-04'::date, 9, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-03-04'::date, 10, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-03-04'::date, 11, '路子圖、Chat Room', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-03-04'::date, 12, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-03-04'::date, 13, '服務移除', 'Emanuel', '逐步刪除CAD NUC & 5in1 Anydesk', '07:00'::time, '08:10'::time, 70, 'done', NULL),
  ('CB', '2026-02-25'::date, 1, 'Cebu Studio(IT)', 'Zet/Gary', '現場Proxy server重啟(Studio A & B)', '07:00'::time, '08:10'::time, 70, 'done', NULL),
  ('CB', '2026-02-25'::date, 2, 'Cebu Studio(OP)', 'Emanuel', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '07:00'::time, '08:15'::time, 75, 'done', NULL),
  ('CB', '2026-02-25'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:47'::time, 47, 'done', NULL),
  ('CB', '2026-02-25'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method', '08:00'::time, '09:10'::time, 70, 'done', NULL),
  ('CB', '2026-02-25'::date, 5, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-02-25'::date, 6, 'DS System', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-02-25'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-02-25'::date, 8, '賭具更換', 'Michelle', '1. 更換桌板(Baccarat 01-10&15-16舊樣式/121&132 Sicbo/151 Sedie)
2. (Baccarat)更換黃卡
3. (C121 Sicbo)更換骰子
4. (C121 Sicbo)更換骰盅襯墊
5. (C132 Sicbo)更換骰子
6. (C132 Sicbo)更換一組新骰盅
7. (C151 Sedie)更換色碟骰
8. (C151 Sedie)更換一組新骰盅', '07:00'::time, '08:10'::time, 70, 'done', NULL),
  ('CB', '2026-02-25'::date, 9, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-02-25'::date, 10, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-02-25'::date, 11, '路子圖、Chat Room', 'JimLin', '1. 現場對位圖webrtc, 更新骰桌對位線', '07:00'::time, '07:05'::time, 5, 'done', NULL),
  ('CB', '2026-02-25'::date, 12, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-02-25'::date, 13, '活動佈置', 'Michelle', '🧨中國新年活動結束🧨 (期間:Feb. 4 - Feb. 25)
1. 移除現場活動佈置
2. 大廳照更換回平日版樣式', '07:00'::time, '08:05'::time, 65, 'done', NULL),
  ('CB', '2026-02-25'::date, 14, '服務移除', 'Emanuel', '逐步刪除dealer PC & media PC Anydesk', '07:00'::time, '07:20'::time, 20, 'done', NULL),
  ('CB', '2026-02-18'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '06:02'::time, '06:21'::time, 19, 'done', NULL),
  ('CB', '2026-02-18'::date, 2, 'Cebu Studio(OP)', 'Emanuel', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)
Reboot Media PC', '06:00'::time, '06:35'::time, 35, 'done', NULL),
  ('CB', '2026-02-18'::date, 3, 'Streaming', 'Bernard', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-02-18'::date, 4, 'LCS', 'Tony', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-02-18'::date, 5, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-02-18'::date, 6, 'DS System', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-02-18'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-02-18'::date, 8, '賭具更換', 'Michelle', '1. (Baccarat)更換新牌
2. (Baccarat)更換黃卡
3. (C121 Sicbo)更換骰子
4. (C121 Sicbo)更換骰盅襯墊
5. (C132 Sicbo)更換骰子
6. (C132 Sicbo)更換一組新骰盅
7. (C151 Sedie)更換色碟骰
8. (C151 Sedie)更換一組新骰盅', '06:00'::time, '06:35'::time, 35, 'done', NULL),
  ('CB', '2026-02-18'::date, 9, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-02-18'::date, 10, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-02-18'::date, 11, '路子圖、Chat Room', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-02-18'::date, 12, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-02-11'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '08:00'::time, '08:13'::time, 13, 'done', NULL),
  ('CB', '2026-02-11'::date, 2, 'Cebu Studio(OP)', 'Emanuel', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)
Reboot Media PC', '08:00'::time, '08:35'::time, 35, 'done', NULL),
  ('CB', '2026-02-11'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:50'::time, 50, 'done', NULL),
  ('CB', '2026-02-11'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. 電腦版輪盤遊戲,前端調整延遲時間,對齊手機版
3. update extension2 併入 updateLoginForUpdate
4. 移除不存在帳號的聊天禁言名單
5. 移除ENABLE_API_CONTROLLER_LOGIN_RECORD相關程式碼
6. 檢查LCS與Kafka資料筆數是否一致
7. PlayStatusLog 增加時間欄位', '08:00'::time, '08:48'::time, 48, 'done', NULL),
  ('CB', '2026-02-11'::date, 5, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-02-11'::date, 6, 'DS System', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-02-11'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-02-11'::date, 8, '賭具更換', 'Michelle', '1. (Baccarat)更換黃卡
2. (C121 Sicbo)更換骰子
3. (C121 Sicbo)更換骰盅襯墊
4. (C132 Sicbo)更換骰子
5. (C132 Sicbo)更換一組新骰盅
6. (C151 Sedie)更換色碟骰
7. (C151 Sedie)更換一組新骰盅', '08:00'::time, '08:20'::time, 20, 'done', NULL),
  ('CB', '2026-02-11'::date, 9, '翻譯系統', 'Gary', '匯入翻譯標註資料(韓、英 )', '08:00'::time, '08:45'::time, 45, 'done', NULL),
  ('CB', '2026-02-11'::date, 10, 'Dealer Monitor', 'JimLin', '1. 系統重啟', '08:15'::time, '08:30'::time, 15, 'done', NULL),
  ('CB', '2026-02-11'::date, 11, '路子圖、Chat Room', 'JimLin', '1. 系統重啟', '08:15'::time, '08:30'::time, 15, 'done', NULL),
  ('CB', '2026-02-11'::date, 12, 'Data Center(每桌info)', 'JimLin', '1. 系統重啟', '08:15'::time, '08:30'::time, 15, 'done', NULL),
  ('CB', '2026-02-04'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '06:00'::time, '07:46'::time, 106, 'done', NULL),
  ('CB', '2026-02-04'::date, 2, 'Cebu Studio(OP)', 'Emanuel', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)
Reboot Media PC', '06:00'::time, '06:30'::time, 30, 'done', NULL),
  ('CB', '2026-02-04'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:51'::time, 51, 'done', NULL),
  ('CB', '2026-02-04'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. 後台操作voidRoundDirectly需補DealerID欄位
3. 新增Compare API for Kafka資料比對
4. StreamingGetToken新增proxy
5. 修正 Web,Mobile 重整後預設籌碼的數值會自動變為 1
6. 修正 Web Extra骰寶、色碟使用Safari開啟自定義籌碼時,籌碼顯示異常', '07:40'::time, '08:40'::time, 70, 'done', NULL),
  ('CB', '2026-02-04'::date, 5, '辨識系統五合一', 'Rossi
Gary', 'C16 更換辨識主機', '07:30'::time, '08:00'::time, 30, 'done', NULL),
  ('CB', '2026-02-04'::date, 6, 'DS System', 'Fanny', '34.18 DS版本
1. 自動 輪盤Http proxy 版本 上 線
2.TG桌號 顯示 名 稱調 整
3.Reinpu t告 警加上 桌邊 輸入 資訊', '09:00'::time, '09:51'::time, 51, 'done', '日期填 2026-02-03'),
  ('CB', '2026-02-04'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-02-04'::date, 8, '賭具更換', 'Michelle', '1. (Baccarat)更換新牌
2. (Baccarat)更換黃卡
3. (C121 Sicbo)更換骰子
4. (C121 Sicbo)更換骰盅襯墊
5. (C132 Sicbo)更換骰子
6. (C132 Sicbo)更換一組新骰盅
7. (C151 Sedie)更換色碟骰
8. (C151 Sedie)更換一組新骰盅', '06:00'::time, '08:00'::time, 120, 'done', NULL),
  ('CB', '2026-02-04'::date, 9, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-02-04'::date, 10, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-02-04'::date, 11, '路子圖、Chat Room', 'JimLin', '1. Chat Admin Msg: 調整使用IPv4連線以及重啟服務邏輯', '08:00'::time, '08:05'::time, 5, 'done', NULL),
  ('CB', '2026-02-04'::date, 12, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-02-04'::date, 13, '活動佈置', 'Michelle', '🧨中國新年活動🧨 (期間:Feb. 4 - Feb. 25)
1. 現場活動佈置
2. 節慶大廳照更換', '06:00'::time, '08:25'::time, 145, 'done', NULL),
  ('CB', '2026-01-28'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '07:00'::time, '08:12'::time, 72, 'done', NULL),
  ('CB', '2026-01-28'::date, 2, 'Cebu Studio(OP)', 'Emanuel', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '07:00'::time, '07:15'::time, 15, 'done', NULL),
  ('CB', '2026-01-28'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:50'::time, 50, 'done', NULL),
  ('CB', '2026-01-28'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. 更新sdk.js version2.2.6
3. AgentNotificationGroup SQL Tuning
4. JBL PlayStatusLog 增加時間欄位', '07:00'::time, '08:15'::time, 75, 'done', NULL),
  ('CB', '2026-01-28'::date, 5, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-01-28'::date, 6, 'DS System', 'Fanny', '34.17更版
1. 新 增風 控 紅燈 提視 窗
2.骰類T G告 警修正
3.色 碟DS點數 顯示 調 整', '07:00'::time, '08:01'::time, 61, 'done', NULL),
  ('CB', '2026-01-28'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-01-28'::date, 8, '賭具更換', 'Michelle', '1. (Baccarat)更換黃卡
2. (C121 Sicbo)更換骰子
3. (C121 Sicbo)更換骰盅襯墊
4. (C132 Sicbo)更換骰子
5. (C132 Sicbo)更換一組新骰盅
6. (C151 Sedie)更換色碟骰
7. (C151 Sedie)更換一組新骰盅
8. 更換C11、C12、C13無牌框桌板', '07:00'::time, '08:20'::time, 80, 'done', NULL),
  ('CB', '2026-01-28'::date, 9, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-01-28'::date, 10, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-01-28'::date, 11, '路子圖、Chat Room', 'JimLin', '1. Chat Admin Msg: 新增網路異常時,自動重連功能', '08:30'::time, '08:35'::time, 5, 'done', NULL),
  ('CB', '2026-01-28'::date, 12, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-01-28'::date, 13, '設備上架', 'Emanuel', 'CDE upload PC 上機櫃', '07:00'::time, '07:15'::time, 15, 'done', NULL),
  ('CB', '2026-01-28'::date, 14, '辨識校正', 'Emanuel', 'C11~C13更換桌板,確認辨識', '08:00'::time, '08:25'::time, 25, 'done', NULL),
  ('CB', '2026-01-21'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '08:00'::time, '08:10'::time, 10, 'done', NULL),
  ('CB', '2026-01-21'::date, 2, 'Cebu Studio(OP)', 'Emanuel', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('CB', '2026-01-21'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:49'::time, 49, 'done', NULL),
  ('CB', '2026-01-21'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. 修正於大廳斷線後點擊任意遊戲桌,重連後畫面有機會卡住
3. 新增Currency IQD 幣別
4. 各遊戲Result補上DealerID欄位', '08:00'::time, '08:00'::time, 35, 'done', NULL),
  ('CB', '2026-01-21'::date, 5, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-01-21'::date, 6, 'DS System', 'Fanny', '1.34.16 版本上線', '08:00'::time, '08:39'::time, 39, 'done', NULL),
  ('CB', '2026-01-21'::date, 7, 'Proxy server', 'Fanny', 'API Proxy 上線', '08:00'::time, '08:39'::time, 39, 'done', NULL),
  ('CB', '2026-01-21'::date, 8, '賭具更換', 'Michelle', '1. (Baccarat)更換新牌
2. (Baccarat)更換黃卡
3. (C121 Sicbo)更換骰子
4. (C121 Sicbo)更換骰盅襯墊
5. (C132 Sicbo)更換一組新骰盅
6. (C132 Sicbo)更換骰子
7. (C151 Sedie)更換色碟骰
8. (C151 Sedie)更換一組新骰盅', '08:00'::time, '08:20'::time, 20, 'done', NULL),
  ('CB', '2026-01-21'::date, 9, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-01-21'::date, 10, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-01-21'::date, 11, '路子圖、Chat Room', 'JimLin', '1.更新顯示P(PROD), U(UAT)圖像,方便判斷', '08:00'::time, '08:10'::time, 10, 'done', NULL),
  ('CB', '2026-01-21'::date, 12, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-01-14'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '08:00'::time, '08:08'::time, 8, 'done', NULL),
  ('CB', '2026-01-14'::date, 2, 'Cebu Studio(OP)', 'Emanuel', '1.Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '08:00'::time, '08:15'::time, 15, 'done', NULL),
  ('CB', '2026-01-14'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '09:05'::time, 65, 'done', NULL),
  ('CB', '2026-01-14'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. 手機版、電腦版,自定義籌碼頁面優化
3. 手機版、電腦版,色碟遊戲指南調整
4. LCS Domain整合nocookie
5. GameResultCache同步更新機制
6. send chat message to UL', '08:00'::time, '09:40'::time, 100, 'done', NULL),
  ('CB', '2026-01-14'::date, 5, '辨識系統五合一', 'Rossi
Gary', '百家辨識模型更新', '08:00'::time, '08:20'::time, 20, 'done', NULL),
  ('CB', '2026-01-14'::date, 6, 'DS System', 'Fanny', '34.15 DS版本更新內容
1.新增自動骰取消手動輸入模式切換功能
2.調整色碟no draw 演算法', '08:00'::time, '08:06'::time, 6, 'done', NULL),
  ('CB', '2026-01-14'::date, 7, 'Proxy server', 'Fanny', 'Endpoint外線增加', '08:00'::time, '08:05'::time, 5, 'done', NULL),
  ('CB', '2026-01-14'::date, 8, '賭具更換', 'Michelle', '1. (Baccarat)更換黃卡
2. (C121 Sicbo)更換骰盅襯墊
3. (C121 Sicbo)更換骰子
4. (C132 Sicbo)更換一組新骰盅
5. (C132 Sicbo)更換骰子
6. (C151 Sedie)更換一組新骰盅
7. (C151 Sedie)更換色碟', '08:00'::time, '08:15'::time, 15, 'done', NULL),
  ('CB', '2026-01-14'::date, 9, '翻譯系統', 'Gary', '匯入翻譯標註資料', '08:00'::time, '08:16'::time, 16, 'done', 'only Thai, Vietnamese'),
  ('CB', '2026-01-14'::date, 10, 'Dealer Monitor', 'JimLin', '1. Server Reboot', '08:00'::time, '08:10'::time, 5, 'done', NULL),
  ('CB', '2026-01-14'::date, 11, '路子圖、Chat Room', 'JimLin', '1. Server Reboot', '08:00'::time, '08:10'::time, 5, 'done', NULL),
  ('CB', '2026-01-14'::date, 12, 'Data Center(每桌info)', 'JimLin', '1. Server Reboot', '08:00'::time, '08:10'::time, 5, 'done', NULL),
  ('CB', '2026-01-14'::date, 13, '發流確認', 'Emanuel', '確認所有OBS look-ahaed & Adaptive Quantization選項都取消', '08:00'::time, '08:40'::time, 40, 'done', NULL),
  ('CB', '2026-01-14'::date, 14, '重啟辨識', 'Emanuel', '重啟百家辨識主機,並與Rossi確認', '08:10'::time, '08:20'::time, 10, 'done', NULL),
  ('CB', '2026-01-07'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '08:00'::time, '08:09'::time, 9, 'done', NULL),
  ('CB', '2026-01-07'::date, 2, 'Cebu Studio(OP)', 'Emanuel', '1.Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)
2.Reboot Media PC', '07:30'::time, '08:30'::time, 60, 'done', NULL),
  ('CB', '2026-01-07'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:49'::time, 49, 'done', NULL),
  ('CB', '2026-01-07'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. AgentGroup調整資料撈取順序
3. 浮水印顯示調整
4. 修正更改發話廣度的累計資料取用天數後,玩家發話廣度等級異常
5. settleRound更新時間狀態提供給getBalance方法判斷使用
6. ELK client upgrade 7.17.29
7. sdk.js upgrade 2.2.5', '08:00'::time, '08:40'::time, 40, 'done', NULL),
  ('CB', '2026-01-07'::date, 5, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-01-07'::date, 6, 'DS System', 'Fanny', '34.14.1更版
1.優化骰子辨識流程
2.新增CB / MX 色碟切換功能', '09:00'::time, '10:40'::time, 100, 'done', '1/6'),
  ('CB', '2026-01-07'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-01-07'::date, 8, '賭具更換', 'Michelle', '1. (Baccarat)更換新牌
2. (Baccarat)更換黃卡
3. (C121 Sicbo)更換骰子
4. (C121 Sicbo)更換骰盅襯墊
5. (C132 Sicbo)更換一組新骰盅
6. (C132 Sicbo)更換骰子
7. (C151 Sedie)更換色碟骰
8. (C151 Sedie)更換一組新骰盅', '07:30'::time, '08:30'::time, 60, 'done', NULL),
  ('CB', '2026-01-07'::date, 9, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-01-07'::date, 10, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-01-07'::date, 11, '路子圖、Chat Room', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-01-07'::date, 12, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2026-01-07'::date, 13, '活動佈置', 'Michelle', '🎄聖誕節活動🎄 結束
1. 現場活動佈置拆除
2. 大廳照更換回一般版本', '07:30'::time, '08:10'::time, 40, 'done', NULL),
  ('CB', '2026-01-07'::date, 14, '辨識確認', 'Emanuel', '確認C09辨識相機數值&校正', '07:30'::time, '07:50'::time, 20, 'done', NULL),
  ('CB', '2026-01-07'::date, 15, '發流確認', 'Emanuel', '確認所有OBS buffining 為Auto-detect', '07:30'::time, '09:00'::time, 90, 'done', NULL),
  ('CB', '2026-01-07'::date, 16, '鏡位調整', 'Emanuel', '調整C11,C12的鏡位跟C13,C14一樣', '08:30'::time, '09:00'::time, 30, 'done', NULL),
  ('CB', '2025-12-30'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '07:00'::time, '08:13'::time, 73, 'done', NULL),
  ('CB', '2025-12-30'::date, 2, 'Cebu Studio(OP)', 'Emanuel', '1.Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '07:00'::time, '08:15'::time, 75, 'done', NULL),
  ('CB', '2025-12-30'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '07:41'::time, '08:51'::time, 71, 'done', NULL),
  ('CB', '2025-12-30'::date, 4, 'LCS', 'Tony', '1. Check UnSettled Transactions And GameResult 自動補賽果', '07:40'::time, '08:40'::time, 60, 'done', NULL),
  ('CB', '2025-12-30'::date, 5, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-12-30'::date, 6, 'DS System', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-12-30'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-12-30'::date, 8, '賭具更換', 'Michelle', '1. (Baccarat)更換黃卡
2. (C121 Sicbo)更換骰子
3. (C121 Sicbo)更換骰盅襯墊
4. (C132 Sicbo)更換一組新骰盅
5. (C132 Sicbo)更換骰子', '07:00'::time, '08:10'::time, 70, 'done', NULL),
  ('CB', '2025-12-30'::date, 9, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-12-30'::date, 10, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-12-30'::date, 11, '路子圖、Chat Room', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-12-30'::date, 12, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-12-30'::date, 13, 'media PC更新驅動', 'Emanuel', '檢查並更新media PC驅動C04,C05,C06,C08,C09,C15,C151,C16', '07:00'::time, '08:20'::time, 80, 'done', NULL),
  ('CB', '2025-12-24'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '07:00'::time, '07:25'::time, 25, 'done', NULL),
  ('CB', '2025-12-24'::date, 2, 'Cebu Studio(OP)', 'Emanuel', '1.Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '07:00'::time, '07:40'::time, 40, 'done', NULL),
  ('CB', '2025-12-24'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '07:00'::time, '08:47'::time, 107, 'done', NULL),
  ('CB', '2025-12-24'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. Streaming傳送到DI的資訊新增domain
3. 修正Sedie有機會不會畫當局路子
4. 修正Web玩家進桌後出桌,重新進入任一百家桌,打開禮物商店無法切換禮物
5. 新增路子API
6. 修正Mobile 慢網速時,遊戲開新局後馬上放未確認的籌碼到注區,隔一下子籌碼會被清除
7. 修正Mobile 慢網速時,遊戲開新局後馬上放未確認的籌碼到注區,隔一下子籌碼會被清除
8. 修正Mobile 泰骰更換荷官時,聊天室&打賞選單荷官名稱不會與局號同步更新,名稱會自己即時更新', '07:00'::time, '08:50'::time, 110, 'done', NULL),
  ('CB', '2025-12-24'::date, 5, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-12-24'::date, 6, 'DS System', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-12-24'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-12-24'::date, 8, '賭具更換', 'Michelle', '1. (Baccarat)更換新牌
2. (Baccarat)更換黃卡
3. (C121 Sicbo)更換骰子
4. (C121 Sicbo)更換骰盅襯墊
5. (C132 Sicbo)更換一組新骰盅
6. (C132 Sicbo)更換骰子', '07:00'::time, '07:40'::time, 40, 'done', NULL),
  ('CB', '2025-12-24'::date, 9, '翻譯系統', 'Gary', '1. 新增日文翻譯功能', '07:00'::time, '07:21'::time, 21, 'done', 'v6.0.0'),
  ('CB', '2025-12-24'::date, 10, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-12-24'::date, 11, '路子圖、Chat Room', 'JimLin', '1.增加日語翻譯功能', '07:00'::time, '07:21'::time, 21, 'done', NULL),
  ('CB', '2025-12-24'::date, 12, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-12-24'::date, 13, '活動佈置', 'Michelle', 'C132 聖誕節背景佈置', '07:00'::time, '07:30'::time, 30, 'done', NULL),
  ('CB', '2025-12-24'::date, 14, '更換擷取卡', 'Emanuel', '更換C04擷取卡(改天創)', '07:00'::time, '07:25'::time, 25, 'done', NULL),
  ('CB', '2025-12-17'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '08:05'::time, '08:27'::time, 22, 'done', NULL),
  ('CB', '2025-12-17'::date, 2, 'Cebu Studio(OP)', 'Emanuel', '1.Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '08:10'::time, '08:40'::time, 30, 'done', NULL),
  ('CB', '2025-12-17'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:47'::time, 47, 'done', NULL),
  ('CB', '2025-12-17'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. 泰國魚蝦蟹全滿版+聊打
3. 調整OP後台部分功能權限
4. 新增C151桌', '08:00'::time, '08:40'::time, 40, 'done', NULL),
  ('CB', '2025-12-17'::date, 5, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-12-17'::date, 6, 'DS System', 'Fanny', '1. 骰類 - 搖骰檢查Status錯誤修正
2. 骰類 - 新增魚蝦蟹自動辨識模式 by Penguin', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('CB', '2025-12-17'::date, 7, 'Proxy server', 'Fanny', '1. 支援色碟 & 自動輪盤
2. 為C151桌使用新的Local proxy機器設定HttpProxy模式並且打正式環境
3. 在header會傳送x-auth-token(only for 有此需求的廠商)
4. 於每個事件轉發requestSourceUuid
5. AWS DB轉移到UL
6. Cebu全廳會改打到新的AWS HttpProxy(UL)', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('CB', '2025-12-17'::date, 8, '賭具更換', 'Michelle', '1. (Baccarat)更換黃卡
2. (C121 Sicbo)更換骰子
3. (C121 Sicbo)更換骰盅襯墊
4. (C132 Sicbo)更換一組新骰盅
5. (C132 Sicbo)更換骰子', '07:40'::time, '08:30'::time, 50, 'done', NULL),
  ('CB', '2025-12-17'::date, 9, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-12-17'::date, 10, 'Dealer Monitor', 'JimLin', '1. 系統重啟
2. 新增C151桌', '08:00'::time, '08:20'::time, 20, 'done', NULL),
  ('CB', '2025-12-17'::date, 11, '路子圖、Chat Room', 'JimLin', '1. 系統重啟', '08:00'::time, '08:20'::time, 20, 'done', NULL),
  ('CB', '2025-12-17'::date, 12, 'Data Center(每桌info)', 'JimLin', '1. 系統重啟', '08:00'::time, '08:20'::time, 20, 'done', NULL),
  ('CB', '2025-12-17'::date, 13, '活動佈置', 'Michelle', '🎄聖誕節活動🎄 (期間:Dec. 17 - Jan. 7)
1. 現場活動佈置
2. 節慶大廳照更換', '07:00'::time, '08:40'::time, 100, 'done', NULL),
  ('CB', '2025-12-10'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '08:00'::time, '08:17'::time, 17, 'done', NULL),
  ('CB', '2025-12-10'::date, 2, 'Cebu Studio(OP)', 'Emanuel', '1.Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '08:00'::time, '08:35'::time, 35, 'done', NULL),
  ('CB', '2025-12-10'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:50'::time, 50, 'done', NULL),
  ('CB', '2025-12-10'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. Web進桌時加上遊戲Loading頁
3. 調整website開關打賞,WEB百家樂內設定生效時間偏長
4. 修正斷線換靴後連回, repeat可點擊', '08:00'::time, '08:43'::time, 43, 'done', NULL),
  ('CB', '2025-12-10'::date, 5, '辨識系統五合一', 'Rossi
Gary', '1. 重啟辨識 C151 主機', '08:00'::time, '08:10'::time, 10, 'done', NULL),
  ('CB', '2025-12-10'::date, 6, 'DS System', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-12-10'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-12-10'::date, 8, '賭具更換', 'Michelle', '1. (Baccarat)更換新牌
2. (Baccarat)更換黃卡
3. (C121 Sicbo)更換骰子
4. (C121 Sicbo)更換骰盅襯墊
5. (C132 Sicbo)更換一組新骰盅
6. (C132 Sicbo)更換骰子', '08:00'::time, '08:25'::time, 25, 'done', NULL),
  ('CB', '2025-12-10'::date, 9, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-12-10'::date, 10, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-12-10'::date, 11, '路子圖、Chat Room', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-12-10'::date, 12, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-12-03'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '08:00'::time, '09:16'::time, 76, 'done', NULL),
  ('CB', '2025-12-03'::date, 2, 'Cebu Studio(OP)', 'Emanuel', '1.Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)
2.Reboot Media PC', '08:00'::time, '09:40'::time, 100, 'done', NULL),
  ('CB', '2025-12-03'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:50'::time, 50, 'done', NULL),
  ('CB', '2025-12-03'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. Sedie調整事件欄位
3. Web LongHu 修正限紅更改後前端未同步錯誤', '07:00'::time, '08:10'::time, 70, 'done', NULL),
  ('CB', '2025-12-03'::date, 5, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-12-03'::date, 6, 'DS System', 'Fanny', '親愛的現場夥伴們~
我們預計安排4/8進行更新
一、更新時間及內容
- 4/8 7:00~9:00 (GMT+8)
34.21 DS版本更新內容
1.DS: 修改測 試桌 讀取雲端 內容 模式

二、更版安排
影響桌次:CB全廳
維運前會議時間:4/7(二)', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-12-03'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-12-03'::date, 8, '賭具更換', 'Michelle', '1. 更換桌板(Baccarat/Sicbo)
2. (Baccarat)更換黃卡
3. (C121 Sicbo)更換骰子
4. (C121 Sicbo)更換骰盅襯墊
5. (C132 Sicbo)更換一組新骰盅
6. (C132 Sicbo)更換骰子', '08:00'::time, '09:40'::time, 100, 'done', NULL),
  ('CB', '2025-12-03'::date, 9, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-12-03'::date, 10, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-12-03'::date, 11, '路子圖、Chat Room', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-12-03'::date, 12, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-12-03'::date, 13, '移除設備', '阿哲
Gary', '移除encoder2', '08:00'::time, '09:40'::time, 100, 'done', NULL),
  ('CB', '2025-11-26'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '08:00'::time, '09:21'::time, 81, 'done', NULL),
  ('CB', '2025-11-26'::date, 2, 'Cebu Studio(OP)', 'Emanuel', '1.Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '08:00'::time, '09:35'::time, 95, 'done', NULL),
  ('CB', '2025-11-26'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:53'::time, 53, 'done', NULL),
  ('CB', '2025-11-26'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method', '07:30'::time, '08:30'::time, 60, 'done', NULL),
  ('CB', '2025-11-26'::date, 5, '辨識系統五合一', 'Rossi
Gary', '辨識模型更新', '08:00'::time, '09:20'::time, 80, 'done', NULL),
  ('CB', '2025-11-26'::date, 6, 'DS System', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-11-26'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-11-26'::date, 8, '賭具更換', 'Michelle', '1. (Baccarat)更換新牌
2. (Baccarat)更換黃卡
3. (C121 Sicbo)更換骰子
4. (C121 Sicbo)更換骰盅襯墊
5. (C132 Sicbo)更換一組新骰盅
6. (C132 Sicbo)更換骰子', '08:00'::time, '09:35'::time, 95, 'done', NULL),
  ('CB', '2025-11-26'::date, 9, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-11-26'::date, 10, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-11-26'::date, 11, '路子圖、Chat Room', 'JimLin', '1. WebRTC Player替換百家無邊框圖', '08:00'::time, '09:00'::time, 60, 'done', NULL),
  ('CB', '2025-11-26'::date, 12, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-11-26'::date, 13, '更改發流架構', 'Emanuel', '1.studio A C08更改雙發流
2.studio A C08起N卡降噪', '08:00'::time, '08:40'::time, 40, 'done', NULL),
  ('CB', '2025-11-26'::date, 14, '更改網路孔', 'Emanuel', '1.studio A C09更改media PC網孔', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('CB', '2025-11-26'::date, 15, '辨識主機重啟', 'Emanuel', '1.studio A 辨識主機重啟
2.studio B 辨識主機重啟', '08:00'::time, '09:00'::time, 60, 'done', NULL),
  ('CB', '2025-11-19'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '08:00'::time, '08:18'::time, 18, 'done', NULL),
  ('CB', '2025-11-19'::date, 2, 'Cebu Studio(OP)', 'Emanuel', '1.Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '08:00'::time, '08:35'::time, 35, 'done', NULL),
  ('CB', '2025-11-19'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:55'::time, 55, 'done', NULL),
  ('CB', '2025-11-19'::date, 4, 'LCS', 'Tony', '1. LongHu Web Websocket 改版
2. Roulette 越南文翻譯錯誤更正
3. ThaiHiLo 全滿版部分功能調整
4. PokDeng Mobile 慢網速連續下注,人數和金額統計有機會重複計算
5. Streaming 加上浮水印
6. Streaming 收集視訊第一次播放成功率
7. User Domain Setting新增Delete功能
8. LCS後台連動EUR暱稱、敏感字、聊天禁言、ChatHistory功能', '08:00'::time, '08:45'::time, 45, 'done', NULL),
  ('CB', '2025-11-19'::date, 5, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-11-19'::date, 6, 'DS System', 'Fanny', '1. 骰類 - 開局新增辨識API測試,辨識結果OK則用於NO DRAW檢查,無回應則顯示"Recognition Server Failed"告警、並回到Idle狀態。
2. 手搖骰 - 取消荷官輸入版本,於開蓋辨識期間,新增"Capture Recognition..."提示,並鎖定Enter按鍵 by Pengiun
3. 百家無牌框提示訊息框下移 by Naos
4. 百家、龍虎、骰類、輪盤 - 所有http proxy事件皆加上requestSourceUuid
5. 百家、龍虎、骰類、輪盤 - 取消http事件以下參數dealerSerialNo、bankerHandValue、playerHandValue、winnerHandValue、natural、pairState、sqezzeCard by Andy', '08:00'::time, '08:20'::time, 20, 'done', NULL),
  ('CB', '2025-11-19'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-11-19'::date, 8, 'Dealer Monitor - 亮度', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-11-19'::date, 9, '賭具更換', 'Michelle', '1. (Baccarat)更換黃卡
2. (C121 Sicbo)更換骰子
3. (C121 Sicbo)更換骰盅襯墊
4. (C132 Sicbo)更換一組新骰盅
5. (C132 Sicbo)更換骰子', '08:00'::time, '08:35'::time, 35, 'done', NULL),
  ('CB', '2025-11-19'::date, 10, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-11-19'::date, 11, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-11-19'::date, 12, '路子圖、Chat Room', 'JimLin', '1.聊天室翻譯 API 新增錯誤 log', '08:00'::time, '09:00'::time, 60, 'done', NULL),
  ('CB', '2025-11-19'::date, 13, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-11-19'::date, 14, '路子圖、Chat Room', 'Emanuel', '安裝studio B NUC rustdesk', '08:00'::time, '08:20'::time, 20, 'done', NULL),
  ('CB', '2025-11-12'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '08:00'::time, '08:15'::time, 15, 'done', NULL),
  ('CB', '2025-11-12'::date, 2, 'Cebu Studio(OP)', 'Emanuel', '1.Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '08:00'::time, '08:35'::time, 35, 'done', NULL),
  ('CB', '2025-11-12'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:51'::time, 51, 'done', NULL),
  ('CB', '2025-11-12'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. 新增North後台API
3. 新增ELK index : baccarat-getbalance-flooding
4. 調整WS斷線retry達上限次數顯示字串為:網路異常,請重新登入
5. 傳送CDN測線資訊給JBL
6. 傳送websocket reconnection 資訊給JBL
7. 色牒全滿版+聊打功能', '08:00'::time, '08:35'::time, 35, 'done', NULL),
  ('CB', '2025-11-12'::date, 5, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-11-12'::date, 6, 'DS System', 'Fanny', '1. 輪盤 - 增加HttpProxy模式 by Andy
2. 龍虎 - 增加全辨識功能(暫不啟用)
3. 骰類、百家、Pokdeng - 新增每局遊戲開始前刷新webRTC by Nao', '09:00'::time, '09:10'::time, 10, 'done', 'Nov. 11'),
  ('CB', '2025-11-12'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-11-12'::date, 8, 'Dealer Monitor - 亮度', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-11-12'::date, 9, '賭具更換', 'Michelle', '1. (Baccarat)更換新牌
2. (Baccarat)更換黃卡
3. (C121 Sicbo)更換骰子
4. (C121 Sicbo)更換骰盅襯墊
5. (C132 Sicbo)更換一組新骰盅
6. (C132 Sicbo)更換骰子', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('CB', '2025-11-12'::date, 10, '翻譯系統', 'Gary', '重啟 server', '08:00'::time, '08:10'::time, 10, 'done', NULL),
  ('CB', '2025-11-12'::date, 11, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-11-12'::date, 12, '路子圖、Chat Room', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-11-12'::date, 13, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-11-12'::date, 14, 'encoder', 'Emanuel', '拆除C01&C02 encoder2', '08:20'::time, '08:40'::time, 20, 'done', NULL),
  ('CB', '2025-11-12'::date, 15, '路子圖、Chat Room', 'Emanuel', '安裝studio A NUC rustdesk', '08:00'::time, '08:20'::time, 20, 'done', NULL),
  ('CB', '2025-11-05'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '06:00'::time, NULL::time, NULL, 'pending', NULL),
  ('CB', '2025-11-05'::date, 2, 'Cebu Studio(OP)', 'Emanuel', '1.Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)
2.Reboot media PC', '16:30'::time, '17:00'::time, 30, 'done', 'Nov. 4'),
  ('CB', '2025-11-05'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:51'::time, 51, 'done', NULL),
  ('CB', '2025-11-05'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. 調整currentCancelbet判斷規則
3. 調整getTableInfoForAPI回傳局數
4. 調整website getBalanceInterval設定', '07:00'::time, '08:10'::time, 70, 'done', NULL),
  ('CB', '2025-11-05'::date, 5, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-11-05'::date, 6, 'DS System', 'Fanny', '全骰類直連辨識更動(34.9,C132除外):
1.骰寶辨識結果,點數小至大排序
2.Reshake按鈕連動Reinput功能,Reshake之後一律走Reinput流程,不做辨識比對
3.Reshake之後的Reinput將不再發Wrong API至辨識主機,避免重複Telegram告警
4.Reinput按下Enter之後,訪問辨識結果、用於下局NO DRAW檢查。
5."Recognition Server Timeout"告警,發送辨識 Wrong API通知Telegram辨識群的Status顯示"Recognition Server Timeout"
6."Recognition Server Timeout"告警,於EARLY DRAW / NO DRAW搖骰檢查期間,辨識無回應也將觸發。
骰類取消和官輸入:
7.骰類套用Machine_data.ini中、InputMode開關,0=鍵盤輸入、1=辨識輸入
8.正常局之辨識輸入,數字鍵輸入無效,僅剩Reinput可輸入數字
9.新增辨識輸入逾時告警"AutoRecognitionMode Timeout",於"Open"提示消失後,超過五秒無有效結果則跳告警
手動骰寶更動:
10.Bet Time結束與開蓋提示"Open!!"之間空白秒數縮短,2秒改為1秒 By Penguin', '15:00'::time, '15:30'::time, 30, 'done', 'Nov. 4'),
  ('CB', '2025-11-05'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-11-05'::date, 8, 'Dealer Monitor - 亮度', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-11-05'::date, 9, '賭具更換', 'Michelle', '1. (Baccarat)更換黃卡
2. (C121 Sicbo)更換骰子
3. (C121 Sicbo)更換骰盅襯墊
4. (C132 Sicbo)更換一組新骰盅
5. (C132 Sicbo)更換骰子', '17:00'::time, '17:20'::time, 20, 'done', 'Nov. 4'),
  ('CB', '2025-11-05'::date, 10, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-11-05'::date, 11, 'Dealer Monitor', 'JimLin', '1.更新偵測辨識主機', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('CB', '2025-11-05'::date, 12, '路子圖、Chat Room', 'JimLin', '無', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('CB', '2025-11-05'::date, 13, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('CB', '2025-11-05'::date, 14, '活動佈置', 'Michelle', '🎃萬聖節活動🎃 (期間:Dec. 29 - Nov. 5)
1. 拆除活動佈置
2. 大廳照更換回預設白色比基尼版本', '16:00'::time, '17:20'::time, 80, 'done', 'Nov. 4'),
  ('CB', '2025-11-05'::date, 15, '設備安裝', 'Emanuel', '安裝C121路子圖螢幕
安裝C132路子圖螢幕', '10:00'::time, '13:00'::time, 180, 'done', 'Nov. 5'),
  ('CB', '2025-10-29'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '05:00'::time, '06:42'::time, 20, 'done', NULL),
  ('CB', '2025-10-29'::date, 2, 'Cebu Studio(OP)', 'Emanuel', '1.Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '05:00'::time, '05:20'::time, 20, 'done', NULL),
  ('CB', '2025-10-29'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:40'::time, 40, 'done', NULL),
  ('CB', '2025-10-29'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. THL修正顯示異常
3. 調整聊天合法字判斷
4. 新增bethost
5. 調整balance timeout, cancelbet timeout bet timeout為可調參數', '07:00'::time, '08:20'::time, 80, 'done', NULL),
  ('CB', '2025-10-29'::date, 5, '辨識系統五合一', 'Rossi
Gary', '1. 辨識主機重起,更新辨識模型', '05:00'::time, '07:20'::time, 40, 'done', NULL),
  ('CB', '2025-10-29'::date, 6, 'DS System', 'Fanny', '1.C132 34.9 手動取消輸入版本上線', '06:40'::time, '07:40'::time, 60, 'done', NULL),
  ('CB', '2025-10-29'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-10-29'::date, 8, 'Dealer Monitor - 亮度', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-10-29'::date, 9, '賭具更換', 'Michelle', '1. (Baccarat)更換新牌
2. (Baccarat)更換黃卡
3. (C121 Sicbo)更換骰子
4. (C121 Sicbo)更換骰盅襯墊
5. (C132 Sicbo)更換一組新骰盅
6. (C132 Sicbo)更換骰子', '05:00'::time, '07:20'::time, 50, 'done', NULL),
  ('CB', '2025-10-29'::date, 10, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-10-29'::date, 11, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-10-29'::date, 12, '路子圖、Chat Room', 'JimLin', '1. 新增百家遊戲
2. 路子圖串接 Data Center Table Info API
3. shoe monitor 串接 Data Center Table Info API', '05:00'::time, '07:20'::time, 10, 'done', NULL),
  ('CB', '2025-10-29'::date, 13, 'Data Center(每桌info)', 'JimLin', '1. 新增取得路子圖api domain 切換功能
2. 串接新版路子圖 API', '05:00'::time, '07:20'::time, 10, 'done', NULL),
  ('CB', '2025-10-29'::date, 14, 'C11更新無邊框桌板', 'Emanuel', '更新無邊框桌板
更新辨識', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-10-29'::date, 15, '相機調校', 'Emanuel', 'C09,C10鏡位1更新數值F5.0 ISO1600
C11更新雙鏡位架設', '05:45'::time, '06:00'::time, 15, 'done', NULL),
  ('CB', '2025-10-29'::date, 16, '活動佈置', 'Michelle', '🎃萬聖節活動🎃 (期間:Oct. 29 - Nov. 5)
1. 現場活動佈置
2. 節慶大廳照更換', '05:00'::time, '07:30'::time, 150, 'done', NULL),
  ('CB', '2025-10-22'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '08:00'::time, '08:21'::time, 21, 'done', NULL),
  ('CB', '2025-10-22'::date, 2, 'Cebu Studio(OP)', 'Emanuel', '1.Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '08:00'::time, '08:35'::time, 35, 'done', NULL),
  ('CB', '2025-10-22'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:48'::time, 48, 'done', NULL),
  ('CB', '2025-10-22'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. 全遊戲加入下注時間檢核
3. NorthAPI TG訊息加入RoundID
4. 聊天禁言啟用端點判斷
5. 修正siteproperties型態檢核邏輯錯誤', '08:00'::time, '08:40'::time, 40, 'done', NULL),
  ('CB', '2025-10-22'::date, 5, '辨識系統五合一', 'Rossi
Gary', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-10-22'::date, 6, 'DS System', 'Fanny', '1.百家 - 無牌框版本UI修正
2.百家、骰類遊戲、Pokdeng - 全辨識掃身分卡遊戲移除無用的comport初始化 By Naos
3.RS232功能獨立拆分
4.全自動辨識邏輯個遊戲拆分為模組化檔案 By Kentpon', '08:00'::time, '08:25'::time, 25, 'done', NULL),
  ('CB', '2025-10-22'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-10-22'::date, 8, 'Dealer Monitor - 亮度', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-10-22'::date, 9, '賭具更換', 'Michelle', '1. (Baccarat)更換黃卡
2. (C121 Sicbo)更換骰子
3. (C121 Sicbo)更換骰盅襯墊
4. (C132 Sicbo)更換一組新骰盅
5. (C132 Sicbo)更換骰子', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('CB', '2025-10-22'::date, 10, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-10-22'::date, 11, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-10-22'::date, 12, '路子圖、Chat Room', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-10-22'::date, 13, 'Data Center(每桌info)', 'JimLin', '1. 操作log修改儲存90天', '08:00'::time, '08:20'::time, 20, 'done', NULL),
  ('CB', '2025-10-15'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '08:00'::time, '08:10'::time, 10, 'done', NULL),
  ('CB', '2025-10-15'::date, 2, 'Cebu Studio(OP)', 'Emanuel', '1.Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('CB', '2025-10-15'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:56'::time, 56, 'done', NULL),
  ('CB', '2025-10-15'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. 修正mobile在ios26畫面可以滑動
3. PHC API新增getBalance 更新Tip + cancelTip
4. MPS API移除 unsettleRound
5. 更新AWS S3 SDK 2.0
6. getBalance改用websocket同步優化,改非主動推送
7. processNotificationAmount、matchTimeout移至Api Site Properties設定', '08:00'::time, '08:48'::time, 48, 'done', NULL),
  ('CB', '2025-10-15'::date, 5, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-10-15'::date, 6, 'DS System', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-10-15'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-10-15'::date, 8, 'Dealer Monitor - 亮度', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-10-15'::date, 9, '賭具更換', 'Michelle', '1. (Baccarat)更換新牌
2. (Baccarat)更換黃卡
3. (C121 Sicbo)更換骰子
4. (C121 Sicbo)更換骰盅襯墊
5. (C132 Sicbo)更換一組新骰盅
6. (C132 Sicbo)更換骰子', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('CB', '2025-10-15'::date, 10, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-10-15'::date, 11, '修正影像', 'Emanuel', '1.修正C04串流模糊問題', '08:00'::time, '08:02'::time, 2, 'done', NULL),
  ('CB', '2025-10-15'::date, 12, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-10-15'::date, 13, '路子圖、Chat Room', 'JimLin', '1.聊天頁面修改Pagcor mode
2.路子圖更新骰寶(上UAT)', '08:00'::time, '08:20'::time, 20, 'done', NULL),
  ('CB', '2025-10-15'::date, 14, 'Data Center(每桌info)', 'JimLin', '1.新增PA GCOR模式開關', '08:00'::time, '08:20'::time, 20, 'done', NULL),
  ('CB', '2025-10-08'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '07:00'::time, '08:15'::time, 75, 'done', NULL),
  ('CB', '2025-10-08'::date, 2, 'Cebu Studio(OP)', 'Emanuel', '1.Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '07:00'::time, '08:20'::time, 80, 'done', NULL),
  ('CB', '2025-10-08'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:17'::time, '08:41'::time, 24, 'done', NULL),
  ('CB', '2025-10-08'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. 修正聊天廣度查詢錯誤
3. PHC API移除voidSettle
4. inset txn時間改由oracle timestamp取代', '07:15'::time, '08:40'::time, 85, 'done', NULL),
  ('CB', '2025-10-08'::date, 5, '辨識系統五合一', 'Rossi
Gary', '1. 更新C121骰子模型', '08:00'::time, '08:25'::time, 25, 'done', NULL),
  ('CB', '2025-10-08'::date, 6, 'DS System', 'Fanny', '1.百家 - 新增無牌框 UI (暫不啟用)
2.全遊戲 - 修改讀取ServerSetting 中 shoe round 時間點提前 By Naos
3.Pokdeng - 修改傳送OP後台結果內容 By Kentpon', '07:00'::time, '08:20'::time, 80, 'done', NULL),
  ('CB', '2025-10-08'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-10-08'::date, 8, 'Dealer Monitor - 亮度', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-10-08'::date, 9, '賭具更換', 'Michelle', '1. (Baccarat)更換黃卡
2. (C121 Sicbo)更換骰子
3. (C121 Sicbo)更換骰盅襯墊
4. (C132 Sicbo)更換一組新骰盅
5. (C132 Sicbo)更換骰子', '07:00'::time, '08:10'::time, 70, 'done', NULL),
  ('CB', '2025-10-08'::date, 10, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-10-08'::date, 11, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-10-08'::date, 12, '路子圖、Chat Room', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-10-08'::date, 13, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-10-01'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '17:42'::time, '18:03'::time, 21, 'done', NULL),
  ('CB', '2025-10-01'::date, 2, 'Cebu Studio(OP)', 'Emanuel', '1.Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)
2.Reboot Media PC(Confirm if rtmp is normal)', '15:20'::time, '17:00'::time, 100, 'done', NULL),
  ('CB', '2025-10-01'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-10-01'::date, 4, 'LCS', 'Tony', '1. Monitor新增domain
2. EUR設定併回主線', '02:00'::time, '02:47'::time, 47, 'done', NULL),
  ('CB', '2025-10-01'::date, 5, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-10-01'::date, 6, 'DS System', 'Fanny', '1.色碟 - 新增辨識影像直連版本功能 By Penguin
2.百家 - 修改關閉風控告警時,supervisor刷卡未計數問題 By Kentpon', '15:40'::time, '16:00'::time, 20, 'done', NULL),
  ('CB', '2025-10-01'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-10-01'::date, 8, 'Dealer Monitor - 亮度', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-10-01'::date, 9, '賭具更換', 'Michelle', '1. (Baccarat)更換新牌
2. (Baccarat)更換黃卡
3. (C121 Sicbo)更換骰子
4. (C121 Sicbo)更換骰盅襯墊
5. (C132 Sicbo)更換一組新骰盅
6. (C132 Sicbo)更換骰子', '16:00'::time, '16:30'::time, 30, 'done', NULL),
  ('CB', '2025-10-01'::date, 10, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-10-01'::date, 11, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-10-01'::date, 12, '路子圖、Chat Room', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-10-01'::date, 13, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-09-24'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '08:00'::time, '08:14'::time, 14, 'done', NULL),
  ('CB', '2025-09-24'::date, 2, 'Cebu Studio(OP)', 'Emanuel', '1.Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('CB', '2025-09-24'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs
5. New SRS service deploy.', '08:00'::time, '08:54'::time, 54, 'done', NULL),
  ('CB', '2025-09-24'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. 調整支援手機版本
3. PHC API新增欄位
4. 視訊浮水印預先更換微調版', '08:00'::time, '08:33'::time, 33, 'done', NULL),
  ('CB', '2025-09-24'::date, 5, '辨識系統五合一', 'Rossi
Gary', '重啟 C11 辨識主機', '08:00'::time, '08:20'::time, 20, 'done', NULL),
  ('CB', '2025-09-24'::date, 6, 'DS System', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-09-24'::date, 7, 'Proxy server', 'Fanny', 'CB B廳移除bankerHandValue, playerHandValue, natural, pairState 四個欄位', '08:00'::time, '08:40'::time, 40, 'done', NULL),
  ('CB', '2025-09-24'::date, 8, 'Dealer Monitor - 亮度', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-09-24'::date, 9, '賭具更換', 'Michelle', '1. (Baccarat)更換黃卡
2. (C121 Sicbo)更換骰子
3. (C121 Sicbo)更換骰盅襯墊
4. (C132 Sicbo)更換一組新骰盅
5. (C132 Sicbo)更換骰子', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('CB', '2025-09-24'::date, 10, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-09-24'::date, 11, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-09-24'::date, 12, '路子圖、Chat Room', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-09-24'::date, 13, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-09-24'::date, 14, 'rustdesk佈署確認', 'Emanuel', 'AB廳Dealer PC rustdesk佈署確認', '08:20'::time, '08:35'::time, 35, 'done', NULL),
  ('CB', '2025-09-24'::date, 15, '辨識相機數值更新', 'Emanuel', 'C05&C07辨識相機數值更新,並調整模型', '08:00'::time, '08:35'::time, 35, 'done', NULL),
  ('CB', '2025-09-24'::date, 16, '發流數值校正', 'Emanuel', 'C04、C09、C11、C12、C15數值修正', '08:00'::time, '08:35'::time, 35, 'done', NULL),
  ('CB', '2025-09-24'::date, 17, '遊戲畫面校準', 'Emanuel', 'AB廳新版百家對位線校準', '08:00'::time, '08:35'::time, 35, 'done', NULL),
  ('CB', '2025-09-17'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '08:00'::time, '09:05'::time, 65, 'done', NULL),
  ('CB', '2025-09-17'::date, 2, 'Cebu Studio(OP)', 'Zet/Emanuel', '1.Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '08:00'::time, '09:50'::time, 110, 'done', NULL),
  ('CB', '2025-09-17'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '09:01'::time, 61, 'done', NULL),
  ('CB', '2025-09-17'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. 調整泰國魚蝦蟹日文指南
3. 調整泰骰倒數計時樣式
4. 調整遊戲桌進入維護相關邏輯修改
5. 修正玩家跨時區查詢交易報表時,無法正確完整顯示交易資料
6. ChatAI新增檢核欄位', '08:00'::time, '08:40'::time, 40, 'done', NULL),
  ('CB', '2025-09-17'::date, 5, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-09-17'::date, 6, 'DS System', 'Fanny', '1. C02, C03, C08, C09, C10 重設 DS automation_user 密碼 by Gary
2. 骰寶-新增告警Recognition Server Timeout ,於遊戲開始時連線不到辨識主機顯示。
By Penguin', '08:00'::time, '10:00'::time, 120, 'done', NULL),
  ('CB', '2025-09-17'::date, 7, 'Proxy server', 'Fanny', '1. 移除bankerHandValue, playerHandValue, natural, pairState 四個欄位', '08:00'::time, '10:00'::time, 120, 'done', NULL),
  ('CB', '2025-09-17'::date, 8, 'Dealer Monitor - 亮度', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-09-17'::date, 9, '賭具更換', 'Michelle', '1. 更換桌板(Baccarat/Pokdeng/Sicbo)
2. (Baccarat)更換新牌
3. (Baccarat)更換黃卡
4. (C121 Sicbo)更換骰子
5. (C121 Sicbo)更換骰盅襯墊
6. (C132 Sicbo)更換一組新骰盅
7. (C132 Sicbo)更換骰子', '08:00'::time, '10:00'::time, 120, 'done', NULL),
  ('CB', '2025-09-17'::date, 10, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-09-17'::date, 11, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-09-17'::date, 12, '路子圖、Chat Room', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-09-17'::date, 13, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-09-17'::date, 14, '降噪更新', 'Emanuel', '1.更改C07為N卡降噪', '09:00'::time, '09:30'::time, 30, 'done', NULL),
  ('CB', '2025-09-10'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '08:00'::time, '08:23'::time, 23, 'done', NULL),
  ('CB', '2025-09-10'::date, 2, 'Cebu Studio(OP)', 'Zet/Emanuel', '1.Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('CB', '2025-09-10'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:33'::time, 33, 'done', NULL),
  ('CB', '2025-09-10'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. 重構ESIC下注功能
3. Web Baccarat改版websocket
4. 優化 OKHTTP
5. Betlimit頁面增加搜尋條件', '08:00'::time, '08:40'::time, 40, 'done', NULL),
  ('CB', '2025-09-10'::date, 5, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-09-10'::date, 6, 'DS System', 'Fanny', '1.骰寶-修正自動桌點數未排序問題
2.骰寶-切分auto run與auto draw兩功能
AutoRun自動跳過Idle階段;AutoDraw自動產生隨機搖骰結果、停用辨識及搖骰檢查
By Penguin
3.BI-增加傳送該局開始時間 By Kentpon', '08:00'::time, '08:25'::time, 25, 'done', NULL),
  ('CB', '2025-09-10'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-09-10'::date, 8, 'Dealer Monitor - 亮度', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-09-10'::date, 9, '賭具更換', 'Michelle', '1. (Baccarat)更換黃卡
2. (C121 Sicbo)更換骰子
3. (C121 Sicbo)更換骰盅襯墊
4. (C132 Sicbo)更換一組新骰盅
5. (C132 Sicbo)更換骰子', '08:00'::time, '08:50'::time, 50, 'done', NULL),
  ('CB', '2025-09-10'::date, 10, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-09-10'::date, 11, 'Dealer Monitor', 'JimLin', '1. SERVER Reboot', '08:00'::time, '08:20'::time, 20, 'done', NULL),
  ('CB', '2025-09-10'::date, 12, '路子圖、Chat Room', 'JimLin', '1. SERVER Reboot', '08:00'::time, '08:20'::time, 20, 'done', NULL),
  ('CB', '2025-09-10'::date, 13, 'Data Center(每桌info)', 'JimLin', '1. SERVER Reboot', '08:00'::time, '08:20'::time, 20, 'done', NULL),
  ('CB', '2025-09-03'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '08:00'::time, '09:18'::time, 78, 'done', NULL),
  ('CB', '2025-09-03'::date, 2, 'Cebu Studio(OP)', 'Zet/Emanuel', '1.Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)
2.Reboot Media PC(Confirm if rtmp is normal)', '08:00'::time, '09:20'::time, 80, 'done', NULL),
  ('CB', '2025-09-03'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:50'::time, 50, 'done', NULL),
  ('CB', '2025-09-03'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. 優化聊打更新禁言功能
3. 修正泰骰全滿版特定比例下畫面顯示
4. OP宿霧聽不顯示C131桌', '07:00'::time, '08:20'::time, 80, 'done', NULL),
  ('CB', '2025-09-03'::date, 5, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-09-03'::date, 6, 'DS System', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-09-03'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-09-03'::date, 8, 'Dealer Monitor - 亮度', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-09-03'::date, 9, '賭具更換', 'Michelle', '1. (Baccarat)更換新牌
2. (Baccarat)更換黃卡
3. (C121 Sicbo)更換骰子
4. (C121 Sicbo)更換骰盅襯墊
5. (C132 Sicbo)更換一組新骰盅
6. (C132 Sicbo)更換骰子', '08:00'::time, '09:30'::time, 90, 'done', NULL),
  ('CB', '2025-09-03'::date, 10, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-09-03'::date, 11, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-09-03'::date, 12, '路子圖、Chat Room', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-09-03'::date, 13, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-09-03'::date, 14, '更新發流與降噪系統', 'Emanuel', '1.C07&C09改雙發流並啟動N卡降噪
2.修正C07~C09 發流模式P5', '08:00'::time, '09:00'::time, 60, 'done', NULL),
  ('CB', '2025-09-03'::date, 15, 'dealer PC遠端軟體', 'Emanuel', '1.安裝1~10桌rustdesk遠端軟體內網用', '08:00'::time, '08:50'::time, 50, 'done', NULL),
  ('CB', '2025-08-27'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '08:00'::time, '09:13'::time, 73, 'done', NULL),
  ('CB', '2025-08-27'::date, 2, 'Cebu Studio(OP)', 'Zet/Emanuel', '1.Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)
2.Reboot Media PC(Confirm if rtmp is normal)
3. 更換 DS C132 網路實體 port', '08:00'::time, '09:15'::time, 75, 'done', NULL),
  ('CB', '2025-08-27'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:51'::time, 51, 'done', NULL),
  ('CB', '2025-08-27'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. TPT TPA RBSIC TPO SIC EROU 重構下注
3. Table Report優化
4. 優化聊打斷線重連功能
5. Web Sedie調整視訊畫面
6. 外部Replay修正虛擬牌顯示位置
7. 修正系統維護判斷規則', '06:50'::time, '08:25'::time, 95, 'done', NULL),
  ('CB', '2025-08-27'::date, 5, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-08-27'::date, 6, 'DS System', 'Fanny', '1.新增傳送OP後台所需資料 By Kentpon', '08:00'::time, '09:20'::time, 80, 'done', NULL),
  ('CB', '2025-08-27'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-08-27'::date, 8, 'Dealer Monitor - 亮度', 'Gary', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-08-27'::date, 9, '賭具更換', 'Michelle', '1. (Baccarat)更換黃卡
2. (C121 Sicbo)更換骰子
3. (C121 Sicbo)更換骰盅襯墊
4. (C132 Sicbo)更換一組新骰盅
5. (C132 Sicbo)更換骰子', '08:00'::time, '09:20'::time, 80, 'done', NULL),
  ('CB', '2025-08-27'::date, 10, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-08-27'::date, 11, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-08-27'::date, 12, '路子圖、Chat Room', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-08-27'::date, 13, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-08-27'::date, 14, '擷取卡更新', 'Emanuel', '更換C05擷取卡為YUAN', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('CB', '2025-08-27'::date, 15, '修正聊天NUC設定', 'Emanuel', '更改C161聊天室NUC網路設定,從wifi改實體線', '08:50'::time, '09:10'::time, 20, 'done', NULL),
  ('CB', '2025-08-20'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '07:55'::time, '08:01'::time, 4, 'done', NULL),
  ('CB', '2025-08-20'::date, 2, 'Cebu Studio(OP)', 'Zet/Emanuel', '1.Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)
2.Reboot Media PC(Confirm if rtmp is normal)', '08:00'::time, '08:35'::time, 35, 'done', NULL),
  ('CB', '2025-08-20'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs
5. Domain change. (ylqcy.com)', '08:00'::time, '08:45'::time, 45, 'done', NULL),
  ('CB', '2025-08-20'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. ThaiHiLo套用聊打
3. ThaiHiLo套用全滿版
4. 聊天禁用字機制優化
5. 調整Table對應VideoCode
6. 修正API非PokDeng遊戲不顯示WithHolding
7. 修正API 下注Esic遊戲Settle會顯示Tfpc結果格式', '08:00'::time, '08:42'::time, 42, 'done', NULL),
  ('CB', '2025-08-20'::date, 5, '辨識系統五合一', 'Rossi
Gary', '1. C01/C09 更新辨識模型', '08:00'::time, '08:20'::time, 20, 'done', NULL),
  ('CB', '2025-08-20'::date, 6, 'DS System', 'Fanny', '1.骰類 修正Reinput中,遺漏錯誤回報(wrong) API
2.骰類 在IDLE階段,刷VD卡之視窗按鈕Void、Reinput、Reshake按鈕皆停用 By Penguin
3.百家 新增打辨識API 不通時進行retry機制,連續三次不通才跳告警 by Cammy', '08:00'::time, '08:40'::time, 40, 'done', NULL),
  ('CB', '2025-08-20'::date, 7, 'Proxy server', 'Fanny', '1. Cebu 廠區
C121 C131 合併成 C121
2. C132 桌增加Endpont
https://dhjal2.bikimex.net/event/DealerCurrentStateServlet
https://dhjal1.bikimex.net/event/DealerCurrentStateServlet
https://test.svkasino.vip/api/event/receiveEvent
https://api.svcasino.vip/api/event/receiveEvent', '08:00'::time, '08:45'::time, 45, 'done', NULL),
  ('CB', '2025-08-20'::date, 8, 'Dealer Monitor - 亮度', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-08-20'::date, 9, '賭具更換', 'Michelle', '1. (Baccarat)更換新牌
2. (Baccarat)更換黃卡
3. (C121 Sicbo)更換骰子
4. (C121 Sicbo)更換骰盅襯墊
5. (C132 Sicbo)更換一組新骰盅
6. (C132 Sicbo)更換骰子', '08:00'::time, '08:35'::time, 35, 'done', NULL),
  ('CB', '2025-08-20'::date, 10, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-08-20'::date, 11, 'Dealer Monitor', 'JimLin', '1. 調整桌號拆分設定 C121, C132', '08:00'::time, '08:20'::time, 20, 'done', NULL),
  ('CB', '2025-08-20'::date, 12, '路子圖、Chat Room', 'JimLin', '1. 聊天室新增隱藏訊息(不雅訊息)功能', '08:00'::time, '08:20'::time, 20, 'done', NULL),
  ('CB', '2025-08-20'::date, 13, 'Data Center(每桌info)', 'JimLin', '1. 調整桌號拆分設定 C121, C132', '08:00'::time, '08:20'::time, 20, 'done', NULL),
  ('CB', '2025-08-20'::date, 14, '更換擷取卡與音源架構', 'Emanuel', '1.更換C01&C02擷取卡為YUAN
2.更改為N卡降噪並且OBS雙發流', '08:00'::time, '08:25'::time, 25, 'done', NULL),
  ('CB', '2025-08-20'::date, 15, 'C121自動骰盅', 'Emanuel', '更改C121自動骰盅骰盤為固定式', '08:30'::time, '08:40'::time, 10, 'done', NULL),
  ('CB', '2025-08-13'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '08:00'::time, '08:14'::time, 14, 'done', NULL),
  ('CB', '2025-08-13'::date, 2, 'Cebu Studio(OP)', 'Zet/Emanuel', '1.Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)
2.Reboot Media PC(Confirm if rtmp is normal)', '08:00'::time, '08:35'::time, 35, 'done', NULL),
  ('CB', '2025-08-13'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs
5. Domain change. (ylqcy.com)', '08:00'::time, '08:59'::time, 59, 'done', NULL),
  ('CB', '2025-08-13'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. DI線下補檔
3. 百家樂遊戲畫面第三張牌位置調整
4. 龍虎遊戲電腦版卡牌花色調整
5. PokDeng 保險未下注成功的回覆不正確
6. 大廳-修改其他語系(非韓國/越南/泰國市場)桌子排序
7. Refactor RiverAPIAction', '08:00'::time, '08:35'::time, 35, 'done', NULL),
  ('CB', '2025-08-13'::date, 5, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-08-13'::date, 6, 'DS System', 'Fanny', '1.手搖骰功能合併進Dealer system主幹 (C132版本除外)', '08:00'::time, '08:20'::time, 20, 'done', NULL),
  ('CB', '2025-08-13'::date, 7, 'Proxy server', 'Fanny', '1. 全廳仿照LCS設定 增加一份到EUR正式環境的Endpoint
https://zthzox.eatefl.com/event/DealerCurrentStateServlet
https://mwozwn.eatefl.com/event/DealerCurrentStateServlet
2. C132 桌增加Endpont
https://dhjal2.bikimex.net/event/DealerCurrentStateServlet
https://dhjal1.bikimex.net/event/DealerCurrentStateServlet', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('CB', '2025-08-13'::date, 8, 'Dealer Monitor - 亮度', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-08-13'::date, 9, '賭具更換', 'Michelle', '1. (Baccarat)更換黃卡
2. (Sicbo)更換骰子
3. (Sicbo)更換骰盅襯墊', '08:00'::time, '08:20'::time, 20, 'done', NULL),
  ('CB', '2025-08-13'::date, 10, '翻譯系統', 'Gary', '[Feat] Enable cache and RAG, add support for Chinese. Add a hide message column.
[Fix] test endpoint bug fixed.
[Chore] vLLM engine iteration and API timeout setting adjustment.', '08:00'::time, '08:20'::time, 20, 'done', 'v5.6.1'),
  ('CB', '2025-08-13'::date, 11, 'Dealer Monitor', 'JimLin', '1. SERVER維護重啟', '08:00'::time, '08:15'::time, 15, 'done', NULL),
  ('CB', '2025-08-13'::date, 12, '路子圖、Chat Room', 'JimLin', '1. SERVER維護重啟', '08:00'::time, '08:15'::time, 15, 'done', NULL),
  ('CB', '2025-08-13'::date, 13, 'Data Center(每桌info)', 'JimLin', '1. SERVER維護重啟', '08:00'::time, '08:15'::time, 15, 'done', NULL),
  ('CB', '2025-08-13'::date, 14, '更換C03擷取卡與音源架構', 'Emanuel', '1.更換C03擷取卡為YUAN
2.將熱靴降噪架構更改成N卡降噪', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('CB', '2025-08-13'::date, 15, 'C132鏡位調整', 'Emanuel', 'C132鏡位調整,標準為C121', '08:50'::time, '08:55'::time, 5, 'done', NULL),
  ('CB', '2025-08-06'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '08:00'::time, '09:11'::time, 71, 'done', NULL),
  ('CB', '2025-08-06'::date, 2, 'Cebu Studio(OP)', 'Zet/Emanuel', '1.Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)
2.Reboot Media PC(Confirm if rtmp is normal)', '08:00'::time, '09:25'::time, 85, 'done', NULL),
  ('CB', '2025-08-06'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:32'::time, 32, 'done', NULL),
  ('CB', '2025-08-06'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. DI線下補檔
3. Refactor AWCKRAPIAction
4. 調整ELK index 新增Instance欄位
5. 更新Ogre
6. 部分廠商API新增回傳欄位
7. PKD Countdown加上log', '08:00'::time, '08:44'::time, 44, 'done', NULL),
  ('CB', '2025-08-06'::date, 5, '辨識系統五合一', 'Rossi
Gary', '1. 自動骰更新
2. C132 更新模型', '09:05'::time, '09:15'::time, 10, 'done', NULL),
  ('CB', '2025-08-06'::date, 6, 'DS System', 'Fanny', '手搖骰功能合併進Dealer system主幹 (C16、C121/131、C132)', '08:00'::time, '10:00'::time, 120, 'done', NULL),
  ('CB', '2025-08-06'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-08-06'::date, 8, 'Dealer Monitor - 亮度', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-08-06'::date, 9, '賭具更換', 'Michelle', '1. (Baccarat)更換新牌
2. (Baccarat)更換黃卡
3. (Sicbo)更換骰子
4. (Sicbo)更換骰盅襯墊', '08:00'::time, '09:15'::time, 75, 'done', NULL),
  ('CB', '2025-08-06'::date, 10, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-08-06'::date, 11, 'Dealer Monitor', 'JimLin', '1. CB 新增C132', '08:00'::time, '08:20'::time, 20, 'done', NULL),
  ('CB', '2025-08-06'::date, 12, '路子圖、Chat Room', 'JimLin', '1. Shoes Monitor新增時間顯示區塊(PROD)
2. Caht Room新增時間顯示區塊(PROD)', '08:00'::time, '08:20'::time, 20, 'done', NULL),
  ('CB', '2025-08-06'::date, 13, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-07-30'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio B),Studio A本週暫時不更新', '08:00'::time, '09:17'::time, 77, 'done', NULL),
  ('CB', '2025-07-30'::date, 2, 'Cebu Studio(OP)', 'Zet/Emanuel', '1.Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)
2.Reboot Media PC(Confirm if rtmp is normal)', '08:00'::time, '09:30'::time, 90, 'done', NULL),
  ('CB', '2025-07-30'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:50'::time, 50, 'done', NULL),
  ('CB', '2025-07-30'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. DI線下補檔
3. 調整Web版ExtraSicbo視訊高度
4. 調整ELK index 新增Instance欄位', '08:00'::time, '08:00'::time, 30, 'done', NULL),
  ('CB', '2025-07-30'::date, 5, '辨識系統五合一', 'Rossi
Gary', '1. C01 重啟 (參照C09設定進行)', '08:00'::time, '08:25'::time, 25, 'done', NULL),
  ('CB', '2025-07-30'::date, 6, 'DS System', 'Fanny', '1. enable sshd service for all pc. by Gary
2. create local automation account for all pc. by Gary
3. Pokdeng CountDown event input add card data by Cammy', '08:00'::time, '09:16'::time, 75, 'done', NULL),
  ('CB', '2025-07-30'::date, 7, 'Proxy server', 'Fanny', '1.調整 PokDeng 遊戲event countDown事件', '08:00'::time, '09:09'::time, 69, 'done', NULL),
  ('CB', '2025-07-30'::date, 8, 'Dealer Monitor - 亮度', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-07-30'::date, 9, '賭具更換', 'Michelle', '1. 更換黃卡
2. 更換新的一組Sicbo骰子
3. 更換dice內置小墊子', '08:00'::time, '09:20'::time, 80, 'done', NULL),
  ('CB', '2025-07-30'::date, 10, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-07-30'::date, 11, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-07-30'::date, 12, '路子圖、Chat Room', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-07-30'::date, 13, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-07-30'::date, 14, '辨識相機', 'Zet/Emanuel', '更改C01辨識相機參數 (參照C09設定進行)', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('CB', '2025-07-23'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '08:00'::time, '08:20'::time, 20, 'done', NULL),
  ('CB', '2025-07-23'::date, 2, 'Cebu Studio(OP)', 'Zet/Emanuel', '1.Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)
2.Reboot Media PC(Confirm if rtmp is normal)', '08:00'::time, '08:35'::time, 35, 'done', NULL),
  ('CB', '2025-07-23'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:50'::time, 50, 'done', NULL),
  ('CB', '2025-07-23'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. DI線下補檔
3. 修正自訂籌碼顯示錯誤
4. 調整ELK index 新增Instance欄位', '08:00'::time, '08:35'::time, 35, 'done', NULL),
  ('CB', '2025-07-23'::date, 5, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-07-23'::date, 6, 'DS System', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-07-23'::date, 7, 'Proxy server', 'Fanny', 'C132桌增加Endpint:LCS UAT串接需求
https://ki5mof.bikimex.com/event/DealerCurrentStateServlet
https://bfsiz6.bikimex.com/event/DealerCurrentStateServlet
https://vceanu.emgvqu.com/event/DealerCurrentStateServlet
https://emgvqu.emgvqu.com/event/DealerCurrentStateServlet
https://zthzox.qpemmc.com/event/DealerCurrentStateServlet
https://mwozwn.qpemmc.com/event/DealerCurrentStateServlet
https://oentww.mjocev.com/event/DealerCurrentStateServlet
https://paeuvw.mjocev.com/event/DealerCurrentStateServlet', '08:00'::time, '08:20'::time, 20, 'done', NULL),
  ('CB', '2025-07-23'::date, 8, 'Dealer Monitor - 亮度', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-07-23'::date, 9, '賭具更換', 'Michelle', '1. 更換黃卡
2. 更換新的一組Sicbo骰子
3. 更換dice內置小墊子', '08:00'::time, '08:40'::time, 40, 'done', NULL),
  ('CB', '2025-07-23'::date, 10, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-07-23'::date, 11, 'Dealer Monitor', 'JimLin', '1.除了百家樂外的桌都要拿掉風控功能
2.隱藏sound and 亮度功能', '08:00'::time, '08:20'::time, 20, 'done', NULL),
  ('CB', '2025-07-23'::date, 12, '路子圖、Chat Room', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-07-23'::date, 13, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-07-16'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '08:00'::time, '08:20'::time, 20, 'done', NULL),
  ('CB', '2025-07-16'::date, 2, 'Cebu Studio(OP)', 'Zet/Emanuel', '1.Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)
2.Reboot Media PC(Confirm if rtmp is normal)', '08:00'::time, '08:45'::time, 45, 'done', NULL),
  ('CB', '2025-07-16'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:33'::time, 33, 'done', NULL),
  ('CB', '2025-07-16'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. DI線下補檔
3. PokDeng虛擬牌調整位置
4. PokDeng新增下注選位提示,移除遊戲引導畫面
5. 修正IOS回桌面再返回,觸發WS重連時,視訊跟虛擬牌翻牌不同步
6. 依廳別拆分,加速Settle傳送速度', '08:00'::time, '08:32'::time, 32, 'done', NULL),
  ('CB', '2025-07-16'::date, 5, '辨識系統五合一', 'Rossi
Gary', '1. 修正百家未限制資料夾數量問題(需重啟辨識服務)', '08:00'::time, '08:15'::time, 15, 'done', NULL),
  ('CB', '2025-07-16'::date, 6, 'DS System', 'Fanny', '1.修改風控觸發TG告警的條件
2.移除錄影回放浮水印 by Will
3.修正early draw告警提示窗關閉時機
4.修改Recognition Does Not Match And Has Retry告警字樣
5.修改wrong API input中Result的default by Cammy
6.處理Bet time階段中,因網路連線中斷導致API回傳空資料的情況', '08:00'::time, '08:40'::time, 40, 'done', NULL),
  ('CB', '2025-07-16'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-07-16'::date, 8, 'Dealer Monitor - 亮度', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-07-16'::date, 9, '賭具更換', 'Michelle', '1. 更換黃卡
2. 更換新的一組Sicbo骰子
3. 更換dice內置小墊子
4. 更換Pokdeng新版桌板', '08:00'::time, '08:50'::time, 50, 'done', NULL),
  ('CB', '2025-07-16'::date, 10, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-07-16'::date, 11, 'Dealer Monitor', 'JimLin', '1. MX dealer monitor 風控上prod(CB上週己上)', '08:00'::time, '08:20'::time, 20, 'done', NULL),
  ('CB', '2025-07-16'::date, 12, '路子圖、Chat Room', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-07-16'::date, 13, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-07-16'::date, 14, '擷取卡更換', 'Emanuel', '更換C15&C132為YUAN擷取卡', '08:00'::time, '08:40'::time, 40, 'done', NULL),
  ('CB', '2025-07-16'::date, 15, '更新降噪模型', 'Emanuel', '更換C15為N卡降噪模型', '08:00'::time, '08:40'::time, 40, 'done', NULL),
  ('CB', '2025-07-09'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '07:00'::time, '07:21'::time, 21, 'done', NULL),
  ('CB', '2025-07-09'::date, 2, 'Cebu Studio(OP)', 'Zet/Emanuel', '1.Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)
2.Reboot Media PC(Confirm if rtmp is normal)', '07:00'::time, '07:45'::time, 45, 'done', NULL),
  ('CB', '2025-07-09'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '07:00'::time, '07:55'::time, 55, 'done', NULL),
  ('CB', '2025-07-09'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. Balance改由WS取得
3. DI線下補檔
4. 交易報表清單根據桌子開關動態顯示
5. 輪盤大小單雙紅黑修正ValidBet顯示
6. 新增幣別PYG、BHD
7. PokDeng移除new字樣', '08:00'::time, '08:26'::time, 26, 'done', NULL),
  ('CB', '2025-07-09'::date, 5, '辨識系統五合一', 'Rossi
Gary', '1. 重啟所有辨識主機, 配合DS進行的改版( QR code url, 紀錄response非200的詳細資訊)', '07:00'::time, '09:56'::time, 176, 'done', NULL),
  ('CB', '2025-07-09'::date, 6, 'DS System', 'Fanny', '1.加入風控模式(這週只有CB開啟此功能)
2.所有錄影檔右下加入荷官名稱的浮水印 By Will
3.百家辨識API簡化與錯誤判斷邏輯更新
4.百家未抓取到結果的辨識不符狀況增加retry
5.調整early draw告警訊息跳出時間點
6.修正Pokdeng牌型最後一張重複刷卡bug
7.修改百家、pokdeng、Sicbo辨識人員登入QR code API path By Cammy', '07:00'::time, '10:49'::time, 229, 'done', NULL),
  ('CB', '2025-07-09'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-07-09'::date, 8, 'Dealer Monitor - 亮度', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-07-09'::date, 9, '賭具更換', 'Michelle', '1. 更換黃卡
2. 更換新的一組Sicbo骰子
3. 更換dice內置小墊子
4. 更換C01~C16百家桌扶手', '07:00'::time, '07:50'::time, 50, 'done', NULL),
  ('CB', '2025-07-09'::date, 10, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-07-09'::date, 11, 'Dealer Monitor', 'JimLin', '1. 風控上到PROD', '07:00'::time, '08:27'::time, 87, 'done', NULL),
  ('CB', '2025-07-09'::date, 12, '路子圖、Chat Room', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-07-09'::date, 13, 'Data Center(每桌info)', 'JimLin', '1. add table info checkbox field
2. add dealer info checkbox field
3. update table setting UI', '07:00'::time, '07:40'::time, 40, 'done', NULL),
  ('CB', '2025-07-09'::date, 14, 'Streaming', 'Hedy', '1. C08 media pc 系統驅動排查與更新
2. C10 media pc vmix 原cpu編碼,改為gpu編碼', '07:00'::time, '07:54'::time, 54, 'done', NULL),
  ('CB', '2025-07-02'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '08:00'::time, '08:25'::time, 25, 'done', NULL),
  ('CB', '2025-07-02'::date, 2, 'Cebu Studio(OP)', 'Zet/Emanuel', '1.Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)
2.Reboot Media PC(Confirm if rtmp is normal)', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('CB', '2025-07-02'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:45'::time, 45, 'done', NULL),
  ('CB', '2025-07-02'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. ExtraSicbo全滿版(mobile)
3. ExtraSicbo套用聊天打賞(mobile)
4. 調整playerHandValue bankerHandValue pairstate nature 事件優化
5. DI線下補檔', '08:00'::time, '08:45'::time, 45, 'done', NULL),
  ('CB', '2025-07-02'::date, 5, '辨識系統五合一', 'Rossi
Gary', '1. 吃到 SWAP,重啟 C05。
2. 設定 C161 ( journal & ntp ) 後重啟。', '08:00'::time, '08:41'::time, 41, 'done', NULL),
  ('CB', '2025-07-02'::date, 6, 'DS System', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-07-02'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-07-02'::date, 8, 'Dealer Monitor - 亮度', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-07-02'::date, 9, '賭具更換', 'Michelle', '1. 更換黃卡
2. 更換新的一組Sicbo骰子
3. 更換dice內置小墊子', '08:00'::time, '08:40'::time, 40, 'done', NULL),
  ('CB', '2025-07-02'::date, 10, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-07-02'::date, 11, 'Dealer Monitor', 'JimLin', '1. SERVER重啟', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('CB', '2025-07-02'::date, 12, '路子圖、Chat Room', 'JimLin', '1. cebu 增加紀錄換 dealer 時的 log', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('CB', '2025-07-02'::date, 13, 'Data Center(每桌info)', 'JimLin', '1. Add logging for point tracking
2. Implement the chat gift reset feature(change function)', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('CB', '2025-07-02'::date, 14, 'OBS雙發流架構', 'Emanuel', 'Studio A Table C08 & C09更換為OBS雙發流架構', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('CB', '2025-06-25'::date, 1, 'Cebu Studio(IT)', 'Zet/Emanuel', '現場Proxy server重啟(Studio A & B)', '08:00'::time, '08:23'::time, 23, 'done', NULL),
  ('CB', '2025-06-25'::date, 2, 'Cebu Studio(OP)', 'Zet/Emanuel', '1.Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)
2.Reboot Media PC(Confirm if rtmp is normal)', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('CB', '2025-06-25'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:53'::time, 53, 'done', NULL),
  ('CB', '2025-06-25'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. 分群程式
3. 龍虎下注程式重構
4. 輪盤下注程式重構
5. 新增PLN幣別
6. 修正交易報告頁面斷網會顯示錯誤
7. DI線下補檔
8. 調整百家大小注區21局後不可以下', '08:00'::time, '08:45'::time, 45, 'done', NULL),
  ('CB', '2025-06-25'::date, 5, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-06-25'::date, 6, 'DS System', 'Fanny', '1.增加 例外狀況寫入fatal log
2.修正 idle狀態下supervisor 的記錄數量
3.修正 dev模式也使用UAT資料庫 By Kentpon', '08:00'::time, '08:26'::time, 26, 'done', NULL),
  ('CB', '2025-06-25'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-06-25'::date, 8, 'Dealer Monitor - 亮度', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-06-25'::date, 9, '賭具更換', 'Michelle', '1. 現場更換Pokdeng桌板+小洗牌桌桌板
2. 更換黃卡
3. 更換新的一組Sicbo骰子
4. 更換dice內置小墊子', '08:00'::time, '08:45'::time, 45, 'done', NULL),
  ('CB', '2025-06-25'::date, 10, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-06-25'::date, 11, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-06-25'::date, 12, '路子圖、Chat Room', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-06-25'::date, 13, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-06-18'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '08:00'::time, '08:19'::time, 19, 'done', NULL),
  ('CB', '2025-06-18'::date, 2, 'Cebu Studio(OP)', 'Zet', '1.Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)
2.Reboot Media PC(Confirm if rtmp is normal)', '08:00'::time, '09:10'::time, 70, 'done', NULL),
  ('CB', '2025-06-18'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:37'::time, 37, 'done', NULL),
  ('CB', '2025-06-18'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. 新增domain by agent
3. 聊天黑名單功能優化
4. 聊天後台修正敏感字無法刪除
5. 暱稱檢核修正規則
6. DI傳送新增website id , website name
7. DI驗證新增update by bettime', '08:00'::time, '08:31'::time, 31, 'done', NULL),
  ('CB', '2025-06-18'::date, 5, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-06-18'::date, 6, 'DS System', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-06-18'::date, 7, 'Proxy server', 'Fanny', '1. C6001桌增加Endpint:
https://rdda.devhotroadgaming.com/c2v4eq/dealer-event
https://qada.devhotroadgaming.com/c2v4eq/dealer-event
https://da.demohotroadgaming.com/c2v4eq/dealer-event', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('CB', '2025-06-18'::date, 8, 'Dealer Monitor - 亮度', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-06-18'::date, 9, '賭具更換', 'Michelle', '1. 現場更換A/B廳桌板+小洗牌桌桌板
2. 更換黃卡
3. 更換新的一組Sicbo骰子
4. 更換dice內置小墊子', '08:00'::time, '09:20'::time, 80, 'done', NULL),
  ('CB', '2025-06-18'::date, 10, '自動骰盅', 'Emanuel', '調整C121正式桌骰盅參數+4跳動', '08:30'::time, '08:35'::time, 5, 'done', NULL),
  ('CB', '2025-06-18'::date, 11, '拆除降噪NUC', 'Emanuel', '1.拆除C161 pokden降噪NUC 10.22.2.65
2.拆除C15 studio B 降噪NUC 10.22.2.66
3.拆除C11 studio B 降噪NUC 10.22.2.68', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('CB', '2025-06-18'::date, 12, '翻譯系統', 'Gary', '版本更新 v5.3.1 -> v5.4.1', '08:00'::time, '08:17'::time, 17, 'done', '- Emoji remove function bug fixed
- Add LLM Spam filter
- Language detection model and logic changed
- Use the old VLLM image for building(latest using cuda 12.8)
- Timeout raises HTTP 500 error
- Prompt update
- Add test API, including BLEU score'),
  ('CB', '2025-06-18'::date, 13, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-06-18'::date, 14, '路子圖、Chat Room', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-06-18'::date, 15, 'Data Center(每桌info)', 'JimLin', '1. add table info api
2. update dealer info api
3. add C131、131、132 config', '08:00'::time, '08:47'::time, 47, 'done', NULL),
  ('CB', '2025-06-11'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '08:00'::time, '08:20'::time, 20, 'done', NULL),
  ('CB', '2025-06-11'::date, 2, 'Cebu Studio(OP)', 'Zet', '1.Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)
2.Reboot Media PC(Confirm if rtmp is normal)', '08:00'::time, '08:40'::time, 40, 'done', NULL),
  ('CB', '2025-06-11'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:50'::time, 50, 'done', NULL),
  ('CB', '2025-06-11'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. PokDeng套用聊天打賞
3. 新增依國家停止使用靜態站功能', '08:00'::time, '08:35'::time, 35, 'done', NULL),
  ('CB', '2025-06-11'::date, 5, '辨識系統五合一', 'Rossi
Gary', '1. 重啟百家 C01
2. 骰寶 C121 加入疊骰時候發送圖片到 Telegram
3. Pok-Deng C161 發生刷牌 Fail 時候錯誤圖片獨立到指定位置', '08:00'::time, '08:20'::time, 20, 'done', NULL),
  ('CB', '2025-06-11'::date, 6, 'DS System', 'Fanny', '1. 骰類遊戲修正截圖辨識錯誤回報失敗問題
2. 骰類遊戲修正卡片掃碼null錯誤 By Penguin', '08:00'::time, '08:44'::time, 44, 'done', NULL),
  ('CB', '2025-06-11'::date, 7, 'Proxy server', 'Fanny', '1. Http Proxy更新:
(1)移除 dealerSerialNo,winnerHandValue,sqezzeCard,lockReason 四個參數
(2)加入 is_lab 的設定 可以依據不同桌號決定告警時要發送到哪一個群組
(3)新增 gameDealerSystemLogger 用於儲存 DS 發送的 encryptMessage並寫入 logs
(4)增加 encryptMessage 的 Logger 並檢查收到的訊息是不是Null
(5)為各 Event 增加 try-catch 錯誤處理,並補上錯誤告警通知

3. C08、C09、C10增加Endpint:
https://qada.devhotroadgaming.com/c2v4eq/dealer-event
https://da.demohotroadgaming.com/c2v4eq/dealer-event
https://da.hotroadgaming.com/c2v4eq/dealer-event', '08:00'::time, '08:44'::time, 44, 'done', NULL),
  ('CB', '2025-06-11'::date, 8, 'Dealer Monitor - 亮度', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-06-11'::date, 9, '賭具更換', 'Michelle', '1. 更換黃卡
2. 更換新的一組Sicbo骰子
3. 更換dice內置小墊子', '08:00'::time, '08:45'::time, 45, 'done', NULL),
  ('CB', '2025-06-11'::date, 10, '翻譯系統', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-06-11'::date, 11, '自動骰盅', 'Emanuel', '更換調整C131自動骰盅桌Dealer Card辨識相機', '08:00'::time, '08:15'::time, 15, 'done', NULL),
  ('CB', '2025-06-03'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '06:30'::time, '06:51'::time, 21, 'done', NULL),
  ('CB', '2025-06-03'::date, 2, 'Cebu Studio(OP)', 'Zet', '1.Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)
2.Reboot Media PC(Confirm if rtmp is normal)', '06:30'::time, '07:15'::time, 45, 'done', NULL),
  ('CB', '2025-06-03'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '06:30'::time, '07:00'::time, 30, 'done', NULL),
  ('CB', '2025-06-03'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. 新增幣別', '06:30'::time, '07:00'::time, 30, 'done', NULL),
  ('CB', '2025-06-03'::date, 5, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-06-03'::date, 6, 'DS System', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-06-03'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-06-03'::date, 8, 'Dealer Monitor - 亮度', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-06-03'::date, 9, '賭具更換', 'Michelle', '1. 更換黃卡
2. 更換新的一組Sicbo骰子
3. 更換dice內置小墊子', '06:40'::time, '07:10'::time, 30, 'done', NULL),
  ('CB', '2025-06-03'::date, 10, '翻譯系統', 'Gary', '1. release on all table ( C01 ~ C16 )', '06:30'::time, '07:30'::time, 60, 'done', 'current version: v5.3.1'),
  ('CB', '2025-06-03'::date, 11, '自動骰盅', 'Emanuel', '調整C131自動骰盅桌Dealer Card辨識相機', '06:40'::time, '07:10'::time, 30, 'done', NULL),
  ('CB', '2025-05-28'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '08:00'::time, '09:14'::time, 74, 'done', NULL),
  ('CB', '2025-05-28'::date, 2, 'Cebu Studio(OP)', 'Zet', '1.Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)
2.Reboot Media PC(Confirm if rtmp is normal)', '08:00'::time, '09:30'::time, 90, 'done', NULL),
  ('CB', '2025-05-28'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:47'::time, 47, 'done', NULL),
  ('CB', '2025-05-28'::date, 4, 'LCS', 'Tony', '1. 百家桌Websocket增加回傳table timestamp資訊
2. 百家桌全部維護時,大廳應顯示其他Group
3. 龍虎桌修正斷網後視訊未正確顯示提示訊息', '08:00'::time, '08:50'::time, 50, 'done', NULL),
  ('CB', '2025-05-28'::date, 5, '辨識系統五合一', 'Rossi
Gary', '重啟 C15 主機( 辨識、降噪 )', '09:00'::time, '09:10'::time, 10, 'done', NULL),
  ('CB', '2025-05-28'::date, 6, 'DS System', 'Fanny', '1.百家、龍虎、Pokdeng、骰子增加回傳Supervisor login count紀錄進荷官後台 By Pon
2.將http proxy告警事件移至HttpProxy TG群組 By Will', '08:00'::time, '09:19'::time, 79, 'done', NULL),
  ('CB', '2025-05-28'::date, 7, 'Proxy server', 'Fanny', '1. 新增下列Endpoint網址到 Cebu C08 C09 C10桌
Endpoint : https://rdda.devhotroadgaming.com/c2v4eq/dealer-event', '08:00'::time, '09:19'::time, 79, 'done', NULL),
  ('CB', '2025-05-28'::date, 8, 'Dealer Monitor - 亮度', 'Gary', 'None', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-05-28'::date, 9, '賭具更換', 'Michelle', '1. 更換黃卡
2. 更換新的一組Sicbo骰子
3. 更換dice內置小墊子', '08:00'::time, '09:30'::time, 90, 'done', NULL),
  ('CB', '2025-05-28'::date, 10, '翻譯系統', 'Gary', '系統上線,版本號:v5.3.1 (Phase 1: release on C8-C16 table)', NULL::time, NULL::time, NULL, 'na', 'Phase 2: release on all table on next week'),
  ('CB', '2025-05-28'::date, 11, '自動骰盅', 'Emanuel', '更新C121骰盅參數', '09:00'::time, '09:40'::time, 40, 'done', NULL),
  ('CB', '2025-05-21'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '08:00'::time, '08:26'::time, 26, 'done', NULL),
  ('CB', '2025-05-21'::date, 2, 'Cebu Studio(OP)', 'Zet', '1.Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)
2.Reboot Media PC(Confirm if rtmp is normal)', '08:00'::time, '08:35'::time, 35, 'done', NULL),
  ('CB', '2025-05-21'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:50'::time, 50, 'done', NULL),
  ('CB', '2025-05-21'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. 產生資料並送往 Data Integration
3. 傳送部分桌次訊息進行模組訓練
4. Streaming訊息增加Region, City, Isp
5. 新增幣別 SAR, KWD
6. 移除void result程式', '08:00'::time, '08:35'::time, 35, 'done', NULL),
  ('CB', '2025-05-21'::date, 5, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-05-21'::date, 6, 'DS System', 'Fanny', '1.122/132自動骰寶上線
2.Supervisor SE、VD卡片需使用後台的專屬編號刷卡', '08:00'::time, '08:41'::time, 41, 'done', NULL),
  ('CB', '2025-05-21'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-05-21'::date, 8, 'Dealer Monitor - 亮度', 'Gary', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-05-21'::date, 9, '賭具設備', 'Michelle', '1. 更換黃卡(替換數量:Studio A 6 pcs;Studio B 3 pcs)
2. 更換新的一組Sicbo骰子
3. 更換dice內置小墊子(5/20已提前更換)
4. 更換Super ID Card(使用後台新編制專屬編號)', '08:00'::time, '08:35'::time, 36, 'done', NULL),
  ('CB', '2025-05-14'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '08:00'::time, '08:18'::time, 18, 'done', NULL),
  ('CB', '2025-05-14'::date, 2, 'Cebu Studio(OP)', 'Zet', '1.Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)
2.Reboot Media PC(Confirm if rtmp is normal)', '08:00'::time, '08:35'::time, 35, 'done', NULL),
  ('CB', '2025-05-14'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:55'::time, 55, 'done', NULL),
  ('CB', '2025-05-14'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. 產生資料並送往 Data Integration
3. 修正WS斷線刷新連線中文字 VN語系會換行
4. 大廳不顯示維護中的桌子', '08:00'::time, '08:39'::time, 39, 'done', NULL),
  ('CB', '2025-05-14'::date, 5, '辨識系統五合一', 'Rossi
Gary', '1. 重啟 C11 辨識五合一主機', '08:00'::time, '08:08'::time, 8, 'done', NULL),
  ('CB', '2025-05-14'::date, 6, 'DS System', 'Fanny', '1. 骰寶:支援骰子自動辨識。by Penguin
2. 骰寶:EARLY DRAW及NO DRAW改由Dealer PC判定。by Penguin
3. 骰寶:搖骰啟動時間由Betime倒數至0秒提前至6秒。by Penguin
4. 骰寶:單局錄影時間起點改為搖骰啟動前1秒。by Penguin
5. 骰類:按下Reshake按鈕時,先通知辨識主機截圖再行搖骰 by Penguin
6. 骰類:套用user control panelRTSP,支援WebRTC。by Penguin
7. 骰類:支援HTTP Proxy Server 。by Will
8. PokDeng增加自動桌模式抽牌延遲為1.5秒。 by Kentpon
9. 新增user control panelRTSP,並使用在Pokdeng。 by Cammy', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('CB', '2025-05-14'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-05-14'::date, 8, 'Dealer Monitor - 亮度', 'Gary', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-05-14'::date, 9, 'pok deng check', 'Emanuel', '1.Check Table C161 & C5161 Camera settings.
2.Check pok deng other problems with Rossi.', '08:00'::time, '10:50'::time, 170, 'done', NULL),
  ('CB', '2025-05-14'::date, 10, 'Sicbo', 'Michelle', '現場骰寶遊戲上線:人員、軟硬體就緒準備', '08:00'::time, '09:00'::time, 60, 'done', NULL),
  ('CB', '2025-05-07'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '08:00'::time, '08:19'::time, 19, 'done', NULL),
  ('CB', '2025-05-07'::date, 2, 'Cebu Studio(OP)', 'Zet', '1.Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)
2.Reboot Media PC(Confirm if rtmp is normal)', '08:00'::time, '08:35'::time, 35, 'done', NULL),
  ('CB', '2025-05-07'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:57'::time, 57, 'done', NULL),
  ('CB', '2025-05-07'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. 產生資料並送往 Data Integration
3. betlimit順序調整
4. 大廳新增依菲律賓市場排序桌子
5. 大廳新增依越南市場排序桌子
6. 龍虎改用websockt', '08:00'::time, '08:33'::time, 33, 'done', NULL),
  ('CB', '2025-05-07'::date, 5, '辨識系統五合一', 'Rossi
Gary', '1. PD更新', '08:00'::time, '10:00'::time, 120, 'na', NULL),
  ('CB', '2025-05-07'::date, 6, 'DS System', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-05-07'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-05-07'::date, 8, 'Dealer Monitor - 亮度', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-04-30'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '08:00'::time, '09:07'::time, 67, 'done', NULL),
  ('CB', '2025-04-30'::date, 2, 'Cebu Studio(OP)', 'Zet', '1.Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)
2.Reboot Media PC(Confirm if rtmp is normal)', '08:00'::time, '09:15'::time, 75, 'done', NULL),
  ('CB', '2025-04-30'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:50'::time, 50, 'done', '不間斷維護'),
  ('CB', '2025-04-30'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. 產生資料並送往 Data Integration
3. Streaming Player更新', '07:00'::time, '08:15'::time, 75, 'done', NULL),
  ('CB', '2025-04-30'::date, 5, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-04-30'::date, 6, 'DS System', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-04-30'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-04-30'::date, 8, 'Dealer Monitor - 亮度', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-04-23'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '08:00'::time, '08:19'::time, 19, 'done', NULL),
  ('CB', '2025-04-23'::date, 2, 'Cebu Studio(OP)', 'Luffy', '1.Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)
2.Reboot Media PC(Confirm if rtmp is normal)
3.Studio B 所有桌子升級OBS發流給Mobile 提升用戶畫質', '08:00'::time, '08:35'::time, 35, 'done', NULL),
  ('CB', '2025-04-23'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:50'::time, 50, 'done', NULL),
  ('CB', '2025-04-23'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. 產生資料並送往 Data Integration
3. 調整MYR打賞分群設定', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('CB', '2025-04-23'::date, 5, '辨識系統五合一', 'Rossi
Gary', '1. 更新C161全辨識模型', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('CB', '2025-04-23'::date, 6, 'DS System', 'Fanny', 'Pokdeng C161
1. Bet=20 by Robert
2. InsuranceBetTime=13 by Robert
3. CallerServiceType=-1 by Robert', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('CB', '2025-04-23'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-04-23'::date, 8, 'Dealer Monitor - 亮度', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-04-16'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '08:00'::time, '08:19'::time, 19, 'done', NULL),
  ('CB', '2025-04-16'::date, 2, 'Cebu Studio(OP)', 'Luffy', '1.Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)
2.Reboot Media PC(Confirm if rtmp is normal)
3.6001.6002.6003.C16 OBS版本升級+雙發流測試+nvidia驅動升級', '08:00'::time, '08:35'::time, 35, 'done', NULL),
  ('CB', '2025-04-16'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:42'::time, 42, 'done', NULL),
  ('CB', '2025-04-16'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. 修正百家手機版WS斷線重連後投注區不會反灰
3. 修正百家手機版WS斷線重連後隨機賠率動畫有機會尚未完整跑完
4. 修正色碟電腦版維護時路子會消失
5. 修正Extra骰寶電腦版維護時路子會消失
6. 修正電腦版開啟真人語音,執行維護後真人語音開關會變成關閉', '08:00'::time, '08:33'::time, 33, 'done', NULL),
  ('CB', '2025-04-16'::date, 5, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-04-16'::date, 6, 'DS System', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-04-16'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-04-16'::date, 8, 'Dealer Monitor - 亮度', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-04-09'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '08:00'::time, '08:21'::time, 21, 'done', NULL),
  ('CB', '2025-04-09'::date, 2, 'Cebu Studio(OP)', 'Luffy', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)
Reboot StudioA+B All encoders
Reboot Media PC(Confirm if rtmp is normal)', '08:00'::time, '08:35'::time, 35, 'done', NULL),
  ('CB', '2025-04-09'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:50'::time, 50, 'done', NULL),
  ('CB', '2025-04-09'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. 修正百家投注失敗balance回傳0錯誤
3. DB移除無效資料', '08:00'::time, '08:41'::time, 41, 'done', NULL),
  ('CB', '2025-04-09'::date, 5, '辨識系統五合一', 'Rossi
Gary', '1. 重啟 C01, C08 五合一主機。', '08:00'::time, '08:05'::time, 5, 'done', 'High memory swap detected on C02, reboot.'),
  ('CB', '2025-04-09'::date, 6, 'DS System', 'Fanny', '1.Pokdeng 第一張牌GP_ONE_CARD_DRAWN 延遲秒數改為0.5秒', '08:00'::time, '08:20'::time, 20, 'done', NULL),
  ('CB', '2025-04-09'::date, 7, 'Proxy server', 'Fanny', '1.Http Proxy修正部分發送機制(B廳)', '08:00'::time, '08:20'::time, 20, 'done', NULL),
  ('CB', '2025-04-09'::date, 8, 'Dealer Monitor - 亮度', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-04-02'::date, 1, 'Cebu Studio(OP)', 'Luffy', 'C161 Replace the broadcasting software (for dual camera positions)', '05:00'::time, '06:00'::time, 60, 'done', NULL),
  ('CB', '2025-04-02'::date, 2, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '08:00'::time, '09:01'::time, 61, 'done', NULL),
  ('CB', '2025-04-02'::date, 3, 'Cebu Studio(OP)', 'Luffy', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)
Reboot StudioA+B All encoders
Reboot Media PC(Confirm if rtmp is normal)', '08:00'::time, '09:15'::time, 75, 'done', NULL),
  ('CB', '2025-04-02'::date, 4, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:50'::time, 50, 'done', NULL),
  ('CB', '2025-04-02'::date, 5, 'LCS', 'Tony', '1. Refactor Class Method
2. 產生資料並送往 Data Integration
3. 增加VN Safe Domain', '06:40'::time, '07:40'::time, 60, 'done', NULL),
  ('CB', '2025-04-02'::date, 6, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-04-02'::date, 7, 'DS System', 'Fanny', 'Pokdeng雙鏡位上線', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('CB', '2025-04-02'::date, 8, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-04-02'::date, 9, 'Dealer Monitor - 亮度', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-04-02'::date, 10, 'Cebu Studio(OP)', 'Emanuel', 'Check studio A C07 NUC internet issus with Gary.', '08:00'::time, '08:50'::time, 50, 'done', NULL),
  ('CB', '2025-03-26'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '08:00'::time, '08:32'::time, 32, 'done', NULL),
  ('CB', '2025-03-26'::date, 2, 'Cebu Studio(OP)', 'Zet', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '08:00'::time, '08:40'::time, 40, 'done', NULL),
  ('CB', '2025-03-26'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:52'::time, 52, 'done', NULL),
  ('CB', '2025-03-26'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. 前端WebSocket斷線重連機制調整
3. 重構百家投注流程
4. OP Report 功能調整查詢資料上限限制', '08:00'::time, '08:55'::time, 55, 'done', NULL),
  ('CB', '2025-03-26'::date, 5, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-03-26'::date, 6, 'DS System', 'Fanny', '1. 修正百家Reinput畫面空白問題 by Cammy', '08:00'::time, '08:20'::time, 20, 'done', NULL),
  ('CB', '2025-03-26'::date, 7, 'Proxy server', 'Fanny', '1. 新增下列Endpoint網址到 Cebu C13 ~ C16桌
https://test.svcasinoweb1.com/api/event/receiveEvent
https://test.svkasino.vip/api/event/receiveEvent
https://api.svcasino.vip/api/event/receiveEvent', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('CB', '2025-03-26'::date, 8, 'Dealer Monitor - 亮度', 'Gary', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-03-26'::date, 9, '硬體設備', 'NH_FAE
(Robert)', '1. C161、C5161 Pokdeng 下潛式鏡頭調整 by Rossi
2. C161、C5161 Pokdeng 下潛式燈條更換 by Allen', '08:00'::time, '09:00'::time, 60, 'done', NULL),
  ('CB', '2025-03-19'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A & B)', '08:00'::time, '08:24'::time, 24, 'done', NULL),
  ('CB', '2025-03-19'::date, 2, 'Cebu Studio(OP)', 'Zet', '拆卸A廳百家桌小螢幕', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('CB', '2025-03-19'::date, 3, 'Cebu Studio(OP)', 'Zet', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '08:00'::time, '08:40'::time, 40, 'done', NULL),
  ('CB', '2025-03-19'::date, 4, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:51'::time, 51, 'done', NULL),
  ('CB', '2025-03-19'::date, 5, 'LCS', 'Tony', '1. Refactor Class Method
2. Streaming Get Token可設定多組來源
3. 百家樂龍寶越南文說明修正', '08:00'::time, '08:40'::time, 40, 'done', NULL),
  ('CB', '2025-03-19'::date, 6, '辨識系統五合一', 'Rossi
Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-03-19'::date, 7, 'DS System', 'Fanny', '1.骰類修正re-shake按鈕消失問題
2.龍虎增加BI util log for dealer info.
3.防止VOID、SKIP按鈕被鍵盤事件或系統自動focus.
4.手動輸入的input確認視窗開啟時焦點放在cancel
5.A廳桌子拆除小螢幕', '08:00'::time, '08:35'::time, 35, 'done', NULL),
  ('CB', '2025-03-19'::date, 8, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-03-19'::date, 9, 'Dealer Monitor - 亮度', 'Gary', '透過 CICD 部署服務', '08:01'::time, '08:11'::time, 10, 'done', NULL),
  ('CB', '2025-03-12'::date, 1, 'Cebu Studio(OP)', 'Michelle', '現場更換A/B廳桌板+拆卸B廳百家桌小螢幕', '07:00'::time, '08:10'::time, 70, 'done', NULL),
  ('CB', '2025-03-12'::date, 2, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A&B)', '07:00'::time, '07:49'::time, 49, 'done', NULL),
  ('CB', '2025-03-12'::date, 3, 'Cebu Studio(OP)', 'Zet', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '07:30'::time, '08:35'::time, 65, 'done', NULL),
  ('CB', '2025-03-12'::date, 4, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '07:38'::time, '08:58'::time, 80, 'done', NULL),
  ('CB', '2025-03-12'::date, 5, 'LCS', 'Tony', '1. Refactor Class Method
2. 免佣開關連動
3. RandomPayResult計算規則調整
4. Web ESic & Sed 調整籌碼位移方向', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('CB', '2025-03-12'::date, 6, '辨識系統五合一', 'Rossi
Gary', '1. Install node_exporter on 16 servers and set up Prometheus, ensuring zero downtime.
2. Rename C16 hostname ( 10.22.2.56 )
3. Rename C15 hostname ( 10.22.2.67 )', '08:00'::time, '08:34'::time, 34, 'done', NULL),
  ('CB', '2025-03-12'::date, 7, 'DS System', 'Fanny', '刪除CB B廳的小螢幕顯示功能', '08:00'::time, '08:20'::time, 20, 'done', NULL),
  ('CB', '2025-03-12'::date, 8, 'Proxy server', 'Fanny', '新增LCS需求Endpoint事件傳遞', '08:00'::time, '08:20'::time, 20, 'done', NULL),
  ('CB', '2025-03-05'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A&B)', '07:30'::time, '07:51'::time, 21, 'done', NULL),
  ('CB', '2025-03-05'::date, 2, 'Cebu Studio(OP)', 'Zet', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '07:30'::time, '08:20'::time, 50, 'done', NULL),
  ('CB', '2025-03-05'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '07:30'::time, '08:20'::time, 50, 'done', NULL),
  ('CB', '2025-03-05'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. PokDeng第二階段', '07:30'::time, '08:09'::time, 39, 'done', NULL),
  ('CB', '2025-03-05'::date, 5, '辨識系統五合一', 'Rossi', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-03-05'::date, 6, 'DS System', 'Fanny', '1.安裝ZBX Agent及監控ps1檔案', '07:30'::time, '07:40'::time, 10, 'done', NULL),
  ('CB', '2025-03-05'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-02-26'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A&B)', '08:00'::time, '08:18'::time, 18, 'done', NULL),
  ('CB', '2025-02-26'::date, 2, 'Cebu Studio(OP)', 'Zet', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '08:00'::time, '08:40'::time, 40, 'done', NULL),
  ('CB', '2025-02-26'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:46'::time, 46, 'done', '不間斷維護'),
  ('CB', '2025-02-26'::date, 4, 'LCS', 'Tony', 'Server純重啟', '08:00'::time, '08:40'::time, 40, 'done', NULL),
  ('CB', '2025-02-26'::date, 5, '辨識系統五合一', 'Rossi', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-02-26'::date, 6, 'DS System', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-02-26'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-02-19'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A&B)', '08:00'::time, '08:26'::time, 26, 'done', NULL),
  ('CB', '2025-02-19'::date, 2, 'Cebu Studio(OP)', 'Zet', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '08:00'::time, '08:40'::time, 40, 'done', NULL),
  ('CB', '2025-02-19'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:41'::time, 41, 'done', NULL),
  ('CB', '2025-02-19'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. 修正越南文翻譯內容
3. OP敏感字設定換頁錯誤
4. Chat Token獨立Method
5. 打賞設定與前端顯示連動
6. 配合小螢幕移除,遊戲介面加上桌號顯示', '08:00'::time, '08:40'::time, 40, 'done', NULL),
  ('CB', '2025-02-19'::date, 5, '辨識系統五合一', 'Rossi', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-02-19'::date, 6, 'DS System', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-02-19'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-02-12'::date, 1, 'Cebu Studio(Super/OP)', 'Michelle', '撤下現場CNY佈置&下架大廳活動照片', '07:30'::time, '07:55'::time, 25, 'done', NULL),
  ('CB', '2025-02-12'::date, 2, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A&B)', '07:30'::time, '07:52'::time, 22, 'done', NULL),
  ('CB', '2025-02-12'::date, 3, 'Cebu Studio(OP)', 'Zet', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '08:00'::time, '08:43'::time, 43, 'done', NULL),
  ('CB', '2025-02-12'::date, 4, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:51'::time, 51, 'done', NULL),
  ('CB', '2025-02-12'::date, 5, 'LCS', 'Tony', '1. Refactor Class Method
2. 龍虎增加聊打功能
3. 產生賽果時統計全注區賠率
4. 視訊功能改由聯合產生token
5. 移除最適線路功能
6. 移除BGP測線功能
7. 移除OP功能線路設定功能', '08:00'::time, '08:50'::time, 50, 'done', NULL),
  ('CB', '2025-02-12'::date, 6, '辨識系統五合一', 'Rossi', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-02-12'::date, 7, 'DS System', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-02-12'::date, 8, 'Proxy server', 'Fanny', '新增Endpoint網址到 Cebu', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('CB', '2025-02-05'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟(Studio A&B)', '08:00'::time, '08:22'::time, 22, 'done', NULL),
  ('CB', '2025-02-05'::date, 2, 'Cebu Studio(OP)', 'Zet', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '08:00'::time, '08:40'::time, 40, 'done', NULL),
  ('CB', '2025-02-05'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:51'::time, 51, 'done', NULL),
  ('CB', '2025-02-05'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. 聊天打賞串接越南團隊API
3. 手機版骰子類遊戲修正資料顯示錯誤
4. websocket使用messagepack
5. 移除桌子dealerdomain=0資料', '08:00'::time, '08:37'::time, 37, 'done', NULL),
  ('CB', '2025-02-05'::date, 5, '辨識系統五合一', 'Rossi', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-02-05'::date, 6, 'DS System', 'Fanny', '1.刪除本地端Dealer資料,重新拉取新的資料下來', '08:00'::time, '08:20'::time, 20, 'done', NULL),
  ('CB', '2025-02-05'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-01-15'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟', '09:00'::time, '09:15'::time, 15, 'done', NULL),
  ('CB', '2025-01-15'::date, 2, 'Cebu Studio(OP)', 'Zet', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '09:00'::time, '09:40'::time, 40, 'done', NULL),
  ('CB', '2025-01-15'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '09:00'::time, '09:45'::time, 45, 'done', NULL),
  ('CB', '2025-01-15'::date, 4, 'LCS', 'Tony', '1. 全遊戲換桌按鈕移除
2. 荷官圖片檔名格式調整
3. 遊戲顯示文字修正', '09:00'::time, '09:30'::time, 30, 'done', NULL),
  ('CB', '2025-01-15'::date, 5, '辨識系統五合一', 'Rossi', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-01-15'::date, 6, 'DS System', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-01-15'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-01-08'::date, 1, 'Cebu Studio(Super/OP)', 'Michelle', '撤下現場聖誕節佈置&下架聖誕節大廳照片', '08:30'::time, '09:30'::time, 60, 'done', NULL),
  ('CB', '2025-01-08'::date, 2, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟', '08:30'::time, '08:44'::time, 14, 'done', NULL),
  ('CB', '2025-01-08'::date, 3, 'Cebu Studio(OP)', 'Zet', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '09:00'::time, '09:45'::time, 45, 'done', NULL),
  ('CB', '2025-01-08'::date, 4, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '09:00'::time, '09:51'::time, 51, 'done', NULL),
  ('CB', '2025-01-08'::date, 5, 'LCS', 'Tony', '1. 新版大廳
2. 地區可設定多組Domain
3. PokDeng調整電子牌開牌時機
4. 指南文字修正
5. 新增PGK幣別
6. 聊天功能優化
7. 打賞功能一鍵開關', '09:00'::time, '09:55'::time, 55, 'done', NULL),
  ('CB', '2025-01-08'::date, 6, 'DS System', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2025-01-08'::date, 7, '辨識系統五合一', 'Rossi', '降噪系統更新', '09:00'::time, '09:30'::time, 30, 'done', NULL),
  ('CB', '2025-01-08'::date, 8, 'Proxy server', 'Fanny', 'CB增加LCS EndPoint', '09:00'::time, '09:30'::time, 30, 'done', NULL),
  ('CB', '2025-01-01'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟', '08:00'::time, '08:11'::time, 11, 'done', NULL),
  ('CB', '2025-01-01'::date, 2, 'Cebu Studio(OP)', 'Zet', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '08:00'::time, '08:45'::time, 45, 'done', NULL),
  ('CB', '2025-01-01'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '06:00'::time, '08:00'::time, 120, 'done', '不間斷維護'),
  ('CB', '2025-01-01'::date, 4, 'LCS', 'Tony', 'Server純重啟', '06:00'::time, '07:30'::time, 90, 'done', '不間斷維護'),
  ('CB', '2025-01-01'::date, 5, 'DS System', 'Fanny', '無', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('CB', '2025-01-01'::date, 6, '辨識系統五合一', 'Rossi', '無', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('CB', '2025-01-01'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('CB', '2024-12-25'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟', '06:00'::time, '06:30'::time, 30, 'done', 'Studio A/B重啟完畢'),
  ('CB', '2024-12-25'::date, 2, 'Cebu Studio(OP)', 'Zet', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '06:00'::time, '06:55'::time, 55, 'done', NULL),
  ('CB', '2024-12-25'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '10:00'::time, 120, 'done', '不間斷維護'),
  ('CB', '2024-12-25'::date, 4, 'LCS', 'Tony', '1. 新增website
2. DI V5 Data 預設不發送', '05:00'::time, '06:30'::time, 90, 'done', '不間斷維護'),
  ('CB', '2024-12-25'::date, 5, 'DS System', 'Fanny', '無', '06:00'::time, NULL::time, NULL, 'na', '-'),
  ('CB', '2024-12-25'::date, 6, '辨識系統五合一', 'Rossi', '無', '06:00'::time, NULL::time, NULL, 'na', '-'),
  ('CB', '2024-12-25'::date, 7, 'Proxy server', 'Fanny', '新增對MPS endpoint', '06:00'::time, '06:30'::time, 30, 'done', NULL),
  ('CB', '2024-12-18'::date, 1, 'Cebu Studio(Super/OP)', 'Michelle', '現場聖誕節裝飾佈置、更換椅子', '08:00'::time, '10:15'::time, 135, 'done', NULL),
  ('CB', '2024-12-18'::date, 2, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟', '08:00'::time, '08:56'::time, 56, 'done', NULL),
  ('CB', '2024-12-18'::date, 3, 'Cebu Studio(OP)', 'Zet', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '09:10'::time, '10:10'::time, 60, 'done', NULL),
  ('CB', '2024-12-18'::date, 4, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '10:23'::time, 143, 'done', NULL),
  ('CB', '2024-12-18'::date, 5, 'LCS', 'Tony', '1. Refactor Class Method
2. PokDeng遊戲程式預先佈署', '09:00'::time, '09:40'::time, 40, 'done', NULL),
  ('CB', '2024-12-18'::date, 6, 'DS System', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2024-12-18'::date, 7, '辨識系統五合一', 'Rossi', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2024-12-18'::date, 8, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2024-12-11'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟', '09:00'::time, '09:10'::time, 10, 'done', 'Studio A/B重啟完畢'),
  ('CB', '2024-12-11'::date, 2, 'Cebu Studio(OP)', 'Zet', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '09:00'::time, '09:43'::time, 43, 'done', NULL),
  ('CB', '2024-12-11'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '09:00'::time, '09:46'::time, 46, 'done', NULL),
  ('CB', '2024-12-11'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. 傳送condition, enum資料到DI
3. 更新JBL程式
4. 新增常用Method UnitTest', '09:00'::time, '09:36'::time, 36, 'done', NULL),
  ('CB', '2024-12-11'::date, 5, 'DS System', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2024-12-11'::date, 6, '辨識系統五合一', 'Rossi', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2024-12-11'::date, 7, 'Proxy server', 'Fanny', '新增https://auat.saphslcs.live/event/DealerCurrentStateServlet', '09:00'::time, '09:30'::time, 30, 'done', NULL),
  ('CB', '2024-12-04'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟', '08:00'::time, '08:10'::time, 10, 'done', '僅重啟Studio A,Studio B未重啟'),
  ('CB', '2024-12-04'::date, 2, 'Cebu Studio(OP)', 'Zet', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '08:00'::time, '10:32'::time, 152, 'done', 'C09雜音問題修復'),
  ('CB', '2024-12-04'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:43'::time, 43, 'done', NULL),
  ('CB', '2024-12-04'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. 聊天廣度規則調整
3. 聊天介面規則調整
4. 修正龍虎限紅抓到百家
5. 新增紀錄Streaming Log', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('CB', '2024-12-04'::date, 5, 'DS System', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2024-12-04'::date, 6, '辨識系統五合一', 'Rossi', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2024-12-04'::date, 7, 'Proxy server', 'Fanny', '1.重啟Server', '08:00'::time, NULL::time, NULL, 'done', NULL),
  ('CB', '2024-11-27'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟', '08:00'::time, '08:10'::time, 10, 'done', NULL),
  ('CB', '2024-11-27'::date, 2, 'Cebu Studio(OP)', 'Zet', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '08:00'::time, '08:45'::time, 45, 'done', NULL),
  ('CB', '2024-11-27'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:49'::time, 49, 'done', NULL),
  ('CB', '2024-11-27'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. 測試帳號新增聊天打賞權限
3. Add Result時依據交易單判斷Maintenance欄位值
4. 修正THL, ESIC, TFPC 路子更新錯誤
5. 比對one card drawn & winner table cards', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('CB', '2024-11-27'::date, 5, 'DS System', 'Fanny', '1. 修正百家右上角影像拉不到m的流的問題
2. 調整Skip round桌邊輸入,防呆無法空值輸入,以及最後確認視窗下移', '08:00'::time, '08:32'::time, 32, 'done', NULL),
  ('CB', '2024-11-27'::date, 6, '辨識系統五合一', 'Rossi', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2024-11-27'::date, 7, 'Proxy server', 'Fanny', '1.重啟Server', '08:00'::time, '08:17'::time, 17, 'done', NULL),
  ('CB', '2024-11-20'::date, 1, 'Cebu Studio(OP)', 'Zet', '現場C01~C13桌板更換+桌邊補漆處理', '08:00'::time, '09:40'::time, 100, 'done', NULL),
  ('CB', '2024-11-20'::date, 2, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟', '09:00'::time, '09:10'::time, 10, 'done', NULL),
  ('CB', '2024-11-20'::date, 3, 'Cebu Studio(OP)', 'Zet', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '09:00'::time, '09:45'::time, 45, 'done', NULL),
  ('CB', '2024-11-20'::date, 4, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '09:00'::time, '09:59'::time, 59, 'done', NULL),
  ('CB', '2024-11-20'::date, 5, 'LCS', 'Tony', '1. 荷官照片改讀取WebServer
2. Refactor Class Method
3. 修正輪盤法式投注錯誤
4. 修正遊戲內路子沒更新', '09:00'::time, '09:35'::time, 35, 'done', NULL),
  ('CB', '2024-11-20'::date, 6, 'DS System', 'Fanny', '無調整', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2024-11-20'::date, 7, '辨識系統五合一', 'Rossi', '1. 更新錯誤局數上傳NAS規則', '08:00'::time, '09:00'::time, 60, 'done', NULL),
  ('CB', '2024-11-20'::date, 8, 'Proxy server', 'Fanny', '1. 增加版號
2. 增加winner事件檢查
3. 變更告警顯示', '09:00'::time, '10:21'::time, 81, 'done', NULL),
  ('CB', '2024-11-13'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟', '09:00'::time, '09:10'::time, 10, 'done', NULL),
  ('CB', '2024-11-13'::date, 2, 'Cebu Studio(OP)', 'Zet', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '09:00'::time, '09:45'::time, 45, 'done', NULL),
  ('CB', '2024-11-13'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '09:00'::time, '09:49'::time, 49, 'done', NULL),
  ('CB', '2024-11-13'::date, 4, 'LCS', 'Tony', '1. JBL 更新
2. 荷官圖片後端更新流程調整(前端URL尚未更改)
3. 修正交易報表的AndarBahar卡牌樣式', '09:00'::time, '09:45'::time, 45, 'done', NULL),
  ('CB', '2024-11-13'::date, 5, 'DS System', 'Fanny', '1.百家:新增桌邊Skip輸入功能', '09:00'::time, '09:57'::time, 57, 'done', NULL),
  ('CB', '2024-11-13'::date, 6, '辨識系統五合一', 'Rossi', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2024-11-13'::date, 7, 'Proxy server', 'Fanny', '1. 變更shoe round檢查方式
2. 重啟Server', '09:00'::time, '09:57'::time, 57, 'done', NULL),
  ('CB', '2024-11-06'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟', '08:00'::time, '08:10'::time, 10, 'done', NULL),
  ('CB', '2024-11-06'::date, 2, 'Cebu Studio(OP)', 'Zet', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '08:00'::time, '08:45'::time, 45, 'done', NULL),
  ('CB', '2024-11-06'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:50'::time, 50, 'done', NULL),
  ('CB', '2024-11-06'::date, 4, 'LCS', 'Tony', '1. add site MexAWSPH01
2. 檢查swagger api參數與程式是否一致
3. 修正網速慢時,打賞禮物金額會顯示錯誤', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('CB', '2024-11-06'::date, 5, 'DS System', 'Fanny', '無', '08:00'::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2024-11-06'::date, 6, '辨識系統五合一', 'Rossi', '無', '08:00'::time, NULL::time, NULL, 'na', NULL),
  ('CB', '2024-11-06'::date, 7, 'Proxy server', 'Fanny', '雲端AWS Proxyserver重啟', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('CB', '2024-10-30'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟', '08:00'::time, '08:10'::time, 10, 'done', NULL),
  ('CB', '2024-10-30'::date, 2, 'Cebu Studio(OP)', 'Zet', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '08:00'::time, '08:45'::time, 45, 'done', NULL),
  ('CB', '2024-10-30'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:38'::time, 38, 'done', NULL),
  ('CB', '2024-10-30'::date, 4, 'LCS', 'Tony', '1. add site MPZ
2. 直連進桌流程邏輯調整
3. Refactor Java棄用函式', '08:00'::time, '08:37'::time, 37, 'done', NULL),
  ('CB', '2024-10-30'::date, 5, 'DS System', 'Fanny', '修正 HttpProxy 百家 oneCardDraw事件改傳送整副牌的牌值array,而非單張資訊,以避免網路延遲造成的牌值錯亂問題 by Will', '08:00'::time, '08:28'::time, 28, 'done', NULL),
  ('CB', '2024-10-30'::date, 6, '辨識系統五合一', 'Rossi', '1. 新增傳送not match發生影像的功能
2. 修正因為新增上傳NAS功能偶發性造成API timeouit問題
3. 辨識主機重啟', '08:00'::time, '08:28'::time, 28, 'done', NULL),
  ('CB', '2024-10-30'::date, 7, 'Proxy server', 'Fanny', '1. 如果沒收到的話 OneCardDraw 會進行判定, 判定沒收到的話, 除了會發出告警 還會發出log
2. 將上一個AWS 版本同時部屬到 Cebu A廳 B 廳
3.雲端AWS Proxyserver重啟', '08:00'::time, '08:28'::time, 28, 'done', NULL),
  ('CB', '2024-10-23'::date, 1, 'Cebu Studio(IT)', 'Zet', '現場Proxy server重啟', '09:00'::time, '09:10'::time, 10, 'done', NULL),
  ('CB', '2024-10-23'::date, 2, 'Cebu Studio(OP)', 'Zet', 'Reboot Dealer PC (Included Dealer system&Chat Room&Road Map)', '09:00'::time, '09:50'::time, 50, 'done', NULL),
  ('CB', '2024-10-23'::date, 3, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '09:00'::time, '09:52'::time, 52, 'done', NULL),
  ('CB', '2024-10-23'::date, 4, 'LCS', 'Tony', '1. 配合Risk系統,DB各TXN Table擴充欄位
2. Ogre系統升級並增加收集Baccarat Bouns點擊訊息
3. 啟用MessagePack', '09:00'::time, '09:50'::time, 50, 'done', NULL),
  ('CB', '2024-10-23'::date, 5, 'DS System', 'Fanny', '1. 修正 A廳 百家全辨識Final does not match告警bug.
2. 新增 A廳 百家只要有開全辨識,Void或Skip都傳送end API. by Cammy', '09:00'::time, '09:34'::time, 34, 'done', NULL),
  ('CB', '2024-10-23'::date, 6, '辨識系統五合一', 'Rossi', '1.修正若未正常關閉Dealer System後造成的上傳局數錯誤問題
2. 重啟辨識主機', '09:00'::time, '09:34'::time, 34, 'done', NULL),
  ('CB', '2024-10-23'::date, 7, 'Proxy server', 'Fanny', 'AWS雲端 Proxy server重啟', '09:00'::time, '09:34'::time, 34, 'done', NULL),
  ('MX', '2026-08-12'::date, 1, 'Studio(OP)', 'Stantly、John、Edith', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-08-12'::date, 2, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '07:30'::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-08-12'::date, 3, 'Streaming(UL)', 'Evan
Hedy', 'MX7F Multi-bitrate架構轉換', '07:30'::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-08-12'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. 百家樂新增注區
3. 移除EROU 73桌,該桌將移給ROU使用
4. Multi-bitrate架構調整', '07:30'::time, '08:35'::time, 65, 'done', NULL),
  ('MX', '2026-08-12'::date, 5, '辨識系統五合一', 'Rossi', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-08-12'::date, 6, 'DS System', 'Fanny', 'DS 35.5
1.:骰類隨機 腳本 code 併入 正式 版(尚 未 開放 啟用 )', '07:30'::time, '09:00'::time, 90, 'na', '日期填 2026-08-05'),
  ('MX', '2026-08-12'::date, 7, 'Proxy server', 'Fanny', 'Proxy 設定 更 改: 10 桌對外Endpoint調 整', '07:30'::time, '09:00'::time, 90, 'na', '日期填 2026-08-05'),
  ('MX', '2026-08-12'::date, 8, '降噪服務', 'Gary', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-08-12'::date, 9, '翻譯系統', 'Gary', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-08-12'::date, 10, '現場管理', 'Ivy、Julie、Amira、Cyndi、Sheila', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-08-12'::date, 11, 'CAD Server', 'Neroal', 'Server 重啟', '08:00'::time, '08:02'::time, 2, 'na', '日期填 2026-08-05'),
  ('MX', '2026-08-12'::date, 12, 'Dealer Monitor (風控)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-08-12'::date, 13, 'Shoes Monitor (牌靴監控)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-08-12'::date, 14, 'Roadmap (路子圖)', 'Neroal', '更新百家龍虎圖示', '08:00'::time, '08:02'::time, 2, 'na', '日期填 2026-08-05'),
  ('MX', '2026-08-12'::date, 15, 'Chat Room (聊天室)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-08-12'::date, 16, 'Data Center (資料中心)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-08-12'::date, 17, 'OP後台', 'Zach', '1.Prod 環境 的 MySQL 系統強制 資料 庫升級
2.Game Live State API 新 增 Response 欄 位 , 當 前 遊戲桌狀態', '07:30'::time, '09:00'::time, 90, 'na', '日期填 2026-08-05')
) as t(venue, week_date, seq, system, owner, details, start_time, end_time, duration_min, status, notes)
join public.maintenance_windows w on w.venue = t.venue and w.week_date = t.week_date
on conflict (window_id, seq) do update set
  system = excluded.system, owner = excluded.owner, details = excluded.details,
  start_time = excluded.start_time, end_time = excluded.end_time,
  duration_min = excluded.duration_min, status = excluded.status, notes = excluded.notes;

alter table public.maintenance_tasks enable trigger trg_mt_log;

commit;

-- 確認匯入結果
select venue, count(*) as 週數, min(week_date) as 最早, max(week_date) as 最新
  from public.maintenance_windows group by venue;
select count(*) as 任務筆數 from public.maintenance_tasks;
