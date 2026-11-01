.class public final Lorg/chromium/base/static;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final do:Lorg/chromium/base/ThreadUtils$do;

.field private for:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/support/v4/ec2<",
            "*>;",
            "Ljava/lang/ref/WeakReference<",
            "+",
            "Lorg/chromium/base/UnownedUserData;",
            ">;>;"
        }
    .end annotation
.end field

.field private if:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lorg/chromium/base/static;->goto()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Lorg/chromium/base/static;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lorg/chromium/base/ThreadUtils$do;

    invoke-direct {v0}, Lorg/chromium/base/ThreadUtils$do;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/static;->do:Lorg/chromium/base/ThreadUtils$do;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/static;->for:Ljava/util/HashMap;

    .line 5
    iput-object p1, p0, Lorg/chromium/base/static;->if:Landroid/os/Handler;

    return-void
.end method

.method private synthetic case(Lorg/chromium/base/UnownedUserData;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lorg/chromium/base/UnownedUserData;->onDetachedFromHost(Lorg/chromium/base/static;)V

    return-void
.end method

.method public static synthetic do(Lorg/chromium/base/static;Lorg/chromium/base/UnownedUserData;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/base/static;->case(Lorg/chromium/base/UnownedUserData;)V

    return-void
.end method

.method private static goto()Landroid/os/Looper;
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method


# virtual methods
.method public else(Landroid/support/v4/ec2;)V
    .locals 2
    .param p1    # Landroid/support/v4/ec2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/chromium/base/UnownedUserData;",
            ">(",
            "Landroid/support/v4/ec2<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/base/static;->do:Lorg/chromium/base/ThreadUtils$do;

    invoke-virtual {v0}, Lorg/chromium/base/ThreadUtils$do;->if()V

    .line 2
    iget-object v0, p0, Lorg/chromium/base/static;->for:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/base/UnownedUserData;

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Lorg/chromium/base/UnownedUserData;->informOnDetachmentFromHost()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lorg/chromium/base/static;->if:Landroid/os/Handler;

    new-instance v1, Landroid/support/v4/dc2;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/dc2;-><init>(Lorg/chromium/base/static;Lorg/chromium/base/UnownedUserData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public for(Landroid/support/v4/ec2;)Lorg/chromium/base/UnownedUserData;
    .locals 2
    .param p1    # Landroid/support/v4/ec2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/chromium/base/UnownedUserData;",
            ">(",
            "Landroid/support/v4/ec2<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/base/static;->do:Lorg/chromium/base/ThreadUtils$do;

    invoke-virtual {v0}, Lorg/chromium/base/ThreadUtils$do;->if()V

    .line 2
    iget-object v0, p0, Lorg/chromium/base/static;->for:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/UnownedUserData;

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1, p0}, Landroid/support/v4/ec2;->new(Lorg/chromium/base/static;)V

    return-object v1

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/ec2;->case()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/base/UnownedUserData;

    return-object p1
.end method

.method public if()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/base/static;->do:Lorg/chromium/base/ThreadUtils$do;

    invoke-virtual {v0}, Lorg/chromium/base/ThreadUtils$do;->do()V

    .line 2
    invoke-virtual {p0}, Lorg/chromium/base/static;->try()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/chromium/base/static;->for:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/ec2;

    invoke-virtual {v1, p0}, Landroid/support/v4/ec2;->new(Lorg/chromium/base/static;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/chromium/base/static;->for:Ljava/util/HashMap;

    .line 6
    iput-object v0, p0, Lorg/chromium/base/static;->if:Landroid/os/Handler;

    .line 7
    iget-object v0, p0, Lorg/chromium/base/static;->do:Lorg/chromium/base/ThreadUtils$do;

    invoke-virtual {v0}, Lorg/chromium/base/ThreadUtils$do;->for()V

    return-void
.end method

.method public new()I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x5
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/base/static;->do:Lorg/chromium/base/ThreadUtils$do;

    invoke-virtual {v0}, Lorg/chromium/base/ThreadUtils$do;->if()V

    .line 2
    iget-object v0, p0, Lorg/chromium/base/static;->for:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public this(Landroid/support/v4/ec2;Lorg/chromium/base/UnownedUserData;)V
    .locals 2
    .param p1    # Landroid/support/v4/ec2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/chromium/base/UnownedUserData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/chromium/base/UnownedUserData;",
            ">(",
            "Landroid/support/v4/ec2<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/base/static;->do:Lorg/chromium/base/ThreadUtils$do;

    invoke-virtual {v0}, Lorg/chromium/base/ThreadUtils$do;->if()V

    .line 2
    iget-object v0, p0, Lorg/chromium/base/static;->for:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lorg/chromium/base/static;->for(Landroid/support/v4/ec2;)Lorg/chromium/base/UnownedUserData;

    move-result-object v0

    .line 4
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Landroid/support/v4/ec2;->new(Lorg/chromium/base/static;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/chromium/base/static;->for:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public try()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/base/static;->for:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
