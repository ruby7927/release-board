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
  categoryHints: ["荷官排班系統", "請假系統", "採購系統", "Incident Reporting System"]
};
