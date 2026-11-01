# 异次元 (Yiciyuan) - 反编译源码

> 本仓库为「异次元 v2.4.3(114)」APK 的反编译产物，包含 smali 字节码与 jadx 还原的 Java 源码。

## 版本更新日志

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
├── apktool.yml              # Apktool 配置
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
└── unknown/                 # 未知文件
```

## 应用信息

| 项目 | 内容 |
|------|------|
| 应用名称 | 异次元 |
| 包名 | com.wsw.cospa |
| 版本号 | v2.4.3(114) |
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

## 重新打包（参考）

```bash
# 使用 apktool 重新打包
apktool b . -o yiciyuan_rebuilt.apk
```

---

*本仓库仅供学习研究使用。*
