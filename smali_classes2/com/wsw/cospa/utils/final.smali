.class public Lcom/wsw/cospa/utils/final;
.super Ljava/net/ProxySelector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/utils/final$if;
    }
.end annotation


# static fields
.field private static final break:Ljava/lang/String; = null

.field public static final case:I = 0x3

.field private static final catch:Ljava/lang/String; = "proxy_port"

.field private static final class:I = -0x1

.field private static final else:Ljava/lang/String; = "proxy_type"

.field public static final for:I = 0x0

.field private static final goto:I = 0x1

.field public static final new:I = 0x1

.field private static final this:Ljava/lang/String; = "proxy_ip"

.field public static final try:I = 0x2


# instance fields
.field private do:Ljava/net/ProxySelector;

.field private if:Ljava/net/ProxySelector;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/net/ProxySelector;-><init>()V

    .line 2
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/final;->if:Ljava/net/ProxySelector;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/wsw/cospa/utils/final$if;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/wsw/cospa/utils/final$if;-><init>(Lcom/wsw/cospa/utils/final$do;)V

    iput-object v0, p0, Lcom/wsw/cospa/utils/final;->if:Ljava/net/ProxySelector;

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/final;->do()V

    return-void
.end method


# virtual methods
.method public connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/wsw/cospa/utils/final;->do:Ljava/net/ProxySelector;

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2, p1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    :cond_0
    return-void
.end method

.method public do()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "proxy_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/utils/final;->if:Ljava/net/ProxySelector;

    iput-object v0, p0, Lcom/wsw/cospa/utils/final;->do:Ljava/net/ProxySelector;

    goto :goto_0

    .line 3
    :cond_0
    iput-object v1, p0, Lcom/wsw/cospa/utils/final;->do:Ljava/net/ProxySelector;

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Lcom/wsw/cospa/utils/final$if;

    invoke-direct {v0, v1}, Lcom/wsw/cospa/utils/final$if;-><init>(Lcom/wsw/cospa/utils/final$do;)V

    iput-object v0, p0, Lcom/wsw/cospa/utils/final;->do:Ljava/net/ProxySelector;

    :goto_0
    return-void
.end method

.method public select(Ljava/net/URI;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "proxy_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v2

    const-string v3, "proxy_ip"

    sget-object v4, Lcom/wsw/cospa/utils/final;->break:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/v02;->try(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v3

    const-string v4, "proxy_port"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v3

    .line 4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Landroid/support/v4/om0;->if(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 6
    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 7
    new-instance v2, Ljava/net/Proxy;

    if-ne v0, v1, :cond_1

    sget-object v0, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    :goto_0
    invoke-direct {v2, v0, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/wsw/cospa/utils/final;->do:Ljava/net/ProxySelector;

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0, p1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/wsw/cospa/utils/final;->if:Ljava/net/ProxySelector;

    invoke-virtual {v0, p1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
