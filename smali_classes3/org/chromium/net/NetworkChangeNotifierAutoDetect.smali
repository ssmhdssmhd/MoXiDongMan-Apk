.class public Lorg/chromium/net/NetworkChangeNotifierAutoDetect;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkConnectivityIntentFilter;,
        Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;,
        Lorg/chromium/net/NetworkChangeNotifierAutoDetect$else;,
        Lorg/chromium/net/NetworkChangeNotifierAutoDetect$try;,
        Lorg/chromium/net/NetworkChangeNotifierAutoDetect$if;,
        Lorg/chromium/net/NetworkChangeNotifierAutoDetect$new;,
        Lorg/chromium/net/NetworkChangeNotifierAutoDetect$goto;,
        Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;,
        Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;
    }
.end annotation


# static fields
.field private static final throw:Ljava/lang/String;

.field private static final while:I = -0x1


# instance fields
.field private break:Landroid/net/NetworkRequest;

.field private case:Landroid/net/ConnectivityManager$NetworkCallback;

.field private catch:Z

.field private class:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;

.field private const:Z

.field private final do:Landroid/os/Looper;

.field private else:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;

.field private final:Z

.field private final for:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkConnectivityIntentFilter;

.field private goto:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$goto;

.field private final if:Landroid/os/Handler;

.field private final new:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

.field private super:Z

.field private this:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$try;

.field private final try:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$else;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->throw:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;Lorg/chromium/net/NetworkChangeNotifierAutoDetect$else;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->do:Landroid/os/Looper;

    .line 3
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->if:Landroid/os/Handler;

    .line 4
    iput-object p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->new:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

    .line 5
    new-instance p1, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;

    .line 6
    invoke-static {}, Lorg/chromium/base/try;->case()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->else:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;

    .line 7
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-ge p1, v0, :cond_0

    .line 8
    new-instance v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$goto;

    invoke-static {}, Lorg/chromium/base/try;->case()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$goto;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->goto:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$goto;

    :cond_0
    const/16 v0, 0x15

    const/4 v1, 0x0

    if-lt p1, v0, :cond_1

    .line 9
    new-instance v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$try;

    invoke-direct {v0, p0, v1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$try;-><init>(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;Lorg/chromium/net/NetworkChangeNotifierAutoDetect$do;)V

    iput-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->this:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$try;

    .line 10
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v2, 0xc

    .line 11
    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v2, 0xf

    .line 12
    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->break:Landroid/net/NetworkRequest;

    goto :goto_0

    .line 14
    :cond_1
    iput-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->this:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$try;

    .line 15
    iput-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->break:Landroid/net/NetworkRequest;

    :goto_0
    const/16 v0, 0x1e

    if-lt p1, v0, :cond_2

    .line 16
    new-instance p1, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$if;

    invoke-direct {p1, p0, v1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$if;-><init>(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;Lorg/chromium/net/NetworkChangeNotifierAutoDetect$do;)V

    iput-object p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->case:Landroid/net/ConnectivityManager$NetworkCallback;

    goto :goto_1

    :cond_2
    const/16 v0, 0x1c

    if-lt p1, v0, :cond_3

    .line 17
    new-instance p1, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$new;

    invoke-direct {p1, p0, v1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$new;-><init>(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;Lorg/chromium/net/NetworkChangeNotifierAutoDetect$do;)V

    move-object v1, p1

    .line 18
    :cond_3
    iput-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->case:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 19
    :goto_1
    invoke-virtual {p0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->while()Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->class:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;

    .line 20
    new-instance p1, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkConnectivityIntentFilter;

    invoke-direct {p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkConnectivityIntentFilter;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->for:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkConnectivityIntentFilter;

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->const:Z

    .line 22
    iput-boolean p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->final:Z

    .line 23
    iput-object p2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->try:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$else;

    .line 24
    invoke-virtual {p2, p0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$else;->if(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)V

    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->final:Z

    return-void
.end method

.method public static synthetic break(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->extends(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic case(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->class()V

    return-void
.end method

.method private catch()V
    .locals 2

    .line 1
    sget-boolean v0, Landroid/support/v4/ed;->if:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->switch()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called on NetworkChangeNotifierAutoDetect thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private class()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->while()Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->const(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;)V

    return-void
.end method

.method private const(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;->if()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->class:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;

    invoke-virtual {v1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;->if()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;->for()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->class:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;

    invoke-virtual {v1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;->for()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;->goto()Z

    move-result v0

    iget-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->class:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;

    invoke-virtual {v1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;->goto()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;->case()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->class:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;

    .line 5
    invoke-virtual {v1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;->case()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    :cond_0
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->new:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

    invoke-virtual {p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;->if()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;->onConnectionTypeChanged(I)V

    .line 8
    :cond_1
    invoke-virtual {p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;->if()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->class:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;

    invoke-virtual {v1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;->if()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 9
    invoke-virtual {p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;->do()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->class:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;

    invoke-virtual {v1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;->do()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 10
    :cond_2
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->new:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

    invoke-virtual {p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;->do()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;->onConnectionSubtypeChanged(I)V

    .line 11
    :cond_3
    iput-object p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->class:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;

    return-void
.end method

.method public static synthetic do(II)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->final(II)I

    move-result p0

    return p0
.end method

.method public static synthetic else(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->const(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;)V

    return-void
.end method

.method private extends(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->switch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->if:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private static final(II)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x5

    if-eqz p0, :cond_4

    const/4 v3, 0x1

    if-eq p0, v3, :cond_3

    if-eq p0, v1, :cond_4

    if-eq p0, v2, :cond_4

    const/4 p1, 0x6

    if-eq p0, p1, :cond_2

    const/4 p1, 0x7

    if-eq p0, p1, :cond_1

    const/16 p1, 0x9

    if-eq p0, p1, :cond_0

    return v0

    :cond_0
    return v3

    :cond_1
    return p1

    :cond_2
    return v2

    :cond_3
    const/4 p0, 0x2

    return p0

    :cond_4
    const/16 p0, 0x14

    if-eq p1, p0, :cond_5

    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    return v2

    :pswitch_1
    return v1

    :pswitch_2
    const/4 p0, 0x3

    return p0

    :cond_5
    const/16 p0, 0x8

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic for(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->const:Z

    return p0
.end method

.method public static synthetic goto(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->else:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;

    return-object p0
.end method

.method public static synthetic if(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;Landroid/net/Network;)[Landroid/net/Network;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->throw(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;Landroid/net/Network;)[Landroid/net/Network;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic new(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->const:Z

    return p1
.end method

.method public static static(Landroid/net/Network;)J
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Landroid/support/v4/e2;->class(Landroid/net/Network;)J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method private switch()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->do:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic this(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->new:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

    return-object p0
.end method

.method private static throw(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;Landroid/net/Network;)[Landroid/net/Network;
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;->do()[Landroid/net/Network;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v5, v0, v3

    .line 3
    invoke-virtual {v5, p1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p0, v5}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;->new(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v6

    if-eqz v6, :cond_3

    const/16 v7, 0xc

    .line 5
    invoke-virtual {v6, v7}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v7, 0x4

    .line 6
    invoke-virtual {v6, v7}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 7
    invoke-virtual {p0, v5}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;->catch(Landroid/net/Network;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 p0, 0x1

    new-array p0, p0, [Landroid/net/Network;

    aput-object v5, p0, v2

    return-object p0

    :cond_2
    add-int/lit8 v6, v4, 0x1

    .line 8
    aput-object v5, v0, v4

    move v4, v6

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_4
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/net/Network;

    return-object p0
.end method

.method public static synthetic try(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->catch:Z

    return p0
.end method


# virtual methods
.method public default()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->super:Z

    return v0
.end method

.method public finally(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->else:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;

    return-void
.end method

.method public import()J
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide/16 v1, -0x1

    const/16 v3, 0x15

    if-ge v0, v3, :cond_0

    return-wide v1

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->else:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;

    invoke-virtual {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;->for()Landroid/net/Network;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->static(Landroid/net/Network;)J

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method public native()[J
    .locals 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    new-array v0, v1, [J

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->else:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->throw(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;Landroid/net/Network;)[Landroid/net/Network;

    move-result-object v0

    .line 3
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [J

    .line 4
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v5, v0, v1

    add-int/lit8 v6, v4, 0x1

    .line 5
    invoke-static {v5}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->static(Landroid/net/Network;)J

    move-result-wide v7

    aput-wide v7, v2, v4

    add-int/lit8 v4, v6, 0x1

    .line 6
    iget-object v7, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->else:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;

    invoke-virtual {v7, v5}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;->if(Landroid/net/Network;)I

    move-result v5

    int-to-long v7, v5

    aput-wide v7, v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    new-instance p1, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$do;

    invoke-direct {p1, p0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$do;-><init>(Lorg/chromium/net/NetworkChangeNotifierAutoDetect;)V

    invoke-direct {p0, p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->extends(Ljava/lang/Runnable;)V

    return-void
.end method

.method public package(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$goto;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->goto:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$goto;

    return-void
.end method

.method public private()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->catch()V

    .line 2
    iget-boolean v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->catch:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->catch:Z

    .line 4
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->this:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$try;

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->else:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;

    invoke-virtual {v1, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;->break(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->case:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_2

    .line 7
    iget-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->else:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;

    invoke-virtual {v1, v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;->break(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {}, Lorg/chromium/base/try;->case()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_0
    return-void
.end method

.method public public()Lorg/chromium/net/NetworkChangeNotifierAutoDetect$else;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->try:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$else;

    return-object v0
.end method

.method public return()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->catch:Z

    return v0
.end method

.method public super()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->catch()V

    .line 2
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->try:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$else;

    invoke-virtual {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$else;->do()V

    .line 3
    invoke-virtual {p0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->private()V

    return-void
.end method

.method public throws()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->catch()V

    .line 2
    iget-boolean v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->catch:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->class()V

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->final:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->class()V

    .line 6
    :cond_1
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->case:Landroid/net/ConnectivityManager$NetworkCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 7
    :try_start_0
    iget-object v2, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->else:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;

    iget-object v3, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->if:Landroid/os/Handler;

    invoke-virtual {v2, v0, v3}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;->goto(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    iput-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->case:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 9
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->case:Landroid/net/ConnectivityManager$NetworkCallback;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_4

    .line 10
    invoke-static {}, Lorg/chromium/base/try;->case()Landroid/content/Context;

    move-result-object v0

    iget-object v4, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->for:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkConnectivityIntentFilter;

    invoke-virtual {v0, p0, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->const:Z

    .line 11
    :cond_4
    iput-boolean v3, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->catch:Z

    .line 12
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->this:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$try;

    if-eqz v0, :cond_6

    .line 13
    invoke-virtual {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$try;->new()V

    .line 14
    :try_start_1
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->else:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;

    iget-object v4, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->break:Landroid/net/NetworkRequest;

    iget-object v5, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->this:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$try;

    iget-object v6, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->if:Landroid/os/Handler;

    invoke-virtual {v0, v4, v5, v6}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;->this(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 15
    :catch_1
    iput-boolean v3, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->super:Z

    .line 16
    iput-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->this:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$try;

    .line 17
    :goto_2
    iget-boolean v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->super:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->final:Z

    if-eqz v0, :cond_6

    .line 18
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->else:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;

    .line 19
    invoke-static {v0, v1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->throw(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;Landroid/net/Network;)[Landroid/net/Network;

    move-result-object v0

    .line 20
    array-length v1, v0

    new-array v1, v1, [J

    .line 21
    :goto_3
    array-length v3, v0

    if-ge v2, v3, :cond_5

    .line 22
    aget-object v3, v0, v2

    invoke-static {v3}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->static(Landroid/net/Network;)J

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 23
    :cond_5
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->new:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

    invoke-interface {v0, v1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;->purgeActiveNetworkList([J)V

    :cond_6
    return-void
.end method

.method public while()Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->else:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;

    iget-object v1, p0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->goto:Lorg/chromium/net/NetworkChangeNotifierAutoDetect$goto;

    invoke-virtual {v0, v1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$for;->case(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$goto;)Lorg/chromium/net/NetworkChangeNotifierAutoDetect$case;

    move-result-object v0

    return-object v0
.end method
