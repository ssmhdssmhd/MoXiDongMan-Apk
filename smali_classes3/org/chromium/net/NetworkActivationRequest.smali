.class public Lorg/chromium/net/NetworkActivationRequest;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation runtime Landroid/support/v4/lo0;
    value = "net::android"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/NetworkActivationRequest$Natives;
    }
.end annotation


# instance fields
.field private final do:Landroid/net/ConnectivityManager;

.field private for:J
    .annotation build Landroid/support/v4/ii0;
        value = "mNativePtrLock"
    .end annotation
.end field

.field private final if:Ljava/lang/Object;


# direct methods
.method private constructor <init>(JI)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/net/NetworkActivationRequest;->if:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lorg/chromium/base/try;->case()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lorg/chromium/net/NetworkActivationRequest;->do:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    :try_start_0
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 5
    invoke-virtual {v1, p3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p3

    const/16 v1, 0xc

    .line 6
    invoke-virtual {p3, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p3

    .line 7
    invoke-virtual {p3}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p3

    .line 8
    invoke-virtual {v0, p3, p0}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 9
    iput-wide p1, p0, Lorg/chromium/net/NetworkActivationRequest;->for:J
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static createMobileNetworkRequest(J)Lorg/chromium/net/NetworkActivationRequest;
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 1
    new-instance v0, Lorg/chromium/net/NetworkActivationRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/chromium/net/NetworkActivationRequest;-><init>(JI)V

    return-object v0
.end method

.method private unregister()V
    .locals 6
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/NetworkActivationRequest;->if:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-wide v1, p0, Lorg/chromium/net/NetworkActivationRequest;->for:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    iput-wide v3, p0, Lorg/chromium/net/NetworkActivationRequest;->for:J

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 5
    iget-object v0, p0, Lorg/chromium/net/NetworkActivationRequest;->do:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/chromium/net/NetworkActivationRequest;->if:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-wide v1, p0, Lorg/chromium/net/NetworkActivationRequest;->for:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    monitor-exit v0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lorg/chromium/net/class;->if()Lorg/chromium/net/NetworkActivationRequest$Natives;

    move-result-object v1

    iget-wide v2, p0, Lorg/chromium/net/NetworkActivationRequest;->for:J

    .line 4
    invoke-static {p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->static(Landroid/net/Network;)J

    move-result-wide v4

    .line 5
    invoke-interface {v1, v2, v3, v4, v5}, Lorg/chromium/net/NetworkActivationRequest$Natives;->notifyAvailable(JJ)V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
