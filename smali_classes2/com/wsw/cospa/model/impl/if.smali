.class public Lcom/wsw/cospa/model/impl/if;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static do:Lokhttp3/OkHttpClient$Builder; = null

.field public static final for:I = 0x78

.field public static final if:I = 0x78

.field private static final new:J = 0x78L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static break()Lcom/wsw/cospa/model/impl/if;
    .locals 1

    .line 1
    new-instance v0, Lcom/wsw/cospa/model/impl/if;

    invoke-direct {v0}, Lcom/wsw/cospa/model/impl/if;-><init>()V

    return-object v0
.end method

.method public static synthetic case(Lcom/wsw/cospa/model/impl/if;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/model/impl/if;->final(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic do(Lcom/wsw/cospa/model/impl/if;Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;Ljava/lang/String;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/wsw/cospa/model/impl/if;->while(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;Ljava/lang/String;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method private final(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "&nbsp;|<br.*?>|\\s|\\n"

    const-string v1, ""

    .line 1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ".*[^\\x00-\\xFF]{50,}.*"

    .line 2
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public static synthetic for(Lcom/wsw/cospa/model/impl/if;Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;Ljava/lang/String;Lio/reactivex/ObservableEmitter;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/wsw/cospa/model/impl/if;->throw(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;Ljava/lang/String;Lio/reactivex/ObservableEmitter;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method

.method public static goto()Lokhttp3/OkHttpClient$Builder;
    .locals 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/wsw/cospa/model/impl/case;

    invoke-static {}, Lcom/wsw/cospa/model/impl/try;->if()Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/wsw/cospa/model/impl/case;-><init>(Ljavax/net/ssl/X509TrustManager;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/wsw/cospa/model/impl/try;->new()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 4
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    sget-object v2, Lokhttp3/ConnectionSpec;->MODERN_TLS:Lokhttp3/ConnectionSpec;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v2, Lokhttp3/ConnectionSpec;->COMPATIBLE_TLS:Lokhttp3/ConnectionSpec;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v2, Lokhttp3/ConnectionSpec;->CLEARTEXT:Lokhttp3/ConnectionSpec;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object v2, Lcom/wsw/cospa/model/impl/if;->do:Lokhttp3/OkHttpClient$Builder;

    if-nez v2, :cond_1

    .line 9
    new-instance v2, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v2}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x78

    .line 10
    invoke-virtual {v2, v4, v5, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 11
    invoke-virtual {v2, v4, v5, v3}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 12
    invoke-virtual {v2, v4, v5, v3}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    const/4 v4, 0x1

    .line 13
    invoke-virtual {v2, v4}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 14
    invoke-static {}, Lcom/wsw/cospa/model/impl/try;->if()Ljavax/net/ssl/X509TrustManager;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 15
    invoke-static {}, Lcom/wsw/cospa/model/impl/try;->for()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v2, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 16
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->protocols(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 17
    invoke-static {}, Lcom/wsw/cospa/model/impl/if;->this()Lokhttp3/Interceptor;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v2, Lokhttp3/ConnectionPool;

    const/4 v5, 0x5

    const-wide/16 v6, 0x1

    invoke-direct {v2, v5, v6, v7, v3}, Lokhttp3/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    .line 18
    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->connectionPool(Lokhttp3/ConnectionPool;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v2, Lcom/wsw/cospa/model/impl/new;

    invoke-direct {v2, v4}, Lcom/wsw/cospa/model/impl/new;-><init>(I)V

    .line 19
    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 20
    invoke-virtual {v0, v4}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 21
    invoke-virtual {v0, v4}, Lokhttp3/OkHttpClient$Builder;->followSslRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 22
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->connectionSpecs(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sput-object v0, Lcom/wsw/cospa/model/impl/if;->do:Lokhttp3/OkHttpClient$Builder;

    .line 23
    :cond_1
    sget-object v0, Lcom/wsw/cospa/model/impl/if;->do:Lokhttp3/OkHttpClient$Builder;

    return-object v0
.end method

.method public static synthetic if(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 0

    invoke-static {p0}, Lcom/wsw/cospa/model/impl/if;->import(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic import(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "Keep-Alive"

    const-string v2, "300"

    .line 3
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v2, "Connection"

    .line 4
    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    const-string v1, "Cache-Control"

    const-string v2, "no-cache"

    .line 5
    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 7
    invoke-interface {p0, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic native(Lretrofit2/Response;ZLjava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lretrofit2/Response;->raw()Lokhttp3/Response;

    move-result-object v0

    const-string v1, "Set-Cookie"

    invoke-virtual {v0, v1}, Lokhttp3/Response;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v2, "Cookie"

    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-virtual {p0}, Lretrofit2/Response;->raw()Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {v0, v1}, Lokhttp3/Response;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, ";"

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 5
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v1, v5

    .line 6
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 7
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/hw;->this()Lcom/wsw/cospa/dao/CookieBeanDao;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/CookieBean;

    if-eqz p1, :cond_3

    .line 13
    invoke-virtual {p1, v0}, Lcom/wsw/cospa/bean/CookieBean;->setVariable(Ljava/util/Map;)V

    .line 14
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object p2

    invoke-virtual {p2}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/hw;->this()Lcom/wsw/cospa/dao/CookieBeanDao;

    move-result-object p2

    .line 15
    invoke-virtual {p2, p1}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    goto :goto_1

    .line 16
    :cond_3
    new-instance p1, Lcom/google/gson/GsonBuilder;

    invoke-direct {p1}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 17
    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p1

    .line 19
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/hw;->this()Lcom/wsw/cospa/dao/CookieBeanDao;

    move-result-object v1

    new-instance v2, Lcom/wsw/cospa/bean/CookieBean;

    .line 20
    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p2, p1}, Lcom/wsw/cospa/bean/CookieBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    goto :goto_1

    :cond_4
    if-nez p1, :cond_5

    .line 21
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/hw;->this()Lcom/wsw/cospa/dao/CookieBeanDao;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/CookieBean;

    if-eqz p1, :cond_5

    .line 22
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/CookieBean;->getVariable()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object p2

    invoke-virtual {p2}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/hw;->this()Lcom/wsw/cospa/dao/CookieBeanDao;

    move-result-object p2

    .line 24
    invoke-virtual {p2, p1}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    .line 25
    :cond_5
    :goto_1
    invoke-interface {p3, p0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 26
    invoke-interface {p3}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method public static synthetic new(Lretrofit2/Response;ZLjava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/wsw/cospa/model/impl/if;->native(Lretrofit2/Response;ZLjava/lang/String;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method private static synthetic super(Lio/reactivex/ObservableEmitter;Landroid/os/Handler;Ljava/lang/Runnable;Landroid/webkit/WebView;)V
    .locals 1

    .line 1
    invoke-interface {p0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string p1, "\u8d85\u65f6"

    .line 3
    invoke-interface {p0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p0}, Lio/reactivex/Emitter;->onComplete()V

    .line 5
    invoke-virtual {p3}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    return-void
.end method

.method private static this()Lokhttp3/Interceptor;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/l7;->do:Landroid/support/v4/l7;

    return-object v0
.end method

.method private synthetic throw(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;Ljava/lang/String;Lio/reactivex/ObservableEmitter;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 10

    .line 1
    new-instance v7, Landroid/webkit/WebView;

    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->try()Lcom/wsw/cospa/CartoonApplication;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v7}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 3
    invoke-virtual {v7}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->getHeaderMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, "User-Agent"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v6

    .line 5
    new-instance v9, Lcom/wsw/cospa/model/impl/if$do;

    move-object v0, v9

    move-object v1, p0

    move-object v2, v7

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/wsw/cospa/model/impl/if$do;-><init>(Lcom/wsw/cospa/model/impl/if;Landroid/webkit/WebView;Ljava/lang/String;Lio/reactivex/ObservableEmitter;Landroid/os/Handler;)V

    .line 6
    new-instance p2, Landroid/support/v4/k7;

    invoke-direct {p2, p3, p4, v9, v7}, Landroid/support/v4/k7;-><init>(Lio/reactivex/ObservableEmitter;Landroid/os/Handler;Ljava/lang/Runnable;Landroid/webkit/WebView;)V

    const-wide/16 v0, 0x61a8

    .line 7
    invoke-virtual {p4, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8
    new-instance p2, Lcom/wsw/cospa/model/impl/if$if;

    move-object v0, p2

    move-object v1, p0

    move-object v2, v6

    move-object v3, v7

    move-object v4, p5

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/wsw/cospa/model/impl/if$if;-><init>(Lcom/wsw/cospa/model/impl/if;Landroid/webkit/CookieManager;Landroid/webkit/WebView;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-virtual {v7, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 9
    sget-object p2, Lcom/wsw/cospa/model/impl/if$for;->do:[I

    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->getUrlMode()Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl$UrlMode;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    if-eq p2, v8, :cond_1

    const/4 p3, 0x2

    if-eq p2, p3, :cond_0

    .line 10
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-array p2, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    .line 11
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->getUrl()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p2, p3

    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->getQueryStr()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v8

    const-string p1, "%s?%s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->getQueryStr()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v7, p2, p1}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    :goto_0
    return-void
.end method

.method public static synthetic try(Lio/reactivex/ObservableEmitter;Landroid/os/Handler;Ljava/lang/Runnable;Landroid/webkit/WebView;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/wsw/cospa/model/impl/if;->super(Lio/reactivex/ObservableEmitter;Landroid/os/Handler;Ljava/lang/Runnable;Landroid/webkit/WebView;)V

    return-void
.end method

.method private synthetic while(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;Ljava/lang/String;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    new-instance v8, Landroid/support/v4/j7;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, v7

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/j7;-><init>(Lcom/wsw/cospa/model/impl/if;Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;Ljava/lang/String;Lio/reactivex/ObservableEmitter;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public catch(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;)Lio/reactivex/new;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;",
            ")",
            "Lio/reactivex/new<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/wsw/cospa/utils/analyzeUrl/impl/IHttpPostApi;

    const-class v1, Lcom/wsw/cospa/utils/analyzeUrl/impl/IHttpGetApi;

    sget-object v2, Lcom/wsw/cospa/model/impl/if$for;->do:[I

    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->getUrlMode()Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl$UrlMode;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v0, 0x2

    if-eq v2, v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/model/impl/if;->class(Ljava/lang/String;)Lretrofit2/Retrofit;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/utils/analyzeUrl/impl/IHttpGetApi;

    .line 4
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->getHeaderMap()Ljava/util/Map;

    move-result-object p1

    .line 6
    invoke-interface {v0, v1, p1}, Lcom/wsw/cospa/utils/analyzeUrl/impl/IHttpGetApi;->getWebContent(Ljava/lang/String;Ljava/util/Map;)Lio/reactivex/new;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/model/impl/if;->class(Ljava/lang/String;)Lretrofit2/Retrofit;

    move-result-object v0

    .line 8
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/utils/analyzeUrl/impl/IHttpGetApi;

    .line 9
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->getQueryMap()Ljava/util/Map;

    move-result-object v2

    .line 11
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->getHeaderMap()Ljava/util/Map;

    move-result-object p1

    .line 12
    invoke-interface {v0, v1, v2, p1}, Lcom/wsw/cospa/utils/analyzeUrl/impl/IHttpGetApi;->searchBook(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lio/reactivex/new;

    move-result-object p1

    return-object p1

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->getBody()Lokhttp3/RequestBody;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/wsw/cospa/model/impl/if;->class(Ljava/lang/String;)Lretrofit2/Retrofit;

    move-result-object v1

    .line 15
    invoke-virtual {v1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/utils/analyzeUrl/impl/IHttpPostApi;

    .line 16
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->getBody()Lokhttp3/RequestBody;

    move-result-object v2

    .line 18
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->getHeaderMap()Ljava/util/Map;

    move-result-object p1

    .line 19
    invoke-interface {v0, v1, v2, p1}, Lcom/wsw/cospa/utils/analyzeUrl/impl/IHttpPostApi;->searchBookBody(Ljava/lang/String;Lokhttp3/RequestBody;Ljava/util/Map;)Lio/reactivex/new;

    move-result-object p1

    return-object p1

    .line 20
    :cond_2
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/wsw/cospa/model/impl/if;->class(Ljava/lang/String;)Lretrofit2/Retrofit;

    move-result-object v1

    .line 21
    invoke-virtual {v1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/utils/analyzeUrl/impl/IHttpPostApi;

    .line 22
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->getQueryMap()Ljava/util/Map;

    move-result-object v2

    .line 24
    invoke-virtual {p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;->getHeaderMap()Ljava/util/Map;

    move-result-object p1

    .line 25
    invoke-interface {v0, v1, v2, p1}, Lcom/wsw/cospa/utils/analyzeUrl/impl/IHttpPostApi;->searchBook(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method public class(Ljava/lang/String;)Lretrofit2/Retrofit;
    .locals 1

    .line 1
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/wsw/cospa/model/impl/for;->if()Lcom/wsw/cospa/model/impl/for;

    move-result-object v0

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 3
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 4
    invoke-static {}, Lcom/wsw/cospa/utils/volatile;->goto()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    return-object p1
.end method

.method public const(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Retrofit;
    .locals 1

    .line 1
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 2
    invoke-static {p2}, Lcom/wsw/cospa/model/impl/for;->for(Ljava/lang/String;)Lcom/wsw/cospa/model/impl/for;

    move-result-object p2

    invoke-virtual {p1, p2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 3
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object p2

    invoke-virtual {p1, p2}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 4
    invoke-static {}, Lcom/wsw/cospa/utils/volatile;->goto()Lokhttp3/OkHttpClient;

    move-result-object p2

    invoke-virtual {p1, p2}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    return-object p1
.end method

.method public else(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;Ljava/lang/String;)Lio/reactivex/new;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AddJavascriptInterface",
            "SetJavaScriptEnabled"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/new<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/h7;

    const-string v1, "document.documentElement.outerHTML"

    invoke-direct {v0, p0, p1, v1, p2}, Landroid/support/v4/h7;-><init>(Lcom/wsw/cospa/model/impl/if;Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method public public(Lretrofit2/Response;Ljava/lang/String;Z)Lio/reactivex/new;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Lio/reactivex/new<",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/i7;

    invoke-direct {v0, p1, p3, p2}, Landroid/support/v4/i7;-><init>(Lretrofit2/Response;ZLjava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method public return(Lretrofit2/Response;Ljava/lang/String;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lretrofit2/Response;->raw()Lokhttp3/Response;

    move-result-object v0

    const-string v1, "Set-Cookie"

    invoke-virtual {v0, v1}, Lokhttp3/Response;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v2, "Cookie"

    if-nez v0, :cond_4

    if-eqz p3, :cond_4

    .line 2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-virtual {p1}, Lretrofit2/Response;->raw()Lokhttp3/Response;

    move-result-object p1

    invoke-virtual {p1, v1}, Lokhttp3/Response;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ";"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v0, v4

    .line 6
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 7
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 10
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 11
    invoke-interface {p3, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/hw;->this()Lcom/wsw/cospa/dao/CookieBeanDao;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/CookieBean;

    if-eqz p1, :cond_3

    .line 13
    invoke-virtual {p1, p3}, Lcom/wsw/cospa/bean/CookieBean;->setVariable(Ljava/util/Map;)V

    .line 14
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object p2

    invoke-virtual {p2}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/hw;->this()Lcom/wsw/cospa/dao/CookieBeanDao;

    move-result-object p2

    .line 15
    invoke-virtual {p2, p1}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    goto :goto_1

    .line 16
    :cond_3
    new-instance p1, Lcom/google/gson/GsonBuilder;

    invoke-direct {p1}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 17
    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p1

    .line 19
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hw;->this()Lcom/wsw/cospa/dao/CookieBeanDao;

    move-result-object v0

    new-instance v1, Lcom/wsw/cospa/bean/CookieBean;

    .line 20
    invoke-virtual {p1, p3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p2, p1}, Lcom/wsw/cospa/bean/CookieBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    goto :goto_1

    :cond_4
    if-nez p3, :cond_5

    .line 21
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/hw;->this()Lcom/wsw/cospa/dao/CookieBeanDao;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/CookieBean;

    if-eqz p1, :cond_5

    .line 22
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/CookieBean;->getVariable()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object p2

    invoke-virtual {p2}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/hw;->this()Lcom/wsw/cospa/dao/CookieBeanDao;

    move-result-object p2

    .line 24
    invoke-virtual {p2, p1}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    :cond_5
    :goto_1
    return-void
.end method
