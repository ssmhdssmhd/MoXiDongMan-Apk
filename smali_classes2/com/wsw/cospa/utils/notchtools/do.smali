.class public Lcom/wsw/cospa/utils/notchtools/do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/utils/notchtools/core/INotchSupport;


# static fields
.field private static final case:I

.field public static final else:I = 0x1c

.field private static new:Lcom/wsw/cospa/utils/notchtools/do; = null

.field public static final try:Ljava/lang/String; = "notch_container"


# instance fields
.field private do:Lcom/wsw/cospa/utils/notchtools/core/INotchSupport;

.field private for:Z

.field private if:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/wsw/cospa/utils/notchtools/do;->case:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/wsw/cospa/utils/notchtools/do;->do:Lcom/wsw/cospa/utils/notchtools/core/INotchSupport;

    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/utils/notchtools/do;)Lcom/wsw/cospa/utils/notchtools/core/INotchSupport;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/utils/notchtools/do;->do:Lcom/wsw/cospa/utils/notchtools/core/INotchSupport;

    return-object p0
.end method

.method private for(Landroid/view/Window;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/utils/notchtools/do;->do:Lcom/wsw/cospa/utils/notchtools/core/INotchSupport;

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    sget p1, Lcom/wsw/cospa/utils/notchtools/do;->case:I

    const/16 v0, 0x1a

    if-ge p1, v0, :cond_1

    .line 3
    new-instance p1, Landroid/support/v4/dp;

    invoke-direct {p1}, Landroid/support/v4/dp;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/utils/notchtools/do;->do:Lcom/wsw/cospa/utils/notchtools/core/INotchSupport;

    return-void

    :cond_1
    const/16 v0, 0x1c

    if-ge p1, v0, :cond_6

    .line 4
    invoke-static {}, Landroid/support/v4/pz;->do()Landroid/support/v4/pz;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/support/v4/pz;->for()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    new-instance p1, Landroid/support/v4/sk0;

    invoke-direct {p1}, Landroid/support/v4/sk0;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/utils/notchtools/do;->do:Lcom/wsw/cospa/utils/notchtools/core/INotchSupport;

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p1}, Landroid/support/v4/pz;->new()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    new-instance p1, Landroid/support/v4/c01;

    invoke-direct {p1}, Landroid/support/v4/c01;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/utils/notchtools/do;->do:Lcom/wsw/cospa/utils/notchtools/core/INotchSupport;

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p1}, Landroid/support/v4/pz;->case()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    new-instance p1, Landroid/support/v4/bf2;

    invoke-direct {p1}, Landroid/support/v4/bf2;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/utils/notchtools/do;->do:Lcom/wsw/cospa/utils/notchtools/core/INotchSupport;

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {p1}, Landroid/support/v4/pz;->try()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 12
    new-instance p1, Landroid/support/v4/y71;

    invoke-direct {p1}, Landroid/support/v4/y71;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/utils/notchtools/do;->do:Lcom/wsw/cospa/utils/notchtools/core/INotchSupport;

    goto :goto_0

    .line 13
    :cond_5
    new-instance p1, Landroid/support/v4/dp;

    invoke-direct {p1}, Landroid/support/v4/dp;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/utils/notchtools/do;->do:Lcom/wsw/cospa/utils/notchtools/core/INotchSupport;

    :goto_0
    return-void

    :cond_6
    if-lt p1, v0, :cond_7

    .line 14
    new-instance p1, Landroid/support/v4/hb1;

    invoke-direct {p1}, Landroid/support/v4/hb1;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/utils/notchtools/do;->do:Lcom/wsw/cospa/utils/notchtools/core/INotchSupport;

    :cond_7
    return-void
.end method

.method public static goto()Lcom/wsw/cospa/utils/notchtools/do;
    .locals 2

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/notchtools/do;->new:Lcom/wsw/cospa/utils/notchtools/do;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/wsw/cospa/utils/notchtools/do;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/wsw/cospa/utils/notchtools/do;->new:Lcom/wsw/cospa/utils/notchtools/do;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/wsw/cospa/utils/notchtools/do;

    invoke-direct {v1}, Lcom/wsw/cospa/utils/notchtools/do;-><init>()V

    sput-object v1, Lcom/wsw/cospa/utils/notchtools/do;->new:Lcom/wsw/cospa/utils/notchtools/do;

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
    sget-object v0, Lcom/wsw/cospa/utils/notchtools/do;->new:Lcom/wsw/cospa/utils/notchtools/do;

    return-object v0
.end method

.method public static synthetic if(Lcom/wsw/cospa/utils/notchtools/do;Landroid/view/Window;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/utils/notchtools/do;->for(Landroid/view/Window;)V

    return-void
.end method


# virtual methods
.method public case(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/wsw/cospa/utils/notchtools/do;->fullScreenDontUseStatusForPortrait(Landroid/app/Activity;Lcom/wsw/cospa/utils/notchtools/core/OnNotchCallBack;)V

    return-void
.end method

.method public else(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/wsw/cospa/utils/notchtools/do;->fullScreenUseStatus(Landroid/app/Activity;Lcom/wsw/cospa/utils/notchtools/core/OnNotchCallBack;)V

    return-void
.end method

.method public fullScreenDontUseStatus(Landroid/app/Activity;Lcom/wsw/cospa/utils/notchtools/core/OnNotchCallBack;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/notchtools/do;->do:Lcom/wsw/cospa/utils/notchtools/core/INotchSupport;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wsw/cospa/utils/notchtools/do;->for(Landroid/view/Window;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/utils/notchtools/do;->do:Lcom/wsw/cospa/utils/notchtools/core/INotchSupport;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1, p2}, Lcom/wsw/cospa/utils/notchtools/core/INotchSupport;->fullScreenDontUseStatus(Landroid/app/Activity;Lcom/wsw/cospa/utils/notchtools/core/OnNotchCallBack;)V

    :cond_1
    return-void
.end method

.method public fullScreenDontUseStatusForLandscape(Landroid/app/Activity;Lcom/wsw/cospa/utils/notchtools/core/OnNotchCallBack;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/wsw/cospa/utils/notchtools/do$do;

    invoke-direct {v0, p0, p1, p2}, Lcom/wsw/cospa/utils/notchtools/do$do;-><init>(Lcom/wsw/cospa/utils/notchtools/do;Landroid/app/Activity;Lcom/wsw/cospa/utils/notchtools/core/OnNotchCallBack;)V

    invoke-static {v0}, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils;->throw(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public fullScreenDontUseStatusForPortrait(Landroid/app/Activity;Lcom/wsw/cospa/utils/notchtools/core/OnNotchCallBack;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/utils/notchtools/do;->fullScreenDontUseStatus(Landroid/app/Activity;Lcom/wsw/cospa/utils/notchtools/core/OnNotchCallBack;)V

    return-void
.end method

.method public fullScreenUseStatus(Landroid/app/Activity;Lcom/wsw/cospa/utils/notchtools/core/OnNotchCallBack;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/notchtools/do;->do:Lcom/wsw/cospa/utils/notchtools/core/INotchSupport;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wsw/cospa/utils/notchtools/do;->for(Landroid/view/Window;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/utils/notchtools/do;->do:Lcom/wsw/cospa/utils/notchtools/core/INotchSupport;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1, p2}, Lcom/wsw/cospa/utils/notchtools/core/INotchSupport;->fullScreenUseStatus(Landroid/app/Activity;Lcom/wsw/cospa/utils/notchtools/core/OnNotchCallBack;)V

    :cond_1
    return-void
.end method

.method public getNotchHeight(Landroid/view/Window;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/notchtools/do;->do:Lcom/wsw/cospa/utils/notchtools/core/INotchSupport;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/wsw/cospa/utils/notchtools/do;->for(Landroid/view/Window;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/utils/notchtools/do;->do:Lcom/wsw/cospa/utils/notchtools/core/INotchSupport;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_1
    invoke-interface {v0, p1}, Lcom/wsw/cospa/utils/notchtools/core/INotchSupport;->getNotchHeight(Landroid/view/Window;)I

    move-result p1

    return p1
.end method

.method public getStatusHeight(Landroid/view/Window;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/wsw/cospa/utils/notchtools/helper/do;->if(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public isNotchScreen(Landroid/view/Window;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/utils/notchtools/do;->if:Z

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/utils/notchtools/do;->do:Lcom/wsw/cospa/utils/notchtools/core/INotchSupport;

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/wsw/cospa/utils/notchtools/do;->for(Landroid/view/Window;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/utils/notchtools/do;->do:Lcom/wsw/cospa/utils/notchtools/core/INotchSupport;

    if-nez v0, :cond_1

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/wsw/cospa/utils/notchtools/do;->if:Z

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/wsw/cospa/utils/notchtools/do;->for:Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {v0, p1}, Lcom/wsw/cospa/utils/notchtools/core/INotchSupport;->isNotchScreen(Landroid/view/Window;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/wsw/cospa/utils/notchtools/do;->for:Z

    .line 8
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/wsw/cospa/utils/notchtools/do;->for:Z

    return p1
.end method

.method public new(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/wsw/cospa/utils/notchtools/do;->fullScreenDontUseStatus(Landroid/app/Activity;Lcom/wsw/cospa/utils/notchtools/core/OnNotchCallBack;)V

    return-void
.end method

.method public this(Z)Lcom/wsw/cospa/utils/notchtools/do;
    .locals 0

    .line 1
    sput-boolean p1, Lcom/wsw/cospa/utils/notchtools/helper/do;->if:Z

    return-object p0
.end method

.method public try(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/wsw/cospa/utils/notchtools/do;->fullScreenDontUseStatusForLandscape(Landroid/app/Activity;Lcom/wsw/cospa/utils/notchtools/core/OnNotchCallBack;)V

    return-void
.end method
