.class public Landroid/support/v4/y10;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static break(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static case(Lokhttp3/OkHttpClient;)Lokhttp3/dnsoverhttps/DnsOverHttps;
    .locals 4

    .line 1
    new-instance v0, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;

    invoke-direct {v0}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->client(Lokhttp3/OkHttpClient;)Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;

    move-result-object p0

    const-string v0, "https://cloudflare-dns.com/dns-query"

    .line 2
    invoke-static {v0}, Lokhttp3/HttpUrl;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/net/InetAddress;

    const-string v1, "1.1.1.1"

    .line 3
    invoke-static {v1}, Landroid/support/v4/y10;->break(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "1.0.0.1"

    invoke-static {v1}, Landroid/support/v4/y10;->break(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->bootstrapDnsHosts([Ljava/net/InetAddress;)Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0, v2}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->includeIPv6(Z)Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;

    move-result-object p0

    .line 5
    invoke-virtual {p0, v3}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->post(Z)Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->build()Lokhttp3/dnsoverhttps/DnsOverHttps;

    move-result-object p0

    return-object p0
.end method

.method public static catch(Lokhttp3/OkHttpClient;ZZZ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/OkHttpClient;",
            "ZZZ)",
            "Ljava/util/List<",
            "Lokhttp3/dnsoverhttps/DnsOverHttps;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p0}, Landroid/support/v4/y10;->goto(Lokhttp3/OkHttpClient;)Lokhttp3/dnsoverhttps/DnsOverHttps;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p3, :cond_0

    .line 3
    invoke-static {p0}, Landroid/support/v4/y10;->this(Lokhttp3/OkHttpClient;)Lokhttp3/dnsoverhttps/DnsOverHttps;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    invoke-static {p0}, Landroid/support/v4/y10;->new(Lokhttp3/OkHttpClient;)Lokhttp3/dnsoverhttps/DnsOverHttps;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-static {p0}, Landroid/support/v4/y10;->try(Lokhttp3/OkHttpClient;)Lokhttp3/dnsoverhttps/DnsOverHttps;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p3, :cond_1

    .line 6
    invoke-static {p0}, Landroid/support/v4/y10;->case(Lokhttp3/OkHttpClient;)Lokhttp3/dnsoverhttps/DnsOverHttps;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-nez p2, :cond_2

    .line 7
    invoke-static {p0}, Landroid/support/v4/y10;->else(Lokhttp3/OkHttpClient;)Lokhttp3/dnsoverhttps/DnsOverHttps;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_2
    invoke-static {p0}, Landroid/support/v4/y10;->if(Lokhttp3/OkHttpClient;)Lokhttp3/dnsoverhttps/DnsOverHttps;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public static do(Lokhttp3/OkHttpClient;)Lokhttp3/dnsoverhttps/DnsOverHttps;
    .locals 3

    .line 1
    new-instance v0, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;

    invoke-direct {v0}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->client(Lokhttp3/OkHttpClient;)Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;

    move-result-object p0

    const-string v0, "https://dns-unfiltered.adguard.com/dns-query"

    .line 2
    invoke-static {v0}, Lokhttp3/HttpUrl;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;

    move-result-object p0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/net/InetAddress;

    const-string v1, "94.140.14.140"

    .line 3
    invoke-static {v1}, Landroid/support/v4/y10;->break(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "94.140.14.141"

    .line 4
    invoke-static {v1}, Landroid/support/v4/y10;->break(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "2a10:50c0::1:ff"

    .line 5
    invoke-static {v1}, Landroid/support/v4/y10;->break(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "2a10:50c0::2:ff"

    .line 6
    invoke-static {v1}, Landroid/support/v4/y10;->break(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 7
    invoke-virtual {p0, v0}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->bootstrapDnsHosts([Ljava/net/InetAddress;)Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->build()Lokhttp3/dnsoverhttps/DnsOverHttps;

    move-result-object p0

    return-object p0
.end method

.method public static else(Lokhttp3/OkHttpClient;)Lokhttp3/dnsoverhttps/DnsOverHttps;
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;

    invoke-direct {v0}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->client(Lokhttp3/OkHttpClient;)Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;

    move-result-object p0

    const-string v0, "https://doh.crypto.sx/dns-query"

    .line 2
    invoke-static {v0}, Lokhttp3/HttpUrl;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;

    move-result-object p0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->includeIPv6(Z)Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->build()Lokhttp3/dnsoverhttps/DnsOverHttps;

    move-result-object p0

    return-object p0
.end method

.method public static for(Lokhttp3/OkHttpClient;)Lokhttp3/dnsoverhttps/DnsOverHttps;
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;

    invoke-direct {v0}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->client(Lokhttp3/OkHttpClient;)Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;

    move-result-object p0

    const-string v0, "https://doh.cleanbrowsing.org/doh/family-filter/"

    .line 2
    invoke-static {v0}, Lokhttp3/HttpUrl;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;

    move-result-object p0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->includeIPv6(Z)Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->build()Lokhttp3/dnsoverhttps/DnsOverHttps;

    move-result-object p0

    return-object p0
.end method

.method public static goto(Lokhttp3/OkHttpClient;)Lokhttp3/dnsoverhttps/DnsOverHttps;
    .locals 3

    .line 1
    new-instance v0, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;

    invoke-direct {v0}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->client(Lokhttp3/OkHttpClient;)Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;

    move-result-object p0

    const-string v0, "https://dns.google/dns-query"

    .line 2
    invoke-static {v0}, Lokhttp3/HttpUrl;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/net/InetAddress;

    const-string v1, "8.8.4.4"

    .line 3
    invoke-static {v1}, Landroid/support/v4/y10;->break(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "8.8.8.8"

    invoke-static {v1}, Landroid/support/v4/y10;->break(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->bootstrapDnsHosts([Ljava/net/InetAddress;)Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->build()Lokhttp3/dnsoverhttps/DnsOverHttps;

    move-result-object p0

    return-object p0
.end method

.method public static if(Lokhttp3/OkHttpClient;)Lokhttp3/dnsoverhttps/DnsOverHttps;
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;

    invoke-direct {v0}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->client(Lokhttp3/OkHttpClient;)Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;

    move-result-object p0

    const-string v0, "https://dns.dnsoverhttps.net/dns-query"

    .line 2
    invoke-static {v0}, Lokhttp3/HttpUrl;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;

    move-result-object p0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->includeIPv6(Z)Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->build()Lokhttp3/dnsoverhttps/DnsOverHttps;

    move-result-object p0

    return-object p0
.end method

.method public static new(Lokhttp3/OkHttpClient;)Lokhttp3/dnsoverhttps/DnsOverHttps;
    .locals 4

    .line 1
    new-instance v0, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;

    invoke-direct {v0}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->client(Lokhttp3/OkHttpClient;)Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;

    move-result-object p0

    const-string v0, "https://cloudflare-dns.com/dns-query"

    .line 2
    invoke-static {v0}, Lokhttp3/HttpUrl;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;

    move-result-object p0

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/net/InetAddress;

    const-string v1, "162.159.36.1"

    .line 3
    invoke-static {v1}, Landroid/support/v4/y10;->break(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "162.159.46.1"

    .line 4
    invoke-static {v1}, Landroid/support/v4/y10;->break(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "1.1.1.1"

    .line 5
    invoke-static {v1}, Landroid/support/v4/y10;->break(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "1.0.0.1"

    .line 6
    invoke-static {v1}, Landroid/support/v4/y10;->break(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "162.159.132.53"

    .line 7
    invoke-static {v1}, Landroid/support/v4/y10;->break(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const-string v1, "2606:4700:4700::1111"

    .line 8
    invoke-static {v1}, Landroid/support/v4/y10;->break(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const-string v1, "2606:4700:4700::1001"

    .line 9
    invoke-static {v1}, Landroid/support/v4/y10;->break(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v0, v3

    const-string v1, "2606:4700:4700::0064"

    .line 10
    invoke-static {v1}, Landroid/support/v4/y10;->break(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    const/4 v3, 0x7

    aput-object v1, v0, v3

    const-string v1, "2606:4700:4700::6400"

    .line 11
    invoke-static {v1}, Landroid/support/v4/y10;->break(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    const/16 v3, 0x8

    aput-object v1, v0, v3

    .line 12
    invoke-virtual {p0, v0}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->bootstrapDnsHosts([Ljava/net/InetAddress;)Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;

    move-result-object p0

    .line 13
    invoke-virtual {p0, v2}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->includeIPv6(Z)Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;

    move-result-object p0

    .line 14
    invoke-virtual {p0}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->build()Lokhttp3/dnsoverhttps/DnsOverHttps;

    move-result-object p0

    return-object p0
.end method

.method public static this(Lokhttp3/OkHttpClient;)Lokhttp3/dnsoverhttps/DnsOverHttps;
    .locals 3

    .line 1
    new-instance v0, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;

    invoke-direct {v0}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->client(Lokhttp3/OkHttpClient;)Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;

    move-result-object p0

    const-string v0, "https://dns.google/dns-query"

    .line 2
    invoke-static {v0}, Lokhttp3/HttpUrl;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/net/InetAddress;

    const-string v1, "8.8.4.4"

    .line 3
    invoke-static {v1}, Landroid/support/v4/y10;->break(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "8.8.8.8"

    invoke-static {v1}, Landroid/support/v4/y10;->break(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->bootstrapDnsHosts([Ljava/net/InetAddress;)Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0, v2}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->post(Z)Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->build()Lokhttp3/dnsoverhttps/DnsOverHttps;

    move-result-object p0

    return-object p0
.end method

.method public static try(Lokhttp3/OkHttpClient;)Lokhttp3/dnsoverhttps/DnsOverHttps;
    .locals 2

    .line 1
    new-instance v0, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;

    invoke-direct {v0}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->client(Lokhttp3/OkHttpClient;)Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;

    move-result-object p0

    const-string v0, "https://1.1.1.1/dns-query"

    .line 2
    invoke-static {v0}, Lokhttp3/HttpUrl;->get(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/net/InetAddress;

    .line 3
    invoke-virtual {p0, v1}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->bootstrapDnsHosts([Ljava/net/InetAddress;)Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0, v0}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->includeIPv6(Z)Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->build()Lokhttp3/dnsoverhttps/DnsOverHttps;

    move-result-object p0

    return-object p0
.end method
