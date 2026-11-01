.class final Lrx/internal/operators/d1$new;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Producer;
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/d1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "new"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Producer;",
        "Lrx/Observer<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final case:Ljava/util/concurrent/atomic/AtomicLong;

.field public final do:Landroid/support/v4/y22;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/y22<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public volatile else:Lrx/Producer;

.field public for:Z

.field public volatile goto:Z

.field public final if:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public new:Z

.field public this:Ljava/lang/Throwable;

.field public try:J


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/support/v4/y22;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Landroid/support/v4/y22<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lrx/internal/operators/d1$new;->do:Landroid/support/v4/y22;

    .line 3
    invoke-static {}, Lrx/internal/util/unsafe/implements;->case()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    new-instance p2, Lrx/internal/util/unsafe/abstract;

    invoke-direct {p2}, Lrx/internal/util/unsafe/abstract;-><init>()V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p2, Lrx/internal/util/atomic/try;

    invoke-direct {p2}, Lrx/internal/util/atomic/try;-><init>()V

    .line 6
    :goto_0
    iput-object p2, p0, Lrx/internal/operators/d1$new;->if:Ljava/util/Queue;

    .line 7
    invoke-static {p1}, Lrx/internal/operators/return;->break(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/d1$new;->case:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public do(ZZLandroid/support/v4/y22;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Landroid/support/v4/y22<",
            "-TR;>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Landroid/support/v4/y22;->isUnsubscribed()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Lrx/internal/operators/d1$new;->this:Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p3, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_1
    if-eqz p2, :cond_2

    .line 4
    invoke-interface {p3}, Lrx/Observer;->onCompleted()V

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public for()V
    .locals 13

    .line 1
    iget-object v0, p0, Lrx/internal/operators/d1$new;->do:Landroid/support/v4/y22;

    .line 2
    iget-object v1, p0, Lrx/internal/operators/d1$new;->if:Ljava/util/Queue;

    .line 3
    iget-object v2, p0, Lrx/internal/operators/d1$new;->case:Ljava/util/concurrent/atomic/AtomicLong;

    .line 4
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    .line 5
    :goto_0
    iget-boolean v5, p0, Lrx/internal/operators/d1$new;->goto:Z

    .line 6
    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v6

    .line 7
    invoke-virtual {p0, v5, v6, v0}, Lrx/internal/operators/d1$new;->do(ZZLandroid/support/v4/y22;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    :cond_0
    const-wide/16 v5, 0x0

    move-wide v7, v5

    :goto_1
    const/4 v9, 0x0

    cmp-long v10, v7, v3

    if-eqz v10, :cond_4

    .line 8
    iget-boolean v10, p0, Lrx/internal/operators/d1$new;->goto:Z

    .line 9
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_1

    const/4 v12, 0x1

    goto :goto_2

    :cond_1
    const/4 v12, 0x0

    .line 10
    :goto_2
    invoke-virtual {p0, v10, v12, v0}, Lrx/internal/operators/d1$new;->do(ZZLandroid/support/v4/y22;)Z

    move-result v10

    if-eqz v10, :cond_2

    return-void

    :cond_2
    if-eqz v12, :cond_3

    goto :goto_3

    .line 11
    :cond_3
    invoke-static {v11}, Lrx/internal/operators/return;->try(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 12
    :try_start_0
    invoke-interface {v0, v9}, Lrx/Observer;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 13
    invoke-static {v1, v0, v9}, Landroid/support/v4/s80;->this(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    return-void

    :cond_4
    :goto_3
    cmp-long v10, v7, v5

    if-eqz v10, :cond_5

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v10, v3, v5

    if-eqz v10, :cond_5

    .line 14
    invoke-static {v2, v7, v8}, Landroid/support/v4/u6;->this(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v3

    .line 15
    :cond_5
    monitor-enter p0

    .line 16
    :try_start_1
    iget-boolean v5, p0, Lrx/internal/operators/d1$new;->new:Z

    if-nez v5, :cond_6

    .line 17
    iput-boolean v9, p0, Lrx/internal/operators/d1$new;->for:Z

    .line 18
    monitor-exit p0

    return-void

    .line 19
    :cond_6
    iput-boolean v9, p0, Lrx/internal/operators/d1$new;->new:Z

    .line 20
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public if()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lrx/internal/operators/d1$new;->for:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    iput-boolean v1, p0, Lrx/internal/operators/d1$new;->new:Z

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    iput-boolean v1, p0, Lrx/internal/operators/d1$new;->for:Z

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p0}, Lrx/internal/operators/d1$new;->for()V

    return-void

    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onCompleted()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lrx/internal/operators/d1$new;->goto:Z

    .line 2
    invoke-virtual {p0}, Lrx/internal/operators/d1$new;->if()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/d1$new;->this:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lrx/internal/operators/d1$new;->goto:Z

    .line 3
    invoke-virtual {p0}, Lrx/internal/operators/d1$new;->if()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/operators/d1$new;->if:Ljava/util/Queue;

    invoke-static {p1}, Lrx/internal/operators/return;->break(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Lrx/internal/operators/d1$new;->if()V

    return-void
.end method

.method public request(J)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_4

    cmp-long v2, p1, v0

    if-eqz v2, :cond_3

    .line 1
    iget-object v0, p0, Lrx/internal/operators/d1$new;->case:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Landroid/support/v4/u6;->if(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 2
    iget-object v0, p0, Lrx/internal/operators/d1$new;->else:Lrx/Producer;

    if-nez v0, :cond_1

    .line 3
    iget-object v1, p0, Lrx/internal/operators/d1$new;->case:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/d1$new;->else:Lrx/Producer;

    if-nez v0, :cond_0

    .line 5
    iget-wide v2, p0, Lrx/internal/operators/d1$new;->try:J

    .line 6
    invoke-static {v2, v3, p1, p2}, Landroid/support/v4/u6;->do(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lrx/internal/operators/d1$new;->try:J

    .line 7
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0, p1, p2}, Lrx/Producer;->request(J)V

    .line 9
    :cond_2
    invoke-virtual {p0}, Lrx/internal/operators/d1$new;->if()V

    :cond_3
    return-void

    .line 10
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n >= required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 6

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lrx/internal/operators/d1$new;->case:Ljava/util/concurrent/atomic/AtomicLong;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/d1$new;->else:Lrx/Producer;

    if-nez v1, :cond_2

    .line 4
    iget-wide v1, p0, Lrx/internal/operators/d1$new;->try:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    :cond_0
    const-wide/16 v3, 0x0

    .line 5
    iput-wide v3, p0, Lrx/internal/operators/d1$new;->try:J

    .line 6
    iput-object p1, p0, Lrx/internal/operators/d1$new;->else:Lrx/Producer;

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v1, v3

    if-lez v0, :cond_1

    .line 8
    invoke-interface {p1, v1, v2}, Lrx/Producer;->request(J)V

    .line 9
    :cond_1
    invoke-virtual {p0}, Lrx/internal/operators/d1$new;->if()V

    return-void

    .line 10
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t set more than one Producer!"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
