# 沫兮动漫 (MoXiDongMan-Apk)

> 「沫兮动漫」Android 客户端，基于反编译工程维护的 smali 源码仓库，支持 GitHub Actions 云端编译、签名、发布与在线更新。

- 仓库地址：https://github.com/ssmhdssmhd/MoXiDongMan-Apk
- 包名：`com.moxidx.app`
- 当前版本：**v2.4.23(134)**
- 下载地址：https://github.com/ssmhdssmhd/MoXiDongMan-Apk/releases

## 版本更新日志

### v2.4.23(134) — 顶部视觉重做 / 网络导入改版 / 校验自动清理

- **更新时间**：2026-11-23
- **APK 版本**：v2.4.23(134)
- **更新内容**：
  - 顶部去掉分层圆角与白色描边，状态栏改为实色品牌紫与工具栏渐变衔接，消除“两块紫色浮条”的观感
  - 图源管理菜单：原「网络导入（GitHub 自动）」更名「自动同步」；原「从 GitHub 同步」更名「网络导入（URL）」并直接弹出 URL 输入框，支持任意图源 JSON 直链
  - 校验图源时，判定失效的图源直接从数据库删除，不再残留失效条目
  - 更新下载完成时进度强制置为 100%
  - versionCode: 133 → 134，versionName: 2.4.22 → 2.4.23

### v2.4.22(133) — 进度回调除零彻底加固

- **更新时间**：2026-11-23
- **APK 版本**：v2.4.22(133)
- **更新内容**：
  - `VersionDialogActivity$try.do(JJZ)` 中分母判定改为「appSize>0 用 appSize，否则用 Content-Length，两者都 ≤0 直接跳过进度更新」
  - 除法指令只在分母确定为正值时执行，从结构上杜绝 `div-long` 除零
  - 进度值双向钳制（0~100），避免 `long-to-int` 溢出为负数
  - 先 `setMax(100)` 再 `setProgress()`，避免进度条绘制时 `progress*100/max` 的分母异常
  - versionCode: 132 → 133，versionName: 2.4.21 → 2.4.22

### v2.4.21(132) — 修复点击更新闪退

- **更新时间**：2026-11-23
- **APK 版本**：v2.4.21(132)
- **更新内容**：
  - 修复点击「更新」后闪退：进度回调中除以 0 抛异常（安装包大小缺失时触发）
  - 进度分母改为优先 appSize，缺失时用 Content-Length，都无效则跳过本次进度更新
  - 进度值钳制在 0~100，避免异常数值
  - 下载失败提示改为主线程安全弹出，移除后台线程 Looper.prepare/loop 写法
  - versionCode: 131 → 132，versionName: 2.4.20 → 2.4.21

### v2.4.20(131) — 侧边栏与顶部玻璃布局

- **更新时间**：2026-11-23
- **APK 版本**：v2.4.20(131)
- **更新内容**：
  - 修复侧边栏（抽屉）背景为透明、菜单文字与页面内容重叠看不清的问题
  - 侧边栏改为半透明白色玻璃面板，右侧圆角 24dp + 紫色细描边；夜间为深色玻璃 + 浅色文字
  - 顶部工具栏改为更轻盈的半透明玻璃（降低不透明度），底部 20dp 圆角与白色高光描边
  - 版本号 2.4.19(130) → 2.4.20(131)

### v2.4.19(130) — 更新下载进度卡 0% 修复

- **更新时间**：2026-11-23
- **APK 版本**：v2.4.19(130)
- **更新内容**：
  - 修复更新下载进度一直显示 0.00% 且随即报错、下载中断的问题：进度计算的分母（安装包大小）为 0，首次进度回调即除零异常
  - `appUpdate.json` 补齐 `appSize` 字段；进度计算在大小缺失时自动改用服务器 `Content-Length`
  - 对大小仍为 0 / 无法获取的情况做兜底，不再中断下载
  - `appUrl` 调整为 ghfast 镜像直链以兼容旧版本客户端，`appUrlBackup` 为 GitHub 官方直链
  - versionCode: 129 → 130
  - versionName: 2.4.18 → 2.4.19

### v2.4.18(129) — 更新下载多线路回退

- **更新时间**：2026-11-23
- **APK 版本**：v2.4.18(129)
- **更新内容**：
  - 更新下载优先使用 GitHub 官方直链，失败后自动切换到 ghfast 镜像重试（备用线路来自 `appUpdate.json` 的 `appUrlBackup`）
  - 仅当两条线路都失败时提示「更新包下载失败」并附带具体原因
  - `appUpdate.json` 新增 `appUrlBackup` 字段，后续可随时替换备用线路而无需发版
  - versionCode: 128 → 129
  - versionName: 2.4.17 → 2.4.18

### v2.4.17(128) — 更新下载「文件已存在」误报修复

- **更新时间**：2026-11-23
- **APK 版本**：v2.4.17(128)
- **更新内容**：
  - 修复更新下载失败时一律提示「文件已存在」的误导性报错，改为「更新包下载失败，请检查网络后重试」
  - 下载异常时追加具体原因（连接超时 / 域名不可达等），便于排查
  - 更新包文件名改为 `应用名-版本号.apk`，下载前自动删除同名旧包，避免覆盖与安装冲突
  - versionCode: 127 → 128
  - versionName: 2.4.16 → 2.4.17

### v2.4.16(127) — 玻璃主题对比度修复

- **更新时间**：2026-11-23
- **APK 版本**：v2.4.16(127)
- **更新内容**：
  - 修复顶部工具栏改为白色玻璃后、白色标题与图标不可见的问题，恢复品牌紫半透明玻璃（#6C5CE7 → #A29BFE）
  - 主题新增状态栏颜色（半透明品牌紫），状态栏图标不再与浅色背景同色
  - 底部导航栏改为玻璃质感背景（日间半透明白、夜间半透明深灰）
  - 页面背景渐变光晕加深，液体玻璃质感更明显
  - 深色模式工具栏改为深紫玻璃，保持白字可读
  - versionCode: 126 → 127
  - versionName: 2.4.15 → 2.4.16

### v2.4.15(126) — 图源连接失败提示修复

- **更新时间**：2026-11-23
- **APK 版本**：v2.4.15(126)
- **更新内容**：
  - 修复图源域名失效时错误页直接暴露「连接失败，请重试 + 原始 URL」的问题
  - 网络类错误统一改为可操作提示：「当前图源暂时无法访问，可能该图源域名已失效或网络异常，请点击请重试或切换其他图源」
  - 全局网络异常文案改写：连接失败 / 无效 host / 连接超时 / 网络断开均提示切换图源或检查网络
  - 解析类错误仍保留原始 URL，方便定位图源规则问题
  - versionCode: 125 → 126
  - versionName: 2.4.14 → 2.4.15

### v2.4.14(125) — 液体玻璃主题、图源红绿灯、启动自动更新

- **更新时间**：2026-11-23
- **APK 版本**：v2.4.14(125)
- **更新内容**：
  - 启动自动检测更新：进入首页即检测，发现新版本自动弹出更新弹窗；已是最新时不再弹出提示
  - 图源列表新增红绿灯状态：绿=校验可用、红=校验失效、黄=待维护/未校验，数据来自本地「校验图源」记录
  - 图源「网络导入（GitHub 自动）」连续点击 4 次，可打开自定义 URL 导入框，支持任意图源 JSON 直链
  - 全局液体玻璃主题：页面渐变玻璃背景、半透明磨砂工具栏、玻璃圆角弹窗
  - 书架（网格/列表）、历史、图源管理列表改为玻璃卡片布局，增加圆角与间距
  - versionCode: 124 → 125
  - versionName: 2.4.13 → 2.4.14

### v2.4.13(124) — 更新检测修复、图源一键网络导入

- **更新时间**：2026-11-02
- **APK 版本**：v2.4.13(124)
- **更新内容**：
  - 修复设置页版本行点击无反应：点击后立即检测更新，已是最新也会弹出提示
  - 版本信息获取改为 ghfast 实时通道优先并追加时间戳，避免 jsDelivr 缓存导致「最新版本」显示落后
  - 图源右上角「网络导入（GitHub 自动）」一键拉取 `lin686/legado-comic-sources` 合并版 104 条图源
  - 保留「从 GitHub 同步」入口，可同步本仓库内置图源
  - versionCode: 123 → 124
  - versionName: 2.4.12 → 2.4.13

### v2.4.12(123) — 启动页品牌清理

- **更新时间**：2026-11-02
- **APK 版本**：v2.4.12(123)
- **更新内容**：
  - 修复首次启动隐私弹窗仍显示「异次元APP隐私政策」「感谢您选择异次元APP」的问题，统一改为「沫兮动漫」
  - 更换启动页底层图片（`drawable-xxhdpi` 两张启动图），去除旧的异次元插画与底部「异次元」水印
  - 启动页默认底图改用新壁纸，断网/首启时也不再出现旧品牌画面
  - 联网后仍按自然日切换到当天壁纸（jsDelivr 主线路 / ghfast 备用线路）
  - versionCode: 122 → 123
  - versionName: 2.4.11 → 2.4.12

### v2.4.11(122) — 版本入口迁移、GitHub 反馈

- **更新时间**：2026-11-02
- **APK 版本**：v2.4.11(122)
- **更新内容**：
  - 侧边栏「版本」入口移至设置页「清理缓存」上方
  - 版本行直接显示当前版本与最新版本，打开设置页自动获取最新版本
  - 点击版本行即可检测更新，有新版本时弹出更新弹窗，更新包使用 ghfast 加速线路下载
  - 侧边栏「反馈」改为「GitHub 反馈」，点击打开仓库 Issues 页面
  - 反馈页面统一改为 GitHub Issues（https://github.com/ssmhdssmhd/MoXiDongMan-Apk/issues）
  - 关于页与设置页的检测更新均指向当前仓库
  - versionCode: 121 → 122
  - versionName: 2.4.10 → 2.4.11

### v2.4.10(121) — 内置实测可用图源

- **更新时间**：2026-11-02
- **APK 版本**：v2.4.10(121)
- **更新内容**：
  - 对全部 97 个图源逐一进行网络可用性测试（首页可达性 + 搜索接口验证）
  - 筛选出 26 个实测可用图源，打包进 `assets/sources.json`
  - 首次启动时自动从 APK 内置资源离线导入图源，无需联网、无需手动同步
  - 已有图源的用户不受影响：数据库非空时跳过导入，不覆盖自定义图源
  - 保留「从 GitHub 同步」与启动壁纸功能
  - versionCode: 120 → 121
  - versionName: 2.4.9 → 2.4.10

### v2.4.9(120) — 启动壁纸（仓库图源）

- **更新时间**：2026-11-02
- **APK 版本**：v2.4.9(120)
- **更新内容**：
  - 新增 8 张启动壁纸，存放于仓库 `wallpapers/` 目录
  - 启动页自动从仓库获取壁纸，按天轮换（`wallpaper.01.jpg` ~ `wallpaper.08.jpg`）
  - 主线路 jsDelivr，失败自动切换 ghfast.top 备用线路
  - 加载成功后写入应用缓存，后续启动秒开；网络不可用时保持原启动页，不阻塞启动
  - versionCode: 119 → 120
  - versionName: 2.4.8 → 2.4.9

### v2.4.8(119) — 启动报错与版本检测修复

- **更新时间**：2026-11-02
- **APK 版本**：v2.4.8(119)
- **更新内容**：
  - 修复启动时自动备份读取无权限文件（`ComicSourceByte.json`）导致的 `EACCES` 报错提示
  - 备份打包时自动跳过不可读文件，避免云端备份失败弹窗
  - 修复「关于」页点击版本号无法检测更新的问题（更新信息判空逻辑错误）
  - 图源仓库链接支持 jsDelivr / ghfast 双线路，可作为网络图源直接导入
  - versionCode: 118 → 119
  - versionName: 2.4.7 → 2.4.8

### v2.4.7(118) — 启动报错修复、实时更新、GitHub 图源同步

- **更新时间**：2026-11-02
- **APK 版本**：v2.4.7(118)
- **更新内容**：
  - 修复启动时自动备份导致的 `EACCES (Permission denied)` 报错提示（Android 11+ 未授予「所有文件访问」权限时跳过自动备份）
  - 「关于」页点击版本号即可检测更新
  - 更新检测改为 GitHub 双线路：主线路 `cdn.jsdelivr.net`，备用线路 `ghfast.top` 加速，国内/海外均可访问
  - 检测到新版本后弹出更新弹窗，支持应用内直接下载安装
  - 图源管理菜单在「校验图源」下新增「从 GitHub 同步」，一键同步仓库内置 97 个图源（jsDelivr + ghfast 双线路）
  - 新增 `appUpdate.json` 版本描述文件，版本信息实时从 GitHub 读取
  - GitHub Actions 增加 Release 自动发布，固定下载文件名 `moxi.dongman.v2.4.7.apk`
  - versionCode: 117 → 118
  - versionName: 2.4.6 → 2.4.7

### v2.4.6(117) — Logo、隐私政策、检查更新、图源文案、液态玻璃 UI

- **更新时间**：2026-11-02
- **更新内容**：
  - 更换应用 Logo（使用 MXLOGO 仓库图标）
  - 隐私政策去除「异次元」相关字样
  - 「关于」页面改为版本与更新入口
  - 隐藏原页面 QQ 群 / 微信公众号 / 友链等推广内容
  - 「暂无图源」等文案统一简化
  - 全局 UI 液态玻璃（毛玻璃）美化
  - versionCode: 116 → 117

### v2.4.5(116) — 包名修改

- **更新时间**：2026-11-02
- **更新内容**：
  - 包名由 `com.wsw.cospa` 修改为 `com.moxidx.app`
  - FileProvider authorities 同步修改
  - 类名保持不变，确保组件正常加载
  - versionCode: 115 → 116

### v2.4.4(115) — 沫兮动漫

- **更新时间**：2026-11-02
- **更新内容**：
  - 应用名称由「异次元」修改为「沫兮动漫」
  - 新增 GitHub Actions 自动打包签名工作流
  - 配置固定签名密钥，避免签名冲突
  - versionCode: 114 → 115

### v2.4.3(114)

- **更新时间**：2026-11-02
- **更新内容**：
  - 初始反编译工程（Apktool v2.11.1 + Jadx v1.5.2）并上传仓库

## 项目结构

```
MoXiDongMan-Apk/
├── AndroidManifest.xml      # 应用清单
├── apktool.yml              # Apktool 配置（版本号等）
├── appUpdate.json           # 在线更新描述文件（客户端实时读取）
├── smali/                   # classes.dex smali
├── smali_classes2/          # classes2.dex smali
├── smali_classes3/          # classes3.dex smali
├── smali_classes4/          # classes4.dex smali
├── res/                     # 资源文件（布局/图片/字符串等）
├── assets/                  # 资产文件（含内置图源 sources.json）
├── lib/                     # Native 库（.so）
├── original/                # 原始清单与签名信息（仅参考）
├── sources/
│   └── all_sources.json     # 全部图源（97 个），供「从 GitHub 同步」使用
├── wallpapers/              # 启动壁纸（8 张，CDN 远程加载）
└── .github/workflows/
    └── build.yml            # Apktool 打包 + 签名 + Release 发布
```

## 应用信息

| 项目 | 内容 |
|------|------|
| 应用名称 | 沫兮动漫 |
| 包名 | com.moxidx.app |
| 版本号 | v2.4.23(134) |
| 最低版本 | Android 4.4 (API 19) |
| 目标版本 | Android 11 (API 30) |
| 用户界面语言 | 简体中文 |

## 在线更新机制

客户端「关于」页点击版本号，或进入「设置」页点击「清理缓存」上方的版本行时：

1. 读取 `appUpdate.json`（主线路 jsDelivr，失败自动切换 ghfast.top 备用线路）；
2. 比较 `appVersionCode` 与本地版本；
3. 有新版本时打开更新弹窗，显示版本号、更新内容与下载按钮；
4. 下载地址使用 `ghfast.top` 加速的 GitHub Release 链接，国内/海外均可下载；
5. 无新版本时提示「已是最新版本」。

设置页版本行会实时展示「当前 vX · 最新 vY（可更新 / 已是最新）」，打开页面即自动从双线路获取最新版本信息。

> jsDelivr 对 `@main` 分支有缓存，工作流在每次推送后会调用 `purge.jsdelivr.net` 刷新 `appUpdate.json`，确保客户端立即读取到最新版本信息。

维护新版本时，只需同步修改以下位置：

- `apktool.yml` 的 `versionCode` / `versionName`
- `appUpdate.json` 的 `appVersionCode` / `appVersionName` / `appChangeLog` / `appUrl`
- `.github/workflows/build.yml` 中的版本号、APK 文件名与 Release tag

## 启动壁纸

启动页（`SplashActivity`）会在进入主界面前从仓库拉取当天的壁纸：

| 线路 | 链接 |
|------|------|
| jsDelivr（主线路） | `https://cdn.jsdelivr.net/gh/ssmhdssmhd/MoXiDongMan-Apk@main/wallpapers/wallpaper.0N.jpg` |
| ghfast 加速（备用） | `https://ghfast.top/https://raw.githubusercontent.com/ssmhdssmhd/MoXiDongMan-Apk/main/wallpapers/wallpaper.0N.jpg` |

- `N` 为 1~8，按自然日轮换（`wallpaper.01.jpg` ~ `wallpaper.08.jpg`）
- 加载成功后写入 `cacheDir/splash.w.NN.jpg`，后续启动直接读缓存
- 最长等待 2 秒；网络不可用或超时则保持原启动页，不阻塞进入主界面

## 内置图源（离线可用）

APK 内置 `assets/sources.json`，包含 26 个经实测可用的漫画图源：

- **导入时机**：应用首次启动时，后台线程读取内置图源并写入本地数据库
- **导入条件**：数据库为空时才导入；已有图源的用户不会重复导入，也不会覆盖自定义图源
- **完全离线**：不依赖网络与 GitHub，安装后即可直接搜索漫画
- **幂等标记**：导入成功后写入 `BUILTIN_SOURCES/imported` 标记，后续启动不再重复执行
- **测试范围**：97 个源逐一验证首页可达性、响应内容与搜索接口，剔除 502/SSL 失败、Cloudflare 拦截、跳转到无关页面及搜索失效的源

内置源清单（26 个）：

| 图源 | 地址 |
|------|------|
| GMANHUA | http://www.gmanhua.com |
| MangaHasu | http://mangahasu.se |
| naver | https://m.comic.naver.com/index.nhn |
| ◯ YYDS | http://www.yydsmh.com |
| ◯ 包子漫画 | https://cn.bzmanga.com |
| 仙漫网 / 仙漫网-M | https://www.gaonaojin.com / https://m.gaonaojin.com |
| 动漫啦 | http://www.dongman.la |
| 动漫星空 | http://acg.gamersky.com/manhua |
| 包子漫画cw | https://cn.webmota.com |
| 咚漫-M | https://m.dongmanmanhua.cn |
| 奇漫屋₁ | http://m.qmanwu2.com |
| 崩坏3漫画 | https://comic.bh3.com |
| 极速漫画 | http://www.1kkk.com |
| 波洞 | https://ymcdnyfqdapp.ikmmh.com |
| 漫客栈w | https://www.mkzhan.com |
| 漫本 | http://www.manben.com |
| 看漫画-M | https://m.kanman.com |
| 知音漫客-M | https://m.zymk.cn |
| 聚合漫画屋 | https://www.52hah.com |
| 腾讯漫画 | https://m.ac.qq.com |
| 风之动漫 | https://manhua.fffdm.com |
| 动漫屋 | https://m.dm5.com |
| 漫画人 | http://www.manhuaren.com |
| 漫画柜 | https://www.manhuagui.com |
| 漫畫狗 | https://dogemanga.com |

> 站点可用性会随时间变化，内置清单按本次测试结果筛选；如需更多图源，仍可通过「从 GitHub 同步」导入全部 97 个源。

## 图源同步

图源管理页菜单「校验图源」下方新增「从 GitHub 同步」：

- 主线路：`https://cdn.jsdelivr.net/gh/ssmhdssmhd/MoXiDongMan-Apk@main/sources/all_sources.json`
- 备用线路：`https://ghfast.top/https://raw.githubusercontent.com/ssmhdssmhd/MoXiDongMan-Apk/main/sources/all_sources.json`

同步内容为 `sources/all_sources.json`（97 个图源），导入过程中会自动去重并刷新图源列表。

### 网络图源链接

`sources/all_sources.json` 为标准 JSON 数组，可直接作为「网络图源」链接导入：

| 线路 | 链接 |
|------|------|
| jsDelivr（国内可访问） | `https://cdn.jsdelivr.net/gh/ssmhdssmhd/MoXiDongMan-Apk@main/sources/all_sources.json` |
| ghfast 加速 | `https://ghfast.top/https://raw.githubusercontent.com/ssmhdssmhd/MoXiDongMan-Apk/main/sources/all_sources.json` |
| GitHub Raw（海外） | `https://raw.githubusercontent.com/ssmhdssmhd/MoXiDongMan-Apk/main/sources/all_sources.json` |

> 国内网络优先使用 jsDelivr 或 ghfast 线路，GitHub 直链在海外网络可正常访问。

## 编译打包

### 方式一：GitHub Actions 云端编译（推荐）

推送代码到 `main` 分支后，工作流自动执行：

1. Apktool 打包（smali → dex → apk）
2. zipalign 对齐
3. apksigner 签名（使用仓库 Secrets 中的固定签名密钥）
4. 上传构建产物 Artifact
5. 创建/更新 GitHub Release，发布 `moxi.dongman.v2.4.23.apk`

产物文件名格式：`沫兮动漫.v2.4.23_YYYYMMDDHHMM.apk`

签名相关 Secrets：

| Secret | 说明 |
|--------|------|
| `KEYSTORE_BASE64` | 签名密钥库的 Base64 |
| `KEYSTORE_PASSWORD` | 密钥库密码 |
| `KEY_ALIAS` | 密钥别名 |
| `KEY_PASSWORD` | 密钥密码 |

也可在仓库 Actions 页面手动触发 `Build APK` 工作流。

### 方式二：本地打包

```bash
# 使用 apktool 重新打包
apktool b . -o moxi-dongman.apk

# 对齐与签名
zipalign -f 4 moxi-dongman.apk moxi-aligned.apk
apksigner sign --ks moxi.keystore --ks-key-alias moxi --out 沫兮动漫.apk moxi-aligned.apk
```

## 说明

- 本仓库为反编译维护工程，**非原始源代码**，仅保留可直接重打包的 smali 与资源。
- 请勿将签名密钥、访问令牌等敏感信息提交到仓库。
- 本仓库仅供学习研究使用，请支持正版。
