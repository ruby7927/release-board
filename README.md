# 每週更版公告板

現場人員**免帳號密碼**即可查看每週系統更版內容；管理者登入後才能新增、編輯、刪除。

- 前端：單一 `index.html`（無框架、無建置步驟）
- 後端：Supabase（PostgreSQL + Auth）
- 部署：GitHub Pages

---

## 建置步驟

### 1. 建立 Supabase 專案

1. 到 <https://supabase.com> → **New project**
2. 專案建好後進入 **SQL Editor**，貼上 `schema.sql` 整份內容執行一次
   （建立 `release_notes` 表、索引、以及「匿名可讀、登入才可寫」的 RLS 政策）

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
| `config.js` | Supabase 連線設定、場地清單、預設更版時間、分類建議 |
| `schema.sql` | 資料表 + 索引 + RLS，於 SQL Editor 執行 |

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
