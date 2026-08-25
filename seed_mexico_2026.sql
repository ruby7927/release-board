-- ============================================================
-- Mexico 維護排程 — Excel 匯入（可重複執行）
-- 來源：Mexico_Maintenance_Schedule_2026_1.xlsx
-- 內容：33 個維護視窗、430 筆任務（2026-01-07 ～ 2026-08-26）
--
-- 注意：同一週若已經在網站上補填過，會被 Excel 的內容覆蓋。
--       要保留某一週，把該週從下面兩段的 values 移除即可。
-- ============================================================

begin;

-- 匯入不該被當成「有人編輯」，先關掉修改紀錄的 trigger
alter table public.maintenance_tasks disable trigger trg_mt_log;

-- 維護視窗
insert into public.maintenance_windows (venue, week_date, start_time, end_time, downtime, note, release_team) values
  ('MX', '2026-08-26', '05:00', '07:00', false, '不停機維護', 'LCS :  Tony
Streaming :  Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Mexico Studio(IT/OP) : Stanley、John、Edith
辨識系統五合一：Rossi'),
  ('MX', '2026-08-19', '08:00', '09:00', true, '停機維護', 'LCS :  Tony
Streaming :  Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Mexico Studio(IT/OP) : Stanley、John、Edith
辨識系統五合一：Rossi'),
  ('MX', '2026-08-12', '07:30', '09:00', true, '停機維護', 'LCS :  Tony
Streaming :  Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Mexico Studio(IT/OP) : Stanley、John、Edith
辨識系統五合一：Rossi'),
  ('MX', '2026-08-05', '05:00', '07:00', true, '停機維護', 'LCS :  Tony
Streaming :  Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Mexico Studio(IT/OP) : Stanley、John、Edith
辨識系統五合一：Rossi'),
  ('MX', '2026-07-29', '05:00', '07:00', true, '停機維護', 'LCS :  Tony
Streaming :  Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Mexico Studio(IT/OP) : Stanley、John、Edith
辨識系統五合一：Rossi'),
  ('MX', '2026-07-22', '08:00', '09:00', true, '停機維護', 'LCS :  Tony
Streaming :  Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Mexico Studio(IT/OP) : Stanley、John、Edith
辨識系統五合一：Rossi'),
  ('MX', '2026-07-15', '06:00', '09:00', true, '停機維護', 'LCS :  Tony
Streaming :  Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Mexico Studio(IT/OP) : Stanley、John、Edith
辨識系統五合一：Rossi'),
  ('MX', '2026-07-08', '05:00', '07:00', false, '不停機維護', 'LCS :  Tony
Streaming :  Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Mexico Studio(IT/OP) : Stanley、John、Edith
辨識系統五合一：Rossi'),
  ('MX', '2026-07-01', '05:00', '07:00', false, '不停機維護', 'LCS :  Tony
Streaming :  Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Mexico Studio(IT/OP) : Stanley、John、Edith
辨識系統五合一：Rossi'),
  ('MX', '2026-06-24', '08:00', '09:00', true, '停機維護', 'LCS :  Tony
Streaming :  Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Mexico Studio(IT/OP) : Stanley、John、Edith
辨識系統五合一：Rossi'),
  ('MX', '2026-06-17', '08:00', '09:00', true, '停機維護', 'LCS :  Tony
Streaming :  Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Mexico Studio(IT/OP) : Stanley、John、Edith
辨識系統五合一：Rossi'),
  ('MX', '2026-06-10', '08:00', '09:00', true, '停機維護', 'LCS :  Tony
Streaming :  Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Mexico Studio(IT/OP) : Stanley、John、Edith
辨識系統五合一：Rossi'),
  ('MX', '2026-06-03', '05:00', '07:00', false, '不停機維護', 'LCS :  Tony
Streaming :  Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Mexico Studio(IT/OP) : Stanley、John、Edith
辨識系統五合一：Rossi'),
  ('MX', '2026-05-27', '05:00', '07:00', false, '不停機維護', 'LCS :  Tony
Streaming :  Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Mexico Studio(IT/OP) : Stanley、John、Edith
辨識系統五合一：Rossi'),
  ('MX', '2026-05-20', '08:00', '09:00', true, '停機維護', 'LCS :  Tony
Streaming :  Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Mexico Studio(IT/OP) : Stanley、John、Edith
辨識系統五合一：Rossi'),
  ('MX', '2026-05-13', '08:00', '09:00', true, '停機維護', 'LCS :  Tony
Streaming :  Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Mexico Studio(IT/OP) : Stanley、John、Edith
辨識系統五合一：Rossi'),
  ('MX', '2026-05-06', '08:00', '09:00', true, '停機維護', 'LCS :  Tony
Streaming :  Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Mexico Studio(IT/OP) : Stanley、John、Edith
辨識系統五合一：Rossi'),
  ('MX', '2026-04-29', '05:00', '07:00', false, '不停機維護', 'LCS :  Tony
Streaming :  Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Mexico Studio(IT/OP) : Stanley、John、Edith
辨識系統五合一：Rossi'),
  ('MX', '2026-04-22', '08:00', '09:00', true, '停機維護', 'LCS :  Tony
Streaming :  Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Mexico Studio(IT/OP) : Stanley、John、Edith
辨識系統五合一：Rossi'),
  ('MX', '2026-04-15', '07:30', '09:00', true, '停機維護', 'LCS :  Tony
Streaming :  Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Mexico Studio(IT/OP) : Stanley、John、Edith
辨識系統五合一：Rossi'),
  ('MX', '2026-04-08', '05:00', '07:00', true, '停機維護', 'LCS :  Tony
Streaming :  Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Mexico Studio(IT/OP) : Stanley、John、Edith
辨識系統五合一：Rossi'),
  ('MX', '2026-04-01', '05:00', '07:00', false, '不停機維護', 'LCS :  Tony
Streaming :  Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Mexico Studio(IT/OP) : Stanley、John、Edith
辨識系統五合一：Rossi'),
  ('MX', '2026-03-25', '05:00', '07:00', false, '不停機維護', 'LCS :  Tony
Streaming :  Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Mexico Studio(IT/OP) : Stanley、John、Edith
辨識系統五合一：Rossi'),
  ('MX', '2026-03-18', '08:00', '09:00', true, '停機維護', 'LCS :  Tony
Streaming :  Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Mexico Studio(IT/OP) : Stanley、John、Edith
辨識系統五合一：Rossi'),
  ('MX', '2026-03-11', '08:00', '09:00', true, '停機維護', 'LCS :  Tony
Streaming :  Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Mexico Studio(IT/OP) : Stanley、John、Edith
辨識系統五合一：Rossi'),
  ('MX', '2026-03-04', '05:00', '07:00', false, '不停機維護', 'LCS :  Tony
Streaming :  Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Mexico Studio(IT/OP) : Stanley、John、Edith
辨識系統五合一：Rossi'),
  ('MX', '2026-02-25', '05:00', '07:00', false, '不停機維護', 'LCS :  Tony
Streaming :  Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Mexico Studio(IT/OP) : Stanley、John、Edith
辨識系統五合一：Rossi'),
  ('MX', '2026-02-11', '08:00', '09:00', true, '停機維護', 'LCS :  Tony
Streaming :  Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Mexico Studio(IT/OP) : Stanley、John、Edith
辨識系統五合一：Rossi'),
  ('MX', '2026-02-04', '05:00', '07:00', false, '不停機維護', 'LCS :  Tony
Streaming :  Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Mexico Studio(IT/OP) : Stanley、John、Edith
辨識系統五合一：Rossi'),
  ('MX', '2026-01-28', '05:00', '07:00', false, '不停機維護', 'LCS :  Tony
Streaming :  Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Mexico Studio(IT/OP) : Stanley、John、Edith
辨識系統五合一：Rossi'),
  ('MX', '2026-01-21', '08:00', '09:00', true, '停機維護', 'LCS :  Tony
Streaming :  Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Mexico Studio(IT/OP) : Stanley、John、Edith
辨識系統五合一：Rossi'),
  ('MX', '2026-01-14', '08:00', '09:00', true, '停機維護', 'LCS :  Tony
Streaming :  Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Mexico Studio(IT/OP) : Stanley、John、Edith
辨識系統五合一：Rossi'),
  ('MX', '2026-01-07', '08:00', '09:00', true, '停機維護', 'LCS :  Tony
Streaming :  Bernard
DS System(有更新會帶遊戲別)、Proxy server : Fanny
Mexico Studio(IT/OP) : Stanley、John、Edith
辨識系統五合一：Rossi')
on conflict (venue, week_date) do update set
  start_time = excluded.start_time, end_time = excluded.end_time,
  downtime = excluded.downtime, note = excluded.note, release_team = excluded.release_team;

-- 先清掉這些週原有的任務，避免 Excel 刪過的列還留在資料庫
delete from public.maintenance_tasks t
 using public.maintenance_windows w
 where t.window_id = w.id and w.venue = 'MX'
   and w.week_date in ('2026-08-26', '2026-08-19', '2026-08-12', '2026-08-05', '2026-07-29', '2026-07-22', '2026-07-15', '2026-07-08', '2026-07-01', '2026-06-24', '2026-06-17', '2026-06-10', '2026-06-03', '2026-05-27', '2026-05-20', '2026-05-13', '2026-05-06', '2026-04-29', '2026-04-22', '2026-04-15', '2026-04-08', '2026-04-01', '2026-03-25', '2026-03-18', '2026-03-11', '2026-03-04', '2026-02-25', '2026-02-11', '2026-02-04', '2026-01-28', '2026-01-21', '2026-01-14', '2026-01-07');

-- 任務
insert into public.maintenance_tasks
  (window_id, seq, system, owner, details, start_time, end_time, duration_min, status, notes)
select w.id, t.seq, t.system, t.owner, t.details, t.start_time, t.end_time,
       t.duration_min, t.status, t.notes
from (values
  ('MX', '2026-08-26'::date, 1, 'Studio(OP)', 'Stantly、John、Edith', '1.Restart All Proxy-Server
2.Reboot Dealer PC
3.Reboot Streaming System(Included Encoder & Camera-PC)
4.Confirm all rtmp is normal
5.Check Roulette level and verify normal function
6.Check Dice-Cup level and verify normal function
7.Test the Dealer-system all function', '08:00'::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-08-26'::date, 2, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-08-26'::date, 3, 'Streaming(UL)', 'Evan
Hedy', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-08-26'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. 更改大廳遊戲桌排序設定
3. 修正getTableInfoForWebsite路子回傳空值問題
4. Result history 新增百家注區結果
5. Result Trend History 新增龍虎注區相關資訊
6. 過濾前端Streaming傳送至後端的Log資訊
7. 修正Bet Limit Setting (Baccarat) Update ALL功能
8. 限紅顯示0-0時 加入檢核機制並套用提示語「限紅異常」', '08:00'::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-08-26'::date, 5, '辨識系統五合一', 'Rossi', '辨識模型更換：大、小花色 模型同步', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-08-26'::date, 6, 'DS System', 'Fanny', 'DS 35.7.0.0
1.百家點數加總錯誤修正
2.骰類 Auto Run One Card Drawn Delay (1/1000) 可設定
3.洗牌機功能 Dealer ID 錯誤修正
4.10桌改自動更新', '09:00'::time, '09:30'::time, NULL, 'done', NULL),
  ('MX', '2026-08-26'::date, 7, 'Proxy server', 'Fanny', 'ProxySetting 15桌追加外部線路', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-08-26'::date, 8, '降噪服務', 'Gary', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-08-26'::date, 9, '翻譯系統', 'Gary', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-08-26'::date, 10, '現場管理', 'Ivy、Julie、Amira、Cyndi、Sheila', '1. Change the poker cards：All bacarrat and DG
2. Change the dice：
Table #121 ()
Table #131 ()
Table #132 ()
Table #127 ()
Table #151 ()', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-08-26'::date, 11, 'CAD Server', 'Neroal', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-08-26'::date, 12, 'Dealer Monitor (風控)', 'Neroal', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-08-26'::date, 13, 'Shoes Monitor (牌靴監控)', 'Neroal', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-08-26'::date, 14, 'Roadmap (路子圖)', 'Neroal', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-08-26'::date, 15, 'Chat Room (聊天室)', 'Neroal', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-08-26'::date, 16, 'Data Center (資料中心)', 'Neroal', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-08-26'::date, 17, '後台相關', 'Zach', '1.OP 後台 15桌正式桌設定
2.Onsite Game Record API 支援 supervisor ids 輸入(不影響現行功能)
3.荷官後台 Admin Setting Permission 調整 API Query 效能
4.Onsite 新增 Platform API for table Status', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-08-19'::date, 1, 'Studio(OP)', 'Stantly、John、Edith', '1.Restart All Proxy-Server
2.Reboot Dealer PC
3.Reboot Streaming System(Included Encoder & Camera-PC)
4.Confirm all rtmp is normal
5.Check Roulette level and verify normal function
6.Check Dice-Cup level and verify normal function
7.Test the Dealer-system all function', '08:00'::time, '08:50'::time, 50, 'done', NULL),
  ('MX', '2026-08-19'::date, 2, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:50'::time, 50, 'done', NULL),
  ('MX', '2026-08-19'::date, 3, 'Streaming(UL)', 'Evan
Hedy', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-08-19'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. domain切換應有歷史紀錄報表
3. Multi-bitrate架構調整
4. 新增 Currency RSD 幣別
5. 新增SIV Studio
6. 修正百家樂新注區限紅Minchip>1的幣別設置', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('MX', '2026-08-19'::date, 5, '辨識系統五合一', 'Rossi', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-08-19'::date, 6, 'DS System', 'Fanny', 'DS 35.6.0.0：Bingo plus Uat環境功能版本併入。(僅上BG001、BG002、10)', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-08-19'::date, 7, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-08-19'::date, 8, '降噪服務', 'Gary', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-08-19'::date, 9, '翻譯系統', 'Gary', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-08-19'::date, 10, '現場管理', 'Ivy、Julie、Amira、Cyndi、Sheila', '1. Change the poker cards：All bacarrat and DG
2. Change the dice：
Table #121 (0426SA2)
Table #131 (0426SA1)
Table #132 (0508SA1)
Table #127 (0311TA4)
Table #151 (0528X01)', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-08-19'::date, 11, 'CAD Server', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-08-19'::date, 12, 'Dealer Monitor (風控)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-08-19'::date, 13, 'Shoes Monitor (牌靴監控)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-08-19'::date, 14, 'Roadmap (路子圖)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-08-19'::date, 15, 'Chat Room (聊天室)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-08-19'::date, 16, 'Data Center (資料中心)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-08-19'::date, 17, '後台相關', 'Zach', '一、荷官後台
1.荷官後台多身分版本
2.支援SIV廠區功能
二、OP後台 ：藏未使用的遊戲GameType(Sicbo、FishPrawnCrab、Twenty、RBSicbo、ExtraAndarBahar、OneDay)', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-08-12'::date, 1, 'Studio(OP)', 'Stantly、John、Edith', '1.Restart All Proxy-Server
2.Reboot Dealer PC
3.Reboot Streaming System(Included Encoder & Camera-PC)
4.Confirm all rtmp is normal
5.Check Roulette level and verify normal function
6.Check Dice-Cup level and verify normal function
7.Test the Dealer-system all function', '07:30'::time, '08:50'::time, 80, 'done', NULL),
  ('MX', '2026-08-12'::date, 2, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '07:30'::time, '09:00'::time, 90, 'done', NULL),
  ('MX', '2026-08-12'::date, 3, 'Streaming(UL)', 'Evan
Hedy', 'MX7F Multi-bitrate架構轉換', '07:30'::time, '09:00'::time, NULL, 'done', NULL),
  ('MX', '2026-08-12'::date, 4, 'LCS', 'Tony', '1. Refactor Class Method
2. 百家樂新增注區
3. 移除EROU 73桌，該桌將移給ROU使用
4. Multi-bitrate架構調整', '07:30'::time, '08:35'::time, 65, 'done', NULL),
  ('MX', '2026-08-12'::date, 5, '辨識系統五合一', 'Rossi', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-08-12'::date, 6, 'DS System', 'Fanny', 'DS 35.5 1.：骰類隨機腳本code併入正式版(尚未開放啟用)', '07:30'::time, '09:00'::time, 90, 'done', NULL),
  ('MX', '2026-08-12'::date, 7, 'Proxy server', 'Fanny', 'Proxy設定更改：10桌對外Endpoint調整', '07:30'::time, '09:00'::time, 90, 'done', NULL),
  ('MX', '2026-08-12'::date, 8, '降噪服務', 'Gary', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-08-12'::date, 9, '翻譯系統', 'Gary', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-08-12'::date, 10, '現場管理', 'Ivy、Julie、Amira、Cyndi、Sheila', '1. Change the poker cards：All bacarrat and DG
2. Change the dice：
Table #121 (0425SA2)
Table #131 (0425SA3)
Table #132 (0425SA4)
Table #127 (0311TA3)
Table #151 (0527X02)
3. 更換132桌的桌板', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-08-12'::date, 11, 'CAD Server', 'Neroal', 'Server 重啟', '08:00'::time, '08:02'::time, 2, 'done', NULL),
  ('MX', '2026-08-12'::date, 12, 'Dealer Monitor (風控)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-08-12'::date, 13, 'Shoes Monitor (牌靴監控)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-08-12'::date, 14, 'Roadmap (路子圖)', 'Neroal', '更新百家龍虎圖示', '08:00'::time, '08:02'::time, 2, 'done', NULL),
  ('MX', '2026-08-12'::date, 15, 'Chat Room (聊天室)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-08-12'::date, 16, 'Data Center (資料中心)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-08-12'::date, 17, 'OP後台', 'Zach', '1.Prod 環境的 MySQL 系統強制資料庫升級
2.Game Live State API 新增 Response 欄位, 當前遊戲桌狀態', '07:30'::time, '09:00'::time, 90, 'done', NULL),
  ('MX', '2026-08-05'::date, 1, 'Studio(OP)', 'Stantly、John、Edith', '1.Restart All Proxy-Server
2.Reboot Dealer PC
3.Reboot Streaming System(Included Encoder & Camera-PC)
4.Confirm all rtmp is normal
5.Check Roulette level and verify normal function
6.Check Dice-Cup level and verify normal function
7.Test the Dealer-system all function', '05:00'::time, '06:50'::time, 110, 'done', NULL),
  ('MX', '2026-08-05'::date, 2, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '09:00'::time, 60, 'done', NULL),
  ('MX', '2026-08-05'::date, 3, 'LCS', 'Tony', '1. Refactor Class Method
2. 新增AM團隊Website
3. TPO ResultOdds 列出全部的catagory odds', '08:00'::time, '09:00'::time, 60, 'done', NULL),
  ('MX', '2026-08-05'::date, 4, '辨識系統五合一', 'Rossi', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-08-05'::date, 5, 'DS System', 'Fanny', 'DS 35.4.1
1.龍虎、百家達最大局數，會跳出告警提醒換靴
2.百家最大局數改為75局
3.若觸發最大局數同時按下DS Setting 視窗的Confirm，會補發洗牌APP通知燈號改換靴', '09:00'::time, '09:30'::time, 30, 'done', NULL),
  ('MX', '2026-08-05'::date, 6, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-08-05'::date, 7, '降噪服務', 'Gary', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-08-05'::date, 8, '翻譯系統', 'Gary', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-08-05'::date, 9, '現場管理', 'Ivy、Julie、Amira、Cyndi、Sheila', '1. Change the poker cards：All bacarrat and DG
2. Change the dice：
Table #121 (0424SA3)
Table #131 (0424SA4)
Table #132 (0425SA1)
Table #127 (0311TA1)
Table #151 (0527X01)
Table #126 (0311TA2)
3. 更換13、14、127 桌的桌板', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-08-05'::date, 10, 'CAD Server', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-08-05'::date, 11, 'Dealer Monitor (風控)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-08-05'::date, 12, 'Shoes Monitor (牌靴監控)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-08-05'::date, 13, 'Roadmap (路子圖)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-08-05'::date, 14, 'Chat Room (聊天室)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-08-05'::date, 15, 'Data Center (資料中心)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-08-05'::date, 16, 'OP後台', 'Zach', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-07-29'::date, 1, 'Studio(OP)', 'Stantly、John、Edith', '1.Restart All Proxy-Server
2.Reboot Dealer PC
3.Reboot Streaming System(Included Encoder & Camera-PC)
4.Confirm all rtmp is normal
5.Check Roulette level and verify normal function
6.Check Dice-Cup level and verify normal function
7.Test the Dealer-system all function', '05:00'::time, '06:50'::time, 110, 'done', NULL),
  ('MX', '2026-07-29'::date, 2, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:52'::time, 52, 'done', NULL),
  ('MX', '2026-07-29'::date, 3, 'LCS', 'Tony', '1. Refactor Class Method
2. 後台部分功能新增或異動時，應有歷史紀錄
3. 色碟全滿版畫面調整
4. 泰國魚蝦蟹全滿版畫面調整', '07:15'::time, '08:15'::time, 60, 'done', NULL),
  ('MX', '2026-07-29'::date, 4, '辨識系統五合一', 'Rossi', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-07-29'::date, 5, 'DS System', 'Fanny', 'DS 35.3
1.龍虎、百家達最大局數，會跳出告警提醒換靴', '09:00'::time, '09:30'::time, 30, 'done', NULL),
  ('MX', '2026-07-29'::date, 6, 'Proxy server', 'Fanny', '紳士廳 7.8桌設定外部廠商Endpoint', '05:00'::time, '07:00'::time, 120, 'done', NULL),
  ('MX', '2026-07-29'::date, 7, '降噪服務', 'Gary', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-07-29'::date, 8, '翻譯系統', 'Gary', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-07-29'::date, 9, '現場管理', 'Ivy、Julie、Amira、Cyndi、Sheila', '1. Change the poker cards：All bacarrat and DG
2. Change the dice：
Table #121 (0307SA3)
Table #131 (0424SA1)
Table #132 (0424SA2)
Table #127 (0310TA4)
Table #151 (0524X01)
3. 更換四樓及七樓的桌板', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-07-29'::date, 10, 'CAD Server', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-07-29'::date, 11, 'Dealer Monitor (風控)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-07-29'::date, 12, 'Shoes Monitor (牌靴監控)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-07-29'::date, 13, 'Roadmap (路子圖)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-07-29'::date, 14, 'Chat Room (聊天室)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-07-29'::date, 15, 'Data Center (資料中心)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-07-29'::date, 16, 'OP後台', 'Zach', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-07-22'::date, 1, 'Studio(OP)', 'Stantly、John、Edith', '1.Restart All Proxy-Server
2.Reboot Dealer PC
3.Reboot Streaming System(Included Encoder & Camera-PC)
4.Confirm all rtmp is normal
5.Check Roulette level and verify normal function
6.Check Dice-Cup level and verify normal function
7.Test the Dealer-system all function', '08:00'::time, '08:50'::time, 50, 'done', NULL),
  ('MX', '2026-07-22'::date, 2, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '09:00'::time, 60, 'done', NULL),
  ('MX', '2026-07-22'::date, 3, 'LCS', 'Tony', '1. Refactor Class Method
2. 修正玩家下注倒數中進桌, 會先閃一下”資料不足, 請稍待累積X局後”
3. BAC, DT 配合墨西哥場地遊戲前端虛擬牌開牌調整優化
4. MX新增百家樂營運桌14桌
5. 修正Report By Website切換website後搜尋資料沒有正確展示', '08:00'::time, '08:30'::time, 30, 'done', NULL),
  ('MX', '2026-07-22'::date, 4, '辨識系統五合一', 'Rossi', '白骰辨識模型更新(121.131.132)', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-07-22'::date, 5, 'DS System', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-07-22'::date, 6, 'Proxy server', 'Fanny', 'Proxy設定：多收一個DS來源Device iP', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-07-22'::date, 7, '降噪服務', 'Gary', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-07-22'::date, 8, '翻譯系統', 'Gary', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-07-22'::date, 9, '現場管理', 'Ivy、Julie、Amira、Cyndi、Sheila', '1. Change the poker cards：All bacarrat and DG
2. Change the dice：
Table #121 (0306SA2)
Table #131 (0306SA3)
Table #132 (0306SA5)
Table #127 (0310TA3)
Table #151 (0523X03)', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-07-22'::date, 10, 'CAD Server', 'Neroal', 'Monthly Reboot', '08:30'::time, '08:35'::time, 5, 'done', NULL),
  ('MX', '2026-07-22'::date, 11, 'Dealer Monitor (風控)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-07-22'::date, 12, 'Shoes Monitor (牌靴監控)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-07-22'::date, 13, 'Roadmap (路子圖)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-07-22'::date, 14, 'Chat Room (聊天室)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-07-22'::date, 15, 'Data Center (資料中心)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-07-22'::date, 16, 'OP後台', 'Zach', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-07-15'::date, 1, 'Studio(OP)', 'Stantly、John、Edith', '1.Restart All Proxy-Server
2.Reboot Dealer PC
3.Reboot Streaming System(Included Encoder & Camera-PC)
4.Confirm all rtmp is normal
5.Check Roulette level and verify normal function
6.Check Dice-Cup level and verify normal function
7.Test the Dealer-system all function', '06:00'::time, '08:50'::time, 170, 'done', NULL),
  ('MX', '2026-07-15'::date, 2, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '06:00'::time, '09:00'::time, 180, 'done', NULL),
  ('MX', '2026-07-15'::date, 3, 'LCS', 'Tony', '1. Refactor Class Method
2. ExtraSicbo 全滿版畫面調整
3. ThaiHiLo 全滿版畫面調整
4. 新增 MX13
5. 新增 CB22
6. 調整荷官圖片定期同步規則', '06:00'::time, '08:05'::time, 125, 'done', NULL),
  ('MX', '2026-07-15'::date, 4, '辨識系統五合一', 'Rossi', '1. 7F 辨識主機重開', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-07-15'::date, 5, 'DS System', 'Fanny', 'DS 35.2.0
1. OP Server UAT URL 更換
2. CAD URL 加入Server Setting
3.傳送事件多一個Device iP

設定更改：所有百家秒數調整(19s)', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-07-15'::date, 6, 'Proxy server', 'Fanny', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-07-15'::date, 7, '降噪服務', 'Gary', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-07-15'::date, 8, '翻譯系統', 'Gary', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-07-15'::date, 9, '現場管理', 'Ivy、Julie、Amira、Cyndi、Sheila', '1. Change the poker cards：All bacarrat and DG
2. Change the dice：
Table #121 (0305SA3)
Table #131 (0305SA4)
Table #132 (0306SA1)
Table #127 (0309TA3)
Table #151 (0523X02)', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-07-15'::date, 10, 'Dealer Monitor (風控)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-07-15'::date, 11, 'Shoes Monitor (牌靴監控)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-07-15'::date, 12, 'Roadmap (路子圖)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-07-15'::date, 13, 'Chat Room (聊天室)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-07-15'::date, 14, 'Data Center (資料中心)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-07-15'::date, 15, 'OP後台', 'Zach', '新增外部14桌設定', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-07-08'::date, 1, 'Studio(OP)', 'Stantly、John、Edith', '1.Restart All Proxy-Server
2.Reboot Dealer PC
3.Reboot Streaming System(Included Encoder & Camera-PC)
4.Confirm all rtmp is normal
5.Check Roulette level and verify normal function
6.Check Dice-Cup level and verify normal function
7.Test the Dealer-system all function', '05:00'::time, '06:50'::time, 110, 'done', NULL),
  ('MX', '2026-07-08'::date, 2, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:50'::time, 50, 'done', NULL),
  ('MX', '2026-07-08'::date, 3, 'LCS', 'Tony', '1. Refactor Class Method
2. 檢核玩家視訊畫面與目前事件桌次是否一致
3. 新增後台功能頁面 > 查詢結算時間
4. 調整API UserID字元數限制
5. 關閉線上輪盤廣告以及NEW顯示和相關設定', '07:30'::time, '08:30'::time, 60, 'done', NULL),
  ('MX', '2026-07-08'::date, 4, '辨識系統五合一', 'Rossi', '百家辨識派牌誤判問題修正', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-07-08'::date, 5, 'DS System', 'Fanny', '新增14桌線路設定', '09:00'::time, '09:30'::time, NULL, 'done', NULL),
  ('MX', '2026-07-08'::date, 6, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-07-08'::date, 7, '降噪服務', 'Gary', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-07-08'::date, 8, '翻譯系統', 'Gary', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-07-08'::date, 9, '現場管理', 'Ivy、Julie、Amira、Cyndi、Sheila', '1. Change the poker cards：All bacarrat and DG
2. Change the dice：
Table #121 (0305SA1)
Table #131 (0305SA2)
Table #132 (0304SA4)
Table #127 (0309TA2)
Table #151 (0523X01)
3. 151桌換了骰盅', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-07-08'::date, 10, 'Dealer Monitor (風控)', 'Neroal', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-07-08'::date, 11, 'Shoes Monitor (牌靴監控)', 'Neroal', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-07-08'::date, 12, 'Roadmap (路子圖)', 'Neroal', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-07-08'::date, 13, 'Chat Room (聊天室)', 'Neroal', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-07-08'::date, 14, 'Data Center (資料中心)', 'Neroal', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-07-08'::date, 15, 'OP後台', 'Zach', '新增13桌外部開關桌設定(9:00後開始可使用)', '08:45'::time, '09:00'::time, 15, 'done', NULL),
  ('MX', '2026-07-01'::date, 1, 'Studio(OP)', 'Stantly、John、Edith', '1.Restart All Proxy-Server
2.Reboot Dealer PC
3.Reboot Streaming System(Included Encoder & Camera-PC)
4.Confirm all rtmp is normal
5.Check Roulette level and verify normal function
6.Check Dice-Cup level and verify normal function
7.Test the Dealer-system all function', '04:00'::time, '05:50'::time, 110, 'done', NULL),
  ('MX', '2026-07-01'::date, 2, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '09:00'::time, 60, 'done', NULL),
  ('MX', '2026-07-01'::date, 3, 'LCS', 'Tony', '1. Refactor Class Method', '07:15'::time, '08:25'::time, 70, 'done', NULL),
  ('MX', '2026-07-01'::date, 4, '辨識系統五合一', 'Rossi', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-07-01'::date, 5, 'DS System', 'Fanny', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-07-01'::date, 6, 'Proxy server', 'Fanny', '新增13桌線路設定', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-07-01'::date, 7, '降噪服務', 'Gary', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-07-01'::date, 8, '翻譯系統', 'Gary', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-07-01'::date, 9, '現場管理', 'Ivy、Julie、Amira、Cyndi', '1. Change the poker cards：All bacarrat and DG
2. Change the dice：
Table #121 (0304SA1)
Table #131 (0304SA2)
Table #132 (0304SA3)
Table #127 (0309TA1)
Table #151 (0522X02)', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-07-01'::date, 10, 'Dealer Monitor (風控)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-07-01'::date, 11, 'Shoes Monitor (牌靴監控)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-07-01'::date, 12, 'Roadmap (路子圖)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-07-01'::date, 13, 'Chat Room (聊天室)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-07-01'::date, 14, 'Data Center (資料中心)', 'Neroal', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-07-01'::date, 15, 'OP後台', 'Zach', '1. 分級通知擴充功能：通知拆分至廠區與桌子分開獨立分級
2. 新增 NUPG bingoPlusMachineIP 參數', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-06-24'::date, 1, 'Studio(OP)', 'Stantly、John、Edith', '1.Restart All Proxy-Server
2.Reboot Dealer PC
3.Reboot Streaming System(Included Encoder & Camera-PC)
4.Confirm all rtmp is normal
5.Check Roulette level and verify normal function
6.Check Dice-Cup level and verify normal function
7.Test the Dealer-system all function', '08:00'::time, '08:50'::time, 50, 'done', NULL),
  ('MX', '2026-06-24'::date, 2, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:50'::time, 50, 'done', NULL),
  ('MX', '2026-06-24'::date, 3, 'LCS', 'Tony', '1. Refactor Class Method
2. 新增【百家樂】MX 12桌, 【百家樂】CB 21桌, 【EX骰寶】MX 132桌
3. SKY 提供每桌及時在線資訊 API
4. ResultOdds, RandomPayResult新增roundstarttime欄位
5. 修正使用3G網路，玩家TIP參數帶False登入桌內，會看到打賞關閉的中央訊息', '08:00'::time, '08:36'::time, 36, 'done', NULL),
  ('MX', '2026-06-24'::date, 4, '辨識系統五合一', 'Rossi', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-06-24'::date, 5, 'DS System', 'Fanny', 'DS 35.1.0.0
1. 版本號顯示方式調整
2. 龍虎洗牌機合版', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-06-24'::date, 6, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-06-24'::date, 7, '降噪服務', 'Gary', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-06-24'::date, 8, '翻譯系統', 'Gary', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-06-24'::date, 9, '現場管理', 'Ivy、Julie、Amira、Cyndi', '1. Change the poker cards：All bacarrat and DG
2. Change the dice：
Table #121 (0303SA3)
Table #131 (0303SA4)
Table #132 (0303SA5)
Table #127 (0308TA4)
Table #151 (0522X01)', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-06-24'::date, 10, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-06-24'::date, 11, '路子圖、Chat Room', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-06-24'::date, 12, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-06-24'::date, 13, 'OP後台', 'Zach', 'DS 使用的 onsite user list api 快取從 24小時到期縮短到 1小時', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-06-17'::date, 1, 'Studio(OP)', 'Stantly、John、Edith', '1.Restart All Proxy-Server
2.Reboot Dealer PC
3.Reboot Streaming System(Included Encoder & Camera-PC)
4.Confirm all rtmp is normal
5.Check Roulette level and verify normal function
6.Check Dice-Cup level and verify normal function
7.Test the Dealer-system all function', '08:00'::time, '08:50'::time, 50, 'done', NULL),
  ('MX', '2026-06-17'::date, 2, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:50'::time, 50, 'done', NULL),
  ('MX', '2026-06-17'::date, 3, 'LCS', 'Tony', '1. Refactor Class Method
2. Redisson client升級Redis8
3. 新增後端投注檢查
4. 提供每桌及時在線人數&桌子資訊 API
5. CEBU C17、C18改為MultiBitRate
6. 客戶需求路子API 需求調整
7. 提供下單IP的資訊給端點&聯合進行相關分析', '08:00'::time, '08:45'::time, 45, 'done', NULL),
  ('MX', '2026-06-17'::date, 4, '辨識系統五合一', 'Rossi', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-06-17'::date, 5, 'DS System', 'Fanny', 'DS 35.0.0.0
1. 彩球機、百家洗牌流程 合版
2. 優化 Fatal 群的 TG Bot 進行分群
3. 修正 百家、龍虎 Max Round 換靴提示', '08:00'::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-06-17'::date, 6, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-06-17'::date, 7, '降噪服務', 'Gary', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-06-17'::date, 8, '翻譯系統', 'Gary', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-06-17'::date, 9, '現場管理', 'Ivy、Julie、Amira、Cyndi', '1. Change the poker cards：All bacarrat and DG
2. Change the dice：
Table #121 (1226SA1)
Table #131 (1226SA3)
Table #132 (0303SA2)
Table #127 (0308TA3)
Table #151 (1018XA9)', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-06-17'::date, 10, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-06-17'::date, 11, '路子圖、Chat Room', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-06-17'::date, 12, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-06-17'::date, 13, 'OP後台', 'Zach', '更新 洗牌機 Table List
修正荷官相片超過上限錯誤
修正荷官後台 Dealer 角色轉換錯誤', '08:00'::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-06-10'::date, 1, 'Studio(OP)', 'Stantly、John、Edith', '1.Restart All Proxy-Server
2.Reboot Dealer PC
3.Reboot Streaming System(Included Encoder & Camera-PC)
4.Confirm all rtmp is normal
5.Check Roulette level and verify normal function
6.Check Dice-Cup level and verify normal function
7.Test the Dealer-system all function', '08:00'::time, '08:50'::time, 50, 'done', NULL),
  ('MX', '2026-06-10'::date, 2, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:50'::time, 50, 'done', NULL),
  ('MX', '2026-06-10'::date, 3, 'LCS', 'Tony', '1. Refactor Class Method
2. Web新版輪盤
3.Mobile新版輪盤
4. 調整大廳桌子排序', '08:00'::time, '08:45'::time, 45, 'done', NULL),
  ('MX', '2026-06-10'::date, 4, '辨識系統五合一', 'Rossi', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-06-10'::date, 5, 'DS System', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-06-10'::date, 6, 'Proxy server', 'Fanny', '增加 Endpoint 12、132', '08:00'::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-06-10'::date, 7, '降噪服務', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-06-10'::date, 8, '翻譯系統', 'Gary', '版本更新至 v6.4.2', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-06-10'::date, 9, '現場管理', 'Ivy、Julie、Amira、Cyndi', '1. Change the poker cards：All bacarrat and DG
2. Change the dice：
Table #121 (1219SA1)
Table #131 (1219SA2)
Table #126 (0308TA2)
Table #151 (1017X02)', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-06-10'::date, 10, 'Dealer Monitor', 'JimLin', '1. DATA串接DATA CENTER位置, 增加樓層顯示', '08:30'::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-06-10'::date, 11, '路子圖、Chat Room', 'JimLin', '1. reboot server', '08:30'::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-06-10'::date, 12, 'Data Center(每桌info)', 'JimLin', '1. reboot server', '08:30'::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-06-10'::date, 13, 'OP後台', 'Zach', '1. 修正荷官後台下載照片問題
2. 增加 127桌正式桌資料設定', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-06-03'::date, 1, 'Studio(OP)', 'Stantly、John、Edith', '1.Restart All Proxy-Server
2.Reboot Dealer PC
3.Reboot Streaming System(Included Encoder & Camera-PC)
4.Confirm all rtmp is normal
5.Check Roulette level and verify normal function
6.Check Dice-Cup level and verify normal function
7.Test the Dealer-system all function', '05:00'::time, '06:50'::time, 110, 'done', NULL),
  ('MX', '2026-06-03'::date, 2, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:46'::time, 46, 'done', NULL),
  ('MX', '2026-06-03'::date, 3, 'LCS', 'Tony', '1. Refactor Class Method
2. 更新jbl Version:v20260527-1
3. 新增API Cache Server', '07:30'::time, '08:35'::time, 65, 'done', NULL),
  ('MX', '2026-06-03'::date, 4, '辨識系統五合一', 'Rossi', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-06-03'::date, 5, 'DS System', 'Fanny', 'DS 34.28
1. 修正 No data 狀態誤判(風控)
2. 優化 DS 與 BI / API 紀錄流程
3. 洗牌機流程合版(僅MX 13桌 - 測試)
4. 33 桌變更為自動更新', '05:00'::time, '07:00'::time, 120, 'done', NULL),
  ('MX', '2026-06-03'::date, 6, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-06-03'::date, 7, '降噪服務', 'Gary', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-06-03'::date, 8, '翻譯系統', 'Gary', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-06-03'::date, 9, '現場管理', 'Ivy、Julie、Amira', '1. Change the poker cards：All bacarrat and DG
2. Change the dice：
Table #121 (1210SA1)
Table #131 (1211SA1)
Table #126 (0307TA4)
Table #151 (1017X01)', '05:00'::time, '07:00'::time, NULL, 'done', NULL),
  ('MX', '2026-06-03'::date, 10, 'Dealer Monitor', 'JimLin', '1. Shoes Monitor會加上 PROD UAT 標籤', '08:30'::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-06-03'::date, 11, '路子圖、Chat Room', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-06-03'::date, 12, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-06-03'::date, 13, 'OP後台', 'Zach', '1.DS送Void 事件接受錯誤修正
2.魚蝦蟹 Add result功能修正', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-05-27'::date, 1, 'Studio(OP)', 'Stantly、John、Edith', '1.Restart All Proxy-Server
2.Reboot Dealer PC
3.Reboot Streaming System(Included Encoder & Camera-PC)
4.Confirm all rtmp is normal
5.Check Roulette level and verify normal function
6.Check Dice-Cup level and verify normal function
7.Test the Dealer-system all function', '05:00'::time, '06:50'::time, 110, 'done', NULL),
  ('MX', '2026-05-27'::date, 2, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '09:02'::time, 62, 'done', NULL),
  ('MX', '2026-05-27'::date, 3, 'LCS', 'Tony', '1. Refactor Class Method
2. 更新jbl Version:v20260515-1
3. 傳送玩家geyKey部分資訊至jbl
4. 新增【百家樂】MX 11桌, 【龍虎】MX 33桌
5. 新增【輪盤】預熱廣告', '07:30'::time, '08:35'::time, 65, 'done', NULL),
  ('MX', '2026-05-27'::date, 4, '辨識系統五合一', 'Rossi', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-05-27'::date, 5, 'DS System', 'Fanny', 'DS 34.27
1.龍虎No draw觸發顯示修正
2.LCS特別版功能
3.DS端 API Proxy Return code處理', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-05-27'::date, 6, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-05-27'::date, 7, '降噪服務', 'Gary', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-05-27'::date, 8, '翻譯系統', 'Gary', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-05-27'::date, 9, '現場管理', 'Ivy、Julie、Amira', '1. Change the poker cards：All bacarrat and DG
2. Change the dice：
Table #121 (1204SA1)
Table #131 (1204SA2)
Table #126 (0307TA1)
Table #151 (1016X03)', '05:00'::time, '07:00'::time, NULL, 'done', NULL),
  ('MX', '2026-05-27'::date, 10, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-05-27'::date, 11, '路子圖、Chat Room', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-05-27'::date, 12, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-05-27'::date, 13, 'OP後台', 'Zach', '修復 DS 呼叫 BI Service 併發超時（504 Gateway Timeout）問題', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-05-20'::date, 1, 'Studio(OP)', 'Stantly、John、Edith', '1.Restart All Proxy-Server
2.Reboot Dealer PC
3.Reboot Streaming System(Included Encoder & Camera-PC)
4.Confirm all rtmp is normal
5.Check Roulette level and verify normal function
6.Check Dice-Cup level and verify normal function
7.Test the Dealer-system all function', '08:00'::time, '08:50'::time, 50, 'done', NULL),
  ('MX', '2026-05-20'::date, 2, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '09:00'::time, 60, 'done', NULL),
  ('MX', '2026-05-20'::date, 3, 'LCS', 'Tony', '1. CEBU新增百家樂營運桌C19-C20
2. 新增Currency VES 幣別
3. 龍虎 Moblie調整全滿版視訊縮放
4. 龍虎 Web移除視訊縮放與位移', '08:00'::time, '08:50'::time, 50, 'done', NULL),
  ('MX', '2026-05-20'::date, 4, '辨識系統五合一', 'Rossi', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-05-20'::date, 5, 'DS System', 'Fanny', 'DS 34.26
1.色碟No draw修正
2.龍虎辨識錯誤提示為正常關閉修正
3.風控系統全面更新', '08:00'::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-05-20'::date, 6, 'Proxy server', 'Fanny', '11.33桌新增LCS Endpoint', '08:00'::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-05-20'::date, 7, '降噪服務', 'Gary', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-05-20'::date, 8, '翻譯系統', 'Gary', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-05-20'::date, 9, '現場管理', 'Ivy、Julie、Amira', '4. Change the dice：
Table #121 (1121SA2)
Table #131 (1126SA1)
Table #126 (0912TA1)
Table #151 (1016X02)', '08:00'::time, '09:00'::time, NULL, 'done', NULL),
  ('MX', '2026-05-20'::date, 10, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-05-20'::date, 11, '路子圖、Chat Room', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-05-20'::date, 12, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-05-20'::date, 13, 'OP後台', 'Zach', '1. 更新 Prod (原環境) 環境變數 (廠區連線 IP 白名單, CORS 設定)
2. 更新 MX PROD 環境變數 (廠區連線 IP 白名單, CORS 設定, NUPG_CERT_KEY )
3. 部屬 MX PROD 環境 Log 相關服務', '08:00'::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-05-13'::date, 1, 'Studio(OP)', 'Stantly、John、Edith', '1.Restart All Proxy-Server
2.Reboot Dealer PC
3.Reboot Streaming System(Included Encoder & Camera-PC)
4.Confirm all rtmp is normal
5.Check Roulette level and verify normal function
6.Check Dice-Cup level and verify normal function
7.Test the Dealer-system all function', '08:00'::time, '08:50'::time, 50, 'done', NULL),
  ('MX', '2026-05-13'::date, 2, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '09:00'::time, 60, 'done', NULL),
  ('MX', '2026-05-13'::date, 3, 'LCS', 'Tony', '1. Refactor Class Method
2. 特定桌次啟用MultiBitRate Player SDK
3. 修正報表API queryTxnReport, queryRoundReport', '08:00'::time, '08:35'::time, 35, 'done', NULL),
  ('MX', '2026-05-13'::date, 4, '辨識系統五合一', 'Rossi', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-05-13'::date, 5, 'DS System', 'Fanny', '1.DS 34.25 (百家 2桌) 風控新版上線
2DS 34.25.0.1 (色碟 151桌) 色碟 No draw優化', '09:00'::time, '09:00'::time, NULL, 'done', NULL),
  ('MX', '2026-05-13'::date, 6, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-05-13'::date, 7, '降噪服務', 'Gary', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-05-13'::date, 8, '翻譯系統', 'Gary', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-05-13'::date, 9, '現場管理', 'Ivy、Julie、Amira', '1. Change the poker cards：All bacarrat and DG
2. Change the tablecloth of Dice base (126, 121, 131)
3. Change the tablecloth of DT table (31)
4. Change the dice：
Table #121 (1113SA1)
Table #131 (1121SA1)
Table #126 (0911TA5)
Table #151 ()', '08:00'::time, '09:00'::time, NULL, 'done', NULL),
  ('MX', '2026-05-13'::date, 10, 'Dealer Monitor', 'JimLin', '1. 架構區分(依樓層)', '08:00'::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-05-13'::date, 11, '路子圖、Chat Room', 'JimLin', '1. 架構區分(依樓層)', '08:00'::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-05-13'::date, 12, 'Data Center(每桌info)', 'JimLin', '1. 架構區分(依樓層)', '08:00'::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-05-13'::date, 13, 'OP後台', 'Zach', '增加NUPG OP後台API環境切換', '08:00'::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-05-06'::date, 1, 'Studio(OP)', 'Stantly、John、Edith', '1.Restart All Proxy-Server
2.Reboot Dealer PC
3.Reboot Streaming System(Included Encoder & Camera-PC)
4.Confirm all rtmp is normal
5.Check Roulette level and verify normal function
6.Check Dice-Cup level and verify normal function
7.Test the Dealer-system all function', '08:00'::time, '08:50'::time, 50, 'done', NULL),
  ('MX', '2026-05-06'::date, 2, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:52'::time, 52, 'done', NULL),
  ('MX', '2026-05-06'::date, 3, 'LCS', 'Tony', '1. Refactor Class Method
2. send chat message to UL
3. 移除廣告上傳相關程式
4. ExtraSicbo WebSocket 改版 + 聊打共用', '08:00'::time, '08:37'::time, 37, 'done', NULL),
  ('MX', '2026-05-06'::date, 4, '辨識系統五合一', 'Rossi', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-05-06'::date, 5, 'DS System', 'Fanny', 'DS 34.24更版(全廳)
1.全遊戲骰類會補TG告警
2.Atem切鏡位功能', '08:00'::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-05-06'::date, 6, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-05-06'::date, 7, '降噪服務', 'Gary', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-05-06'::date, 8, '翻譯系統', 'Gary', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-05-06'::date, 9, '現場管理', 'Ivy、Julie、Amira', '1. Change the poker cards：All bacarrat and DG
2. Change the tablecloth of Dice base (126, 121, 131)
3. Change the tablecloth of DT table (32)
4. Change the dice：
Table #121 (1105SA1)
Table #131 (1105SA2)
Table #126 (0911TA4)
Table #151 (1015X01)', '08:00'::time, '09:00'::time, NULL, 'done', NULL),
  ('MX', '2026-05-06'::date, 10, 'Dealer Monitor', 'JimLin', '1. 重啟SERVER', '08:30'::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-05-06'::date, 11, '路子圖、Chat Room', 'JimLin', '1. 重啟SERVER', '08:30'::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-05-06'::date, 12, 'Data Center(每桌info)', 'JimLin', '1. 重啟SERVER', '08:30'::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-05-06'::date, 13, 'OP後台', 'Zach', '1.新增Reason功能
2.Log 新增Reason檢視功能', '08:00'::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-04-29'::date, 1, 'Studio(OP)', 'Stantly、John、Edith', '1.Restart All Proxy-Server
2.Reboot Dealer PC
3.Reboot Streaming System(Included Encoder & Camera-PC)
4.Confirm all rtmp is normal
5.Check Roulette level and verify normal function
6.Check Dice-Cup level and verify normal function
7.Test the Dealer-system all function', '05:00'::time, '06:50'::time, 110, 'done', NULL),
  ('MX', '2026-04-29'::date, 2, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:45'::time, 45, 'done', NULL),
  ('MX', '2026-04-29'::date, 3, 'LCS', 'Tony', '1. Refactor Class Method
2. 調整getKey login Extension2流程
3. 更新 sdk.js version2.2.7', '07:45'::time, '08:45'::time, 60, 'done', NULL),
  ('MX', '2026-04-29'::date, 4, '辨識系統五合一', 'Rossi', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-04-29'::date, 5, 'DS System', 'Fanny', '34.23
1.TG告警分組功能
2.龍虎開牌提示邏輯修正', '09:00'::time, '09:00'::time, NULL, 'done', NULL),
  ('MX', '2026-04-29'::date, 6, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-04-29'::date, 7, '降噪服務', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-04-29'::date, 8, '翻譯系統', 'Gary', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-04-29'::date, 9, '現場管理', 'Ivy、Julie、Amira', '1. change the poker cards：All bacarrat and DG
2. Change the tablecloth of all dice base (126, 121, 131)
3. Change the dice：
Table #121 (1031SA1)
Table #131 (1031SA2)
Table #126 (0911TA3)
Table #151 (1014X02)', NULL::time, NULL::time, NULL, 'done', NULL),
  ('MX', '2026-04-29'::date, 10, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-04-29'::date, 11, '路子圖、Chat Room', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-04-29'::date, 12, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-04-22'::date, 1, 'Studio(OP)', 'Stantly、John、Edith', '1.Restart All Proxy-Server
2.Reboot Dealer PC
3.Reboot Streaming System(Included Encoder & Camera-PC)
4.Confirm all rtmp is normal
5.Check Roulette level and verify normal function
6.Check Dice-Cup level and verify normal function
7.Test the Dealer-system all function', '08:00'::time, '08:50'::time, 50, 'done', NULL),
  ('MX', '2026-04-22'::date, 2, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:50'::time, 50, 'done', NULL),
  ('MX', '2026-04-22'::date, 3, 'LCS', 'Tony', '1. Refactor Class Method
2. 調整CancelBetNotificationManager Lock規則
3. 修正手機版泰魚&泰骰，成功下注後斷線，於下一局開始下注時重新連線repeat按鈕不會亮
4. 修正手機版泰骰&泰魚在賭桌內，斷線之後離開賭桌回到大廳，重新連上網路之後再次進桌，會持續顯示刷新連線的動畫', '08:00'::time, '08:40'::time, 40, 'done', NULL),
  ('MX', '2026-04-22'::date, 4, '辨識系統五合一', 'Rossi', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-04-22'::date, 5, 'DS System', 'Fanny', '34.22.1
1.新增龍虎 無牌框UI切換版本', '09:00'::time, '09:00'::time, NULL, 'done', NULL),
  ('MX', '2026-04-22'::date, 6, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-04-22'::date, 7, '降噪服務', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-04-22'::date, 8, '翻譯系統', 'Gary', '版本更新', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-04-22'::date, 9, '現場管理', 'Ivy、Julie、Amira', '1. change the poker cards：All bacarrat and DG
2. Change the tablecloth of all dice base (126,121, 131)
3. Change the tablecloth of baccarat (2,3,4,10)
Table #121 (1025SA1)
Table #131 (1025SA2)
Table #126 (0911TA2)
Table #151 (1014X01)', NULL::time, NULL::time, NULL, 'done', NULL),
  ('MX', '2026-04-22'::date, 10, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-04-22'::date, 11, '路子圖、Chat Room', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-04-22'::date, 12, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-04-15'::date, 1, 'Studio(OP)', 'Stantly、John、Edith', '1.Restart All Proxy-Server
2.Reboot Dealer PC
3.Reboot Streaming System(Included Encoder & Camera-PC)
4.Confirm all rtmp is normal
5.Check Roulette level and verify normal function
6.Check Dice-Cup level and verify normal function
7.Test the Dealer-system all function', '07:30'::time, '08:50'::time, 80, 'done', NULL),
  ('MX', '2026-04-15'::date, 2, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '07:30'::time, '08:52'::time, 82, 'done', NULL),
  ('MX', '2026-04-15'::date, 3, 'LCS', 'Tony', '1. Refactor Class Method
2. Web/Mobile大廳-新增IDR,PTI幣別桌次排序
3. WEB ExtraSicbo/Sedie修正玩家真人語音開關變動與DB寫入Failed
4. 校正 msg.error.validation.betLimit.empty 各語系翻譯文字
5. 新增 index baccarat-streaming-errorcode
6. 調整 baccarat_bet_unsuccessfully 內容
7. RandonPayResult新增欄位RoundStartTime
8. ResultOdds新增欄位RoundStartTime', '07:30'::time, '08:40'::time, 70, 'done', NULL),
  ('MX', '2026-04-15'::date, 4, '辨識系統五合一', 'Rossi', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-04-15'::date, 5, 'DS System', 'Fanny', '逐桌修改 Update.bat 檔', '07:30'::time, '09:00'::time, NULL, 'done', NULL),
  ('MX', '2026-04-15'::date, 6, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-04-15'::date, 7, '降噪服務', 'Gary', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-04-15'::date, 8, '現場管理', 'Ivy、Julie、Amira', '1. change the poker cards：All bacarrat and DG
2. Change the tablecloth of all dice base (126, 121, 131)
3. Change the tablecloth of Baccart tables (1, 5, 6, 7, 8, 9)
4. Change the dice：
Table #121 (1015SA9)
Table #131 (1016SA1)
Table #126 (0911TA1)
Table #151 (1013X03)', NULL::time, NULL::time, NULL, 'done', NULL),
  ('MX', '2026-04-15'::date, 9, 'Dealer Monitor', 'JimLin', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-04-15'::date, 10, '路子圖、Chat Room', 'JimLin', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-04-15'::date, 11, 'Data Center(每桌info)', 'JimLin', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-04-08'::date, 1, 'Studio(OP)', 'Stantly、John、Edith', '1.Restart All Proxy-Server
2.Reboot Dealer PC
3.Reboot Streaming System(Included Encoder & Camera-PC)
4.Confirm all rtmp is normal
5.Check Roulette level and verify normal function
6.Check Dice-Cup level and verify normal function
7.Test the Dealer-system all function', '05:00'::time, '06:50'::time, 110, 'done', NULL),
  ('MX', '2026-04-08'::date, 2, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '09:00'::time, 60, 'done', NULL),
  ('MX', '2026-04-08'::date, 3, 'LCS', 'Tony', '1. Refactor Class Method', '07:30'::time, '08:40'::time, 70, 'done', NULL),
  ('MX', '2026-04-08'::date, 4, '辨識系統五合一', 'Rossi', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-04-08'::date, 5, 'DS System', 'Fanny', '34.21
1.DS：修改測試桌讀取雲端內容模式
2.DS：72桌設定檔下載失敗問題修正', '09:00'::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-04-08'::date, 6, 'Proxy server', 'Fanny', 'Proxy：MX廠區劇院廳更版，上線依照廠商需求delay 8s的版本', '09:00'::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-04-08'::date, 7, '降噪服務', 'Gary', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-04-08'::date, 8, '現場管理', 'Ivy、Julie、Amira', '1. change the poker cards：All bacarrat and DG
2. Change the tablecloth of all dice base (126, 121, 131)
3. Change the dice：
Table #121 (1009SA9)
Table #131 (1010SA1)
Table #126 (0910TA5)
Table #151 (1013X02)', NULL::time, NULL::time, NULL, 'done', NULL),
  ('MX', '2026-04-08'::date, 9, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-04-08'::date, 10, '路子圖、Chat Room', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-04-08'::date, 11, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-04-01'::date, 1, 'Studio(OP)', 'Stantly、John、Edith', '1.Restart All Proxy-Server
2.Reboot Dealer PC
3.Reboot Streaming System(Included Encoder & Camera-PC)
4.Confirm all rtmp is normal
5.Check Roulette level and verify normal function
6.Check Dice-Cup level and verify normal function
7.Test the Dealer-system all function', '05:00'::time, '06:50'::time, 110, 'done', NULL),
  ('MX', '2026-04-01'::date, 2, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:54'::time, 54, 'done', NULL),
  ('MX', '2026-04-01'::date, 3, 'LCS', 'Tony', '1. Refactor Class Method
2. 修正PlayerInfo初始化欄位
3. 修正主帳號與活動帳號切換登入，餘額顯示錯誤', '07:30'::time, '08:30'::time, 60, 'done', NULL),
  ('MX', '2026-04-01'::date, 4, '辨識系統五合一', 'Rossi', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-04-01'::date, 5, 'DS System', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-04-01'::date, 6, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-04-01'::date, 7, '降噪服務', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-04-01'::date, 8, '現場管理', 'Ivy、Julie、Amira', '1. change the poker cards：All bacarrat and DG
2. Change the tablecloth of all dice base (126, 121, 131)
3. Change the dice：
Table #121 (0926SA3)
Table #131 (1003SA2)
Table #126 (0910TA4)
Table #151 (1013X01)', NULL::time, NULL::time, NULL, 'done', NULL),
  ('MX', '2026-04-01'::date, 9, 'Dealer Monitor', 'JimLin', '1. 新增桌號', '06:00'::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-04-01'::date, 10, '路子圖、Chat Room', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-04-01'::date, 11, 'Data Center(每桌info)', 'JimLin', '1. 新增廳別設定、主備 WebRTC 串流架構
2. webRTC player串接 DataCenter 資料', '06:00'::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-03-25'::date, 1, 'Studio(OP)', 'Stantly、John、Edith', '1.Restart All Proxy-Server
2.Reboot Dealer PC
3.Reboot Streaming System(Included Encoder & Camera-PC)
4.Confirm all rtmp is normal
5.Check Roulette level and verify normal function
6.Check Dice-Cup level and verify normal function
7.Test the Dealer-system all function', '05:00'::time, '06:50'::time, 110, 'done', NULL),
  ('MX', '2026-03-25'::date, 2, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '09:10'::time, 70, 'done', NULL),
  ('MX', '2026-03-25'::date, 3, 'LCS', 'Tony', '1. Refactor Class Method
2. DI Index PkdResult 調整傳送欄位
3. API DOC login加入allowNoCommBet參數', '07:30'::time, '08:30'::time, 60, 'done', NULL),
  ('MX', '2026-03-25'::date, 4, '辨識系統五合一', 'Rossi', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-03-25'::date, 5, 'DS System', 'Fanny', '1. DS 34.20.1 逐廳更換
2. DS系統設定檔雲化
3. 龍虎雙鏡位系統支援', '09:00'::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-03-25'::date, 6, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-03-25'::date, 7, '降噪服務', 'Gary', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-03-25'::date, 8, '現場管理', 'Ivy、Julie、Amira', '1. change the poker cards：All bacarrat and DG
2. Change the tablecloth of all dice base (126, 121, 131)
3. Change the dice：
Table #121 (0926SA1)
Table #131 (1003SA1)
Table #126 (0910TA3)
Table #151 (1012X02)', NULL::time, NULL::time, NULL, 'done', NULL),
  ('MX', '2026-03-25'::date, 9, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-03-25'::date, 10, '路子圖、Chat Room', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-03-25'::date, 11, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-03-18'::date, 1, 'Studio(OP)', 'Stantly、John、Edith', '1.Restart All Proxy-Server
2.Reboot Dealer PC
3.Reboot Streaming System(Included Encoder & Camera-PC)
4.Confirm all rtmp is normal
5.Check Roulette level and verify normal function
6.Check Dice-Cup level and verify normal function
7.Test the Dealer-system all function', '08:00'::time, '08:55'::time, 55, 'done', NULL),
  ('MX', '2026-03-18'::date, 2, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:56'::time, 56, 'done', NULL),
  ('MX', '2026-03-18'::date, 3, 'LCS', 'Tony', '1. Refactor Class Method
2. StreamingInfo調整傳送頻率
3. 修正iOS手機贏錢音效有機會撥放兩次
4. 調整WEB版百家樂與龍虎遊戲N局未下注提示訊息顯示時間
5. 監聽並傳送JavaScript Error Message
6. AgentGroup依照各場地桌次數量，重新打散分流資料', '08:00'::time, '08:37'::time, 37, 'done', NULL),
  ('MX', '2026-03-18'::date, 4, '辨識系統五合一', 'Rossi', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-03-18'::date, 5, 'DS System', 'Fanny', '1. DS 34.20，僅更換 B10 號桌
2. DS系統設定檔雲化
3. 龍虎雙鏡位系統支援', '08:15'::time, '08:30'::time, 15, 'done', NULL),
  ('MX', '2026-03-18'::date, 6, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-03-18'::date, 7, '降噪服務', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-03-18'::date, 8, '現場管理', 'Ivy、Julie、Amira', '1. change the poker cards：All bacarrat and DG
2. Change the tablecloth of all dice base (126, 121, 131)
3. Change the dice：
Table #121 (0919SA2)
Table #131 (0919SA3)
Table #126 (0803TA1)
Table #151 (1012X01)', NULL::time, NULL::time, NULL, 'done', NULL),
  ('MX', '2026-03-18'::date, 9, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-03-18'::date, 10, '路子圖、Chat Room', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-03-18'::date, 11, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-03-11'::date, 1, 'Studio(OP)', 'Stantly、John、Edith', '1.Restart All Proxy-Server
2.Reboot Dealer PC
3.Reboot Streaming System(Included Encoder & Camera-PC)
4.Confirm all rtmp is normal
5.Check Roulette level and verify normal function
6.Check Dice-Cup level and verify normal function
7.Test the Dealer-system all function', '08:00'::time, '08:55'::time, 55, 'done', NULL),
  ('MX', '2026-03-11'::date, 2, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-03-11'::date, 3, 'LCS', 'Tony', '1. Refactor Class Method
2. AccountGameSetting 資料清理
3. 移除ApiNotification相關程式
4. PlayFilter增加Header檢核機制
5. DI Index PkdResult, TfpcResult 新增傳送欄位
6. DI Index StreamingErrorCode 新增傳送資料
7. 新增幣別 DKK
8. 暫時停用CDNetwork Domain
9. auto Add result 多加calculate欄位判斷', '08:00'::time, '09:40'::time, 100, 'done', NULL),
  ('MX', '2026-03-11'::date, 4, '辨識系統五合一', 'Rossi', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-03-11'::date, 5, 'DS System', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-03-11'::date, 6, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-03-11'::date, 7, '降噪服務', 'Gary', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-03-11'::date, 8, '現場管理', 'Ivy、Julie、Amira', '1. change the poker cards：All bacarrat and DG
2. Change the tablecloth of all dice base (126, 121, 131)
3. Change the dice：
Table #121 (0910SA1)
Table #131 (0910SA2)
Table #126 (0802TA5)
Table #151 (1011X02)', NULL::time, NULL::time, NULL, 'done', NULL),
  ('MX', '2026-03-11'::date, 9, 'Dealer Monitor', 'JimLin', '1. SERVER重啟', '08:10'::time, '08:20'::time, NULL, 'done', NULL),
  ('MX', '2026-03-11'::date, 10, '路子圖、Chat Room', 'JimLin', '1. Shoe Monitor: 配合 Data Center 進行調整
2. SERVER重啟', '08:10'::time, '08:20'::time, NULL, 'done', NULL),
  ('MX', '2026-03-11'::date, 11, 'Data Center(每桌info)', 'JimLin', '1. Data Center: 串接 OP 後台資料
2. SERVER重啟', '08:10'::time, '08:20'::time, NULL, 'done', NULL),
  ('MX', '2026-03-04'::date, 1, 'Studio(OP)', 'Stantly、John、Edith', '1.Restart All Proxy-Server
2.Reboot Dealer PC
3.Reboot Streaming System(Included Encoder & Camera-PC)
4.Confirm all rtmp is normal
5.Check Roulette level and verify normal function
6.Check Dice-Cup level and verify normal function
7.Test the Dealer-system all function', '05:00'::time, '06:43'::time, 103, 'done', NULL),
  ('MX', '2026-03-04'::date, 2, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:59'::time, 59, 'done', NULL),
  ('MX', '2026-03-04'::date, 3, 'LCS', 'Tony', '1. Refactor Class Method', '08:00'::time, '08:56'::time, 56, 'done', NULL),
  ('MX', '2026-03-04'::date, 4, '辨識系統五合一', 'Rossi', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-03-04'::date, 5, 'DS System', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-03-04'::date, 6, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-03-04'::date, 7, '降噪服務', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-03-04'::date, 8, '現場管理', 'Ivy、Julie、Amira', '1. change the poker cards：All bacarrat and DG
2. Change the tablecloth of all dice base (126, 151, 121, 131)
3. Change the dice：
Table #121 (0909SA3)
Table #131 (0909SA4)
Table #126 (0802TA4)
Table #151 (1011X01)', NULL::time, NULL::time, NULL, 'done', NULL),
  ('MX', '2026-03-04'::date, 9, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-03-04'::date, 10, '路子圖、Chat Room', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-03-04'::date, 11, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-02-25'::date, 1, 'Studio(OP)', 'Stantly、John、Edith', '1.Reboot Dealer PC
2.Reboot Streaming System(Included Encoder & Camera-PC)
3.Confirm all rtmp is normal
4.Check Roulette level and verify normal function
5.Check Dice-Cup level and verify normal function
6.Test the Dealer-system all function', '05:00'::time, '06:45'::time, 105, 'done', NULL),
  ('MX', '2026-02-25'::date, 2, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:59'::time, 59, 'done', NULL),
  ('MX', '2026-02-25'::date, 3, 'LCS', 'Tony', '1. Refactor Class Method', '08:00'::time, '09:10'::time, 70, 'done', NULL),
  ('MX', '2026-02-25'::date, 4, '辨識系統五合一', 'Rossi', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-02-25'::date, 5, 'DS System', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-02-25'::date, 6, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-02-25'::date, 7, '降噪服務', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-02-25'::date, 8, '現場管理', 'Ivy、Julie、Amira', '1. change the poker cards：All bacarrat and DG
2. Change the tablecloth of all dice base (126, 151, 121, 131)
3. Change the dice：
Table #121 (0909SA1)
Table #131 (0909SA2)
Table #126 (0802TA3)
Table #151 (1010X03)', NULL::time, NULL::time, NULL, 'done', NULL),
  ('MX', '2026-02-25'::date, 9, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-02-25'::date, 10, '路子圖、Chat Room', 'JimLin', '1. 現場對位圖webrtc, 更新骰桌對位線', '08:00'::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-02-25'::date, 11, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-02-11'::date, 1, 'Studio(OP)', 'Stantly、John、Edith', '1.Restart All Proxy-Server
2.Reboot Dealer PC
3.Reboot Streaming System(Included Encoder & Camera-PC)
4.Confirm all rtmp is normal
5.Check Roulette level and verify normal function
6.Check Dice-Cup level and verify normal function
7.Test the Dealer-system all function', '08:00'::time, '08:55'::time, 55, 'done', NULL),
  ('MX', '2026-02-11'::date, 2, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:49'::time, 49, 'done', NULL),
  ('MX', '2026-02-11'::date, 3, 'LCS', 'Tony', '1. Refactor Class Method
2. 電腦版輪盤遊戲，前端調整延遲時間，對齊手機版
3. update extension2 併入 updateLoginForUpdate
4. 移除不存在帳號的聊天禁言名單
5. 移除ENABLE_API_CONTROLLER_LOGIN_RECORD相關程式碼
6. 檢查LCS與Kafka資料筆數是否一致
7. PlayStatusLog 增加時間欄位', '08:00'::time, '08:48'::time, 48, 'done', NULL),
  ('MX', '2026-02-11'::date, 4, '辨識系統五合一', 'Rossi', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-02-11'::date, 5, 'DS System', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-02-11'::date, 6, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-02-11'::date, 7, '降噪服務', 'Gary', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-02-11'::date, 8, '現場管理', 'Ivy、Julie、Amira', '1. change the poker cards：All bacarrat and DG
2. Change the tablecloth of all dice base (126, 151, 121, 131)
3. Change the dice：
Table #121 (0908SA3)
Table #131 (0908SA4)
Table #126 (0802TA1)
Table #151 (1010X01)', NULL::time, NULL::time, NULL, 'done', NULL),
  ('MX', '2026-02-11'::date, 9, 'Dealer Monitor', 'JimLin', '1. 系統重啟', '08:15'::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-02-11'::date, 10, '路子圖、Chat Room', 'JimLin', '1. 系統重啟', '08:15'::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-02-11'::date, 11, 'Data Center(每桌info)', 'JimLin', '1. 系統重啟', '08:15'::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-02-04'::date, 1, 'Studio(OP)', 'Stantly、John、Edith', '1.Restart All Proxy-Server
2.Reboot Dealer PC
3.Reboot Streaming System(Included Encoder & Camera-PC)
4.Confirm all rtmp is normal
5.Check Roulette level and verify normal function
6.Check Dice-Cup level and verify normal function
7.Test the Dealer-system all function', '08:00'::time, '08:50'::time, 50, 'done', NULL),
  ('MX', '2026-02-04'::date, 2, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:51'::time, 51, 'done', NULL),
  ('MX', '2026-02-04'::date, 3, 'LCS', 'Tony', '1. Refactor Class Method
2. 後台操作voidRoundDirectly需補DealerID欄位
3. 新增Compare API for Kafka資料比對
4. StreamingGetToken新增proxy
5. 修正 Web,Mobile 重整後預設籌碼的數值會自動變為 1
6. 修正 Web Extra骰寶、色碟使用Safari開啟自定義籌碼時，籌碼顯示異常', '07:30'::time, '08:40'::time, 70, 'done', NULL),
  ('MX', '2026-02-04'::date, 4, '辨識系統五合一', 'Rossi', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-02-04'::date, 5, 'DS System', 'Fanny', '34.18 DS版本
1.自動輪盤Http proxy版本上線
2.TG桌號顯示名稱調整
3.Reinput告警加上桌邊輸入資訊', '09:00'::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-02-04'::date, 6, 'Proxy server', 'Fanny', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-02-04'::date, 7, '降噪服務', 'Gary', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-02-04'::date, 8, '現場管理', 'Ivy、Julie、Amira', '1. 撲克牌更換：所有百家、龍虎
2. 魚蝦蟹、色碟、121/131 骰盅內墊片桌布更換
3. 賭具更換：
骰子 #121 (0807SA4)
骰子 #131 (0807SA5)
魚蝦蟹 #126 (0726TA3)
色碟 #151 (1008X02)', NULL::time, NULL::time, NULL, 'done', NULL),
  ('MX', '2026-02-04'::date, 9, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-02-04'::date, 10, '路子圖、Chat Room', 'JimLin', '1. Chat Admin Msg: 調整使用IPv4連線以及重啟服務邏輯', '06:00'::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-02-04'::date, 11, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-01-28'::date, 1, 'Studio(OP)', 'Stantly、John、Edith', '1.Restart All Proxy-Server
2.Reboot Dealer PC
3.Reboot Streaming System(Included Encoder & Camera-PC)
4.Confirm all rtmp is normal
5.Check Roulette level and verify normal function
6.Check Dice-Cup level and verify normal function
7.Test the Dealer-system all function', '08:00'::time, '08:50'::time, 50, 'done', NULL),
  ('MX', '2026-01-28'::date, 2, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:50'::time, 50, 'done', NULL),
  ('MX', '2026-01-28'::date, 3, 'LCS', 'Tony', '1. Refactor Class Method
2. 更新sdk.js version2.2.6
3. AgentNotificationGroup SQL Tuning
4. JBL PlayStatusLog 增加時間欄位', '07:00'::time, '08:15'::time, 75, 'done', NULL),
  ('MX', '2026-01-28'::date, 4, '辨識系統五合一', 'Rossi', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-01-28'::date, 5, 'DS System', 'Fanny', '34.17更版
1.新增風控紅燈提視窗
2.骰類TG告警修正
3.色碟DS點數顯示調整', '09:00'::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-01-28'::date, 6, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-01-28'::date, 7, '降噪服務', 'Gary', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-01-28'::date, 8, '現場管理', 'Ivy、Julie、Amira', '1. 撲克牌更換：所有百家、龍虎
2. 魚蝦蟹、色碟、121/131 骰盅內墊片桌布更換
3. 賭具更換：
骰子 #121 (0807SA2)
骰子 #131 (0807SA3)
魚蝦蟹 #126 (0726TA2)
色碟 #151 (1008X01)
4. 更換百家、龍虎遊戲桌板(布)', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-01-28'::date, 9, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-01-28'::date, 10, '路子圖、Chat Room', 'JimLin', '1. Chat Admin Msg： 新增網路異常時，自動重連功能', '07:00'::time, '07:05'::time, 5, 'done', NULL),
  ('MX', '2026-01-28'::date, 11, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-01-28'::date, 12, 'Local Media Server', 'Evan', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-01-21'::date, 1, 'Studio(OP)', 'Stantly、John、Edith', '1.Restart All Proxy-Server
2.Reboot Dealer PC
3.Reboot Streaming System(Included Encoder & Camera-PC)
4.Confirm all rtmp is normal
5.Check Roulette level and verify normal function
6.Check Dice-Cup level and verify normal function
7.Test the Dealer-system all function', '08:00'::time, '08:50'::time, 50, 'done', NULL),
  ('MX', '2026-01-21'::date, 2, 'Streaming', 'Bernard', '"1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs"', '08:00'::time, '08:54'::time, 54, 'done', NULL),
  ('MX', '2026-01-21'::date, 3, 'LCS', 'Tony', '1. Refactor Class Method
2. 修正於大廳斷線後點擊任意遊戲桌，重連後畫面有機會卡住
3. 新增Currency IQD 幣別
4. 各遊戲Result補上DealerID欄位', '08:00'::time, '08:35'::time, 35, 'done', NULL),
  ('MX', '2026-01-21'::date, 4, '辨識系統五合一', 'Rossi', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-01-21'::date, 5, 'DS System', 'Fanny', '1.API Proxy DS setting
2.34.16 版本上線', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-01-21'::date, 6, 'Proxy server', 'Fanny', 'API Proxy 上線', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-01-21'::date, 7, '降噪服務', 'Gary', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-01-21'::date, 8, '現場管理', 'Ivy、Julie、Amira', '1. 撲克牌更換：所有百家、龍虎
2. 魚蝦蟹、色碟、121/131 骰盅內墊片桌布更換
3. 賭具更換：
骰子 #131 (0807SA1)
骰子 #121 (0806SA5)
魚蝦蟹 #126 (0726TA1)
色碟 #151 (1007X03)', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-01-21'::date, 9, 'Dealer Monitor', 'JimLin', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-01-21'::date, 10, '路子圖、Chat Room', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-01-21'::date, 11, 'Data Center(每桌info)', 'JimLin', '1.更新顯示P(PROD), U(UAT)圖像，方便判斷', '08:00'::time, '08:10'::time, 10, 'done', NULL),
  ('MX', '2026-01-21'::date, 12, 'Local Media Server', 'Evan', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-01-14'::date, 1, 'Studio(OP)', 'Stantly、John、Edith', '1.Restart All Proxy-Server
2.Reboot Dealer PC
3.Reboot Streaming System(Included Encoder & Camera-PC)
4.Confirm all rtmp is normal
5.Check Roulette level and verify normal function
6.Check Dice-Cup level and verify normal function
7.Test the Dealer-system all function', '08:00'::time, '08:50'::time, 50, 'done', NULL),
  ('MX', '2026-01-14'::date, 2, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-01-14'::date, 3, 'LCS', 'Tony', '1. Refactor Class Method
2. 手機版、電腦版，自定義籌碼頁面優化
3. 手機版、電腦版，色碟遊戲指南調整
4. LCS Domain整合nocookie
5. GameResultCache同步更新機制
6. send chat message to UL', '08:00'::time, '09:40'::time, 100, 'done', NULL),
  ('MX', '2026-01-14'::date, 4, '辨識系統五合一', 'Rossi', '1. 重起辨識主機, 更新模型', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-01-14'::date, 5, 'DS System', 'Fanny', '34.15 DS版本更新內容
1.新增自動骰取消手動輸入模式切換功能
2.調整色碟no draw 演算法', '09:00'::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-01-14'::date, 6, 'Proxy server', 'Fanny', 'Endpoint外線增加', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-01-14'::date, 7, '降噪服務', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-01-14'::date, 8, '現場管理', 'Ivy、Julie、Amira', '1. 撲克牌更換：所有百家、龍虎
2. 魚蝦蟹、色碟、121/131 骰盅內墊片桌布更換
3. 賭具更換：
骰子 #131 (0806SA4)
骰子 #121 (0806SA3)
魚蝦蟹 #126 (0725TA4)
色碟 #151 (1007X02)', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-01-14'::date, 9, 'Dealer Monitor', 'JimLin', '1. Server Reboot', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-01-14'::date, 10, '路子圖、Chat Room', 'JimLin', '1. Server Reboot', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-01-14'::date, 11, 'Data Center(每桌info)', 'JimLin', '1. Server Reboot', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-01-14'::date, 12, 'Local Media Server', 'Evan', 'NightClub02 主機調整回原架構', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-01-07'::date, 1, 'Studio(OP)', 'Stantly、John、Edith', '1.Restart All Proxy-Server
2.Reboot Dealer PC
3.Reboot Streaming System(Included Encoder & Camera-PC)
4.Confirm all rtmp is normal
5.Check Roulette level and verify normal function
6.Check Dice-Cup level and verify normal function
7.Test the Dealer-system all function', '08:00'::time, '08:50'::time, 50, 'done', NULL),
  ('MX', '2026-01-07'::date, 2, 'Streaming', 'Bernard', '1. Reboot streaming servers.
2. Check all streaming functions on streaming servers.
3. Check status of RTMP / FLV on streaming servers.
4. Check live stream status of all CDNs', '08:00'::time, '08:59'::time, 59, 'done', NULL),
  ('MX', '2026-01-07'::date, 3, 'LCS', 'Tony', '1. Refactor Class Method
2. AgentGroup調整資料撈取順序
3. 浮水印顯示調整
4. 修正更改發話廣度的累計資料取用天數後，玩家發話廣度等級異常
5. settleRound更新時間狀態提供給getBalance方法判斷使用
6. ELK client upgrade 7.17.29
7. sdk.js upgrade 2.2.5', '08:00'::time, '08:40'::time, 40, 'done', NULL),
  ('MX', '2026-01-07'::date, 4, '辨識系統五合一', 'Rossi', NULL, NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-01-07'::date, 5, 'DS System', 'Fanny', '34.14.1更版
1.優化骰子辨識流程
2.新增CB / MX 色碟切換功能', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-01-07'::date, 6, 'Proxy server', 'Fanny', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-01-07'::date, 7, '降噪服務', 'Gary', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-01-07'::date, 8, '現場管理', 'Ivy、Julie、Amira', '1. 撲克牌更換：所有百家、龍虎
2. 魚蝦蟹、色碟、121/131 骰盅內墊片桌布更換
3. 賭具更換：
骰子 #131 (0806SA2)
骰子 #121 (0806SA1)
魚蝦蟹 #126 (0721TA1)
色碟 #151 (1007X01)', NULL::time, NULL::time, NULL, 'pending', NULL),
  ('MX', '2026-01-07'::date, 9, 'Dealer Monitor', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-01-07'::date, 10, '路子圖、Chat Room', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-01-07'::date, 11, 'Data Center(每桌info)', 'JimLin', '無', NULL::time, NULL::time, NULL, 'na', NULL),
  ('MX', '2026-01-07'::date, 12, 'Local Media Server', 'Evan', 'NightClub02 服務轉移至備機，LAN IP 不變', NULL::time, NULL::time, NULL, 'done', NULL)
) as t(venue, week_date, seq, system, owner, details, start_time, end_time, duration_min, status, notes)
join public.maintenance_windows w on w.venue = t.venue and w.week_date = t.week_date
on conflict (window_id, seq) do update set
  system = excluded.system, owner = excluded.owner, details = excluded.details,
  start_time = excluded.start_time, end_time = excluded.end_time,
  duration_min = excluded.duration_min, status = excluded.status, notes = excluded.notes;

alter table public.maintenance_tasks enable trigger trg_mt_log;

commit;

-- 確認匯入結果
select venue as 場地, count(*) as 週數, min(week_date) as 最早, max(week_date) as 最新
  from public.maintenance_windows group by venue order by venue;
select w.venue as 場地, count(*) as 任務筆數
  from public.maintenance_tasks t join public.maintenance_windows w on w.id = t.window_id
 group by w.venue order by w.venue;
