// 用 jsdom 把整頁跑起來，驗證不同 email 的側邊選單與路由結果
const fs = require("fs");
const { JSDOM } = require("jsdom");

const SRC = fs.readFileSync("C:/Users/User/release-board/index.html", "utf8");

function run({ email, pages, hash = "#/" }){
  let html = SRC.replace(/<script src="https:\/\/cdn[^>]*><\/script>/, "")
                .replace(/<script src="config\.js"><\/script>/, `<script>
window.SUPABASE_CONFIG={url:'https://demo.supabase.co',anonKey:'demo'};
window.APP_CONFIG={
  venues:['CB','MX','SIV'], defaultReleaseTime:'08:00',
  maintenance:{ venues:[{code:'CB',title:'Cebu Maintenance Schedule',history:'Cebu歷史紀錄'},
                        {code:'MX',title:'Mexico Maintenance Schedule',history:'Mexico歷史紀錄'}] },
  manuals:[{name:'荷官排班系統'},{name:'Incident Reporting System'},{name:'請假系統'}],
  links:[{name:'荷官排班系統'},{name:'Incident Reporting System'},{name:'請假系統'}]
};
const SESSION=${email ? `{user:{email:${JSON.stringify(email)}}}` : "null"};
const ACCESS=${JSON.stringify((pages || []).map(k => ({page_key:k})))};
const empty=()=>Promise.resolve({data:[],error:null});
window.supabase={createClient:function(){return{
  auth:{onAuthStateChange:function(){},signOut:function(){},
        getSession:function(){return Promise.resolve({data:{session:SESSION}});}},
  from:function(t){const rows=(t==='page_access')?ACCESS:[];return{
    select:function(){const r={order:function(){return Promise.resolve({data:rows,error:null});},
                              then:function(f){return Promise.resolve({data:rows,error:null}).then(f);}};return r;},
    insert:empty, update:function(){return{eq:empty};}, delete:function(){return{eq:empty};}
  };}
};}};
</script>`);

  const dom = new JSDOM(html, { runScripts: "dangerously", url: "https://x.test/" + hash });
  dom.window.HTMLDialogElement && (dom.window.HTMLDialogElement.prototype.showModal = function(){});
  return new Promise(res => setTimeout(() => res(dom.window.document), 120));
}

const navOf = doc => [...doc.querySelectorAll("#navSections .snav-item, #navSections .snav-sec")]
  .map(e => e.textContent.trim());

let pass = 0, total = 0;
const check = (label, cond, detail) => {
  total++; if(cond) pass++;
  console.log(`  ${cond ? "OK  " : "FAIL"} ${label}${cond ? "" : "\n        " + detail}`);
};

(async () => {
  // 1. 沒被指定 → 看得到全部
  let doc = await run({ email: "tony@united-link.com.tw", pages: [] });
  let nav = navOf(doc);
  check("沒被指定的人看得到全部 6 個系統分頁",
        nav.filter(t => /^[34]\.\d/.test(t)).length === 6, nav.join(" / "));

  // 2. 只被指定荷官排班系統 → 兩個分區各剩一項
  doc = await run({ email: "tony@united-link.com.tw",
                    pages: ["操作手冊|荷官排班系統", "系統網址|荷官排班系統"] });
  nav = navOf(doc);
  check("只被指定荷官排班系統時，只剩兩個分頁",
        nav.filter(t => /^[34]\.\d/.test(t)).length === 2, nav.join(" / "));
  check("看不到 Incident Reporting System",
        !nav.some(t => t.includes("Incident")), nav.join(" / "));
  check("首頁與 Maintenance 不受影響",
        nav.some(t => t.includes("系統更版訊息")) && nav.filter(t => /^2\.\d/.test(t)).length === 4,
        nav.join(" / "));

  // 3. 只被指定操作手冊 → 系統網址整區消失，編號不跳號
  doc = await run({ email: "tony@united-link.com.tw", pages: ["操作手冊|請假系統"] });
  nav = navOf(doc);
  check("整區沒權限時連標題一起隱藏",
        !nav.some(t => t.includes("系統網址")), nav.join(" / "));
  check("編號重排成 3.，不會跳成 4.",
        nav.some(t => t === "3.操作手冊") && nav.some(t => t.includes("3.1")), nav.join(" / "));

  // 4. 直接開沒權限的分頁網址 → 退回首頁
  doc = await run({ email: "tony@united-link.com.tw", pages: ["操作手冊|請假系統"],
                    hash: "#/d/manual/" + encodeURIComponent("荷官排班系統") });
  check("沒權限的分頁網址被擋下，退回首頁",
        !doc.getElementById("viewHome").classList.contains("hidden")
        && doc.getElementById("viewManual").classList.contains("hidden"),
        "viewHome hidden=" + doc.getElementById("viewHome").className);

  // 5. 有權限的分頁網址 → 正常開啟
  doc = await run({ email: "tony@united-link.com.tw", pages: ["操作手冊|請假系統"],
                    hash: "#/d/manual/" + encodeURIComponent("請假系統") });
  check("有權限的分頁網址正常開啟",
        !doc.getElementById("viewManual").classList.contains("hidden"),
        "viewManual className=" + doc.getElementById("viewManual").className);

  // 6. 管理者不受限
  doc = await run({ email: "ruby.hsieh@united-link.com.tw", pages: ["操作手冊|請假系統"] });
  nav = navOf(doc);
  check("管理者即使有設定也看得到全部",
        nav.filter(t => /^[34]\.\d/.test(t)).length === 6, nav.join(" / "));

  // 7. 不在名單內的帳號 → 擋在登入牆
  doc = await run({ email: "outsider@gmail.com", pages: [] });
  check("不在名單內的帳號被登入牆擋下",
        !doc.getElementById("gate").classList.contains("hidden"),
        "gate className=" + doc.getElementById("gate").className);

  console.log(`\n${pass}/${total} 通過`);
  process.exit(pass === total ? 0 : 1);
})();
