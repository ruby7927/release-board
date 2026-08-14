# 更版及維護公告

現場人員**免帳號密碼**即可查看；維護排程各 System Owner 也**免帳號**就能填寫。

- 前端：單一 `index.html`（無框架、無建置步驟）
- 後端：Supabase（PostgreSQL + Auth）
- 部署：GitHub Pages

## 分頁與權限

**Maintenance Schedule 任何人都能填寫及查詢；其他分頁必須管理者登入才能新增。**
所有分頁一律開放未登入查看。

| 分頁 | 內容 | 查詢 | 新增／修改 | 刪除 |
|---|---|---|---|---|
| 1. 系統更版訊息（首頁） | 上正式系統的更版公告 | 任何人 | 管理者 | 管理者 |
| 2.1 Cebu Maintenance Schedule | Cebu 每週維護視窗與任務明細 | 任何人 | **任何人** | 管理者 |
| 2.2 Mexico Maintenance Schedule | Mexico 每週維護視窗與任務明細 | 任何人 | **任何人** | 管理者 |
| 2.3 Cebu歷史紀錄 | Cebu 跨週查詢 | 任何人 | — | — |
| 2.4 Mexico歷史紀錄 | Mexico 跨週查詢 | 任何人 | — | — |
| 3. 操作手冊 | 各系統的文件連結 | 任何人 | 管理者 | 管理者 |
| 4. 系統網址 | 各系統的網址 | 任何人 | 管理者 | 管理者 |

權限由資料庫的 RLS 決定，前端只是配合隱藏按鈕，繞過畫面直接打 API 也一樣擋得住：

| 資料表 | 查詢 | 新增 | 修改 | 刪除 |
|---|---|---|---|---|
| `maintenance_windows` | 任何人 | 任何人 | 任何人 | 管理者 |
| `maintenance_tasks` | 任何人 | 任何人 | 任何人 | 管理者 |
| `maintenance_log` | 任何人 | 只有 trigger 寫得進去 | — | — |
| `release_notes` | 任何人 | 管理者 | 管理者 | 管理者 |
| `manual_files` | 任何人 | 管理者 | 管理者 | 管理者 |

維護排程另外受封存規則限制，見下一節。

## 維護排程的封存規則

**下一場維護開始，上一場才封存。** 例如 8/12 那場：

| 期間 | 可以改什麼 |
|---|---|
| 8/12 當天及之前 | 全部欄位 |
| 8/13 ～ 8/18 | 全部欄位（下一場 8/19 還沒開始） |
| 8/19 起 | 只剩**執行時間**、**狀態**與**備註**；不能再新增或刪除列 |

封存後仍開放的那三項，都是維護做完之後才會知道的資訊；
系統、負責人、更新項目則固定下來，確保歷史紀錄不被改寫。

封存日＝同場地下一場維護的日期；還沒排下一場的話，以維護日七天後為界。
維護日已過但還沒封存的那幾天，畫面上會標示「X 月 X 日起封存」提醒 Owner。
管理者登入後不受任何限制，方便更正。

規則在前後端各實作一次：前端 `index.html` 的 `lockFrom` / `isLocked`（讓現場當下就看得出來），
資料庫 `mw_lock_from` + `mt_guard_locked` / `mw_guard_locked` trigger（真正把關的一層）。

> 沒排下一場時的七天預設值寫死在兩個地方：`index.html` 的 `LOCK_FALLBACK_DAYS`
> 與 `schema_maintenance.sql` 的 `mw_lock_from`。要改的話兩邊都要改。

## 免帳號填寫的風險與防護

「免登入可寫」代表任何拿到網址的人都能寫，不只公司同仁。實際採取的防護：

1. **匿名不能刪除** — 只能新增與修改，資料不會被清掉
2. **每筆改動留紀錄** — 填寫時必填「填寫人」，配合 trigger 寫入 `maintenance_log`
3. **過去的資料封存** — 見上一節
4. **`config.js` 的 `editPasscode`** — 填字串即要求輸入共用密碼才能填寫（預設關閉）。
   注意這只擋誤觸，不是資安機制，因為前端程式碼是公開的。

真的要管控，改成「登入才能填寫」：把 `schema_maintenance.sql` 裡 `mt` / `mw` 的
insert、update 政策中的 `anon` 拿掉，只留 `authenticated`，重新執行那四條 `create policy`。前端不用改。

---

## 建置步驟

### 1. 建立 Supabase 專案

1. 到 <https://supabase.com> → **New project**
2. 專案建好後進入 **SQL Editor**，依序執行：
   - `schema.sql` — 更版公告的 `release_notes` 表
   - `schema_maintenance.sql` — 維護排程的三張表、封存 trigger、修改紀錄
   - `seed_maintenance.sql` — 匯入 Excel 轉出的 93 週歷史資料（可重複執行）

### 2. 填入連線設定

**Project Settings → API**，複製兩個值貼進 `config.js`：

```js
window.SUPABASE_CONFIG = {
  url:     "https://xxxxxxxx.supabase.co",
  anonKey: "sb_publishable_..."          // 或舊格式的 anon key
};
```

anon key 是設計成可公開的金鑰，實際權限由資料庫的 RLS 決定，放在前端沒問題。

### 3. 建立管理者帳號

**Authentication → Users → Add user**，輸入 email 與密碼，**勾選 Auto Confirm User**。

本系統不開放註冊，帳號一律由此手動建立。有帳號 = 可以發布公告。

### 4. 部署到 GitHub Pages

```bash
cd release-board
git init
git add .
git commit -m "每週更版公告板"
git branch -M main
git remote add origin https://github.com/<你的帳號>/release-board.git
git push -u origin main
```

GitHub repo → **Settings → Pages** → Source 選 `main` / `root` → Save。
約一分鐘後網址為 `https://<你的帳號>.github.io/release-board/`，把這個網址發給現場即可。

---

## 檔案

| 檔案 | 用途 |
|---|---|
| `index.html` | 全部畫面與邏輯（公開清單、查詢、登入、新增／編輯） |
| `config.js` | Supabase 連線設定、維護場地、預設時段、分類建議、共用編輯密碼 |
| `schema.sql` | 更版公告的資料表 + 索引 + RLS |
| `schema_maintenance.sql` | 維護排程的資料表 + 封存 trigger + 修改紀錄 + RLS |
| `seed_maintenance.sql` | Excel 轉出的 93 週歷史資料，可重複執行 |

## 維護排程的資料欄位

`maintenance_windows`（一週一筆）

| 欄位 | 型別 | 說明 |
|---|---|---|
| `venue` | text | 場地代碼，對應 `config.js` 的 `maintenance.venues` |
| `week_date` | date | 維護日期，等同原本 Excel 的分頁名稱 |
| `start_time` / `end_time` | time | 維護時段（GMT+8） |
| `downtime` | boolean | true=停機維護、false=不停機維護、null=未註明 |
| `note` | text | 補充，例如「地震_停機維護」 |
| `release_team` | text | 本週各系統負責人名單 |

`maintenance_tasks`（一個視窗底下 N 筆）

| 欄位 | 型別 | 說明 |
|---|---|---|
| `window_id` / `seq` | uuid / int | 所屬視窗與顯示順序 |
| `system` / `owner` | text | 系統與負責人 |
| `details` | text | 更新項目，一行一項；沒有就填「無」 |
| `start_time` / `end_time` | time | 實際執行時間 |
| `duration_min` | int | 工時，有起訖時由 trigger 自動算 |
| `status` | text | `pending` 待執行、`done` 完成、`na` 無更新項目 |
| `updated_by` | text | 最後填寫人，免登入填寫的追溯依據 |

## 新增一個維護場地

改 `config.js` 的 `maintenance.venues` 加一筆 `{ code, title, history }`，
再到 `defaultRows` 加上該場地的預設系統清單即可，不用動程式也不用改資料表。

## 資料欄位

| 欄位 | 型別 | 說明 |
|---|---|---|
| `created_date` | date | 建立日期，表單自動帶今天 |
| `release_at` | timestamp | 上正式系統日期及時間，時間預設 08:00 |
| `category` | text | 系統分類，可從既有清單挑或自行輸入 |
| `venues` | text[] | 場地，可複選 CB / MX / SIV |
| `content` | text | 更版內容，一行一項 |
| `link_url` | text | 連結（選填） |

`release_at` 使用不含時區的 `timestamp`，直接記錄現場看到的時間，不會因瀏覽器時區而位移。

## 查詢條件

上正式系統日期（起訖）、系統分類、場地，三者可同時使用，即時篩選。
清單自動分成「即將更版」（日期 ≥ 今天，最近的排最前）與「已更版」（最新的排最前）。

## 常見調整

**改場地代碼／預設時間／分類建議** — 改 `config.js` 的 `venues`、`defaultReleaseTime`、`categoryHints`，不必動程式。

**限制只有特定 email 能發布** — `schema.sql` 末段有 `is_editor()` 的範例，取消註解後把三條 editor 政策的 `true` 換成 `public.is_editor()`。

**新增欄位** — 因表已存在，另寫一段 `ALTER TABLE` 到 SQL Editor 執行，再改 `index.html` 的表單與卡片。
