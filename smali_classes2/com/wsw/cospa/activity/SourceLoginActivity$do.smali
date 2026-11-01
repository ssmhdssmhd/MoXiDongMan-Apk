.class Lcom/wsw/cospa/activity/SourceLoginActivity$do;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/SourceLoginActivity;->case()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/webkit/CookieManager;

.field public final synthetic if:Lcom/wsw/cospa/activity/SourceLoginActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/SourceLoginActivity;Landroid/webkit/CookieManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/SourceLoginActivity$do;->if:Lcom/wsw/cospa/activity/SourceLoginActivity;

    iput-object p2, p0, Lcom/wsw/cospa/activity/SourceLoginActivity$do;->do:Landroid/webkit/CookieManager;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceLoginActivity$do;->do:Landroid/webkit/CookieManager;

    invoke-virtual {v0, p2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Cookie"

    .line 3
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hw;->this()Lcom/wsw/cospa/dao/CookieBeanDao;

    move-result-object v0

    iget-object v2, p0, Lcom/wsw/cospa/activity/SourceLoginActivity$do;->if:Lcom/wsw/cospa/activity/SourceLoginActivity;

    invoke-static {v2}, Lcom/wsw/cospa/activity/SourceLoginActivity;->import(Lcom/wsw/cospa/activity/SourceLoginActivity;)Lcom/wsw/cospa/bean/ComicSourceBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/CookieBean;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/CookieBean;->setVariable(Ljava/util/Map;)V

    .line 6
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/hw;->this()Lcom/wsw/cospa/dao/CookieBeanDao;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 9
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 11
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/hw;->this()Lcom/wsw/cospa/dao/CookieBeanDao;

    move-result-object v2

    new-instance v3, Lcom/wsw/cospa/bean/CookieBean;

    iget-object v4, p0, Lcom/wsw/cospa/activity/SourceLoginActivity$do;->if:Lcom/wsw/cospa/activity/SourceLoginActivity;

    .line 12
    invoke-static {v4}, Lcom/wsw/cospa/activity/SourceLoginActivity;->import(Lcom/wsw/cospa/activity/SourceLoginActivity;)Lcom/wsw/cospa/bean/ComicSourceBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/wsw/cospa/bean/CookieBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceLoginActivity$do;->if:Lcom/wsw/cospa/activity/SourceLoginActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/SourceLoginActivity;->native(Lcom/wsw/cospa/activity/SourceLoginActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceLoginActivity$do;->if:Lcom/wsw/cospa/activity/SourceLoginActivity;

    invoke-virtual {v0}, Lcom/wsw/cospa/base/BaseActivity;->finish()V

    goto :goto_1

    :cond_1
    const-string v0, "\u767b\u5f55\u6210\u529f\u540e\u8bf7\u70b9\u51fb\u53f3\u4e0a\u89d2\u56fe\u6807\u8fdb\u884c\u9996\u9875\u8bbf\u95ee\u6d4b\u8bd5"

    .line 15
    invoke-static {v0}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    .line 16
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceLoginActivity$do;->do:Landroid/webkit/CookieManager;

    invoke-virtual {v0, p2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/activity/SourceLoginActivity$do;->if:Lcom/wsw/cospa/activity/SourceLoginActivity;

    invoke-static {v1}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v1

    iget-object v2, p0, Lcom/wsw/cospa/activity/SourceLoginActivity$do;->if:Lcom/wsw/cospa/activity/SourceLoginActivity;

    invoke-static {v2}, Lcom/wsw/cospa/activity/SourceLoginActivity;->import(Lcom/wsw/cospa/activity/SourceLoginActivity;)Lcom/wsw/cospa/bean/ComicSourceBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/v02;->this(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method
