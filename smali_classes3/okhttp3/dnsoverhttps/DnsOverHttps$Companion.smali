.class public final Lokhttp3/dnsoverhttps/DnsOverHttps$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/dnsoverhttps/DnsOverHttps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0017\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0000\u00a2\u0006\u0004\u0008\t\u0010\nR\u0019\u0010\r\u001a\u00020\u000c8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0012\u001a\u00020\u00118\u0006@\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Lokhttp3/dnsoverhttps/DnsOverHttps$Companion;",
        "",
        "Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;",
        "builder",
        "Lokhttp3/Dns;",
        "buildBootstrapClient",
        "",
        "host",
        "",
        "isPrivateHost$okhttp_dnsoverhttps",
        "(Ljava/lang/String;)Z",
        "isPrivateHost",
        "Lokhttp3/MediaType;",
        "DNS_MESSAGE",
        "Lokhttp3/MediaType;",
        "getDNS_MESSAGE",
        "()Lokhttp3/MediaType;",
        "",
        "MAX_RESPONSE_SIZE",
        "I",
        "<init>",
        "()V",
        "okhttp-dnsoverhttps"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/support/v4/rx;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lokhttp3/dnsoverhttps/DnsOverHttps$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$buildBootstrapClient(Lokhttp3/dnsoverhttps/DnsOverHttps$Companion;Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;)Lokhttp3/Dns;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lokhttp3/dnsoverhttps/DnsOverHttps$Companion;->buildBootstrapClient(Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;)Lokhttp3/Dns;

    move-result-object p0

    return-object p0
.end method

.method private final buildBootstrapClient(Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;)Lokhttp3/Dns;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->getBootstrapDnsHosts$okhttp_dnsoverhttps()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lokhttp3/dnsoverhttps/BootstrapDns;

    invoke-virtual {p1}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->getUrl$okhttp_dnsoverhttps()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/super;->const(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lokhttp3/dnsoverhttps/BootstrapDns;-><init>(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lokhttp3/dnsoverhttps/DnsOverHttps$Builder;->getSystemDns$okhttp_dnsoverhttps()Lokhttp3/Dns;

    move-result-object v1

    :goto_0
    return-object v1
.end method


# virtual methods
.method public final getDNS_MESSAGE()Lokhttp3/MediaType;
    .locals 1
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .line 1
    invoke-static {}, Lokhttp3/dnsoverhttps/DnsOverHttps;->access$getDNS_MESSAGE$cp()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public final isPrivateHost$okhttp_dnsoverhttps(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->Companion:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;

    invoke-virtual {v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;->get()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->getEffectiveTldPlusOne(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
