.class public final Lokhttp3/dnsoverhttps/DnsOverHttps;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Dns;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;,
        Lokhttp3/dnsoverhttps/DnsOverHttps$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDnsOverHttps.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DnsOverHttps.kt\nokhttp3/dnsoverhttps/DnsOverHttps\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,326:1\n1#2:327\n*E\n"
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0018\u0000 .2\u00020\u0001:\u0002/.B9\u0008\u0000\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010)\u001a\u00020%\u0012\u0006\u0010*\u001a\u00020%\u0012\u0006\u0010+\u001a\u00020%\u00a2\u0006\u0004\u0008,\u0010-J\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002JF\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u00022\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00072\u0010\u0010\r\u001a\u000c\u0012\u0008\u0012\u00060\u000bj\u0002`\u000c0\u00072\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J>\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u00022\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00042\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00072\u0010\u0010\r\u001a\u000c\u0012\u0008\u0012\u00060\u000bj\u0002`\u000c0\u0007H\u0002J8\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0003\u001a\u00020\u00022\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00072\u0010\u0010\r\u001a\u000c\u0012\u0008\u0012\u00060\u000bj\u0002`\u000c0\u0007H\u0002J(\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0010\u0010\r\u001a\u000c\u0012\u0008\u0012\u00060\u000bj\u0002`\u000c0\u0004H\u0002J\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0019\u001a\u00020\u0018H\u0002J\u001e\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\u0018\u0010\u0011\u001a\u00020\u00182\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0016\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0019\u0010\u001e\u001a\u00020\u001d8\u0007@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008\u001e\u0010 R\u0019\u0010\"\u001a\u00020!8\u0007@\u0006\u00a2\u0006\u000c\n\u0004\u0008\"\u0010#\u001a\u0004\u0008\"\u0010$R\u0019\u0010&\u001a\u00020%8\u0007@\u0006\u00a2\u0006\u000c\n\u0004\u0008&\u0010\'\u001a\u0004\u0008&\u0010(R\u0019\u0010)\u001a\u00020%8\u0007@\u0006\u00a2\u0006\u000c\n\u0004\u0008)\u0010\'\u001a\u0004\u0008)\u0010(R\u0019\u0010*\u001a\u00020%8\u0007@\u0006\u00a2\u0006\u000c\n\u0004\u0008*\u0010\'\u001a\u0004\u0008*\u0010(R\u0019\u0010+\u001a\u00020%8\u0007@\u0006\u00a2\u0006\u000c\n\u0004\u0008+\u0010\'\u001a\u0004\u0008+\u0010(\u00a8\u00060"
    }
    d2 = {
        "Lokhttp3/dnsoverhttps/DnsOverHttps;",
        "Lokhttp3/Dns;",
        "",
        "hostname",
        "",
        "Ljava/net/InetAddress;",
        "lookupHttps",
        "",
        "Lokhttp3/Call;",
        "networkRequests",
        "results",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "failures",
        "",
        "type",
        "Landroid/support/v4/ub2;",
        "buildRequest",
        "responses",
        "executeRequests",
        "Lokhttp3/Response;",
        "response",
        "processResponse",
        "throwBestFailure",
        "Lokhttp3/Request;",
        "request",
        "getCacheOnlyResponse",
        "readResponse",
        "lookup",
        "Lokhttp3/OkHttpClient;",
        "client",
        "Lokhttp3/OkHttpClient;",
        "()Lokhttp3/OkHttpClient;",
        "Lokhttp3/HttpUrl;",
        "url",
        "Lokhttp3/HttpUrl;",
        "()Lokhttp3/HttpUrl;",
        "",
        "includeIPv6",
        "Z",
        "()Z",
        "post",
        "resolvePrivateAddresses",
        "resolvePublicAddresses",
        "<init>",
        "(Lokhttp3/OkHttpClient;Lokhttp3/HttpUrl;ZZZZ)V",
        "Companion",
        "Builder",
        "okhttp-dnsoverhttps"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lokhttp3/dnsoverhttps/DnsOverHttps$Companion;

.field private static final DNS_MESSAGE:Lokhttp3/MediaType;
    .annotation build Landroid/support/v4/m41;
    .end annotation
.end field

.field public static final MAX_RESPONSE_SIZE:I = 0x10000


# instance fields
.field private final client:Lokhttp3/OkHttpClient;
    .annotation build Landroid/support/v4/m41;
    .end annotation
.end field

.field private final includeIPv6:Z

.field private final post:Z

.field private final resolvePrivateAddresses:Z

.field private final resolvePublicAddresses:Z

.field private final url:Lokhttp3/HttpUrl;
    .annotation build Landroid/support/v4/m41;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/dnsoverhttps/DnsOverHttps$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/dnsoverhttps/DnsOverHttps$Companion;-><init>(Landroid/support/v4/rx;)V

    sput-object v0, Lokhttp3/dnsoverhttps/DnsOverHttps;->Companion:Lokhttp3/dnsoverhttps/DnsOverHttps$Companion;

    .line 1
    sget-object v0, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v1, "application/dns-message"

    invoke-virtual {v0, v1}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/dnsoverhttps/DnsOverHttps;->DNS_MESSAGE:Lokhttp3/MediaType;

    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/HttpUrl;ZZZZ)V
    .locals 1
    .param p1    # Lokhttp3/OkHttpClient;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .param p2    # Lokhttp3/HttpUrl;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/dnsoverhttps/DnsOverHttps;->client:Lokhttp3/OkHttpClient;

    iput-object p2, p0, Lokhttp3/dnsoverhttps/DnsOverHttps;->url:Lokhttp3/HttpUrl;

    iput-boolean p3, p0, Lokhttp3/dnsoverhttps/DnsOverHttps;->includeIPv6:Z

    iput-boolean p4, p0, Lokhttp3/dnsoverhttps/DnsOverHttps;->post:Z

    iput-boolean p5, p0, Lokhttp3/dnsoverhttps/DnsOverHttps;->resolvePrivateAddresses:Z

    iput-boolean p6, p0, Lokhttp3/dnsoverhttps/DnsOverHttps;->resolvePublicAddresses:Z

    return-void
.end method

.method public static final synthetic access$getDNS_MESSAGE$cp()Lokhttp3/MediaType;
    .locals 1

    .line 1
    sget-object v0, Lokhttp3/dnsoverhttps/DnsOverHttps;->DNS_MESSAGE:Lokhttp3/MediaType;

    return-object v0
.end method

.method public static final synthetic access$processResponse(Lokhttp3/dnsoverhttps/DnsOverHttps;Lokhttp3/Response;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lokhttp3/dnsoverhttps/DnsOverHttps;->processResponse(Lokhttp3/Response;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private final buildRequest(Ljava/lang/String;I)Lokhttp3/Request;
    .locals 7

    .line 6
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    sget-object v1, Lokhttp3/dnsoverhttps/DnsOverHttps;->DNS_MESSAGE:Lokhttp3/MediaType;

    invoke-virtual {v1}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Accept"

    invoke-virtual {v0, v3, v2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 7
    sget-object v2, Lokhttp3/dnsoverhttps/DnsRecordCodec;->INSTANCE:Lokhttp3/dnsoverhttps/DnsRecordCodec;

    invoke-virtual {v2, p1, p2}, Lokhttp3/dnsoverhttps/DnsRecordCodec;->encodeQuery(Ljava/lang/String;I)Lokio/ByteString;

    move-result-object p1

    .line 8
    iget-boolean p2, p0, Lokhttp3/dnsoverhttps/DnsOverHttps;->post:Z

    if-eqz p2, :cond_0

    .line 9
    iget-object p2, p0, Lokhttp3/dnsoverhttps/DnsOverHttps;->url:Lokhttp3/HttpUrl;

    invoke-virtual {v0, p2}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p2

    sget-object v2, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual {v2, p1, v1}, Lokhttp3/RequestBody$Companion;->create(Lokio/ByteString;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-virtual {p2, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lokio/ByteString;->base64Url()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "="

    const-string v3, ""

    invoke-static/range {v1 .. v6}, Lkotlin/text/class;->x1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 11
    iget-object p2, p0, Lokhttp3/dnsoverhttps/DnsOverHttps;->url:Lokhttp3/HttpUrl;

    invoke-virtual {p2}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object p2

    const-string v1, "dns"

    invoke-virtual {p2, v1, p1}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    .line 13
    :goto_0
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method private final buildRequest(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lokhttp3/Call;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Exception;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p5}, Lokhttp3/dnsoverhttps/DnsOverHttps;->buildRequest(Ljava/lang/String;I)Lokhttp3/Request;

    move-result-object p5

    .line 2
    invoke-direct {p0, p5}, Lokhttp3/dnsoverhttps/DnsOverHttps;->getCacheOnlyResponse(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, v0, p1, p3, p4}, Lokhttp3/dnsoverhttps/DnsOverHttps;->processResponse(Lokhttp3/Response;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lokhttp3/dnsoverhttps/DnsOverHttps;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {p1, p5}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    .line 5
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private final executeRequests(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lokhttp3/Call;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lokhttp3/Call;

    .line 3
    new-instance v8, Lokhttp3/dnsoverhttps/DnsOverHttps$executeRequests$1;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p4

    move-object v3, v6

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lokhttp3/dnsoverhttps/DnsOverHttps$executeRequests$1;-><init>(Lokhttp3/dnsoverhttps/DnsOverHttps;Ljava/util/List;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v7, v8}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 5
    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method private final getCacheOnlyResponse(Lokhttp3/Request;)Lokhttp3/Response;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lokhttp3/dnsoverhttps/DnsOverHttps;->post:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lokhttp3/dnsoverhttps/DnsOverHttps;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->cache()Lokhttp3/Cache;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Lokhttp3/CacheControl$Builder;

    invoke-direct {v0}, Lokhttp3/CacheControl$Builder;-><init>()V

    .line 3
    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->onlyIfCached()Lokhttp3/CacheControl$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lokhttp3/dnsoverhttps/DnsOverHttps;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x1f8

    if-eq v0, v1, :cond_0

    return-object p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private final lookupHttps(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 1
    new-instance v6, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    new-instance v8, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    move-object v3, v8

    move-object v4, v7

    .line 4
    invoke-direct/range {v0 .. v5}, Lokhttp3/dnsoverhttps/DnsOverHttps;->buildRequest(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

    .line 5
    iget-boolean v0, p0, Lokhttp3/dnsoverhttps/DnsOverHttps;->includeIPv6:Z

    if-eqz v0, :cond_0

    const/16 v5, 0x1c

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    move-object v3, v8

    move-object v4, v7

    .line 6
    invoke-direct/range {v0 .. v5}, Lokhttp3/dnsoverhttps/DnsOverHttps;->buildRequest(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

    .line 7
    :cond_0
    invoke-direct {p0, p1, v6, v8, v7}, Lokhttp3/dnsoverhttps/DnsOverHttps;->executeRequests(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 8
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-direct {p0, p1, v7}, Lokhttp3/dnsoverhttps/DnsOverHttps;->throwBestFailure(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    :goto_0
    return-object v8
.end method

.method private final processResponse(Lokhttp3/Response;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0, p2, p1}, Lokhttp3/dnsoverhttps/DnsOverHttps;->readResponse(Ljava/lang/String;Lokhttp3/Response;)Ljava/util/List;

    move-result-object p1

    .line 2
    monitor-enter p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :try_start_1
    invoke-interface {p3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :try_start_2
    monitor-exit p3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p3

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 5
    monitor-enter p4

    .line 6
    :try_start_3
    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 7
    monitor-exit p4

    :goto_0
    return-void

    :catchall_1
    move-exception p1

    monitor-exit p4

    throw p1
.end method

.method private final readResponse(Ljava/lang/String;Lokhttp3/Response;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lokhttp3/Response;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lokhttp3/Response;->cacheResponse()Lokhttp3/Response;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lokhttp3/Response;->protocol()Lokhttp3/Protocol;

    move-result-object v0

    sget-object v1, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    if-eq v0, v1, :cond_0

    .line 2
    sget-object v0, Lokhttp3/internal/platform/Platform;->Companion:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v0}, Lokhttp3/internal/platform/Platform$Companion;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect protocol: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lokhttp3/Response;->protocol()Lokhttp3/Protocol;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lokhttp3/internal/platform/Platform;->log$default(Lokhttp3/internal/platform/Platform;Ljava/lang/String;ILjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    .line 5
    invoke-static {v1}, Lkotlin/jvm/internal/super;->const(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v2

    const/high16 v4, 0x10000

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    .line 6
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v1

    invoke-interface {v1}, Lokio/BufferedSource;->readByteString()Lokio/ByteString;

    move-result-object v1

    .line 7
    sget-object v2, Lokhttp3/dnsoverhttps/DnsRecordCodec;->INSTANCE:Lokhttp3/dnsoverhttps/DnsRecordCodec;

    invoke-virtual {v2, p1, v1}, Lokhttp3/dnsoverhttps/DnsRecordCodec;->decodeAnswers(Ljava/lang/String;Lokio/ByteString;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p2, v0}, Landroid/support/v4/qm;->do(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    .line 8
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response size exceeds limit (65536 bytes): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 12
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p2, p1}, Landroid/support/v4/qm;->do(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final throwBestFailure(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Exception;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    .line 3
    instance-of v1, v0, Ljava/net/UnknownHostException;

    if-nez v1, :cond_1

    .line 4
    new-instance v1, Ljava/net/UnknownHostException;

    invoke-direct {v1, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, v0}, Ljava/net/UnknownHostException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    :goto_0
    if-ge v0, p1, :cond_0

    .line 7
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v1, v2}, Lkotlin/case;->do(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_0
    throw v1

    .line 9
    :cond_1
    throw v0

    .line 10
    :cond_2
    new-instance p2, Ljava/net/UnknownHostException;

    invoke-direct {p2, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public final client()Lokhttp3/OkHttpClient;
    .locals 1
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation build Landroid/support/v4/wp0;
        name = "client"
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/dnsoverhttps/DnsOverHttps;->client:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public final includeIPv6()Z
    .locals 1
    .annotation build Landroid/support/v4/wp0;
        name = "includeIPv6"
    .end annotation

    .line 1
    iget-boolean v0, p0, Lokhttp3/dnsoverhttps/DnsOverHttps;->includeIPv6:Z

    return v0
.end method

.method public lookup(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const-string v0, "hostname"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lokhttp3/dnsoverhttps/DnsOverHttps;->resolvePrivateAddresses:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lokhttp3/dnsoverhttps/DnsOverHttps;->resolvePublicAddresses:Z

    if-nez v0, :cond_4

    .line 2
    :cond_0
    sget-object v0, Lokhttp3/dnsoverhttps/DnsOverHttps;->Companion:Lokhttp3/dnsoverhttps/DnsOverHttps$Companion;

    invoke-virtual {v0, p1}, Lokhttp3/dnsoverhttps/DnsOverHttps$Companion;->isPrivateHost$okhttp_dnsoverhttps(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-boolean v1, p0, Lokhttp3/dnsoverhttps/DnsOverHttps;->resolvePrivateAddresses:Z

    if-eqz v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance p1, Ljava/net/UnknownHostException;

    const-string v0, "private hosts not resolved"

    invoke-direct {p1, v0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    if-nez v0, :cond_4

    .line 5
    iget-boolean v0, p0, Lokhttp3/dnsoverhttps/DnsOverHttps;->resolvePublicAddresses:Z

    if-eqz v0, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    new-instance p1, Ljava/net/UnknownHostException;

    const-string v0, "public hosts not resolved"

    invoke-direct {p1, v0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_4
    :goto_1
    invoke-direct {p0, p1}, Lokhttp3/dnsoverhttps/DnsOverHttps;->lookupHttps(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final post()Z
    .locals 1
    .annotation build Landroid/support/v4/wp0;
        name = "post"
    .end annotation

    .line 1
    iget-boolean v0, p0, Lokhttp3/dnsoverhttps/DnsOverHttps;->post:Z

    return v0
.end method

.method public final resolvePrivateAddresses()Z
    .locals 1
    .annotation build Landroid/support/v4/wp0;
        name = "resolvePrivateAddresses"
    .end annotation

    .line 1
    iget-boolean v0, p0, Lokhttp3/dnsoverhttps/DnsOverHttps;->resolvePrivateAddresses:Z

    return v0
.end method

.method public final resolvePublicAddresses()Z
    .locals 1
    .annotation build Landroid/support/v4/wp0;
        name = "resolvePublicAddresses"
    .end annotation

    .line 1
    iget-boolean v0, p0, Lokhttp3/dnsoverhttps/DnsOverHttps;->resolvePublicAddresses:Z

    return v0
.end method

.method public final url()Lokhttp3/HttpUrl;
    .locals 1
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation build Landroid/support/v4/wp0;
        name = "url"
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/dnsoverhttps/DnsOverHttps;->url:Lokhttp3/HttpUrl;

    return-object v0
.end method
