.class final Lrx/internal/operators/throws$if;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lrx/Producer;
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/throws;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lrx/Producer;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field public static final MISSING:Ljava/lang/Object;

.field private static final serialVersionUID:J = 0x76e7117251786db1L


# instance fields
.field public active:I

.field public final actual:Landroid/support/v4/y22;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/y22<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final bufferSize:I

.field public volatile cancelled:Z

.field public final combiner:Lrx/functions/FuncN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/FuncN<",
            "+TR;>;"
        }
    .end annotation
.end field

.field public complete:I

.field public final delayError:Z

.field public volatile done:Z

.field public final error:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public final latest:[Ljava/lang/Object;

.field public final queue:Landroid/support/v4/d12;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/d12<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field public final subscribers:[Lrx/internal/operators/throws$do;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/internal/operators/throws$do<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/throws$if;->MISSING:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/y22;Lrx/functions/FuncN;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TR;>;",
            "Lrx/functions/FuncN<",
            "+TR;>;IIZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/throws$if;->actual:Landroid/support/v4/y22;

    .line 3
    iput-object p2, p0, Lrx/internal/operators/throws$if;->combiner:Lrx/functions/FuncN;

    .line 4
    iput p4, p0, Lrx/internal/operators/throws$if;->bufferSize:I

    .line 5
    iput-boolean p5, p0, Lrx/internal/operators/throws$if;->delayError:Z

    .line 6
    new-array p1, p3, [Ljava/lang/Object;

    iput-object p1, p0, Lrx/internal/operators/throws$if;->latest:[Ljava/lang/Object;

    .line 7
    sget-object p2, Lrx/internal/operators/throws$if;->MISSING:Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    new-array p1, p3, [Lrx/internal/operators/throws$do;

    iput-object p1, p0, Lrx/internal/operators/throws$if;->subscribers:[Lrx/internal/operators/throws$do;

    .line 9
    new-instance p1, Landroid/support/v4/d12;

    invoke-direct {p1, p4}, Landroid/support/v4/d12;-><init>(I)V

    iput-object p1, p0, Lrx/internal/operators/throws$if;->queue:Landroid/support/v4/d12;

    .line 10
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/throws$if;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 11
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/throws$if;->error:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public cancel(Ljava/util/Queue;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    .line 2
    iget-object p1, p0, Lrx/internal/operators/throws$if;->subscribers:[Lrx/internal/operators/throws$do;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 3
    invoke-virtual {v2}, Landroid/support/v4/y22;->unsubscribe()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public checkTerminated(ZZLandroid/support/v4/y22;Ljava/util/Queue;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Landroid/support/v4/y22<",
            "*>;",
            "Ljava/util/Queue<",
            "*>;Z)Z"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/throws$if;->cancelled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p4}, Lrx/internal/operators/throws$if;->cancel(Ljava/util/Queue;)V

    return v1

    :cond_0
    if-eqz p1, :cond_4

    if-eqz p5, :cond_2

    if-eqz p2, :cond_4

    .line 3
    iget-object p1, p0, Lrx/internal/operators/throws$if;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p3, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {p3}, Lrx/Observer;->onCompleted()V

    :goto_0
    return v1

    .line 6
    :cond_2
    iget-object p1, p0, Lrx/internal/operators/throws$if;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p0, p4}, Lrx/internal/operators/throws$if;->cancel(Ljava/util/Queue;)V

    .line 8
    invoke-interface {p3, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_3
    if-eqz p2, :cond_4

    .line 9
    invoke-interface {p3}, Lrx/Observer;->onCompleted()V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public combine(Ljava/lang/Object;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lrx/internal/operators/throws$if;->subscribers:[Lrx/internal/operators/throws$do;

    aget-object v0, v0, p2

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/throws$if;->latest:[Ljava/lang/Object;

    array-length v2, v1

    .line 4
    aget-object v3, v1, p2

    .line 5
    iget v4, p0, Lrx/internal/operators/throws$if;->active:I

    .line 6
    sget-object v5, Lrx/internal/operators/throws$if;->MISSING:Ljava/lang/Object;

    if-ne v3, v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 7
    iput v4, p0, Lrx/internal/operators/throws$if;->active:I

    .line 8
    :cond_0
    iget v6, p0, Lrx/internal/operators/throws$if;->complete:I

    if-nez p1, :cond_1

    add-int/lit8 v6, v6, 0x1

    .line 9
    iput v6, p0, Lrx/internal/operators/throws$if;->complete:I

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {p1}, Lrx/internal/operators/return;->try(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v1, p2

    :goto_0
    const/4 p2, 0x0

    const/4 v1, 0x1

    if-ne v4, v2, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eq v6, v2, :cond_3

    if-nez p1, :cond_4

    if-ne v3, v5, :cond_4

    :cond_3
    const/4 p2, 0x1

    :cond_4
    if-nez p2, :cond_7

    if-eqz p1, :cond_5

    if-eqz v4, :cond_5

    .line 11
    iget-object p2, p0, Lrx/internal/operators/throws$if;->queue:Landroid/support/v4/d12;

    iget-object v1, p0, Lrx/internal/operators/throws$if;->latest:[Ljava/lang/Object;

    invoke-virtual {v1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/support/v4/d12;->class(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    if-nez p1, :cond_8

    .line 12
    iget-object p2, p0, Lrx/internal/operators/throws$if;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_8

    if-eq v3, v5, :cond_6

    iget-boolean p2, p0, Lrx/internal/operators/throws$if;->delayError:Z

    if-nez p2, :cond_8

    .line 13
    :cond_6
    iput-boolean v1, p0, Lrx/internal/operators/throws$if;->done:Z

    goto :goto_2

    .line 14
    :cond_7
    iput-boolean v1, p0, Lrx/internal/operators/throws$if;->done:Z

    .line 15
    :cond_8
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_9

    if-eqz p1, :cond_9

    const-wide/16 p1, 0x1

    .line 16
    invoke-virtual {v0, p1, p2}, Lrx/internal/operators/throws$do;->do(J)V

    return-void

    .line 17
    :cond_9
    invoke-virtual {p0}, Lrx/internal/operators/throws$if;->drain()V

    return-void

    :catchall_0
    move-exception p1

    .line 18
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public drain()V
    .locals 19

    move-object/from16 v7, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v8, v7, Lrx/internal/operators/throws$if;->queue:Landroid/support/v4/d12;

    .line 3
    iget-object v9, v7, Lrx/internal/operators/throws$if;->actual:Landroid/support/v4/y22;

    .line 4
    iget-boolean v0, v7, Lrx/internal/operators/throws$if;->delayError:Z

    .line 5
    iget-object v10, v7, Lrx/internal/operators/throws$if;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v11, 0x1

    const/4 v12, 0x1

    .line 6
    :cond_1
    iget-boolean v2, v7, Lrx/internal/operators/throws$if;->done:Z

    invoke-interface {v8}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    move-object/from16 v1, p0

    move-object v4, v9

    move-object v5, v8

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lrx/internal/operators/throws$if;->checkTerminated(ZZLandroid/support/v4/y22;Ljava/util/Queue;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v13

    const-wide/16 v5, 0x0

    :goto_0
    cmp-long v1, v5, v13

    if-eqz v1, :cond_7

    .line 8
    iget-boolean v2, v7, Lrx/internal/operators/throws$if;->done:Z

    .line 9
    invoke-interface {v8}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lrx/internal/operators/throws$do;

    if-nez v4, :cond_3

    const/16 v16, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    const/16 v16, 0x0

    :goto_1
    move-object/from16 v1, p0

    move/from16 v3, v16

    move-object v15, v4

    move-object v4, v9

    move-wide/from16 v17, v5

    move-object v5, v8

    move v6, v0

    .line 10
    invoke-virtual/range {v1 .. v6}, Lrx/internal/operators/throws$if;->checkTerminated(ZZLandroid/support/v4/y22;Ljava/util/Queue;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    :cond_4
    if-eqz v16, :cond_5

    move-wide/from16 v3, v17

    goto :goto_2

    .line 11
    :cond_5
    invoke-interface {v8}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 12
    invoke-interface {v8}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    if-nez v1, :cond_6

    .line 13
    iput-boolean v11, v7, Lrx/internal/operators/throws$if;->cancelled:Z

    .line 14
    invoke-virtual {v7, v8}, Lrx/internal/operators/throws$if;->cancel(Ljava/util/Queue;)V

    .line 15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Broken queue?! Sender received but not the array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v0}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 16
    :cond_6
    :try_start_0
    iget-object v2, v7, Lrx/internal/operators/throws$if;->combiner:Lrx/functions/FuncN;

    invoke-interface {v2, v1}, Lrx/functions/FuncN;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-interface {v9, v1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    const-wide/16 v1, 0x1

    .line 18
    invoke-virtual {v15, v1, v2}, Lrx/internal/operators/throws$do;->do(J)V

    move-wide/from16 v3, v17

    add-long v5, v3, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 19
    iput-boolean v11, v7, Lrx/internal/operators/throws$if;->cancelled:Z

    .line 20
    invoke-virtual {v7, v8}, Lrx/internal/operators/throws$if;->cancel(Ljava/util/Queue;)V

    .line 21
    invoke-interface {v9, v0}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_7
    move-wide v3, v5

    :goto_2
    const-wide/16 v1, 0x0

    cmp-long v5, v3, v1

    if-eqz v5, :cond_8

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v5, v13, v1

    if-eqz v5, :cond_8

    .line 22
    invoke-static {v10, v3, v4}, Landroid/support/v4/u6;->this(Ljava/util/concurrent/atomic/AtomicLong;J)J

    :cond_8
    neg-int v1, v12

    .line 23
    invoke-virtual {v7, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v12

    if-nez v12, :cond_1

    return-void
.end method

.method public isUnsubscribed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/throws$if;->cancelled:Z

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lrx/internal/operators/throws$if;->error:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 3
    instance-of v2, v1, Lrx/exceptions/do;

    if-eqz v2, :cond_1

    .line 4
    move-object v2, v1

    check-cast v2, Lrx/exceptions/do;

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lrx/exceptions/do;->getExceptions()Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v2, Lrx/exceptions/do;

    invoke-direct {v2, v3}, Lrx/exceptions/do;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 8
    :cond_1
    new-instance v2, Lrx/exceptions/do;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Lrx/exceptions/do;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_2
    move-object v2, p1

    .line 9
    :goto_0
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void
.end method

.method public request(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 1
    iget-object v0, p0, Lrx/internal/operators/throws$if;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Landroid/support/v4/u6;->if(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 2
    invoke-virtual {p0}, Lrx/internal/operators/throws$if;->drain()V

    :cond_0
    return-void

    .line 3
    :cond_1
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

.method public subscribe([Lrx/Observable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lrx/Observable<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/operators/throws$if;->subscribers:[Lrx/internal/operators/throws$do;

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 3
    new-instance v4, Lrx/internal/operators/throws$do;

    invoke-direct {v4, p0, v3}, Lrx/internal/operators/throws$do;-><init>(Lrx/internal/operators/throws$if;I)V

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    .line 5
    iget-object v3, p0, Lrx/internal/operators/throws$if;->actual:Landroid/support/v4/y22;

    invoke-virtual {v3, p0}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 6
    iget-object v3, p0, Lrx/internal/operators/throws$if;->actual:Landroid/support/v4/y22;

    invoke-virtual {v3, p0}, Landroid/support/v4/y22;->setProducer(Lrx/Producer;)V

    :goto_1
    if-ge v2, v1, :cond_2

    .line 7
    iget-boolean v3, p0, Lrx/internal/operators/throws$if;->cancelled:Z

    if-eqz v3, :cond_1

    return-void

    .line 8
    :cond_1
    aget-object v3, p1, v2

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Lrx/Observable;->Y3(Landroid/support/v4/y22;)Lrx/Subscription;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public unsubscribe()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/throws$if;->cancelled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lrx/internal/operators/throws$if;->cancelled:Z

    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lrx/internal/operators/throws$if;->queue:Landroid/support/v4/d12;

    invoke-virtual {p0, v0}, Lrx/internal/operators/throws$if;->cancel(Ljava/util/Queue;)V

    :cond_0
    return-void
.end method
