.class public Lcom/bumptech/glide/goto;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;
.implements Lcom/bumptech/glide/manager/LifecycleListener;
.implements Lcom/bumptech/glide/ModelTypes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/goto$if;,
        Lcom/bumptech/glide/goto$for;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/ComponentCallbacks2;",
        "Lcom/bumptech/glide/manager/LifecycleListener;",
        "Lcom/bumptech/glide/ModelTypes<",
        "Lcom/bumptech/glide/else<",
        "Landroid/graphics/drawable/Drawable;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final const:Landroid/support/v4/dn1;

.field private static final final:Landroid/support/v4/dn1;

.field private static final super:Landroid/support/v4/dn1;


# instance fields
.field private final break:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/bumptech/glide/request/RequestListener<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final case:Landroid/support/v4/w42;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private catch:Landroid/support/v4/dn1;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private class:Z

.field public final do:Lcom/bumptech/glide/Glide;

.field private final else:Ljava/lang/Runnable;

.field public final for:Lcom/bumptech/glide/manager/Lifecycle;

.field private final goto:Landroid/os/Handler;

.field public final if:Landroid/content/Context;

.field private final new:Landroid/support/v4/fn1;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final this:Lcom/bumptech/glide/manager/ConnectivityMonitor;

.field private final try:Lcom/bumptech/glide/manager/RequestManagerTreeNode;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/support/v4/dn1;->a0(Ljava/lang/Class;)Landroid/support/v4/dn1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/do;->o()Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    sput-object v0, Lcom/bumptech/glide/goto;->const:Landroid/support/v4/dn1;

    .line 2
    const-class v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-static {v0}, Landroid/support/v4/dn1;->a0(Ljava/lang/Class;)Landroid/support/v4/dn1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/request/do;->o()Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    sput-object v0, Lcom/bumptech/glide/goto;->final:Landroid/support/v4/dn1;

    .line 3
    sget-object v0, Lcom/bumptech/glide/load/engine/case;->for:Lcom/bumptech/glide/load/engine/case;

    .line 4
    invoke-static {v0}, Landroid/support/v4/dn1;->b0(Lcom/bumptech/glide/load/engine/case;)Landroid/support/v4/dn1;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/try;->LOW:Lcom/bumptech/glide/try;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/do;->C(Lcom/bumptech/glide/try;)Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/do;->K(Z)Lcom/bumptech/glide/request/do;

    move-result-object v0

    check-cast v0, Landroid/support/v4/dn1;

    sput-object v0, Lcom/bumptech/glide/goto;->super:Landroid/support/v4/dn1;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Landroid/content/Context;)V
    .locals 7
    .param p1    # Lcom/bumptech/glide/Glide;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/manager/Lifecycle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/manager/RequestManagerTreeNode;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v4, Landroid/support/v4/fn1;

    invoke-direct {v4}, Landroid/support/v4/fn1;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/bumptech/glide/Glide;->goto()Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/goto;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Landroid/support/v4/fn1;Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Landroid/support/v4/fn1;Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;Landroid/content/Context;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Landroid/support/v4/w42;

    invoke-direct {v0}, Landroid/support/v4/w42;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/goto;->case:Landroid/support/v4/w42;

    .line 6
    new-instance v0, Lcom/bumptech/glide/goto$do;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/goto$do;-><init>(Lcom/bumptech/glide/goto;)V

    iput-object v0, p0, Lcom/bumptech/glide/goto;->else:Ljava/lang/Runnable;

    .line 7
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/bumptech/glide/goto;->goto:Landroid/os/Handler;

    .line 8
    iput-object p1, p0, Lcom/bumptech/glide/goto;->do:Lcom/bumptech/glide/Glide;

    .line 9
    iput-object p2, p0, Lcom/bumptech/glide/goto;->for:Lcom/bumptech/glide/manager/Lifecycle;

    .line 10
    iput-object p3, p0, Lcom/bumptech/glide/goto;->try:Lcom/bumptech/glide/manager/RequestManagerTreeNode;

    .line 11
    iput-object p4, p0, Lcom/bumptech/glide/goto;->new:Landroid/support/v4/fn1;

    .line 12
    iput-object p6, p0, Lcom/bumptech/glide/goto;->if:Landroid/content/Context;

    .line 13
    invoke-virtual {p6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    new-instance p6, Lcom/bumptech/glide/goto$for;

    invoke-direct {p6, p0, p4}, Lcom/bumptech/glide/goto$for;-><init>(Lcom/bumptech/glide/goto;Landroid/support/v4/fn1;)V

    .line 14
    invoke-interface {p5, p3, p6}, Lcom/bumptech/glide/manager/ConnectivityMonitorFactory;->build(Landroid/content/Context;Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;)Lcom/bumptech/glide/manager/ConnectivityMonitor;

    move-result-object p3

    iput-object p3, p0, Lcom/bumptech/glide/goto;->this:Lcom/bumptech/glide/manager/ConnectivityMonitor;

    .line 15
    invoke-static {}, Lcom/bumptech/glide/util/case;->native()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 16
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {p2, p0}, Lcom/bumptech/glide/manager/Lifecycle;->addListener(Lcom/bumptech/glide/manager/LifecycleListener;)V

    .line 18
    :goto_0
    invoke-interface {p2, p3}, Lcom/bumptech/glide/manager/Lifecycle;->addListener(Lcom/bumptech/glide/manager/LifecycleListener;)V

    .line 19
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 20
    invoke-virtual {p1}, Lcom/bumptech/glide/Glide;->break()Lcom/bumptech/glide/for;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bumptech/glide/for;->for()Ljava/util/List;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/bumptech/glide/goto;->break:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 21
    invoke-virtual {p1}, Lcom/bumptech/glide/Glide;->break()Lcom/bumptech/glide/for;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bumptech/glide/for;->new()Landroid/support/v4/dn1;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/goto;->volatile(Landroid/support/v4/dn1;)V

    .line 22
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/Glide;->return(Lcom/bumptech/glide/goto;)V

    return-void
.end method

.method private declared-synchronized implements(Landroid/support/v4/dn1;)V
    .locals 1
    .param p1    # Landroid/support/v4/dn1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/goto;->catch:Landroid/support/v4/dn1;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/request/do;->do(Lcom/bumptech/glide/request/do;)Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Landroid/support/v4/dn1;

    iput-object p1, p0, Lcom/bumptech/glide/goto;->catch:Landroid/support/v4/dn1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private transient(Lcom/bumptech/glide/request/target/Target;)V
    .locals 2
    .param p1    # Lcom/bumptech/glide/request/target/Target;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/goto;->protected(Lcom/bumptech/glide/request/target/Target;)Z

    move-result v0

    .line 2
    invoke-interface {p1}, Lcom/bumptech/glide/request/target/Target;->getRequest()Lcom/bumptech/glide/request/Request;

    move-result-object v1

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/goto;->do:Lcom/bumptech/glide/Glide;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/Glide;->static(Lcom/bumptech/glide/request/target/Target;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, v0}, Lcom/bumptech/glide/request/target/Target;->setRequest(Lcom/bumptech/glide/request/Request;)V

    .line 5
    invoke-interface {v1}, Lcom/bumptech/glide/request/Request;->clear()V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized abstract()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/bumptech/glide/util/case;->if()V

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/goto;->private()V

    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/goto;->try:Lcom/bumptech/glide/manager/RequestManagerTreeNode;

    invoke-interface {v0}, Lcom/bumptech/glide/manager/RequestManagerTreeNode;->getDescendants()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/goto;

    .line 4
    invoke-virtual {v1}, Lcom/bumptech/glide/goto;->private()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public break(Ljava/lang/Object;)Lcom/bumptech/glide/else;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/else<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/goto;->catch()Lcom/bumptech/glide/else;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/else;->u0(Ljava/lang/Object;)Lcom/bumptech/glide/else;

    move-result-object p1

    return-object p1
.end method

.method public case()Lcom/bumptech/glide/else;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/else<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/goto;->for(Ljava/lang/Class;)Lcom/bumptech/glide/else;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/support/v4/dn1;->u0(Z)Landroid/support/v4/dn1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/else;->X(Lcom/bumptech/glide/request/do;)Lcom/bumptech/glide/else;

    move-result-object v0

    return-object v0
.end method

.method public catch()Lcom/bumptech/glide/else;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/else<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/goto;->for(Ljava/lang/Class;)Lcom/bumptech/glide/else;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/goto;->super:Landroid/support/v4/dn1;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/else;->X(Lcom/bumptech/glide/request/do;)Lcom/bumptech/glide/else;

    move-result-object v0

    return-object v0
.end method

.method public class()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/request/RequestListener<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/goto;->break:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public declared-synchronized const()Landroid/support/v4/dn1;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/goto;->catch:Landroid/support/v4/dn1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized continue(Landroid/support/v4/dn1;)Lcom/bumptech/glide/goto;
    .locals 0
    .param p1    # Landroid/support/v4/dn1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/goto;->volatile(Landroid/support/v4/dn1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized default()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/goto;->new:Landroid/support/v4/fn1;

    invoke-virtual {v0}, Landroid/support/v4/fn1;->try()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public do(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/goto;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/RequestListener<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/bumptech/glide/goto;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/goto;->break:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public else()Lcom/bumptech/glide/else;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/else<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/goto;->for(Ljava/lang/Class;)Lcom/bumptech/glide/else;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/goto;->final:Landroid/support/v4/dn1;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/else;->X(Lcom/bumptech/glide/request/do;)Lcom/bumptech/glide/else;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized extends()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/goto;->default()V

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/goto;->try:Lcom/bumptech/glide/manager/RequestManagerTreeNode;

    invoke-interface {v0}, Lcom/bumptech/glide/manager/RequestManagerTreeNode;->getDescendants()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/goto;

    .line 3
    invoke-virtual {v1}, Lcom/bumptech/glide/goto;->default()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final(Ljava/lang/Class;)Lcom/bumptech/glide/this;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/bumptech/glide/this<",
            "*TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/goto;->do:Lcom/bumptech/glide/Glide;

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->break()Lcom/bumptech/glide/for;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/for;->try(Ljava/lang/Class;)Lcom/bumptech/glide/this;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized finally()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/goto;->new:Landroid/support/v4/fn1;

    invoke-virtual {v0}, Landroid/support/v4/fn1;->case()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public for(Ljava/lang/Class;)Lcom/bumptech/glide/else;
    .locals 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResourceType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TResourceType;>;)",
            "Lcom/bumptech/glide/else<",
            "TResourceType;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/bumptech/glide/else;

    iget-object v1, p0, Lcom/bumptech/glide/goto;->do:Lcom/bumptech/glide/Glide;

    iget-object v2, p0, Lcom/bumptech/glide/goto;->if:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/bumptech/glide/else;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/goto;Ljava/lang/Class;Landroid/content/Context;)V

    return-object v0
.end method

.method public goto(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/bumptech/glide/goto$if;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/goto$if;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/goto;->this(Lcom/bumptech/glide/request/target/Target;)V

    return-void
.end method

.method public declared-synchronized if(Landroid/support/v4/dn1;)Lcom/bumptech/glide/goto;
    .locals 0
    .param p1    # Landroid/support/v4/dn1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bumptech/glide/goto;->implements(Landroid/support/v4/dn1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public import(Landroid/net/Uri;)Lcom/bumptech/glide/else;
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/bumptech/glide/else<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/goto;->try()Lcom/bumptech/glide/else;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/else;->r0(Landroid/net/Uri;)Lcom/bumptech/glide/else;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized interface(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/Request;)V
    .locals 1
    .param p1    # Lcom/bumptech/glide/request/target/Target;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target<",
            "*>;",
            "Lcom/bumptech/glide/request/Request;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/goto;->case:Landroid/support/v4/w42;

    invoke-virtual {v0, p1}, Landroid/support/v4/w42;->for(Lcom/bumptech/glide/request/target/Target;)V

    .line 2
    iget-object p1, p0, Lcom/bumptech/glide/goto;->new:Landroid/support/v4/fn1;

    invoke-virtual {p1, p2}, Landroid/support/v4/fn1;->this(Lcom/bumptech/glide/request/Request;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic load(Landroid/graphics/Bitmap;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/goto;->throw(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/else;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/goto;->while(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/else;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/net/Uri;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/goto;->import(Landroid/net/Uri;)Lcom/bumptech/glide/else;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/io/File;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/goto;->native(Ljava/io/File;)Lcom/bumptech/glide/else;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/goto;->public(Ljava/lang/Integer;)Lcom/bumptech/glide/else;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 6
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/goto;->return(Ljava/lang/Object;)Lcom/bumptech/glide/else;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 7
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/goto;->static(Ljava/lang/String;)Lcom/bumptech/glide/else;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/net/URL;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/net/URL;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/goto;->switch(Ljava/net/URL;)Lcom/bumptech/glide/else;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load([B)Ljava/lang/Object;
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 9
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/goto;->throws([B)Lcom/bumptech/glide/else;

    move-result-object p1

    return-object p1
.end method

.method public native(Ljava/io/File;)Lcom/bumptech/glide/else;
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/bumptech/glide/else<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/goto;->try()Lcom/bumptech/glide/else;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/else;->s0(Ljava/io/File;)Lcom/bumptech/glide/else;

    move-result-object p1

    return-object p1
.end method

.method public new()Lcom/bumptech/glide/else;
    .locals 2
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/else<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/goto;->for(Ljava/lang/Class;)Lcom/bumptech/glide/else;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/goto;->const:Landroid/support/v4/dn1;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/else;->X(Lcom/bumptech/glide/request/do;)Lcom/bumptech/glide/else;

    move-result-object v0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized onDestroy()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/goto;->case:Landroid/support/v4/w42;

    invoke-virtual {v0}, Landroid/support/v4/w42;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/goto;->case:Landroid/support/v4/w42;

    invoke-virtual {v0}, Landroid/support/v4/w42;->if()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/request/target/Target;

    .line 3
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/goto;->this(Lcom/bumptech/glide/request/target/Target;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/goto;->case:Landroid/support/v4/w42;

    invoke-virtual {v0}, Landroid/support/v4/w42;->do()V

    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/goto;->new:Landroid/support/v4/fn1;

    invoke-virtual {v0}, Landroid/support/v4/fn1;->for()V

    .line 6
    iget-object v0, p0, Lcom/bumptech/glide/goto;->for:Lcom/bumptech/glide/manager/Lifecycle;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/manager/Lifecycle;->removeListener(Lcom/bumptech/glide/manager/LifecycleListener;)V

    .line 7
    iget-object v0, p0, Lcom/bumptech/glide/goto;->for:Lcom/bumptech/glide/manager/Lifecycle;

    iget-object v1, p0, Lcom/bumptech/glide/goto;->this:Lcom/bumptech/glide/manager/ConnectivityMonitor;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/manager/Lifecycle;->removeListener(Lcom/bumptech/glide/manager/LifecycleListener;)V

    .line 8
    iget-object v0, p0, Lcom/bumptech/glide/goto;->goto:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bumptech/glide/goto;->else:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, p0, Lcom/bumptech/glide/goto;->do:Lcom/bumptech/glide/Glide;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/Glide;->finally(Lcom/bumptech/glide/goto;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public declared-synchronized onStart()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/goto;->private()V

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/goto;->case:Landroid/support/v4/w42;

    invoke-virtual {v0}, Landroid/support/v4/w42;->onStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onStop()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/goto;->finally()V

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/goto;->case:Landroid/support/v4/w42;

    invoke-virtual {v0}, Landroid/support/v4/w42;->onStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onTrimMemory(I)V
    .locals 1

    const/16 v0, 0x3c

    if-ne p1, v0, :cond_0

    .line 1
    iget-boolean p1, p0, Lcom/bumptech/glide/goto;->class:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/goto;->extends()V

    :cond_0
    return-void
.end method

.method public declared-synchronized package()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/goto;->finally()V

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/goto;->try:Lcom/bumptech/glide/manager/RequestManagerTreeNode;

    invoke-interface {v0}, Lcom/bumptech/glide/manager/RequestManagerTreeNode;->getDescendants()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/goto;

    .line 3
    invoke-virtual {v1}, Lcom/bumptech/glide/goto;->finally()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized private()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/goto;->new:Landroid/support/v4/fn1;

    invoke-virtual {v0}, Landroid/support/v4/fn1;->goto()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized protected(Lcom/bumptech/glide/request/target/Target;)Z
    .locals 3
    .param p1    # Lcom/bumptech/glide/request/target/Target;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-interface {p1}, Lcom/bumptech/glide/request/target/Target;->getRequest()Lcom/bumptech/glide/request/Request;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return v1

    .line 3
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/bumptech/glide/goto;->new:Landroid/support/v4/fn1;

    invoke-virtual {v2, v0}, Landroid/support/v4/fn1;->if(Lcom/bumptech/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/goto;->case:Landroid/support/v4/w42;

    invoke-virtual {v0, p1}, Landroid/support/v4/w42;->new(Lcom/bumptech/glide/request/target/Target;)V

    const/4 v0, 0x0

    .line 5
    invoke-interface {p1, v0}, Lcom/bumptech/glide/request/target/Target;->setRequest(Lcom/bumptech/glide/request/Request;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    return v1

    :cond_1
    const/4 p1, 0x0

    .line 7
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public public(Ljava/lang/Integer;)Lcom/bumptech/glide/else;
    .locals 1
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/bumptech/glide/else<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/goto;->try()Lcom/bumptech/glide/else;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/else;->t0(Ljava/lang/Integer;)Lcom/bumptech/glide/else;

    move-result-object p1

    return-object p1
.end method

.method public return(Ljava/lang/Object;)Lcom/bumptech/glide/else;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/else<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/goto;->try()Lcom/bumptech/glide/else;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/else;->u0(Ljava/lang/Object;)Lcom/bumptech/glide/else;

    move-result-object p1

    return-object p1
.end method

.method public static(Ljava/lang/String;)Lcom/bumptech/glide/else;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/else<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/goto;->try()Lcom/bumptech/glide/else;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/else;->v0(Ljava/lang/String;)Lcom/bumptech/glide/else;

    move-result-object p1

    return-object p1
.end method

.method public strictfp(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bumptech/glide/goto;->class:Z

    return-void
.end method

.method public declared-synchronized super()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/goto;->new:Landroid/support/v4/fn1;

    invoke-virtual {v0}, Landroid/support/v4/fn1;->new()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public switch(Ljava/net/URL;)Lcom/bumptech/glide/else;
    .locals 1
    .param p1    # Ljava/net/URL;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lcom/bumptech/glide/else<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/goto;->try()Lcom/bumptech/glide/else;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/else;->w0(Ljava/net/URL;)Lcom/bumptech/glide/else;

    move-result-object p1

    return-object p1
.end method

.method public this(Lcom/bumptech/glide/request/target/Target;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/request/target/Target;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/Target<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-direct {p0, p1}, Lcom/bumptech/glide/goto;->transient(Lcom/bumptech/glide/request/target/Target;)V

    return-void
.end method

.method public throw(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/else;
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lcom/bumptech/glide/else<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/goto;->try()Lcom/bumptech/glide/else;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/else;->p0(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/else;

    move-result-object p1

    return-object p1
.end method

.method public throws([B)Lcom/bumptech/glide/else;
    .locals 1
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/bumptech/glide/else<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/goto;->try()Lcom/bumptech/glide/else;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/else;->x0([B)Lcom/bumptech/glide/else;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{tracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/goto;->new:Landroid/support/v4/fn1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", treeNode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/goto;->try:Lcom/bumptech/glide/manager/RequestManagerTreeNode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public try()Lcom/bumptech/glide/else;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/else<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/goto;->for(Ljava/lang/Class;)Lcom/bumptech/glide/else;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized volatile(Landroid/support/v4/dn1;)V
    .locals 0
    .param p1    # Landroid/support/v4/dn1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/bumptech/glide/request/do;->case()Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Landroid/support/v4/dn1;

    invoke-virtual {p1}, Lcom/bumptech/glide/request/do;->if()Lcom/bumptech/glide/request/do;

    move-result-object p1

    check-cast p1, Landroid/support/v4/dn1;

    iput-object p1, p0, Lcom/bumptech/glide/goto;->catch:Landroid/support/v4/dn1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public while(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/else;
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/else<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/goto;->try()Lcom/bumptech/glide/else;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/else;->q0(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/else;

    move-result-object p1

    return-object p1
.end method
