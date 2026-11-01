.class public final Lio/reactivex/internal/operators/flowable/a1;
.super Lio/reactivex/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/a1$if;,
        Lio/reactivex/internal/operators/flowable/a1$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/for<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final case:Lio/reactivex/try;

.field public else:Lio/reactivex/internal/operators/flowable/a1$do;

.field public final for:I

.field public final if:Landroid/support/v4/oq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/oq<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final new:J

.field public final try:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Landroid/support/v4/oq;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/oq<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lio/reactivex/internal/operators/flowable/a1;-><init>(Landroid/support/v4/oq;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/oq;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/try;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/oq<",
            "TT;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/try;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lio/reactivex/for;-><init>()V

    .line 3
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/a1;->if:Landroid/support/v4/oq;

    .line 4
    iput p2, p0, Lio/reactivex/internal/operators/flowable/a1;->for:I

    .line 5
    iput-wide p3, p0, Lio/reactivex/internal/operators/flowable/a1;->new:J

    .line 6
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/a1;->try:Ljava/util/concurrent/TimeUnit;

    .line 7
    iput-object p6, p0, Lio/reactivex/internal/operators/flowable/a1;->case:Lio/reactivex/try;

    return-void
.end method


# virtual methods
.method public L7(Lio/reactivex/internal/operators/flowable/a1$do;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a1;->else:Lio/reactivex/internal/operators/flowable/a1$do;

    if-eqz v0, :cond_4

    if-eq v0, p1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-wide v0, p1, Lio/reactivex/internal/operators/flowable/a1$do;->subscriberCount:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 4
    iput-wide v0, p1, Lio/reactivex/internal/operators/flowable/a1$do;->subscriberCount:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    .line 5
    iget-boolean v0, p1, Lio/reactivex/internal/operators/flowable/a1$do;->connected:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/a1;->new:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 7
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/a1;->P7(Lio/reactivex/internal/operators/flowable/a1$do;)V

    .line 8
    monitor-exit p0

    return-void

    .line 9
    :cond_2
    new-instance v0, Landroid/support/v4/tw1;

    invoke-direct {v0}, Landroid/support/v4/tw1;-><init>()V

    .line 10
    iput-object v0, p1, Lio/reactivex/internal/operators/flowable/a1$do;->timer:Lio/reactivex/disposables/Disposable;

    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/a1;->case:Lio/reactivex/try;

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/a1;->new:J

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/a1;->try:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, v2, v3, v4}, Lio/reactivex/try;->try(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/tw1;->replace(Lio/reactivex/disposables/Disposable;)Z

    return-void

    .line 13
    :cond_3
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    .line 14
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 15
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public M7(Lio/reactivex/internal/operators/flowable/a1$do;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lio/reactivex/internal/operators/flowable/a1$do;->timer:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p1, Lio/reactivex/internal/operators/flowable/a1$do;->timer:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public N7(Lio/reactivex/internal/operators/flowable/a1$do;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a1;->if:Landroid/support/v4/oq;

    instance-of v1, v0, Lio/reactivex/disposables/Disposable;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    goto :goto_0

    .line 3
    :cond_0
    instance-of v1, v0, Lio/reactivex/internal/disposables/ResettableConnectable;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Lio/reactivex/internal/disposables/ResettableConnectable;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/disposables/Disposable;

    invoke-interface {v0, p1}, Lio/reactivex/internal/disposables/ResettableConnectable;->resetIf(Lio/reactivex/disposables/Disposable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public O7(Lio/reactivex/internal/operators/flowable/a1$do;)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a1;->if:Landroid/support/v4/oq;

    instance-of v0, v0, Lio/reactivex/internal/operators/flowable/FlowablePublishClassic;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a1;->else:Lio/reactivex/internal/operators/flowable/a1$do;

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    .line 4
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/a1;->else:Lio/reactivex/internal/operators/flowable/a1$do;

    .line 5
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/a1;->M7(Lio/reactivex/internal/operators/flowable/a1$do;)V

    .line 6
    :cond_0
    iget-wide v0, p1, Lio/reactivex/internal/operators/flowable/a1$do;->subscriberCount:J

    sub-long/2addr v0, v4

    iput-wide v0, p1, Lio/reactivex/internal/operators/flowable/a1$do;->subscriberCount:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 7
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/a1;->N7(Lio/reactivex/internal/operators/flowable/a1$do;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a1;->else:Lio/reactivex/internal/operators/flowable/a1$do;

    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_2

    .line 9
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/a1;->M7(Lio/reactivex/internal/operators/flowable/a1$do;)V

    .line 10
    iget-wide v6, p1, Lio/reactivex/internal/operators/flowable/a1$do;->subscriberCount:J

    sub-long/2addr v6, v4

    iput-wide v6, p1, Lio/reactivex/internal/operators/flowable/a1$do;->subscriberCount:J

    cmp-long v0, v6, v2

    if-nez v0, :cond_2

    .line 11
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/a1;->else:Lio/reactivex/internal/operators/flowable/a1$do;

    .line 12
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/flowable/a1;->N7(Lio/reactivex/internal/operators/flowable/a1$do;)V

    .line 13
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public P7(Lio/reactivex/internal/operators/flowable/a1$do;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p1, Lio/reactivex/internal/operators/flowable/a1$do;->subscriberCount:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a1;->else:Lio/reactivex/internal/operators/flowable/a1$do;

    if-ne p1, v0, :cond_2

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/a1;->else:Lio/reactivex/internal/operators/flowable/a1$do;

    .line 4
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    .line 5
    invoke-static {p1}, Lio/reactivex/internal/disposables/do;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 6
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/a1;->if:Landroid/support/v4/oq;

    instance-of v2, v1, Lio/reactivex/disposables/Disposable;

    if-eqz v2, :cond_0

    .line 7
    check-cast v1, Lio/reactivex/disposables/Disposable;

    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    goto :goto_0

    .line 8
    :cond_0
    instance-of v2, v1, Lio/reactivex/internal/disposables/ResettableConnectable;

    if-eqz v2, :cond_2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p1, Lio/reactivex/internal/operators/flowable/a1$do;->disconnectedEarly:Z

    goto :goto_0

    .line 10
    :cond_1
    check-cast v1, Lio/reactivex/internal/disposables/ResettableConnectable;

    invoke-interface {v1, v0}, Lio/reactivex/internal/disposables/ResettableConnectable;->resetIf(Lio/reactivex/disposables/Disposable;)V

    .line 11
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public n5(Lorg/reactivestreams/Subscriber;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/a1;->else:Lio/reactivex/internal/operators/flowable/a1$do;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lio/reactivex/internal/operators/flowable/a1$do;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/flowable/a1$do;-><init>(Lio/reactivex/internal/operators/flowable/a1;)V

    .line 4
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/a1;->else:Lio/reactivex/internal/operators/flowable/a1$do;

    .line 5
    :cond_0
    iget-wide v1, v0, Lio/reactivex/internal/operators/flowable/a1$do;->subscriberCount:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 6
    iget-object v3, v0, Lio/reactivex/internal/operators/flowable/a1$do;->timer:Lio/reactivex/disposables/Disposable;

    if-eqz v3, :cond_1

    .line 7
    invoke-interface {v3}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_1
    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 8
    iput-wide v1, v0, Lio/reactivex/internal/operators/flowable/a1$do;->subscriberCount:J

    .line 9
    iget-boolean v3, v0, Lio/reactivex/internal/operators/flowable/a1$do;->connected:Z

    const/4 v4, 0x1

    if-nez v3, :cond_2

    iget v3, p0, Lio/reactivex/internal/operators/flowable/a1;->for:I

    int-to-long v5, v3

    cmp-long v3, v1, v5

    if-nez v3, :cond_2

    .line 10
    iput-boolean v4, v0, Lio/reactivex/internal/operators/flowable/a1$do;->connected:Z

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 11
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/a1;->if:Landroid/support/v4/oq;

    new-instance v2, Lio/reactivex/internal/operators/flowable/a1$if;

    invoke-direct {v2, p1, p0, v0}, Lio/reactivex/internal/operators/flowable/a1$if;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/internal/operators/flowable/a1;Lio/reactivex/internal/operators/flowable/a1$do;)V

    invoke-virtual {v1, v2}, Lio/reactivex/for;->m5(Lio/reactivex/FlowableSubscriber;)V

    if-eqz v4, :cond_3

    .line 13
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/a1;->if:Landroid/support/v4/oq;

    invoke-virtual {p1, v0}, Landroid/support/v4/oq;->P7(Lio/reactivex/functions/Consumer;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
