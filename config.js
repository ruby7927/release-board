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

  // 操作手冊：各系統的 Google 雲端資料夾連結，顯示在清單上方
  // 新增或修改直接改這裡即可；url 留空會顯示「連結待補」且不可點
  // 分享設定記得設為「知道連結的任何人」，現場才開得起來
  manuals: [
    { name: "荷官排班系統",              url: "https://drive.google.com/drive/folders/1UAStUu8eOVIhpdZVxWVBhAz7qwbO-m1J?usp=sharing" },
    { name: "Incident Reporting System", url: "https://drive.google.com/drive/folders/1nH5zuOBlMbiBGJzKmWs_AdNDzaT00IGL?usp=sharing" },
    { name: "請假系統",                  url: "https://drive.google.com/drive/folders/1PMcD-UastGpJHLeyLjMS9rCzRPhdgDY8?usp=sharing" }
  ]
};
