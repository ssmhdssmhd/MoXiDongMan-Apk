.class public Lcom/wsw/cospa/model/const;
.super Lcom/wsw/cospa/model/impl/if;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/utils/analyzeUrl/impl/IStationBookModel;


# instance fields
.field private break:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

.field private case:Ljava/lang/String;

.field private else:Lcom/wsw/cospa/bean/ComicSourceBean;

.field private goto:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private this:Lcom/wsw/cospa/model/try;

.field private try:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/model/impl/if;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeHeaders;->getMap(Lcom/wsw/cospa/bean/ComicSourceBean;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/model/const;->goto:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/model/const;->try:Ljava/lang/String;

    .line 4
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/model/const;->case:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 7
    iput-object p1, p0, Lcom/wsw/cospa/model/const;->case:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private static synthetic A(Lio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 2
    invoke-interface {p0}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method private static synthetic B(Lio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 2
    invoke-interface {p0}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method private static synthetic C(Lio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 2
    invoke-interface {p0}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method private synthetic D(Lcom/wsw/cospa/model/goto;Lretrofit2/Response;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/const;->break:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->getVariableMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/model/const;->break:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    invoke-virtual {v1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->getHeaderMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/wsw/cospa/model/goto;->if(Lretrofit2/Response;Ljava/util/Map;Ljava/util/Map;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic E(Lio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 2
    invoke-interface {p0}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method public static synthetic a(Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0}, Lcom/wsw/cospa/model/const;->n(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic abstract(Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0}, Lcom/wsw/cospa/model/const;->B(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic b(Lcom/wsw/cospa/model/const;Lcom/wsw/cospa/model/goto;Lretrofit2/Response;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/model/const;->p(Lcom/wsw/cospa/model/goto;Lretrofit2/Response;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/wsw/cospa/model/const;Lcom/wsw/cospa/model/new;Lcom/wsw/cospa/bean/ComicShelfBean;Lretrofit2/Response;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/wsw/cospa/model/const;->z(Lcom/wsw/cospa/model/new;Lcom/wsw/cospa/bean/ComicShelfBean;Lretrofit2/Response;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic continue(Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0}, Lcom/wsw/cospa/model/const;->o(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic d(Lcom/wsw/cospa/model/const;Lcom/wsw/cospa/bean/ChapterListBean;Lretrofit2/Response;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/model/const;->s(Lcom/wsw/cospa/bean/ChapterListBean;Lretrofit2/Response;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic default(Lretrofit2/Response;Lcom/wsw/cospa/bean/ComicSourceBean;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/wsw/cospa/model/const;->i(Lretrofit2/Response;Lcom/wsw/cospa/bean/ComicSourceBean;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic e(Lcom/wsw/cospa/bean/ComicShelfBean;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/wsw/cospa/model/const;->v(Lcom/wsw/cospa/bean/ComicShelfBean;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic extends(Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0}, Lcom/wsw/cospa/model/const;->k(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic finally(Lcom/wsw/cospa/model/const;Lretrofit2/Response;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/model/const;->r(Lretrofit2/Response;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/String;)Lcom/wsw/cospa/model/const;
    .locals 1

    .line 1
    new-instance v0, Lcom/wsw/cospa/model/const;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/model/const;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private h()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/const;->else:Lcom/wsw/cospa/bean/ComicSourceBean;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/model/const;->try:Ljava/lang/String;

    invoke-static {v0}, Lcom/wsw/cospa/utils/while;->goto(Ljava/lang/String;)Lcom/wsw/cospa/bean/ComicSourceBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iput-object v0, p0, Lcom/wsw/cospa/model/const;->else:Lcom/wsw/cospa/bean/ComicSourceBean;

    .line 4
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/model/const;->case:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/model/const;->else:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-static {v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeHeaders;->getMap(Lcom/wsw/cospa/bean/ComicSourceBean;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/model/const;->goto:Ljava/util/Map;

    .line 6
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 7
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 8
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method private static synthetic i(Lretrofit2/Response;Lcom/wsw/cospa/bean/ComicSourceBean;Lio/reactivex/ObservableEmitter;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lretrofit2/Response;->raw()Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response;->networkResponse()Lokhttp3/Response;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lretrofit2/Response;->raw()Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, v1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 6
    invoke-interface {p2}, Lio/reactivex/Emitter;->onComplete()V

    .line 7
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;

    invoke-direct {v1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;-><init>()V

    .line 9
    invoke-virtual {p0}, Lretrofit2/Response;->headers()Lokhttp3/Headers;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v2

    .line 10
    new-instance v3, Lcom/google/gson/GsonBuilder;

    invoke-direct {v3}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 11
    invoke-virtual {v3}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v3

    .line 12
    invoke-virtual {v3}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v3

    .line 13
    invoke-virtual {v3, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v2, p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->setContent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getLoginUrlResult()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {v1, p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeRule;->getString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 16
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "\n"

    .line 17
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 18
    array-length v2, p0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v5, p0, v4

    const-string v6, "::"

    .line 19
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v0

    .line 20
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    .line 21
    invoke-interface {v1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 22
    :cond_2
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object p0

    invoke-virtual {p0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/hw;->this()Lcom/wsw/cospa/dao/CookieBeanDao;

    move-result-object p0

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/bean/CookieBean;

    if-eqz p0, :cond_3

    .line 23
    invoke-virtual {p0, v1}, Lcom/wsw/cospa/bean/CookieBean;->setVariable(Ljava/util/Map;)V

    .line 24
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/hw;->this()Lcom/wsw/cospa/dao/CookieBeanDao;

    move-result-object p1

    .line 25
    invoke-virtual {p1, p0}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    goto :goto_2

    .line 26
    :cond_3
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object p0

    invoke-virtual {p0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/hw;->this()Lcom/wsw/cospa/dao/CookieBeanDao;

    move-result-object p0

    new-instance v0, Lcom/wsw/cospa/bean/CookieBean;

    .line 27
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/wsw/cospa/bean/CookieBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    .line 28
    :goto_2
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 29
    invoke-interface {p2}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method public static synthetic implements(Lcom/wsw/cospa/bean/ComicSourceBean;Lretrofit2/Response;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0, p1}, Lcom/wsw/cospa/model/const;->j(Lcom/wsw/cospa/bean/ComicSourceBean;Lretrofit2/Response;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic instanceof(Lcom/wsw/cospa/model/const;Lretrofit2/Response;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/model/const;->y(Lretrofit2/Response;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic interface(Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0}, Lcom/wsw/cospa/model/const;->m(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method private static synthetic j(Lcom/wsw/cospa/bean/ComicSourceBean;Lretrofit2/Response;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/jy;

    invoke-direct {v0, p1, p0}, Landroid/support/v4/jy;-><init>(Lretrofit2/Response;Lcom/wsw/cospa/bean/ComicSourceBean;)V

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic k(Lio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 2
    invoke-interface {p0}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method private static synthetic l(Lio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 2
    invoke-interface {p0}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method private static synthetic m(Lio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 2
    invoke-interface {p0}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method private static synthetic n(Lio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 2
    invoke-interface {p0}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method private static synthetic o(Lio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 2
    invoke-interface {p0}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method private synthetic p(Lcom/wsw/cospa/model/goto;Lretrofit2/Response;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/const;->break:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->getVariableMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/model/const;->break:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    invoke-virtual {v1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->getHeaderMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/wsw/cospa/model/goto;->if(Lretrofit2/Response;Ljava/util/Map;Ljava/util/Map;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic package(Lcom/wsw/cospa/model/const;Lretrofit2/Response;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/model/const;->t(Lretrofit2/Response;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic private(Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0}, Lcom/wsw/cospa/model/const;->E(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic protected(Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0}, Lcom/wsw/cospa/model/const;->A(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method private static synthetic q(Lio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/wsw/cospa/bean/ComicContentBean;

    invoke-direct {v0}, Lcom/wsw/cospa/bean/ComicContentBean;-><init>()V

    invoke-interface {p0, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 2
    invoke-interface {p0}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method private synthetic r(Lretrofit2/Response;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/const;->try:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/wsw/cospa/model/impl/if;->public(Lretrofit2/Response;Ljava/lang/String;Z)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method private synthetic s(Lcom/wsw/cospa/bean/ChapterListBean;Lretrofit2/Response;)Lio/reactivex/ObservableSource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lretrofit2/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 3
    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/wsw/cospa/model/const;->try:Ljava/lang/String;

    iget-object v2, p0, Lcom/wsw/cospa/model/const;->else:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-static {v1, v2}, Lcom/wsw/cospa/model/try;->case(Ljava/lang/String;Lcom/wsw/cospa/bean/ComicSourceBean;)Lcom/wsw/cospa/model/try;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/model/const;->this:Lcom/wsw/cospa/model/try;

    .line 7
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v2, p0, Lcom/wsw/cospa/model/const;->goto:Ljava/util/Map;

    invoke-virtual {v1, v0, p2, p1, v2}, Lcom/wsw/cospa/model/try;->for(Ljava/lang/String;Ljava/lang/String;Lcom/wsw/cospa/bean/ChapterListBean;Ljava/util/Map;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic static(Lcom/wsw/cospa/model/const;Lcom/wsw/cospa/model/goto;Lretrofit2/Response;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/model/const;->D(Lcom/wsw/cospa/model/goto;Lretrofit2/Response;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic strictfp(Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0}, Lcom/wsw/cospa/model/const;->q(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic switch(Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0}, Lcom/wsw/cospa/model/const;->C(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic synchronized(Lcom/wsw/cospa/model/const;Lcom/wsw/cospa/model/new;Lcom/wsw/cospa/bean/ComicShelfBean;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/wsw/cospa/model/const;->x(Lcom/wsw/cospa/model/new;Lcom/wsw/cospa/bean/ComicShelfBean;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method private synthetic t(Lretrofit2/Response;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/const;->try:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/wsw/cospa/model/impl/if;->public(Lretrofit2/Response;Ljava/lang/String;Z)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic throws(Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0}, Lcom/wsw/cospa/model/const;->l(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic transient(Lcom/wsw/cospa/model/const;Lcom/wsw/cospa/model/case;Lcom/wsw/cospa/bean/ComicShelfBean;Lretrofit2/Response;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/wsw/cospa/model/const;->u(Lcom/wsw/cospa/model/case;Lcom/wsw/cospa/bean/ComicShelfBean;Lretrofit2/Response;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method private synthetic u(Lcom/wsw/cospa/model/case;Lcom/wsw/cospa/bean/ComicShelfBean;Lretrofit2/Response;)Lio/reactivex/ObservableSource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 1
    invoke-static {}, Landroid/support/v4/y8;->for()Landroid/support/v4/y8;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wsw/cospa/model/const;->break:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    invoke-virtual {v2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wsw/cospa/model/const;->break:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    invoke-virtual {v2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->getQueryMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wsw/cospa/model/const;->break:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    invoke-virtual {v2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->getHeaderMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wsw/cospa/model/const;->break:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    invoke-virtual {v2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->getBody()Lokhttp3/RequestBody;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/support/v4/y8;->new(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    :cond_0
    invoke-virtual {p3}, Lretrofit2/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 4
    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {p3}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, v0, p3, p2}, Lcom/wsw/cospa/model/case;->if(Ljava/lang/String;Ljava/lang/String;Lcom/wsw/cospa/bean/ComicShelfBean;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic v(Lcom/wsw/cospa/bean/ComicShelfBean;Lio/reactivex/ObservableEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/Throwable;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ComicInfoBean;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "%s\u6ca1\u6709\u627e\u5230\u56fe\u6e90\u914d\u7f6e"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    .line 2
    invoke-interface {p1}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method public static synthetic volatile(Lcom/wsw/cospa/model/const;Lretrofit2/Response;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/model/const;->w(Lretrofit2/Response;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method private synthetic w(Lretrofit2/Response;Lio/reactivex/ObservableEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/support/v4/y8;->for()Landroid/support/v4/y8;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wsw/cospa/model/const;->break:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    invoke-virtual {v2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wsw/cospa/model/const;->break:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    invoke-virtual {v2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->getQueryMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wsw/cospa/model/const;->break:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    invoke-virtual {v2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->getHeaderMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wsw/cospa/model/const;->break:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    invoke-virtual {v2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->getBody()Lokhttp3/RequestBody;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/y8;->do(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/model/const;->try:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/wsw/cospa/model/impl/if;->return(Lretrofit2/Response;Ljava/lang/String;Z)V

    .line 3
    invoke-interface {p2, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p2}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method private synthetic x(Lcom/wsw/cospa/model/new;Lcom/wsw/cospa/bean/ComicShelfBean;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p3, Lretrofit2/Response;

    .line 2
    invoke-virtual {p3}, Lretrofit2/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 4
    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {p3}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iget-object v1, p0, Lcom/wsw/cospa/model/const;->goto:Ljava/util/Map;

    invoke-virtual {p1, v0, p3, p2, v1}, Lcom/wsw/cospa/model/new;->for(Ljava/lang/String;Ljava/lang/String;Lcom/wsw/cospa/bean/ComicShelfBean;Ljava/util/Map;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method private synthetic y(Lretrofit2/Response;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/const;->try:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/wsw/cospa/model/impl/if;->public(Lretrofit2/Response;Ljava/lang/String;Z)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method private synthetic z(Lcom/wsw/cospa/model/new;Lcom/wsw/cospa/bean/ComicShelfBean;Lretrofit2/Response;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lretrofit2/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 3
    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p3}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iget-object v1, p0, Lcom/wsw/cospa/model/const;->goto:Ljava/util/Map;

    invoke-virtual {p1, v0, p3, p2, v1}, Lcom/wsw/cospa/model/new;->for(Ljava/lang/String;Ljava/lang/String;Lcom/wsw/cospa/bean/ComicShelfBean;Ljava/util/Map;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public AppSourcelogin(Lcom/wsw/cospa/bean/ComicSourceBean;)Lio/reactivex/new;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wsw/cospa/bean/ComicSourceBean;",
            ")",
            "Lio/reactivex/new<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getLoginUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/wsw/cospa/model/const;->goto:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/wsw/cospa/model/const;->break:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    .line 2
    invoke-virtual {v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->getHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    sget-object p1, Landroid/support/v4/ly;->do:Landroid/support/v4/ly;

    invoke-static {p1}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/model/const;->break:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/model/impl/if;->catch(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;)Lio/reactivex/new;

    move-result-object v0

    new-instance v1, Landroid/support/v4/cy;

    invoke-direct {v1, p1}, Landroid/support/v4/cy;-><init>(Lcom/wsw/cospa/bean/ComicSourceBean;)V

    .line 5
    invoke-virtual {v0, v1}, Lio/reactivex/new;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/new;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    sget-object p1, Landroid/support/v4/my;->do:Landroid/support/v4/my;

    invoke-static {p1}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/const;->this:Lcom/wsw/cospa/model/try;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/wsw/cospa/model/try;->try()V

    .line 3
    iput-object v1, p0, Lcom/wsw/cospa/model/const;->this:Lcom/wsw/cospa/model/try;

    .line 4
    :cond_0
    iput-object v1, p0, Lcom/wsw/cospa/model/const;->break:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    return-void
.end method

.method public findBook(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)Lio/reactivex/new;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/new<",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/SearchComicBean;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/model/const;->h()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/wsw/cospa/model/const;->else:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleSearchUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    new-instance v0, Lcom/wsw/cospa/model/goto;

    iget-object v1, p0, Lcom/wsw/cospa/model/const;->try:Ljava/lang/String;

    iget-object v2, p0, Lcom/wsw/cospa/model/const;->case:Ljava/lang/String;

    iget-object v3, p0, Lcom/wsw/cospa/model/const;->else:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-direct {v0, v1, v2, v3}, Lcom/wsw/cospa/model/goto;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/wsw/cospa/bean/ComicSourceBean;)V

    const/4 v1, 0x1

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/wsw/cospa/model/const;->goto:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_3

    const-string v2, "HeaderCookie"

    if-eqz p3, :cond_1

    :try_start_1
    invoke-interface {p3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 4
    :cond_1
    new-instance v3, Lcom/google/gson/GsonBuilder;

    invoke-direct {v3}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 5
    invoke-virtual {v3}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v3

    .line 7
    iget-object v4, p0, Lcom/wsw/cospa/model/const;->goto:Ljava/util/Map;

    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-nez p3, :cond_2

    .line 8
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 9
    :cond_2
    invoke-interface {p3, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move-object v7, p3

    if-ne p2, v1, :cond_4

    .line 10
    new-instance p3, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    const-string v4, ""

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/wsw/cospa/model/const;->goto:Ljava/util/Map;

    move-object v2, p3

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;Ljava/util/Map;)V

    iput-object p3, p0, Lcom/wsw/cospa/model/const;->break:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    goto :goto_0

    :cond_4
    if-eqz p4, :cond_5

    .line 11
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_5

    .line 12
    new-instance p3, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    const-string v4, ""

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/wsw/cospa/model/const;->goto:Ljava/util/Map;

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v2 .. v7}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;Ljava/util/Map;)V

    iput-object p3, p0, Lcom/wsw/cospa/model/const;->break:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    goto :goto_0

    :cond_5
    const-string p3, "searchPage"

    .line 13
    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 14
    new-instance p3, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    const-string v4, ""

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/wsw/cospa/model/const;->goto:Ljava/util/Map;

    move-object v2, p3

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;Ljava/util/Map;)V

    iput-object p3, p0, Lcom/wsw/cospa/model/const;->break:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    .line 15
    :goto_0
    iget-object p2, p0, Lcom/wsw/cospa/model/const;->break:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    invoke-virtual {p2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->getHost()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_6

    .line 16
    sget-object p2, Landroid/support/v4/py;->do:Landroid/support/v4/py;

    invoke-static {p2}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p1

    return-object p1

    .line 17
    :cond_6
    iget-object p2, p0, Lcom/wsw/cospa/model/const;->break:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    invoke-virtual {p0, p2}, Lcom/wsw/cospa/model/impl/if;->catch(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;)Lio/reactivex/new;

    move-result-object p2

    new-instance p3, Lcom/wsw/cospa/model/class;

    invoke-direct {p3, p0, v0}, Lcom/wsw/cospa/model/class;-><init>(Lcom/wsw/cospa/model/const;Lcom/wsw/cospa/model/goto;)V

    .line 18
    invoke-virtual {p2, p3}, Lio/reactivex/new;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/new;

    move-result-object p1

    return-object p1

    .line 19
    :cond_7
    sget-object p2, Landroid/support/v4/by;->do:Landroid/support/v4/by;

    invoke-static {p2}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 20
    new-instance p3, Ljava/lang/Throwable;

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p4, v0

    invoke-virtual {p2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p4, v1

    const-string p1, "%s\u9519\u8bef:%s"

    invoke-static {p1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lio/reactivex/new;->error(Ljava/lang/Throwable;)Lio/reactivex/new;

    move-result-object p1

    return-object p1

    .line 21
    :cond_8
    :goto_1
    sget-object p1, Landroid/support/v4/zx;->do:Landroid/support/v4/zx;

    invoke-static {p1}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method public getBookContent(Lcom/wsw/cospa/bean/ChapterListBean;)Lio/reactivex/new;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ")",
            "Lio/reactivex/new<",
            "Lcom/wsw/cospa/bean/ComicContentBean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/model/const;->h()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Landroid/support/v4/qy;->do:Landroid/support/v4/qy;

    invoke-static {p1}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ChapterListBean;->getVariable()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/wsw/cospa/model/const$for;

    invoke-direct {v2, p0}, Lcom/wsw/cospa/model/const$for;-><init>(Lcom/wsw/cospa/model/const;)V

    .line 6
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 7
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 8
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 9
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "UrlHeader"

    .line 10
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v4, Lcom/wsw/cospa/model/const$new;

    invoke-direct {v4, p0}, Lcom/wsw/cospa/model/const$new;-><init>(Lcom/wsw/cospa/model/const;)V

    .line 12
    invoke-virtual {v4}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 13
    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 14
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 15
    iget-object v5, p0, Lcom/wsw/cospa/model/const;->goto:Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 16
    :cond_2
    new-instance v0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/wsw/cospa/model/const;->goto:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/wsw/cospa/model/const;->break:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    .line 17
    invoke-virtual {p0, v0}, Lcom/wsw/cospa/model/impl/if;->catch(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;)Lio/reactivex/new;

    move-result-object v0

    new-instance v1, Landroid/support/v4/dy;

    invoke-direct {v1, p0}, Landroid/support/v4/dy;-><init>(Lcom/wsw/cospa/model/const;)V

    .line 18
    invoke-virtual {v0, v1}, Lio/reactivex/new;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/new;

    move-result-object v0

    new-instance v1, Landroid/support/v4/gy;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/gy;-><init>(Lcom/wsw/cospa/model/const;Lcom/wsw/cospa/bean/ChapterListBean;)V

    .line 19
    invoke-virtual {v0, v1}, Lio/reactivex/new;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/new;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 20
    new-instance v0, Ljava/lang/Throwable;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "url\u9519\u8bef:%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/new;->error(Ljava/lang/Throwable;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method public getBookInfo(Lcom/wsw/cospa/bean/ComicShelfBean;)Lio/reactivex/new;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wsw/cospa/bean/ComicShelfBean;",
            ")",
            "Lio/reactivex/new<",
            "Lcom/wsw/cospa/bean/ComicShelfBean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/model/const;->h()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 2
    new-instance p1, Ljava/lang/Throwable;

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/wsw/cospa/model/const;->try:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "\u65e0\u6cd5\u627e\u5230\u6e90%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/new;->error(Ljava/lang/Throwable;)Lio/reactivex/new;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lcom/wsw/cospa/model/case;

    iget-object v3, p0, Lcom/wsw/cospa/model/const;->try:Ljava/lang/String;

    iget-object v4, p0, Lcom/wsw/cospa/model/const;->case:Ljava/lang/String;

    iget-object v5, p0, Lcom/wsw/cospa/model/const;->else:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-direct {v0, v3, v4, v5}, Lcom/wsw/cospa/model/case;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/wsw/cospa/bean/ComicSourceBean;)V

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getVariableMap()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 5
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 6
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "UrlHeader"

    .line 7
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8
    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    new-instance v7, Lcom/wsw/cospa/model/const$do;

    invoke-direct {v7, p0}, Lcom/wsw/cospa/model/const$do;-><init>(Lcom/wsw/cospa/model/const;)V

    .line 9
    invoke-virtual {v7}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v7

    .line 10
    invoke-virtual {v5, v6, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 11
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 12
    iget-object v8, p0, Lcom/wsw/cospa/model/const;->goto:Ljava/util/Map;

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 13
    :cond_2
    new-instance v3, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/wsw/cospa/model/const;->goto:Ljava/util/Map;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6, v6, v5}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;)V

    iput-object v3, p0, Lcom/wsw/cospa/model/const;->break:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    .line 14
    invoke-virtual {p0, v3}, Lcom/wsw/cospa/model/impl/if;->catch(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;)Lio/reactivex/new;

    move-result-object v3

    new-instance v4, Landroid/support/v4/ey;

    invoke-direct {v4, p0}, Landroid/support/v4/ey;-><init>(Lcom/wsw/cospa/model/const;)V

    .line 15
    invoke-virtual {v3, v4}, Lio/reactivex/new;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/new;

    move-result-object v3

    new-instance v4, Landroid/support/v4/hy;

    invoke-direct {v4, p0, v0, p1}, Landroid/support/v4/hy;-><init>(Lcom/wsw/cospa/model/const;Lcom/wsw/cospa/model/case;Lcom/wsw/cospa/bean/ComicShelfBean;)V

    .line 16
    invoke-virtual {v3, v4}, Lio/reactivex/new;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/new;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 17
    :catch_0
    new-instance v0, Ljava/lang/Throwable;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getNoteUrl()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "url\u9519\u8bef:%s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/new;->error(Ljava/lang/Throwable;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method public getChapterList(Lcom/wsw/cospa/bean/ComicShelfBean;)Lio/reactivex/new;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wsw/cospa/bean/ComicShelfBean;",
            ")",
            "Lio/reactivex/new<",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/model/const;->h()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/support/v4/yx;

    invoke-direct {v0, p1}, Landroid/support/v4/yx;-><init>(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lcom/wsw/cospa/model/new;

    iget-object v1, p0, Lcom/wsw/cospa/model/const;->try:Ljava/lang/String;

    iget-object v2, p0, Lcom/wsw/cospa/model/const;->else:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-direct {v0, v1, v2}, Lcom/wsw/cospa/model/new;-><init>(Ljava/lang/String;Lcom/wsw/cospa/bean/ComicSourceBean;)V

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getVariableMap()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 5
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "UrlHeader"

    .line 7
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    new-instance v5, Lcom/wsw/cospa/model/const$if;

    invoke-direct {v5, p0}, Lcom/wsw/cospa/model/const$if;-><init>(Lcom/wsw/cospa/model/const;)V

    .line 9
    invoke-virtual {v5}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 10
    invoke-virtual {v3, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 11
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 12
    iget-object v6, p0, Lcom/wsw/cospa/model/const;->goto:Ljava/util/Map;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 13
    :cond_2
    new-instance v1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicInfoBean;->getChapterUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/wsw/cospa/model/const;->goto:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v4, v3}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/wsw/cospa/model/const;->break:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    .line 14
    invoke-static {}, Landroid/support/v4/y8;->for()Landroid/support/v4/y8;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/wsw/cospa/model/const;->break:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    invoke-virtual {v3}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/wsw/cospa/model/const;->break:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    invoke-virtual {v3}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->getQueryMap()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/wsw/cospa/model/const;->break:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    invoke-virtual {v3}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->getHeaderMap()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/wsw/cospa/model/const;->break:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    invoke-virtual {v3}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->getBody()Lokhttp3/RequestBody;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/y8;->if(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lretrofit2/Response;

    if-eqz v1, :cond_3

    .line 15
    new-instance v2, Landroid/support/v4/iy;

    invoke-direct {v2, p0, v1}, Landroid/support/v4/iy;-><init>(Lcom/wsw/cospa/model/const;Lretrofit2/Response;)V

    invoke-static {v2}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object v1

    new-instance v2, Lcom/wsw/cospa/model/break;

    invoke-direct {v2, p0, v0, p1}, Lcom/wsw/cospa/model/break;-><init>(Lcom/wsw/cospa/model/const;Lcom/wsw/cospa/model/new;Lcom/wsw/cospa/bean/ComicShelfBean;)V

    .line 16
    invoke-virtual {v1, v2}, Lio/reactivex/new;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/new;

    move-result-object p1

    return-object p1

    .line 17
    :cond_3
    iget-object v1, p0, Lcom/wsw/cospa/model/const;->break:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    invoke-virtual {p0, v1}, Lcom/wsw/cospa/model/impl/if;->catch(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;)Lio/reactivex/new;

    move-result-object v1

    new-instance v2, Landroid/support/v4/fy;

    invoke-direct {v2, p0}, Landroid/support/v4/fy;-><init>(Lcom/wsw/cospa/model/const;)V

    .line 18
    invoke-virtual {v1, v2}, Lio/reactivex/new;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/new;

    move-result-object v1

    new-instance v2, Lcom/wsw/cospa/model/this;

    invoke-direct {v2, p0, v0, p1}, Lcom/wsw/cospa/model/this;-><init>(Lcom/wsw/cospa/model/const;Lcom/wsw/cospa/model/new;Lcom/wsw/cospa/bean/ComicShelfBean;)V

    .line 19
    invoke-virtual {v1, v2}, Lio/reactivex/new;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/new;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 20
    new-instance v0, Ljava/lang/Throwable;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "url\u9519\u8bef:%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/new;->error(Ljava/lang/Throwable;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method public searchBook(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)Lio/reactivex/new;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/new<",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/SearchComicBean;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/model/const;->h()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/wsw/cospa/model/const;->else:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleSearchUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    new-instance v0, Lcom/wsw/cospa/model/goto;

    iget-object v1, p0, Lcom/wsw/cospa/model/const;->try:Ljava/lang/String;

    iget-object v2, p0, Lcom/wsw/cospa/model/const;->case:Ljava/lang/String;

    iget-object v3, p0, Lcom/wsw/cospa/model/const;->else:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-direct {v0, v1, v2, v3}, Lcom/wsw/cospa/model/goto;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/wsw/cospa/bean/ComicSourceBean;)V

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/wsw/cospa/model/const;->goto:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_3

    const-string v1, "HeaderCookie"

    if-eqz p3, :cond_1

    :try_start_1
    invoke-interface {p3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 4
    :cond_1
    new-instance v2, Lcom/google/gson/GsonBuilder;

    invoke-direct {v2}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 5
    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lcom/wsw/cospa/model/const;->goto:Ljava/util/Map;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-nez p3, :cond_2

    .line 8
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 9
    :cond_2
    invoke-interface {p3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move-object v6, p3

    const/4 p3, 0x1

    if-ne p2, p3, :cond_4

    .line 10
    new-instance p3, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    iget-object p4, p0, Lcom/wsw/cospa/model/const;->else:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {p4}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleSearchUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/wsw/cospa/model/const;->goto:Ljava/util/Map;

    move-object v1, p3

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;Ljava/util/Map;)V

    iput-object p3, p0, Lcom/wsw/cospa/model/const;->break:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    goto :goto_0

    :cond_4
    if-eqz p4, :cond_5

    .line 11
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_5

    .line 12
    new-instance p3, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/wsw/cospa/model/const;->goto:Ljava/util/Map;

    move-object v1, p3

    move-object v2, p4

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;Ljava/util/Map;)V

    iput-object p3, p0, Lcom/wsw/cospa/model/const;->break:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    goto :goto_0

    .line 13
    :cond_5
    iget-object p3, p0, Lcom/wsw/cospa/model/const;->else:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {p3}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleSearchUrl()Ljava/lang/String;

    move-result-object p3

    const-string p4, "searchPage"

    invoke-virtual {p3, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 14
    new-instance p3, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    iget-object p4, p0, Lcom/wsw/cospa/model/const;->else:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {p4}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleSearchUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/wsw/cospa/model/const;->goto:Ljava/util/Map;

    move-object v1, p3

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Map;Ljava/util/Map;)V

    iput-object p3, p0, Lcom/wsw/cospa/model/const;->break:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    .line 15
    :goto_0
    iget-object p1, p0, Lcom/wsw/cospa/model/const;->break:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->getHost()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    .line 16
    sget-object p1, Landroid/support/v4/ky;->do:Landroid/support/v4/ky;

    invoke-static {p1}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p1

    return-object p1

    .line 17
    :cond_6
    iget-object p1, p0, Lcom/wsw/cospa/model/const;->break:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/model/impl/if;->catch(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;)Lio/reactivex/new;

    move-result-object p1

    new-instance p2, Lcom/wsw/cospa/model/catch;

    invoke-direct {p2, p0, v0}, Lcom/wsw/cospa/model/catch;-><init>(Lcom/wsw/cospa/model/const;Lcom/wsw/cospa/model/goto;)V

    .line 18
    invoke-virtual {p1, p2}, Lio/reactivex/new;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/new;

    move-result-object p1

    return-object p1

    .line 19
    :cond_7
    sget-object p1, Landroid/support/v4/oy;->do:Landroid/support/v4/oy;

    invoke-static {p1}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 21
    sget-object p1, Landroid/support/v4/ny;->do:Landroid/support/v4/ny;

    invoke-static {p1}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p1

    return-object p1

    .line 22
    :cond_8
    :goto_1
    sget-object p1, Landroid/support/v4/ay;->do:Landroid/support/v4/ay;

    invoke-static {p1}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method
