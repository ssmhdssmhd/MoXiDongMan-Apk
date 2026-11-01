.class public final Lrx/internal/operators/t0;
.super Lrx/observables/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/observables/for<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final case:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/y22<",
            "-TR;>;>;"
        }
    .end annotation
.end field

.field public else:Landroid/support/v4/y22;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/y22<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final for:Ljava/lang/Object;

.field public goto:Lrx/Subscription;

.field public final if:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final new:Lrx/functions/Func0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func0<",
            "+",
            "Landroid/support/v4/u22<",
            "-TT;+TR;>;>;"
        }
    .end annotation
.end field

.field public final try:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/support/v4/u22<",
            "-TT;+TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/List;Lrx/Observable;Lrx/functions/Func0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/support/v4/u22<",
            "-TT;+TR;>;>;",
            "Ljava/util/List<",
            "Landroid/support/v4/y22<",
            "-TR;>;>;",
            "Lrx/Observable<",
            "+TT;>;",
            "Lrx/functions/Func0<",
            "+",
            "Landroid/support/v4/u22<",
            "-TT;+TR;>;>;)V"
        }
    .end annotation

    .line 2
    new-instance v0, Lrx/internal/operators/t0$do;

    invoke-direct {v0, p1, p2, p3}, Lrx/internal/operators/t0$do;-><init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lrx/observables/for;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 3
    iput-object p1, p0, Lrx/internal/operators/t0;->for:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lrx/internal/operators/t0;->try:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    iput-object p3, p0, Lrx/internal/operators/t0;->case:Ljava/util/List;

    .line 6
    iput-object p4, p0, Lrx/internal/operators/t0;->if:Lrx/Observable;

    .line 7
    iput-object p5, p0, Lrx/internal/operators/t0;->new:Lrx/functions/Func0;

    return-void
.end method

.method public constructor <init>(Lrx/Observable;Lrx/functions/Func0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "+TT;>;",
            "Lrx/functions/Func0<",
            "+",
            "Landroid/support/v4/u22<",
            "-TT;+TR;>;>;)V"
        }
    .end annotation

    .line 1
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/t0;-><init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/List;Lrx/Observable;Lrx/functions/Func0;)V

    return-void
.end method


# virtual methods
.method public i6(Lrx/functions/Action1;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1<",
            "-",
            "Lrx/Subscription;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/operators/t0;->for:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/t0;->else:Landroid/support/v4/y22;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lrx/internal/operators/t0;->goto:Lrx/Subscription;

    invoke-interface {p1, v1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/t0;->new:Lrx/functions/Func0;

    invoke-interface {v1}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/u22;

    .line 6
    invoke-static {v1}, Lrx/observers/new;->try(Lrx/Observer;)Landroid/support/v4/y22;

    move-result-object v2

    iput-object v2, p0, Lrx/internal/operators/t0;->else:Landroid/support/v4/y22;

    .line 7
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 8
    new-instance v3, Lrx/internal/operators/t0$if;

    invoke-direct {v3, p0, v2}, Lrx/internal/operators/t0$if;-><init>(Lrx/internal/operators/t0;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-static {v3}, Lrx/subscriptions/for;->do(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/Subscription;

    iput-object v2, p0, Lrx/internal/operators/t0;->goto:Lrx/Subscription;

    .line 10
    iget-object v2, p0, Lrx/internal/operators/t0;->case:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/y22;

    .line 11
    new-instance v4, Lrx/internal/operators/t0$for;

    invoke-direct {v4, p0, v3, v3}, Lrx/internal/operators/t0$for;-><init>(Lrx/internal/operators/t0;Landroid/support/v4/y22;Landroid/support/v4/y22;)V

    invoke-virtual {v1, v4}, Lrx/Observable;->r5(Landroid/support/v4/y22;)Lrx/Subscription;

    goto :goto_0

    .line 12
    :cond_1
    iget-object v2, p0, Lrx/internal/operators/t0;->case:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 13
    iget-object v2, p0, Lrx/internal/operators/t0;->try:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    iget-object v0, p0, Lrx/internal/operators/t0;->goto:Lrx/Subscription;

    invoke-interface {p1, v0}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 16
    iget-object p1, p0, Lrx/internal/operators/t0;->for:Ljava/lang/Object;

    monitor-enter p1

    .line 17
    :try_start_1
    iget-object v0, p0, Lrx/internal/operators/t0;->else:Landroid/support/v4/y22;

    .line 18
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 19
    iget-object p1, p0, Lrx/internal/operators/t0;->if:Lrx/Observable;

    invoke-virtual {p1, v0}, Lrx/Observable;->Y3(Landroid/support/v4/y22;)Lrx/Subscription;

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 20
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    .line 21
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
