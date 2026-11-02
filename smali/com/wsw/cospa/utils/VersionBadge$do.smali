.class public Lcom/wsw/cospa/utils/VersionBadge$do;
.super Ljava/lang/Object;
.source "VersionBadge.java"

.implements Ljava/lang/Runnable;


# instance fields
.field private do:Landroid/widget/TextView;

.field private if:Ljava/lang/String;

.field private try:I

.field private case:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/utils/VersionBadge$do;->case:Landroid/content/Context;

    iput-object p2, p0, Lcom/wsw/cospa/utils/VersionBadge$do;->do:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/wsw/cospa/utils/VersionBadge$do;->if:Ljava/lang/String;

    iput p4, p0, Lcom/wsw/cospa/utils/VersionBadge$do;->try:I

    return-void
.end method

.method private static fetch(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v1, 0x1f40

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Mobile Safari/537.36"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/util/Scanner;

    invoke-direct {v2, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v3, "\\A"

    invoke-virtual {v2, v3}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    invoke-virtual {v2}, Ljava/util/Scanner;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v3, ""

    :goto_0
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "https://ghfast.top/https://raw.githubusercontent.com/ssmhdssmhd/MoXiDongMan-Apk/main/appUpdate.json"

    invoke-static {v0}, Lcom/wsw/cospa/utils/else;->throws(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wsw/cospa/utils/VersionBadge$do;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "https://cdn.jsdelivr.net/gh/ssmhdssmhd/MoXiDongMan-Apk@main/appUpdate.json"

    invoke-static {v1}, Lcom/wsw/cospa/utils/else;->throws(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wsw/cospa/utils/VersionBadge$do;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/wsw/cospa/bean/AppUpdateInfo;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/AppUpdateInfo;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    :goto_0
    const-string v2, "--"

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/AppUpdateInfo;->getAppVersionName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, "--"

    :cond_2
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/AppUpdateInfo;->getAppVersionCode()I

    move-result v3

    :cond_3
    const/4 v4, 0x0

    iget v5, p0, Lcom/wsw/cospa/utils/VersionBadge$do;->try:I

    if-le v3, v5, :cond_4

    const/4 v4, 0x1

    :cond_4
    new-instance v3, Lcom/wsw/cospa/utils/VersionBadge$if;

    iget-object v5, p0, Lcom/wsw/cospa/utils/VersionBadge$do;->do:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/wsw/cospa/utils/VersionBadge$do;->if:Ljava/lang/String;

    invoke-direct {v3, v5, v6, v2, v4}, Lcom/wsw/cospa/utils/VersionBadge$if;-><init>(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
