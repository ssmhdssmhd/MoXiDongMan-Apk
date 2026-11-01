.class Lorg/chromium/net/NetworkChangeNotifierAutoDetect$if;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/NetworkChangeNotifierAutoDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation


# instance fields
.field public do:Landroid/net/LinkProperties;

.field public final synthetic for:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

.field public if:Landroid/net/NetworkCapabilities;


# direct methods
.method private constructor <init>(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$if;->for:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;Lorg/chromium/net/NetworkChangeNotifierAutoDetect$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$if;-><init>(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)V

    return-void
.end method

.method private do(Landroid/net/Network;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;
    .locals 11

    .line 1
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$if;->if:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$if;->if:Landroid/net/NetworkCapabilities;

    const/4 v4, 0x5

    .line 2
    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$if;->if:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$if;->for:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->goto(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;->try(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    :cond_1
    move v7, v3

    const/4 v6, 0x0

    goto :goto_2

    .line 6
    :cond_2
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$if;->if:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x9

    const/16 v6, 0x9

    goto :goto_1

    .line 7
    :cond_3
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$if;->if:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x7

    const/4 v6, 0x7

    goto :goto_1

    .line 8
    :cond_4
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$if;->if:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0x11

    const/16 v6, 0x11

    goto :goto_1

    :cond_5
    const/4 v6, -0x1

    goto :goto_1

    :cond_6
    :goto_0
    const/4 v6, 0x1

    :goto_1
    const/4 v7, -0x1

    .line 9
    :goto_2
    new-instance v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;

    const/4 v5, 0x1

    invoke-static {p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->static(Landroid/net/Network;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    iget-object p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$if;->do:Landroid/net/LinkProperties;

    .line 10
    invoke-static {p1}, Landroid/support/v4/g2;->else(Landroid/net/LinkProperties;)Z

    move-result v9

    iget-object p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$if;->do:Landroid/net/LinkProperties;

    .line 11
    invoke-static {p1}, Landroid/support/v4/g2;->for(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v10

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;-><init>(ZIILjava/lang/String;ZLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$if;->do:Landroid/net/LinkProperties;

    .line 2
    iput-object p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$if;->if:Landroid/net/NetworkCapabilities;

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$if;->if:Landroid/net/NetworkCapabilities;

    .line 2
    iget-object p2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$if;->for:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {p2}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->try(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$if;->do:Landroid/net/LinkProperties;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$if;->if:Landroid/net/NetworkCapabilities;

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$if;->for:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-direct {p0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$if;->do(Landroid/net/Network;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->else(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;)V

    :cond_0
    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$if;->do:Landroid/net/LinkProperties;

    .line 2
    iget-object p2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$if;->for:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {p2}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->try(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$if;->do:Landroid/net/LinkProperties;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$if;->if:Landroid/net/NetworkCapabilities;

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$if;->for:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-direct {p0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$if;->do(Landroid/net/Network;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->else(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;)V

    :cond_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 8

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$if;->do:Landroid/net/LinkProperties;

    .line 2
    iput-object p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$if;->if:Landroid/net/NetworkCapabilities;

    .line 3
    iget-object p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$if;->for:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->try(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$if;->for:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    new-instance v7, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, ""

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;-><init>(ZIILjava/lang/String;ZLjava/lang/String;)V

    invoke-static {p1, v7}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->else(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;)V

    :cond_0
    return-void
.end method
