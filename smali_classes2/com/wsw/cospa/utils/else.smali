.class public Lcom/wsw/cospa/utils/else;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static break(Lcom/wsw/cospa/activity/HomeActivity;)V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/wsw/cospa/utils/DialogTool$new;

    const-string v1, "Android 11\u6587\u4ef6\u6743\u9650\u63d0\u793a"

    const/4 v2, 0x0

    const-string v3, "\u56e0Android 11\u91c7\u7528\u6c99\u76d2\u5b58\u50a8\u6a21\u5f0f\uff0c\u5f02\u6b21\u5143\u9700\u8981\u83b7\u53d6\u6587\u4ef6\u5b58\u50a8\u6743\u9650\u624d\u80fd\u4e0b\u8f7d\u548c\u5907\u4efd\u6f2b\u753b\u4ee5\u53ca\uff0c\u8bf7\u6388\u4e88\u5b58\u50a8\u6743\u9650\uff0c\u4ee5\u514d\u51fa\u73b0\u65e0\u6cd5\u5907\u4efd\u548c\u4e0b\u8f7d\u7684\u95ee\u9898"

    invoke-direct {v0, v1, v2, v3}, Lcom/wsw/cospa/utils/DialogTool$new;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/wsw/cospa/utils/DialogTool$try;

    const-string v3, "\u6388\u4e88\u6743\u9650"

    invoke-direct {v1, v3, v2}, Lcom/wsw/cospa/utils/DialogTool$try;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v2, Lcom/wsw/cospa/utils/else$for;

    invoke-direct {v2, p0}, Lcom/wsw/cospa/utils/else$for;-><init>(Lcom/wsw/cospa/activity/HomeActivity;)V

    invoke-static {p0, v0, v1, v2}, Lcom/wsw/cospa/utils/DialogTool;->o(Landroid/app/Activity;Lcom/wsw/cospa/utils/DialogTool$new;Lcom/wsw/cospa/utils/DialogTool$try;Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;)V

    :cond_0
    return-void
.end method

.method private static synthetic case(ZLretrofit2/Response;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "empty body"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-static {p1, p0}, Lcom/wsw/cospa/utils/else;->this(Ljava/lang/String;Z)Lio/reactivex/new;

    move-result-object p0

    return-object p0
.end method

.method public static catch(Lcom/wsw/cospa/activity/HomeActivity;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/wsw/cospa/utils/DialogTool$new;

    const v1, 0x7f110022

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u8f6f\u4ef6\u63d0\u793a"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/wsw/cospa/utils/DialogTool$new;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v1, Lcom/wsw/cospa/utils/DialogTool$try;

    const-string v2, "\u786e\u8ba4"

    invoke-direct {v1, v2, v3}, Lcom/wsw/cospa/utils/DialogTool$try;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v2, Lcom/wsw/cospa/utils/else$do;

    invoke-direct {v2, p0}, Lcom/wsw/cospa/utils/else$do;-><init>(Lcom/wsw/cospa/activity/HomeActivity;)V

    invoke-static {p0, v0, v1, v2}, Lcom/wsw/cospa/utils/DialogTool;->o(Landroid/app/Activity;Lcom/wsw/cospa/utils/DialogTool$new;Lcom/wsw/cospa/utils/DialogTool$try;Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;)V

    return-void
.end method

.method public static class(Lcom/wsw/cospa/activity/HomeActivity;)V
    .locals 5

    .line 1
    invoke-static {p0}, Landroid/support/v4/z72;->do(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v1

    const-string v2, "version_version_key"

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/v02;->try(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v2

    const-string v3, "version_dialog_key"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/wsw/cospa/utils/else;->break(Lcom/wsw/cospa/activity/HomeActivity;)V

    goto :goto_1

    :cond_1
    :goto_0
    const v1, 0x7f110110

    .line 6
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/support/v4/w2;->for(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 7
    new-instance v2, Lcom/wsw/cospa/utils/DialogTool$new;

    const v3, 0x7f11010f

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u7248\u672c\u63d0\u793a"

    invoke-direct {v2, v4, v1, v3}, Lcom/wsw/cospa/utils/DialogTool$new;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v1, Lcom/wsw/cospa/utils/DialogTool$try;

    const/4 v3, 0x0

    const-string v4, "\u786e\u8ba4"

    invoke-direct {v1, v4, v3}, Lcom/wsw/cospa/utils/DialogTool$try;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v3, Lcom/wsw/cospa/utils/else$if;

    invoke-direct {v3, p0, v0}, Lcom/wsw/cospa/utils/else$if;-><init>(Lcom/wsw/cospa/activity/HomeActivity;Ljava/lang/String;)V

    invoke-static {p0, v2, v1, v3}, Lcom/wsw/cospa/utils/DialogTool;->o(Landroid/app/Activity;Lcom/wsw/cospa/utils/DialogTool$new;Lcom/wsw/cospa/utils/DialogTool$try;Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;)V

    :goto_1
    return-void
.end method

.method public static synthetic do(Ljava/lang/String;ZLio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/wsw/cospa/utils/else;->goto(Ljava/lang/String;ZLio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method private static synthetic else(Landroid/content/Context;ZLcom/wsw/cospa/bean/AppUpdateInfo;)V
    .locals 4

    if-eqz p2, :cond_3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/AppUpdateInfo;->getAppVersionCode()I

    move-result v1

    if-le v1, v0, :cond_1

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/wsw/cospa/activity/VersionDialogActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, ""

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    if-nez p1, :cond_3

    .line 3
    const-string v0, "\u5df2\u662f\u6700\u65b0\u7248\u672c"

    invoke-static {v0}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static synthetic for(ZLretrofit2/Response;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/wsw/cospa/utils/else;->case(ZLretrofit2/Response;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic goto(Ljava/lang/String;ZLio/reactivex/ObservableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/wsw/cospa/bean/AppUpdateInfo;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/bean/AppUpdateInfo;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p2, p0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-static {}, Landroid/os/Looper;->prepare()V

    const-string p0, "\u5f53\u524d\u5df2\u662f\u6700\u65b0\u7248\u672c\uff01"

    .line 4
    invoke-static {p0}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 6
    :cond_1
    :goto_0
    invoke-interface {p2}, Lio/reactivex/Emitter;->onComplete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 7
    invoke-interface {p2, p0}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    .line 8
    invoke-interface {p2}, Lio/reactivex/Emitter;->onComplete()V

    :goto_1
    return-void
.end method

.method public static synthetic if(Landroid/content/Context;ZLcom/wsw/cospa/bean/AppUpdateInfo;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/wsw/cospa/utils/else;->else(Landroid/content/Context;ZLcom/wsw/cospa/bean/AppUpdateInfo;)V

    return-void
.end method

.method public static new(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/support/v4/z2;->import(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static this(Ljava/lang/String;Z)Lio/reactivex/new;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lio/reactivex/new<",
            "Lcom/wsw/cospa/bean/AppUpdateInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/l6;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/l6;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p0

    return-object p0
.end method

.method public static try(Landroid/content/Context;Z)V
    .locals 3

    .line 1
    const-string v0, "https://cdn.jsdelivr.net/gh/ssmhdssmhd/MoXiDongMan-Apk@main/appUpdate.json"

    invoke-static {v0}, Lcom/wsw/cospa/utils/else;->for(Ljava/lang/String;)Lio/reactivex/new;

    move-result-object v0

    const-string v1, "https://ghfast.top/https://raw.githubusercontent.com/ssmhdssmhd/MoXiDongMan-Apk/main/appUpdate.json"

    .line 2
    invoke-static {v1}, Lcom/wsw/cospa/utils/else;->for(Ljava/lang/String;)Lio/reactivex/new;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/new;->onErrorResumeNext(Lio/reactivex/ObservableSource;)Lio/reactivex/new;

    move-result-object v0

    new-instance v1, Landroid/support/v4/n6;

    invoke-direct {v1, p1}, Landroid/support/v4/n6;-><init>(Z)V

    .line 3
    invoke-virtual {v0, v1}, Lio/reactivex/new;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/new;

    move-result-object v0

    sget-object v1, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 4
    invoke-virtual {v0, v1}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object v0

    new-instance v1, Landroid/support/v4/m6;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/m6;-><init>(Landroid/content/Context;Z)V

    new-instance v2, Lcom/wsw/cospa/utils/else$new;

    invoke-direct {v2, p1}, Lcom/wsw/cospa/utils/else$new;-><init>(Z)V

    .line 5
    invoke-virtual {v0, v1, v2}, Lio/reactivex/new;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private static for(Ljava/lang/String;)Lio/reactivex/new;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/new<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/wsw/cospa/model/impl/if;->break()Lcom/wsw/cospa/model/impl/if;

    move-result-object v0

    const-string v1, "https://cdn.jsdelivr.net/"

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/model/impl/if;->class(Ljava/lang/String;)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/wsw/cospa/utils/analyzeUrl/impl/IHttpGetApi;

    .line 2
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/utils/analyzeUrl/impl/IHttpGetApi;

    const/4 v1, 0x0

    .line 3
    invoke-static {v1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeHeaders;->getMap(Lcom/wsw/cospa/bean/ComicSourceBean;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/impl/IHttpGetApi;->getWebContent(Ljava/lang/String;Ljava/util/Map;)Lio/reactivex/new;

    move-result-object p0

    return-object p0
.end method
