.class final Lrx/internal/operators/OperatorTimeoutBase$do;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorTimeoutBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/y22<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final case:Lrx/internal/producers/do;

.field public final do:Landroid/support/v4/ww1;

.field public else:Z

.field public final for:Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub<",
            "TT;>;"
        }
    .end annotation
.end field

.field public goto:J

.field public final if:Landroid/support/v4/ax1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/ax1<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final new:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final try:Lrx/if$do;


# direct methods
.method public constructor <init>(Landroid/support/v4/ax1;Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;Landroid/support/v4/ww1;Lrx/Observable;Lrx/if$do;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/ax1<",
            "TT;>;",
            "Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub<",
            "TT;>;",
            "Landroid/support/v4/ww1;",
            "Lrx/Observable<",
            "+TT;>;",
            "Lrx/if$do;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/OperatorTimeoutBase$do;->if:Landroid/support/v4/ax1;

    .line 3
    iput-object p2, p0, Lrx/internal/operators/OperatorTimeoutBase$do;->for:Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;

    .line 4
    iput-object p3, p0, Lrx/internal/operators/OperatorTimeoutBase$do;->do:Landroid/support/v4/ww1;

    .line 5
    iput-object p4, p0, Lrx/internal/operators/OperatorTimeoutBase$do;->new:Lrx/Observable;

    .line 6
    iput-object p5, p0, Lrx/internal/operators/OperatorTimeoutBase$do;->try:Lrx/if$do;

    .line 7
    new-instance p1, Lrx/internal/producers/do;

    invoke-direct {p1}, Lrx/internal/producers/do;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/OperatorTimeoutBase$do;->case:Lrx/internal/producers/do;

    return-void
.end method


# virtual methods
.method public do(J)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lrx/internal/operators/OperatorTimeoutBase$do;->goto:J

    const/4 v2, 0x1

    cmp-long v3, p1, v0

    if-nez v3, :cond_0

    iget-boolean p1, p0, Lrx/internal/operators/OperatorTimeoutBase$do;->else:Z

    if-nez p1, :cond_0

    .line 3
    iput-boolean v2, p0, Lrx/internal/operators/OperatorTimeoutBase$do;->else:Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 4
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 5
    iget-object p1, p0, Lrx/internal/operators/OperatorTimeoutBase$do;->new:Lrx/Observable;

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lrx/internal/operators/OperatorTimeoutBase$do;->if:Landroid/support/v4/ax1;

    new-instance p2, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p2}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-virtual {p1, p2}, Landroid/support/v4/ax1;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 7
    :cond_1
    new-instance p1, Lrx/internal/operators/OperatorTimeoutBase$do$do;

    invoke-direct {p1, p0}, Lrx/internal/operators/OperatorTimeoutBase$do$do;-><init>(Lrx/internal/operators/OperatorTimeoutBase$do;)V

    .line 8
    iget-object p2, p0, Lrx/internal/operators/OperatorTimeoutBase$do;->new:Lrx/Observable;

    invoke-virtual {p2, p1}, Lrx/Observable;->r5(Landroid/support/v4/y22;)Lrx/Subscription;

    .line 9
    iget-object p2, p0, Lrx/internal/operators/OperatorTimeoutBase$do;->do:Landroid/support/v4/ww1;

    invoke-virtual {p2, p1}, Landroid/support/v4/ww1;->if(Lrx/Subscription;)V

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onCompleted()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/operators/OperatorTimeoutBase$do;->else:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    iput-boolean v1, p0, Lrx/internal/operators/OperatorTimeoutBase$do;->else:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 5
    iget-object v0, p0, Lrx/internal/operators/OperatorTimeoutBase$do;->do:Landroid/support/v4/ww1;

    invoke-virtual {v0}, Landroid/support/v4/ww1;->unsubscribe()V

    .line 6
    iget-object v0, p0, Lrx/internal/operators/OperatorTimeoutBase$do;->if:Landroid/support/v4/ax1;

    invoke-virtual {v0}, Landroid/support/v4/ax1;->onCompleted()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/operators/OperatorTimeoutBase$do;->else:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    iput-boolean v1, p0, Lrx/internal/operators/OperatorTimeoutBase$do;->else:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 5
    iget-object v0, p0, Lrx/internal/operators/OperatorTimeoutBase$do;->do:Landroid/support/v4/ww1;

    invoke-virtual {v0}, Landroid/support/v4/ww1;->unsubscribe()V

    .line 6
    iget-object v0, p0, Lrx/internal/operators/OperatorTimeoutBase$do;->if:Landroid/support/v4/ax1;

    invoke-virtual {v0, p1}, Landroid/support/v4/ax1;->onError(Ljava/lang/Throwable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/operators/OperatorTimeoutBase$do;->else:Z

    if-nez v0, :cond_0

    .line 3
    iget-wide v0, p0, Lrx/internal/operators/OperatorTimeoutBase$do;->goto:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lrx/internal/operators/OperatorTimeoutBase$do;->goto:J

    const/4 v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-wide v0, p0, Lrx/internal/operators/OperatorTimeoutBase$do;->goto:J

    const/4 v2, 0x0

    .line 5
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 6
    iget-object v2, p0, Lrx/internal/operators/OperatorTimeoutBase$do;->if:Landroid/support/v4/ax1;

    invoke-virtual {v2, p1}, Landroid/support/v4/ax1;->onNext(Ljava/lang/Object;)V

    .line 7
    iget-object v2, p0, Lrx/internal/operators/OperatorTimeoutBase$do;->do:Landroid/support/v4/ww1;

    iget-object v3, p0, Lrx/internal/operators/OperatorTimeoutBase$do;->for:Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lrx/internal/operators/OperatorTimeoutBase$do;->try:Lrx/if$do;

    invoke-interface {v3, p0, v0, p1, v1}, Lrx/functions/Func4;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lrx/Subscription;

    invoke-virtual {v2, p1}, Landroid/support/v4/ww1;->if(Lrx/Subscription;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/OperatorTimeoutBase$do;->case:Lrx/internal/producers/do;

    invoke-virtual {v0, p1}, Lrx/internal/producers/do;->for(Lrx/Producer;)V

    return-void
.end method
