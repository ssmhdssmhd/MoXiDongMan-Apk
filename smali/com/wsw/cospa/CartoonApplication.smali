.class public Lcom/wsw/cospa/CartoonApplication;
.super Landroid/app/Application;
.source "SourceFile"


# static fields
.field public static final break:I = 0x2

.field private static case:Lcom/wsw/cospa/CartoonApplication; = null

.field public static final catch:I = 0x1

.field public static final class:I = 0x3

.field public static final else:I = 0x1

.field public static final goto:I = 0x2

.field private static final new:Ljava/lang/String; = "CartoonApplication"

.field public static final this:Ljava/lang/String; = "shelf_mode_key"

.field private static try:Landroid/content/Context;


# instance fields
.field private do:Landroid/content/SharedPreferences;

.field private for:Lcom/wsw/cospa/utils/DocumentFile;

.field private if:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static do()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/CartoonApplication;->try:Landroid/content/Context;

    return-object v0
.end method

.method public static for()Landroid/content/SharedPreferences;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->try()Lcom/wsw/cospa/CartoonApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/wsw/cospa/CartoonApplication;->if:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static goto()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static try()Lcom/wsw/cospa/CartoonApplication;
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/CartoonApplication;->case:Lcom/wsw/cospa/CartoonApplication;

    return-object v0
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 2
    invoke-static {p0}, Landroidx/multidex/MultiDex;->install(Landroid/content/Context;)V

    return-void
.end method

.method public case()V
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "CUSTOM_DOWNLOAD_PATH_KEY"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->try(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-object v0, Landroid/support/v4/wq;->native:Ljava/lang/String;

    .line 4
    :cond_0
    invoke-static {p0, v0}, Lcom/wsw/cospa/model/super;->class(Landroid/content/Context;Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/CartoonApplication;->for:Lcom/wsw/cospa/utils/DocumentFile;

    return-void
.end method

.method public else()Z
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "nightTheme"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public if()Landroid/content/SharedPreferences;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/CartoonApplication;->do:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public new()Lcom/wsw/cospa/utils/DocumentFile;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/CartoonApplication;->for:Lcom/wsw/cospa/utils/DocumentFile;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/CartoonApplication;->case()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/CartoonApplication;->for:Lcom/wsw/cospa/utils/DocumentFile;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 2
    sput-object p0, Lcom/wsw/cospa/CartoonApplication;->case:Lcom/wsw/cospa/CartoonApplication;

    .line 3
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/wsw/cospa/CartoonApplication;->try:Landroid/content/Context;

    .line 4
    new-instance v0, Lcom/wsw/cospa/do;

    invoke-direct {v0}, Lcom/wsw/cospa/do;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const-string v0, "5f816b5194846f78a96ee7fe"

    const-string v1, "Umeng"

    .line 5
    invoke-static {p0, v0, v1}, Lcom/umeng/commonsdk/UMConfigure;->preInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object v0, Lcom/umeng/analytics/MobclickAgent$PageMode;->AUTO:Lcom/umeng/analytics/MobclickAgent$PageMode;

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->setPageCollectionMode(Lcom/umeng/analytics/MobclickAgent$PageMode;)V

    const/4 v0, 0x1

    .line 7
    invoke-static {v0}, Lcom/umeng/commonsdk/UMConfigure;->setProcessEvent(Z)V

    .line 8
    sget-object v1, Lcom/wsw/cospa/CartoonApplication;->try:Landroid/content/Context;

    new-instance v2, Lcom/wsw/cospa/CartoonApplication$do;

    invoke-direct {v2, p0}, Lcom/wsw/cospa/CartoonApplication$do;-><init>(Lcom/wsw/cospa/CartoonApplication;)V

    invoke-static {v1, v2}, Lcom/umeng/commonsdk/UMConfigure;->getOaid(Landroid/content/Context;Lcom/umeng/commonsdk/listener/OnGetOaidListener;)V

    .line 9
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/wsw/cospa/dao/new;->else(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/wsw/cospa/utils/BuiltinSources;->do(Landroid/content/Context;)V

    const-string v1, "CONFIG"

    const/4 v2, 0x0

    .line 10
    invoke-virtual {p0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/CartoonApplication;->do:Landroid/content/SharedPreferences;

    const-string v1, "COOKIE"

    .line 11
    invoke-virtual {p0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/CartoonApplication;->if:Landroid/content/SharedPreferences;

    .line 12
    invoke-static {}, Landroid/support/v4/js;->case()Landroid/support/v4/js;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/support/v4/js;->goto(Landroid/content/Context;)V

    .line 13
    invoke-static {}, Lio/reactivex/internal/functions/do;->goto()Lio/reactivex/functions/Consumer;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/jp1;->x(Lio/reactivex/functions/Consumer;)V

    .line 14
    invoke-static {}, Landroid/support/v4/wi0;->do()V

    .line 15
    invoke-static {p0}, Lcom/wsw/cospa/utils/throw;->do(Landroid/app/Application;)V

    .line 16
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v1

    const-string v3, "systemMode"

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    .line 17
    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->goto()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    invoke-static {v2}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    goto :goto_0

    .line 19
    :cond_0
    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/wsw/cospa/CartoonApplication;->else()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 21
    invoke-static {v2}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    goto :goto_0

    .line 22
    :cond_2
    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    :goto_0
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 2
    invoke-static {p0}, Landroid/support/v4/jh0;->do(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->for()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    .line 2
    invoke-static {p0}, Landroid/support/v4/jh0;->do(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/Glide;->onTrimMemory(I)V

    return-void
.end method
