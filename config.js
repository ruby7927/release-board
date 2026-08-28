// ============================================================
// 每週更版公告板 — 設定檔
// ============================================================

// Supabase 連線設定
// Supabase Dashboard → Project Settings → API，複製以下兩個值貼上
window.SUPABASE_CONFIG = {
  url:     "https://ptbloqmtpmsipwcrrfdc.supabase.co",
  anonKey: "sb_publishable_B5XvdLkM4k5Ihjcu89rZ9g_GHh9X_Lh"   // publishable (anon) key，可公開
};

window.APP_CONFIG = {
  // 場地代碼（表單複選、篩選下拉都吃這份清單）
  venues: ["CB", "MX", "SIV"],

  // 上正式系統時間的預設值
  defaultReleaseTime: "08:00",

  // 系統分類建議清單；表單仍可自行輸入新的分類
  categoryHints: ["荷官排班系統", "請假系統", "採購系統", "Incident Reporting System"],

  // ---- 側邊分頁 1. Maintenance Schedule（首頁）----
  maintenance: {
    // 每個場地會產生兩個分頁：排程與歷史紀錄。
    // 順序就是選單順序，第一個是打開網站的預設頁。
    venues: [
      { code: "CB", title: "Cebu Maintenance Schedule",   history: "Cebu Maintenance History" },
      { code: "MX", title: "Mexico Maintenance Schedule", history: "Mexico Maintenance History" },
      { code: "SIV", title: "Siv Maintenance Schedule",   history: "Siv Maintenance History" }
    ],

    // 每週維護視窗的預設時段（建立新的一週時帶入）
    defaultStart: "07:30",
    defaultEnd:   "09:00",

    // 填寫維護項目時，「執行時間」的開始時間會自動帶入該週維護時段的開始時間。
    // 這個值只在那一週沒有記錄時段時才用得到（早期幾週就沒有）。
    // 結束時間一律不預設——維護做完才知道，留空讓 Owner 事後補。
    defaultTaskStart: "08:00",

    // 建立某場地的第一週時，用這份清單開場。
    // 之後每週都會自動沿用該場地上一週的系統與 Owner，不會再用到這份。
    defaultRows: {
      CB: [
        { system: "Cebu Studio(IT)",  owner: "Zet"     },
        { system: "Cebu Studio(OP)",  owner: "Emanuel" },
        { system: "Streaming",        owner: "Bernard" },
        { system: "LCS",              owner: "Tony"    },
        { system: "辨識系統五合一",     owner: "Rossi"   },
        { system: "DS System",        owner: "Fanny"   },
        { system: "Proxy server",     owner: "Fanny"   },
        { system: "賭具更換",          owner: "Michelle" },
        { system: "翻譯系統",          owner: "Gary"    }
      ],
      // Mexico 已匯入歷史資料，之後都會沿用上一週，用不到這份預設清單。
      // 未來新增其他場地時，照 CB 的格式在這裡補一份即可。
      MX: [],
      // Siv 還沒有任何資料，建立第一週時會是空的表格，自行按「＋ 新增項目」加。
      // 若想一開始就帶出固定的系統清單，照 CB 的格式在這裡列出來即可。
      SIV: []
    },

    // 共用編輯密碼：填了字串就會要求輸入才能填寫，留 null 代表不設限。
    // 注意這只是擋一下誤觸，不是真的資安防護（前端程式碼是公開的）。
    // 真的要管控請改用「登入才能填寫」，做法見 schema_maintenance.sql 最後一段。
    editPasscode: null
  },

  // ---- 側邊分頁 3. 操作手冊 ----
  // 每一筆會變成一個分頁；url 是該系統的 Google 雲端資料夾（可留空）
  // 分享設定記得設為「知道連結的任何人」，現場才開得起來
  manuals: [
    { name: "荷官排班系統",              url: "https://drive.google.com/drive/folders/1UAStUu8eOVIhpdZVxWVBhAz7qwbO-m1J?usp=sharing" },
    { name: "Incident Reporting System", url: "https://drive.google.com/drive/folders/1nH5zuOBlMbiBGJzKmWs_AdNDzaT00IGL?usp=sharing" },
    { name: "請假系統",                  url: "https://drive.google.com/drive/folders/1PMcD-UastGpJHLeyLjMS9rCzRPhdgDY8?usp=sharing" },
     { name: "MX薪資系統",                  url: "https://drive.google.com/drive/folders/1c58lK51uwVyocEfu3mYfOJr_1pndT_V0?usp=sharing" }
  ],

  // ---- 側邊分頁 4. 系統網址 ----
  // 每個系統一個分頁，登入後可自行新增「網址名稱 + 場地 + 網址」
  links: [
    { name: "荷官排班系統" },
    { name: "Incident Reporting System" },
    { name: "請假系統" },
    { name: "MX薪資系統" }
  ]
};
