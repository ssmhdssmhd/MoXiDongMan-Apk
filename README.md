# 沫兮动漫 (MoxiDongman) - 反编译源码

> 本仓库为「异次元 v2.4.3(114)」APK 的反编译产物，已更名为「沫兮动漫」，包含 smali 字节码与 jadx 还原的 Java 源码，支持 GitHub Actions 云端编译打包。

## 版本更新日志

### v2.4.4(115) — 沫兮动漫

- **更新时间**：2026-11-02
- **APK 版本**：v2.4.4(115)
- **包名**：`com.wsw.cospa`
- **应用名**：沫兮动漫（原"异次元"）
- **编译方式**：GitHub Actions 云端编译（Apktool + apksigner）
- **更新内容**：
  - 应用名称由"异次元"修改为"沫兮动漫"
  - versionCode: 114 → 115
  - versionName: 2.4.3 → 2.4.4
  - 新增 GitHub Actions 自动打包签名工作流
  - 配置固定签名密钥，避免签名冲突

### v2.4.3(114)

- **更新时间**：2026-11-02
- **APK 版本**：v2.4.3(114)
- **包名**：`com.wsw.cospa`
- **反编译工具**：
  - Apktool v2.11.1（smali / 资源 / Manifest）
  - Jadx v1.5.2（Java 源码还原）
- **初始提交**：完成 APK 反编译并上传仓库

## 项目结构

```
Yiciyuan-Apk/
├── AndroidManifest.xml      # 应用清单文件
├── apktool.yml              # Apktool 配置（版本号等）
├── java/                    # Jadx 还原的 Java 源码（应用 + 第三方库）
│   └── com/wsw/cospa/       # 应用自身核心代码（activity/presenter/model/utils 等）
├── smali/                   # classes.dex 的 smali 字节码
├── smali_classes2/          # classes2.dex 的 smali
├── smali_classes3/          # classes3.dex 的 smali
├── smali_classes4/          # classes4.dex 的 smali
├── res/                     # 资源文件（布局/图片/字符串等）
├── assets/                  # 资产文件
├── lib/                     # Native 库（.so）
├── original/                # 原始签名与 META-INF
├── unknown/                 # 未知文件
└── .github/workflows/       # GitHub Actions 云端编译工作流
    └── build.yml            # apktool 打包 + apksigner 签名
```

## 应用信息

| 项目 | 内容 |
|------|------|
| 应用名称 | 沫兮动漫 |
| 包名 | com.wsw.cospa |
| 版本号 | v2.4.4(115) |
| 反编译 Java 文件数 | 10870 |
| smali 文件数 | 23450 |

## 核心代码包结构

```
com.wsw.cospa
├── activity/        # Activity 页面
├── fragment/        # Fragment 页面
├── presenter/       # MVP Presenter
├── model/           # 数据模型
├── contract/        # 契约接口
├── utils/           # 工具类
│   ├── analyzeUrl/  # 链接解析（含 dmzj protobuf）
│   ├── download/    # 下载管理
│   ├── cronetUtils/ # Cronet 网络库封装
│   └── notchtools/  # 刘海屏适配
├── web/             # WebView 相关
├── service/         # 后台服务
├── dao/             # 数据访问
├── event/           # 事件总线
├── base/            # 基础类
└── listener/        # 监听器
```

## 说明

- 本仓库内容为反编译产物，**非原始源代码**，Java 代码由 Jadx 自动还原，部分混淆代码可能无法完全还原。
- `java/` 目录包含应用自身代码及所有依赖的第三方库（androidx、okhttp3、retrofit2、umeng 等）。
- `smali/` 目录为可直接用于重打包的字节码。
- 资源文件 `res/` 已由 Apktool 解码为可读格式。

## 编译打包

### 方式一：GitHub Actions 云端编译（推荐）

推送代码到 `main` 分支后，GitHub Actions 会自动执行：
1. Apktool 打包（smali → dex → apk）
2. zipalign 对齐
3. apksigner 签名（使用仓库 Secrets 中配置的固定签名密钥）

构建产物在 Actions 页面的 Artifacts 中下载，文件名格式：`沫兮动漫.v2.4.4_YYYYMMDDHHMM.apk`

也可在仓库 Actions 页面手动触发 `Build APK` 工作流。

### 方式二：本地打包

```bash
# 使用 apktool 重新打包
apktool b . -o moxi-dongman.apk

# 签名（需要签名密钥）
zipalign -f 4 moxi-dongman.apk moxi-aligned.apk
apksigner sign --ks moxi.keystore --ks-key-alias moxi --out 沫兮动漫.apk moxi-aligned.apk
```

---

*本仓库仅供学习研究使用。*
