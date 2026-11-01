.class Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/NetworkChangeNotifierAutoDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "for"
.end annotation


# static fields
.field public static final synthetic if:Z


# instance fields
.field private final do:Landroid/net/ConnectivityManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;->do:Landroid/net/ConnectivityManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "connectivity"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;->do:Landroid/net/ConnectivityManager;

    return-void
.end method

.method private else(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p1

    .line 2
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_2

    return-object v0

    .line 3
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v2, :cond_3

    return-object v0

    .line 4
    :cond_3
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getStateForApplication()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    return-object v0

    :cond_4
    return-object p1
.end method


# virtual methods
.method public break(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;->do:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public case(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$goto;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 2
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;->for()Landroid/net/Network;

    move-result-object v1

    .line 3
    iget-object v2, v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;->do:Landroid/net/ConnectivityManager;

    invoke-static {v2, v1}, Landroid/support/v4/e2;->const(Landroid/net/ConnectivityManager;Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v2

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;->do:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-direct {v0, v2}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;->else(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    move-result-object v2

    if-nez v2, :cond_1

    .line 6
    new-instance v1, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, ""

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;-><init>(ZIILjava/lang/String;ZLjava/lang/String;)V

    return-object v1

    :cond_1
    if-eqz v1, :cond_3

    .line 7
    invoke-static {v1}, Lorg/chromium/net/AndroidNetworkLibrary;->getDnsStatus(Landroid/net/Network;)Lorg/chromium/net/DnsStatus;

    move-result-object v3

    if-nez v3, :cond_2

    .line 8
    new-instance v3, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;

    const/4 v5, 0x1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v7

    .line 9
    invoke-static {v1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->static(Landroid/net/Network;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const-string v10, ""

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;-><init>(ZIILjava/lang/String;ZLjava/lang/String;)V

    return-object v3

    .line 10
    :cond_2
    new-instance v4, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;

    const/4 v12, 0x1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v13

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v14

    .line 11
    invoke-static {v1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->static(Landroid/net/Network;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    .line 12
    invoke-virtual {v3}, Lorg/chromium/net/DnsStatus;->getPrivateDnsActive()Z

    move-result v16

    invoke-virtual {v3}, Lorg/chromium/net/DnsStatus;->getPrivateDnsServerName()Ljava/lang/String;

    move-result-object v17

    move-object v11, v4

    invoke-direct/range {v11 .. v17}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;-><init>(ZIILjava/lang/String;ZLjava/lang/String;)V

    return-object v4

    .line 13
    :cond_3
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_5

    .line 14
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 15
    new-instance v1, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;

    const/4 v4, 0x1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v6

    .line 16
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, ""

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;-><init>(ZIILjava/lang/String;ZLjava/lang/String;)V

    return-object v1

    .line 17
    :cond_4
    new-instance v1, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;

    const/4 v11, 0x1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v12

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v13

    .line 18
    invoke-virtual/range {p1 .. p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$goto;->if()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const-string v16, ""

    move-object v10, v1

    invoke-direct/range {v10 .. v16}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;-><init>(ZIILjava/lang/String;ZLjava/lang/String;)V

    return-object v1

    .line 19
    :cond_5
    new-instance v1, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;

    const/4 v3, 0x1

    .line 20
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, ""

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;-><init>(ZIILjava/lang/String;ZLjava/lang/String;)V

    return-object v1
.end method

.method public catch(Landroid/net/Network;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    .line 2
    :try_start_0
    invoke-static {}, Landroid/support/v4/b22;->if()Landroid/support/v4/b22;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :try_start_1
    invoke-virtual {p1, v0}, Landroid/net/Network;->bindSocket(Ljava/net/Socket;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 4
    :try_start_2
    invoke-virtual {v1}, Landroid/support/v4/b22;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 5
    :cond_0
    :try_start_3
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_1

    .line 6
    :try_start_4
    invoke-virtual {v1}, Landroid/support/v4/b22;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_5
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    .line 7
    :try_start_6
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 8
    :catch_1
    throw p1

    :catch_2
    const/4 p1, 0x0

    .line 9
    :try_start_7
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :catch_3
    return p1
.end method

.method public do()[Landroid/net/Network;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;->do:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/net/Network;

    :cond_0
    return-object v0
.end method

.method public for()Landroid/net/Network;
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;->do:Landroid/net/ConnectivityManager;

    invoke-static {v0}, Landroid/support/v4/e2;->try(Landroid/net/ConnectivityManager;)Landroid/net/Network;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_0
    move-object v0, v1

    .line 3
    :cond_1
    iget-object v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;->do:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v1

    .line 4
    :cond_2
    invoke-static {p0, v1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->if(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;Landroid/net/Network;)[Landroid/net/Network;

    move-result-object v1

    .line 5
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v5, v1, v4

    .line 6
    invoke-virtual {p0, v5}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;->try(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 7
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    if-eq v7, v8, :cond_3

    .line 8
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    const/16 v7, 0x11

    if-ne v6, v7, :cond_4

    :cond_3
    move-object v0, v5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public goto(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;->do:Landroid/net/ConnectivityManager;

    invoke-static {v0, p1, p2}, Lorg/chromium/base/compat/if;->catch(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public if(Landroid/net/Network;)I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;->try(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    .line 3
    iget-object p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;->do:Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p1

    invoke-static {v0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->do(II)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x6

    return p1
.end method

.method public new(Landroid/net/Network;)Landroid/net/NetworkCapabilities;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 1
    :try_start_0
    iget-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;->do:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public this(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;->do:Landroid/net/ConnectivityManager;

    invoke-static {v0, p1, p2, p3}, Lorg/chromium/base/compat/if;->class(Landroid/net/ConnectivityManager;Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p3, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;->do:Landroid/net/ConnectivityManager;

    invoke-virtual {p3, p1, p2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :goto_0
    return-void
.end method

.method public try(Landroid/net/Network;)Landroid/net/NetworkInfo;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;->do:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 2
    :catch_0
    :try_start_1
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;->do:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    const/4 p1, 0x0

    return-object p1
.end method
