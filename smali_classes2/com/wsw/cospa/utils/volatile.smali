.class public Lcom/wsw/cospa/utils/volatile;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final case:I = 0x708

.field private static do:Lokhttp3/OkHttpClient$Builder; = null

.field private static final else:J = 0x708L

.field private static for:Lcom/wsw/cospa/utils/continue; = null

.field private static goto:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/wsw/cospa/bean/DnsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static if:Lokhttp3/OkHttpClient; = null

.field private static new:Lcom/wsw/cospa/utils/abstract; = null

.field public static final try:I = 0x708


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "OkHttpUtil"

    const-string v1, "static \u5757"

    .line 1
    invoke-static {v0, v1}, Landroid/support/v4/vv0;->if(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/wsw/cospa/utils/volatile;->this()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/wsw/cospa/utils/volatile;->goto:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic break(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
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

.method public static case(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/wsw/cospa/utils/volatile;->goto:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/DnsInfo;

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, v0, Lcom/wsw/cospa/bean/DnsInfo;->ips:Ljava/util/List;

    if-eqz p0, :cond_1

    .line 4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 5
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 6
    :cond_0
    invoke-static {p0}, Lcom/wsw/cospa/utils/volatile;->final(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic catch(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic class(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static const(Ljava/lang/String;Ljava/lang/String;)Lcom/wsw/cospa/bean/DnsInfo;
    .locals 7

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2
    new-instance v0, Lcom/wsw/cospa/bean/DnsInfo;

    invoke-direct {v0}, Lcom/wsw/cospa/bean/DnsInfo;-><init>()V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ";"

    .line 4
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    const-string v6, ","

    if-eq v3, v4, :cond_3

    .line 5
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 6
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, p1, v2

    .line 7
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_1

    .line 8
    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 9
    :goto_0
    array-length v4, p1

    add-int/lit8 v4, v4, -0x2

    if-ge v3, v4, :cond_0

    .line 10
    aget-object v4, p1, v3

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_0
    aget-object p1, v2, v5

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 12
    :cond_1
    :goto_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v5, v2, :cond_2

    .line 13
    aget-object v2, p1, v5

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 14
    :cond_2
    :goto_2
    iput-object v1, v0, Lcom/wsw/cospa/bean/DnsInfo;->ips:Ljava/util/List;

    goto :goto_3

    .line 15
    :cond_3
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_4

    .line 16
    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 17
    aget-object p1, p1, v5

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    iput-object v1, v0, Lcom/wsw/cospa/bean/DnsInfo;->ips:Ljava/util/List;

    .line 19
    :cond_4
    :goto_3
    iput-object p0, v0, Lcom/wsw/cospa/bean/DnsInfo;->hostmame:Ljava/lang/String;

    return-object v0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic do(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/wsw/cospa/utils/volatile;->class(Ljava/lang/String;)V

    return-void
.end method

.method public static else()Lokhttp3/OkHttpClient$Builder;
    .locals 4

    .line 1
    const-class v0, Lcom/wsw/cospa/utils/volatile;

    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v1

    const-string v2, "open_dns_parser_key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v1

    .line 2
    sget-object v2, Lcom/wsw/cospa/utils/volatile;->do:Lokhttp3/OkHttpClient$Builder;

    if-nez v2, :cond_1

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v2, Lcom/wsw/cospa/utils/volatile;->do:Lokhttp3/OkHttpClient$Builder;

    if-nez v2, :cond_0

    .line 5
    invoke-static {}, Lcom/wsw/cospa/utils/volatile;->this()V

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v2, Lcom/wsw/cospa/utils/volatile;->for:Lcom/wsw/cospa/utils/continue;

    if-nez v2, :cond_3

    .line 8
    monitor-enter v0

    .line 9
    :try_start_1
    sget-object v2, Lcom/wsw/cospa/utils/volatile;->for:Lcom/wsw/cospa/utils/continue;

    if-nez v2, :cond_2

    .line 10
    new-instance v2, Lcom/wsw/cospa/utils/continue;

    invoke-direct {v2}, Lcom/wsw/cospa/utils/continue;-><init>()V

    sput-object v2, Lcom/wsw/cospa/utils/volatile;->for:Lcom/wsw/cospa/utils/continue;

    .line 11
    :cond_2
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 12
    :cond_3
    :goto_1
    sget-object v2, Lcom/wsw/cospa/utils/volatile;->new:Lcom/wsw/cospa/utils/abstract;

    if-nez v2, :cond_5

    .line 13
    monitor-enter v0

    .line 14
    :try_start_2
    sget-object v2, Lcom/wsw/cospa/utils/volatile;->new:Lcom/wsw/cospa/utils/abstract;

    if-nez v2, :cond_4

    .line 15
    new-instance v2, Lcom/wsw/cospa/utils/abstract;

    invoke-direct {v2}, Lcom/wsw/cospa/utils/abstract;-><init>()V

    sput-object v2, Lcom/wsw/cospa/utils/volatile;->new:Lcom/wsw/cospa/utils/abstract;

    .line 16
    :cond_4
    monitor-exit v0

    goto :goto_2

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    .line 17
    sget-object v0, Lcom/wsw/cospa/utils/volatile;->do:Lokhttp3/OkHttpClient$Builder;

    sget-object v1, Lcom/wsw/cospa/utils/volatile;->for:Lcom/wsw/cospa/utils/continue;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_3

    .line 18
    :cond_6
    sget-object v0, Lcom/wsw/cospa/utils/volatile;->do:Lokhttp3/OkHttpClient$Builder;

    sget-object v1, Lcom/wsw/cospa/utils/volatile;->new:Lcom/wsw/cospa/utils/abstract;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    .line 19
    :goto_3
    sget-object v0, Lcom/wsw/cospa/utils/volatile;->do:Lokhttp3/OkHttpClient$Builder;

    return-object v0
.end method

.method public static final(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string v2, "http://119.29.29.29/d?dn=%s&ttl=1"

    .line 1
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 3
    :try_start_0
    sget-object v2, Lcom/wsw/cospa/utils/volatile;->if:Lokhttp3/OkHttpClient;

    if-nez v2, :cond_0

    .line 4
    invoke-static {}, Lcom/wsw/cospa/utils/volatile;->goto()Lokhttp3/OkHttpClient;

    move-result-object v2

    sput-object v2, Lcom/wsw/cospa/utils/volatile;->if:Lokhttp3/OkHttpClient;

    .line 5
    :cond_0
    sget-object v2, Lcom/wsw/cospa/utils/volatile;->if:Lokhttp3/OkHttpClient;

    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 10
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "httpdns"

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get ip for host("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") success :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v4/vv0;->do(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {p0, v0}, Lcom/wsw/cospa/utils/volatile;->const(Ljava/lang/String;Ljava/lang/String;)Lcom/wsw/cospa/bean/DnsInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 15
    sget-object v2, Lcom/wsw/cospa/utils/volatile;->goto:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object p0, v0, Lcom/wsw/cospa/bean/DnsInfo;->ips:Ljava/util/List;

    if-eqz p0, :cond_2

    .line 17
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 18
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic for(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/wsw/cospa/utils/volatile;->catch(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p0

    return p0
.end method

.method public static goto()Lokhttp3/OkHttpClient;
    .locals 2

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/volatile;->if:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/wsw/cospa/utils/volatile;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/wsw/cospa/utils/volatile;->if:Lokhttp3/OkHttpClient;

    if-nez v1, :cond_0

    .line 4
    invoke-static {}, Lcom/wsw/cospa/utils/volatile;->else()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    sput-object v1, Lcom/wsw/cospa/utils/volatile;->if:Lokhttp3/OkHttpClient;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    invoke-static {}, Lcom/wsw/cospa/utils/volatile;->else()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sput-object v0, Lcom/wsw/cospa/utils/volatile;->do:Lokhttp3/OkHttpClient$Builder;

    .line 7
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/wsw/cospa/utils/volatile;->if:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public static synthetic if(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 0

    invoke-static {p0}, Lcom/wsw/cospa/utils/volatile;->break(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method public static new(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/wsw/cospa/utils/volatile;->goto()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 5
    new-instance v2, Lretrofit2/Retrofit$Builder;

    invoke-direct {v2}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 6
    invoke-virtual {v2, p1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 8
    invoke-static {v0}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/Gson;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 9
    invoke-static {}, Lretrofit2/converter/scalars/ScalarsConverterFactory;->create()Lretrofit2/converter/scalars/ScalarsConverterFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 10
    invoke-static {}, Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;->create()Lretrofit2/adapter/rxjava/RxJavaCallAdapterFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    .line 12
    invoke-virtual {p1, p0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static this()V
    .locals 10

    .line 1
    const-class v0, Lcom/wsw/cospa/utils/volatile;

    sget-object v1, Lcom/wsw/cospa/utils/volatile;->for:Lcom/wsw/cospa/utils/continue;

    if-nez v1, :cond_1

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/wsw/cospa/utils/volatile;->for:Lcom/wsw/cospa/utils/continue;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/wsw/cospa/utils/continue;

    invoke-direct {v1}, Lcom/wsw/cospa/utils/continue;-><init>()V

    sput-object v1, Lcom/wsw/cospa/utils/volatile;->for:Lcom/wsw/cospa/utils/continue;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v1, Lcom/wsw/cospa/utils/volatile;->new:Lcom/wsw/cospa/utils/abstract;

    if-nez v1, :cond_3

    .line 7
    monitor-enter v0

    .line 8
    :try_start_1
    sget-object v1, Lcom/wsw/cospa/utils/volatile;->new:Lcom/wsw/cospa/utils/abstract;

    if-nez v1, :cond_2

    .line 9
    new-instance v1, Lcom/wsw/cospa/utils/abstract;

    invoke-direct {v1}, Lcom/wsw/cospa/utils/abstract;-><init>()V

    sput-object v1, Lcom/wsw/cospa/utils/volatile;->new:Lcom/wsw/cospa/utils/abstract;

    .line 10
    :cond_2
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 11
    :cond_3
    :goto_1
    invoke-static {}, Lcom/wsw/cospa/utils/cronetUtils/if;->try()Lcom/wsw/cospa/utils/cronetUtils/if;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/cronetUtils/if;->else()Z

    move-result v0

    if-nez v0, :cond_4

    .line 12
    invoke-static {}, Lcom/wsw/cospa/utils/cronetUtils/if;->try()Lcom/wsw/cospa/utils/cronetUtils/if;

    move-result-object v0

    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/utils/cronetUtils/if;->case(Landroid/content/Context;)V

    .line 13
    :cond_4
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sput-object v0, Lcom/wsw/cospa/utils/volatile;->do:Lokhttp3/OkHttpClient$Builder;

    .line 14
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->proxy(Ljava/net/Proxy;)Lokhttp3/OkHttpClient$Builder;

    .line 15
    sget-object v0, Lcom/wsw/cospa/utils/volatile;->do:Lokhttp3/OkHttpClient$Builder;

    new-instance v1, Lcom/wsw/cospa/utils/final;

    invoke-direct {v1}, Lcom/wsw/cospa/utils/final;-><init>()V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->proxySelector(Ljava/net/ProxySelector;)Lokhttp3/OkHttpClient$Builder;

    .line 16
    sget-object v0, Lcom/wsw/cospa/utils/volatile;->do:Lokhttp3/OkHttpClient$Builder;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x708

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 17
    sget-object v0, Lcom/wsw/cospa/utils/volatile;->do:Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 18
    sget-object v0, Lcom/wsw/cospa/utils/volatile;->do:Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 19
    sget-object v0, Lcom/wsw/cospa/utils/volatile;->do:Lokhttp3/OkHttpClient$Builder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    .line 20
    sget-object v0, Lcom/wsw/cospa/utils/volatile;->do:Lokhttp3/OkHttpClient$Builder;

    new-instance v3, Lokhttp3/ConnectionPool;

    const-wide/16 v4, 0x1

    const/4 v6, 0x5

    invoke-direct {v3, v6, v4, v5, v1}, Lokhttp3/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v0, v3}, Lokhttp3/OkHttpClient$Builder;->connectionPool(Lokhttp3/ConnectionPool;)Lokhttp3/OkHttpClient$Builder;

    .line 21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v0, v1, :cond_5

    .line 22
    new-instance v0, Lokhttp3/ConnectionSpec$Builder;

    sget-object v1, Lokhttp3/ConnectionSpec;->MODERN_TLS:Lokhttp3/ConnectionSpec;

    invoke-direct {v0, v1}, Lokhttp3/ConnectionSpec$Builder;-><init>(Lokhttp3/ConnectionSpec;)V

    new-array v7, v3, [Lokhttp3/TlsVersion;

    sget-object v8, Lokhttp3/TlsVersion;->TLS_1_1:Lokhttp3/TlsVersion;

    aput-object v8, v7, v5

    sget-object v8, Lokhttp3/TlsVersion;->TLS_1_2:Lokhttp3/TlsVersion;

    aput-object v8, v7, v2

    sget-object v8, Lokhttp3/TlsVersion;->TLS_1_3:Lokhttp3/TlsVersion;

    aput-object v8, v7, v4

    .line 23
    invoke-virtual {v0, v7}, Lokhttp3/ConnectionSpec$Builder;->tlsVersions([Lokhttp3/TlsVersion;)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lokhttp3/ConnectionSpec$Builder;->build()Lokhttp3/ConnectionSpec;

    move-result-object v0

    .line 25
    new-instance v7, Lokhttp3/ConnectionSpec$Builder;

    invoke-direct {v7, v1}, Lokhttp3/ConnectionSpec$Builder;-><init>(Lokhttp3/ConnectionSpec;)V

    new-array v8, v2, [Lokhttp3/TlsVersion;

    sget-object v9, Lokhttp3/TlsVersion;->SSL_3_0:Lokhttp3/TlsVersion;

    aput-object v9, v8, v5

    .line 26
    invoke-virtual {v7, v8}, Lokhttp3/ConnectionSpec$Builder;->tlsVersions([Lokhttp3/TlsVersion;)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v7

    .line 27
    invoke-virtual {v7}, Lokhttp3/ConnectionSpec$Builder;->build()Lokhttp3/ConnectionSpec;

    move-result-object v7

    .line 28
    sget-object v8, Lcom/wsw/cospa/utils/volatile;->do:Lokhttp3/OkHttpClient$Builder;

    new-array v6, v6, [Lokhttp3/ConnectionSpec;

    aput-object v1, v6, v5

    sget-object v1, Lokhttp3/ConnectionSpec;->COMPATIBLE_TLS:Lokhttp3/ConnectionSpec;

    aput-object v1, v6, v2

    sget-object v1, Lokhttp3/ConnectionSpec;->CLEARTEXT:Lokhttp3/ConnectionSpec;

    aput-object v1, v6, v4

    aput-object v0, v6, v3

    const/4 v0, 0x4

    aput-object v7, v6, v0

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v8, v0}, Lokhttp3/OkHttpClient$Builder;->connectionSpecs(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_2

    .line 29
    :cond_5
    sget-object v0, Lcom/wsw/cospa/utils/volatile;->do:Lokhttp3/OkHttpClient$Builder;

    new-array v1, v3, [Lokhttp3/ConnectionSpec;

    sget-object v3, Lokhttp3/ConnectionSpec;->MODERN_TLS:Lokhttp3/ConnectionSpec;

    aput-object v3, v1, v5

    sget-object v3, Lokhttp3/ConnectionSpec;->COMPATIBLE_TLS:Lokhttp3/ConnectionSpec;

    aput-object v3, v1, v2

    sget-object v3, Lokhttp3/ConnectionSpec;->CLEARTEXT:Lokhttp3/ConnectionSpec;

    aput-object v3, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->connectionSpecs(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    .line 30
    :goto_2
    sget-object v0, Lcom/wsw/cospa/utils/volatile;->do:Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    .line 31
    sget-object v0, Lcom/wsw/cospa/utils/volatile;->do:Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->followSslRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    .line 32
    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 33
    sget-object v1, Lcom/wsw/cospa/utils/volatile;->do:Lokhttp3/OkHttpClient$Builder;

    new-instance v3, Lokhttp3/Cache;

    invoke-static {v0}, Lcom/wsw/cospa/utils/default;->if(Ljava/io/File;)J

    move-result-wide v6

    invoke-direct {v3, v0, v6, v7}, Lokhttp3/Cache;-><init>(Ljava/io/File;J)V

    invoke-virtual {v1, v3}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    .line 34
    sget-object v0, Lcom/wsw/cospa/utils/volatile;->do:Lokhttp3/OkHttpClient$Builder;

    new-instance v1, Lcom/wsw/cospa/utils/instanceof;

    invoke-static {}, Lcom/wsw/cospa/model/impl/try;->new()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/wsw/cospa/utils/instanceof;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    new-instance v3, Lcom/wsw/cospa/utils/volatile$do;

    invoke-direct {v3}, Lcom/wsw/cospa/utils/volatile$do;-><init>()V

    invoke-virtual {v0, v1, v3}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Landroid/support/v4/r61;->do:Landroid/support/v4/r61;

    .line 35
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 36
    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor;

    sget-object v1, Landroid/support/v4/t61;->do:Landroid/support/v4/t61;

    invoke-direct {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V

    .line 37
    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->HEADERS:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    .line 38
    sget-object v1, Lcom/wsw/cospa/utils/volatile;->do:Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 39
    sget-object v0, Lcom/wsw/cospa/utils/volatile;->do:Lokhttp3/OkHttpClient$Builder;

    new-instance v1, Lcom/wsw/cospa/model/impl/new;

    invoke-direct {v1, v2}, Lcom/wsw/cospa/model/impl/new;-><init>(I)V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 40
    sget-object v0, Lcom/wsw/cospa/utils/volatile;->do:Lokhttp3/OkHttpClient$Builder;

    invoke-static {}, Lcom/wsw/cospa/utils/volatile;->try()Lokhttp3/Interceptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 41
    sget-object v0, Lcom/wsw/cospa/utils/volatile;->do:Lokhttp3/OkHttpClient$Builder;

    new-instance v1, Lcom/wsw/cospa/utils/cronetUtils/do;

    invoke-direct {v1}, Lcom/wsw/cospa/utils/cronetUtils/do;-><init>()V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 42
    sget-object v0, Lcom/wsw/cospa/utils/volatile;->do:Lokhttp3/OkHttpClient$Builder;

    sget-object v1, Lokhttp3/brotli/BrotliInterceptor;->INSTANCE:Lokhttp3/brotli/BrotliInterceptor;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 43
    sget-object v0, Lcom/wsw/cospa/utils/volatile;->do:Lokhttp3/OkHttpClient$Builder;

    new-array v1, v4, [Lokhttp3/Protocol;

    sget-object v3, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    aput-object v3, v1, v5

    sget-object v3, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->protocols(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    .line 44
    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "open_dns_parser_key"

    invoke-virtual {v0, v1, v5}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 45
    sget-object v0, Lcom/wsw/cospa/utils/volatile;->do:Lokhttp3/OkHttpClient$Builder;

    sget-object v1, Lcom/wsw/cospa/utils/volatile;->for:Lcom/wsw/cospa/utils/continue;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_3

    .line 46
    :cond_6
    sget-object v0, Lcom/wsw/cospa/utils/volatile;->do:Lokhttp3/OkHttpClient$Builder;

    sget-object v1, Lcom/wsw/cospa/utils/volatile;->new:Lcom/wsw/cospa/utils/abstract;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    .line 47
    :goto_3
    sget-object v0, Lcom/wsw/cospa/utils/volatile;->do:Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/wsw/cospa/utils/volatile;->if:Lokhttp3/OkHttpClient;

    return-void
.end method

.method private static try()Lokhttp3/Interceptor;
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/s61;->do:Landroid/support/v4/s61;

    return-object v0
.end method
