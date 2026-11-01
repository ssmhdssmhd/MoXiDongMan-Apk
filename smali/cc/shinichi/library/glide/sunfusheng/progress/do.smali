.class public Lcc/shinichi/library/glide/sunfusheng/progress/do;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static do:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcc/shinichi/library/glide/sunfusheng/progress/OnProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final if:Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody$InternalProgressListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcc/shinichi/library/glide/sunfusheng/progress/do;->do:Ljava/util/Map;

    .line 3
    new-instance v0, Lcc/shinichi/library/glide/sunfusheng/progress/do$do;

    invoke-direct {v0}, Lcc/shinichi/library/glide/sunfusheng/progress/do$do;-><init>()V

    sput-object v0, Lcc/shinichi/library/glide/sunfusheng/progress/do;->if:Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody$InternalProgressListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic do()Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody$InternalProgressListener;
    .locals 1

    .line 1
    sget-object v0, Lcc/shinichi/library/glide/sunfusheng/progress/do;->if:Lcc/shinichi/library/glide/sunfusheng/progress/ProgressResponseBody$InternalProgressListener;

    return-object v0
.end method

.method public static for()Lokhttp3/OkHttpClient;
    .locals 4

    .line 1
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 2
    new-instance v1, Lcc/shinichi/library/glide/sunfusheng/progress/do$for;

    invoke-direct {v1}, Lcc/shinichi/library/glide/sunfusheng/progress/do$for;-><init>()V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 3
    invoke-static {}, Lcc/shinichi/library/glide/if;->if()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    new-instance v3, Lcc/shinichi/library/glide/sunfusheng/progress/do$if;

    invoke-direct {v3}, Lcc/shinichi/library/glide/sunfusheng/progress/do$if;-><init>()V

    invoke-virtual {v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 4
    invoke-static {}, Lcc/shinichi/library/glide/if;->do()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 5
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 6
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 7
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 8
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static if(Ljava/lang/String;Lcc/shinichi/library/glide/sunfusheng/progress/OnProgressListener;)V
    .locals 9

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    sget-object v0, Lcc/shinichi/library/glide/sunfusheng/progress/do;->do:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v1, p1

    move-object v2, p0

    .line 3
    invoke-interface/range {v1 .. v8}, Lcc/shinichi/library/glide/sunfusheng/progress/OnProgressListener;->onProgress(Ljava/lang/String;ZIJJ)V

    :cond_0
    return-void
.end method

.method public static new(Ljava/lang/String;)Lcc/shinichi/library/glide/sunfusheng/progress/OnProgressListener;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-object v0, Lcc/shinichi/library/glide/sunfusheng/progress/do;->do:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcc/shinichi/library/glide/sunfusheng/progress/do;->do:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcc/shinichi/library/glide/sunfusheng/progress/OnProgressListener;

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static try(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcc/shinichi/library/glide/sunfusheng/progress/do;->do:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
