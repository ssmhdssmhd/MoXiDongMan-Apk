.class public final Lrx/internal/operators/e;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$OnSubscribe;
.implements Lrx/Observer;
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/e$if;,
        Lrx/internal/operators/e$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lrx/Observable$OnSubscribe<",
        "TT;>;",
        "Lrx/Observer<",
        "TT;>;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field public static final EMPTY:[Lrx/internal/operators/e$if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/internal/operators/e$if<",
            "*>;"
        }
    .end annotation
.end field

.field public static final TERMINATED:[Lrx/internal/operators/e$if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/internal/operators/e$if<",
            "*>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x33eddf69c4461997L


# instance fields
.field public final delayError:Z

.field public volatile done:Z

.field public error:Ljava/lang/Throwable;

.field public final parent:Lrx/internal/operators/e$do;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/e$do<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final prefetch:I

.field public volatile producer:Lrx/Producer;

.field public final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile subscribers:[Lrx/internal/operators/e$if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/internal/operators/e$if<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lrx/internal/operators/e$if;

    .line 1
    sput-object v1, Lrx/internal/operators/e;->EMPTY:[Lrx/internal/operators/e$if;

    new-array v0, v0, [Lrx/internal/operators/e$if;

    .line 2
    sput-object v0, Lrx/internal/operators/e;->TERMINATED:[Lrx/internal/operators/e$if;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    if-lez p1, :cond_1

    .line 2
    iput p1, p0, Lrx/internal/operators/e;->prefetch:I

    .line 3
    iput-boolean p2, p0, Lrx/internal/operators/e;->delayError:Z

    .line 4
    invoke-static {}, Lrx/internal/util/unsafe/implements;->case()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    new-instance p2, Lrx/internal/util/unsafe/switch;

    invoke-direct {p2, p1}, Lrx/internal/util/unsafe/switch;-><init>(I)V

    iput-object p2, p0, Lrx/internal/operators/e;->queue:Ljava/util/Queue;

    goto :goto_0

    .line 6
    :cond_0
    new-instance p2, Lrx/internal/util/atomic/new;

    invoke-direct {p2, p1}, Lrx/internal/util/atomic/new;-><init>(I)V

    iput-object p2, p0, Lrx/internal/operators/e;->queue:Ljava/util/Queue;

    .line 7
    :goto_0
    sget-object p1, Lrx/internal/operators/e;->EMPTY:[Lrx/internal/operators/e$if;

    iput-object p1, p0, Lrx/internal/operators/e;->subscribers:[Lrx/internal/operators/e$if;

    .line 8
    new-instance p1, Lrx/internal/operators/e$do;

    invoke-direct {p1, p0}, Lrx/internal/operators/e$do;-><init>(Lrx/internal/operators/e;)V

    iput-object p1, p0, Lrx/internal/operators/e;->parent:Lrx/internal/operators/e$do;

    return-void

    .line 9
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prefetch > 0 required but it was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public add(Lrx/internal/operators/e$if;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/e$if<",
            "TT;>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/operators/e;->subscribers:[Lrx/internal/operators/e$if;

    .line 2
    sget-object v1, Lrx/internal/operators/e;->TERMINATED:[Lrx/internal/operators/e$if;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/e;->subscribers:[Lrx/internal/operators/e$if;

    if-ne v0, v1, :cond_1

    .line 5
    monitor-exit p0

    return v2

    .line 6
    :cond_1
    array-length v1, v0

    add-int/lit8 v3, v1, 0x1

    .line 7
    new-array v3, v3, [Lrx/internal/operators/e$if;

    .line 8
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    aput-object p1, v3, v1

    .line 10
    iput-object v3, p0, Lrx/internal/operators/e;->subscribers:[Lrx/internal/operators/e$if;

    .line 11
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public call(Landroid/support/v4/y22;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TT;>;)V"
        }
    .end annotation

    .line 2
    new-instance v0, Lrx/internal/operators/e$if;

    invoke-direct {v0, p1, p0}, Lrx/internal/operators/e$if;-><init>(Landroid/support/v4/y22;Lrx/internal/operators/e;)V

    .line 3
    invoke-virtual {p1, v0}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 4
    invoke-virtual {p1, v0}, Landroid/support/v4/y22;->setProducer(Lrx/Producer;)V

    .line 5
    invoke-virtual {p0, v0}, Lrx/internal/operators/e;->add(Lrx/internal/operators/e$if;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v0}, Lrx/internal/operators/e$if;->isUnsubscribed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0, v0}, Lrx/internal/operators/e;->remove(Lrx/internal/operators/e$if;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/e;->drain()V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lrx/internal/operators/e;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    .line 10
    invoke-interface {p1, v0}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-interface {p1}, Lrx/Observer;->onCompleted()V

    :goto_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Lrx/internal/operators/e;->call(Landroid/support/v4/y22;)V

    return-void
.end method

.method public checkTerminated(ZZ)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 1
    iget-boolean p1, p0, Lrx/internal/operators/e;->delayError:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_6

    .line 2
    invoke-virtual {p0}, Lrx/internal/operators/e;->terminate()[Lrx/internal/operators/e$if;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lrx/internal/operators/e;->error:Ljava/lang/Throwable;

    if-eqz p2, :cond_0

    .line 4
    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p1, v0

    .line 5
    iget-object v3, v3, Lrx/internal/operators/e$if;->actual:Landroid/support/v4/y22;

    invoke-interface {v3, p2}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_0
    array-length p2, p1

    :goto_1
    if-ge v0, p2, :cond_1

    aget-object v2, p1, v0

    .line 7
    iget-object v2, v2, Lrx/internal/operators/e$if;->actual:Landroid/support/v4/y22;

    invoke-interface {v2}, Lrx/Observer;->onCompleted()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return v1

    .line 8
    :cond_2
    iget-object p1, p0, Lrx/internal/operators/e;->error:Ljava/lang/Throwable;

    if-eqz p1, :cond_4

    .line 9
    iget-object p2, p0, Lrx/internal/operators/e;->queue:Ljava/util/Queue;

    invoke-interface {p2}, Ljava/util/Queue;->clear()V

    .line 10
    invoke-virtual {p0}, Lrx/internal/operators/e;->terminate()[Lrx/internal/operators/e$if;

    move-result-object p2

    .line 11
    array-length v2, p2

    :goto_2
    if-ge v0, v2, :cond_3

    aget-object v3, p2, v0

    .line 12
    iget-object v3, v3, Lrx/internal/operators/e$if;->actual:Landroid/support/v4/y22;

    invoke-interface {v3, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return v1

    :cond_4
    if-eqz p2, :cond_6

    .line 13
    invoke-virtual {p0}, Lrx/internal/operators/e;->terminate()[Lrx/internal/operators/e$if;

    move-result-object p1

    .line 14
    array-length p2, p1

    :goto_3
    if-ge v0, p2, :cond_5

    aget-object v2, p1, v0

    .line 15
    iget-object v2, v2, Lrx/internal/operators/e$if;->actual:Landroid/support/v4/y22;

    invoke-interface {v2}, Lrx/Observer;->onCompleted()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    return v1

    :cond_6
    return v0
.end method

.method public drain()V
    .locals 14

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/e;->queue:Ljava/util/Queue;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_1
    const-wide v3, 0x7fffffffffffffffL

    .line 3
    iget-object v5, p0, Lrx/internal/operators/e;->subscribers:[Lrx/internal/operators/e$if;

    .line 4
    array-length v6, v5

    .line 5
    array-length v7, v5

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_2

    aget-object v9, v5, v8

    .line 6
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v9

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_a

    const-wide/16 v6, 0x0

    move-wide v8, v6

    :goto_1
    cmp-long v10, v8, v3

    if-eqz v10, :cond_7

    .line 7
    iget-boolean v10, p0, Lrx/internal/operators/e;->done:Z

    .line 8
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_3

    const/4 v12, 0x1

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    .line 9
    :goto_2
    invoke-virtual {p0, v10, v12}, Lrx/internal/operators/e;->checkTerminated(ZZ)Z

    move-result v10

    if-eqz v10, :cond_4

    return-void

    :cond_4
    if-eqz v12, :cond_5

    goto :goto_4

    .line 10
    :cond_5
    array-length v10, v5

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v10, :cond_6

    aget-object v13, v5, v12

    .line 11
    iget-object v13, v13, Lrx/internal/operators/e$if;->actual:Landroid/support/v4/y22;

    invoke-interface {v13, v11}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_6
    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    goto :goto_1

    :cond_7
    :goto_4
    cmp-long v10, v8, v3

    if-nez v10, :cond_8

    .line 12
    iget-boolean v3, p0, Lrx/internal/operators/e;->done:Z

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    invoke-virtual {p0, v3, v4}, Lrx/internal/operators/e;->checkTerminated(ZZ)Z

    move-result v3

    if-eqz v3, :cond_8

    return-void

    :cond_8
    cmp-long v3, v8, v6

    if-eqz v3, :cond_a

    .line 13
    iget-object v3, p0, Lrx/internal/operators/e;->producer:Lrx/Producer;

    if-eqz v3, :cond_9

    .line 14
    invoke-interface {v3, v8, v9}, Lrx/Producer;->request(J)V

    .line 15
    :cond_9
    array-length v3, v5

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_a

    aget-object v6, v5, v4

    .line 16
    invoke-static {v6, v8, v9}, Landroid/support/v4/u6;->this(Ljava/util/concurrent/atomic/AtomicLong;J)J

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_a
    neg-int v2, v2

    .line 17
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v2

    if-nez v2, :cond_1

    return-void
.end method

.method public isUnsubscribed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/e;->parent:Lrx/internal/operators/e$do;

    invoke-virtual {v0}, Landroid/support/v4/y22;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public onCompleted()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lrx/internal/operators/e;->done:Z

    .line 2
    invoke-virtual {p0}, Lrx/internal/operators/e;->drain()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/e;->error:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lrx/internal/operators/e;->done:Z

    .line 3
    invoke-virtual {p0}, Lrx/internal/operators/e;->drain()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/operators/e;->queue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lrx/internal/operators/e;->parent:Lrx/internal/operators/e$do;

    invoke-virtual {p1}, Landroid/support/v4/y22;->unsubscribe()V

    .line 3
    new-instance p1, Landroid/support/v4/zz0;

    const-string v0, "Queue full?!"

    invoke-direct {p1, v0}, Landroid/support/v4/zz0;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lrx/internal/operators/e;->error:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lrx/internal/operators/e;->done:Z

    .line 5
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/e;->drain()V

    return-void
.end method

.method public remove(Lrx/internal/operators/e$if;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/e$if<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/operators/e;->subscribers:[Lrx/internal/operators/e$if;

    .line 2
    sget-object v1, Lrx/internal/operators/e;->TERMINATED:[Lrx/internal/operators/e$if;

    if-eq v0, v1, :cond_7

    sget-object v2, Lrx/internal/operators/e;->EMPTY:[Lrx/internal/operators/e$if;

    if-ne v0, v2, :cond_0

    goto :goto_4

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/e;->subscribers:[Lrx/internal/operators/e$if;

    if-eq v0, v1, :cond_6

    if-ne v0, v2, :cond_1

    goto :goto_3

    :cond_1
    const/4 v1, -0x1

    .line 5
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    .line 6
    aget-object v5, v0, v4

    if-ne v5, p1, :cond_2

    move v1, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-gez v1, :cond_4

    .line 7
    monitor-exit p0

    return-void

    :cond_4
    const/4 p1, 0x1

    if-ne v2, p1, :cond_5

    .line 8
    sget-object p1, Lrx/internal/operators/e;->EMPTY:[Lrx/internal/operators/e$if;

    goto :goto_2

    :cond_5
    add-int/lit8 v4, v2, -0x1

    .line 9
    new-array v4, v4, [Lrx/internal/operators/e$if;

    .line 10
    invoke-static {v0, v3, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v1, 0x1

    sub-int/2addr v2, v1

    sub-int/2addr v2, p1

    .line 11
    invoke-static {v0, v3, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v4

    .line 12
    :goto_2
    iput-object p1, p0, Lrx/internal/operators/e;->subscribers:[Lrx/internal/operators/e$if;

    .line 13
    monitor-exit p0

    return-void

    .line 14
    :cond_6
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 15
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_7
    :goto_4
    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lrx/internal/operators/e;->producer:Lrx/Producer;

    .line 2
    iget v0, p0, Lrx/internal/operators/e;->prefetch:I

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Lrx/Producer;->request(J)V

    return-void
.end method

.method public subscriber()Landroid/support/v4/y22;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/y22<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/operators/e;->parent:Lrx/internal/operators/e$do;

    return-object v0
.end method

.method public terminate()[Lrx/internal/operators/e$if;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lrx/internal/operators/e$if<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/operators/e;->subscribers:[Lrx/internal/operators/e$if;

    .line 2
    sget-object v1, Lrx/internal/operators/e;->TERMINATED:[Lrx/internal/operators/e$if;

    if-eq v0, v1, :cond_1

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/e;->subscribers:[Lrx/internal/operators/e$if;

    if-eq v0, v1, :cond_0

    .line 5
    iput-object v1, p0, Lrx/internal/operators/e;->subscribers:[Lrx/internal/operators/e$if;

    .line 6
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public unsubscribe()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/e;->parent:Lrx/internal/operators/e$do;

    invoke-virtual {v0}, Landroid/support/v4/y22;->unsubscribe()V

    return-void
.end method
