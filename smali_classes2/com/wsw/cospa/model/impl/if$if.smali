.class Lcom/wsw/cospa/model/impl/if$if;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/model/impl/if;->throw(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;Ljava/lang/String;Lio/reactivex/ObservableEmitter;Landroid/os/Handler;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic case:Lcom/wsw/cospa/model/impl/if;

.field public final synthetic do:Landroid/webkit/CookieManager;

.field public final synthetic for:Ljava/lang/String;

.field public final synthetic if:Landroid/webkit/WebView;

.field public final synthetic new:Landroid/os/Handler;

.field public final synthetic try:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/model/impl/if;Landroid/webkit/CookieManager;Landroid/webkit/WebView;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/model/impl/if$if;->case:Lcom/wsw/cospa/model/impl/if;

    iput-object p2, p0, Lcom/wsw/cospa/model/impl/if$if;->do:Landroid/webkit/CookieManager;

    iput-object p3, p0, Lcom/wsw/cospa/model/impl/if$if;->if:Landroid/webkit/WebView;

    iput-object p4, p0, Lcom/wsw/cospa/model/impl/if$if;->for:Ljava/lang/String;

    iput-object p5, p0, Lcom/wsw/cospa/model/impl/if$if;->new:Landroid/os/Handler;

    iput-object p6, p0, Lcom/wsw/cospa/model/impl/if$if;->try:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object p2, p0, Lcom/wsw/cospa/model/impl/if$if;->do:Landroid/webkit/CookieManager;

    iget-object v0, p0, Lcom/wsw/cospa/model/impl/if$if;->if:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Cookie"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object p2

    invoke-virtual {p2}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/hw;->this()Lcom/wsw/cospa/dao/CookieBeanDao;

    move-result-object p2

    iget-object v0, p0, Lcom/wsw/cospa/model/impl/if$if;->for:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/wsw/cospa/bean/CookieBean;

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p2, p1}, Lcom/wsw/cospa/bean/CookieBean;->setVariable(Ljava/util/Map;)V

    .line 5
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/hw;->this()Lcom/wsw/cospa/dao/CookieBeanDao;

    move-result-object p1

    .line 6
    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    goto :goto_0

    .line 7
    :cond_0
    new-instance p2, Lcom/google/gson/GsonBuilder;

    invoke-direct {p2}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 8
    invoke-virtual {p2}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object p2

    .line 9
    invoke-virtual {p2}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p2

    .line 10
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hw;->this()Lcom/wsw/cospa/dao/CookieBeanDao;

    move-result-object v0

    new-instance v1, Lcom/wsw/cospa/bean/CookieBean;

    iget-object v2, p0, Lcom/wsw/cospa/model/impl/if$if;->for:Ljava/lang/String;

    .line 11
    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/wsw/cospa/bean/CookieBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    .line 12
    :goto_0
    iget-object p1, p0, Lcom/wsw/cospa/model/impl/if$if;->new:Landroid/os/Handler;

    iget-object p2, p0, Lcom/wsw/cospa/model/impl/if$if;->try:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
