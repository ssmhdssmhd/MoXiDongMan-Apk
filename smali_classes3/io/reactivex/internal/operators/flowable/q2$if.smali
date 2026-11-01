.class final Lio/reactivex/internal/operators/flowable/q2$if;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/q2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lorg/reactivestreams/Subscription;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static final NEXT_WINDOW:Ljava/lang/Object;

.field private static final serialVersionUID:J = 0x1efd47eb1fc2a3a0L


# instance fields
.field public final boundarySubscriber:Lio/reactivex/internal/operators/flowable/q2$do;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/q2$do<",
            "TT;TB;>;"
        }
    .end annotation
.end field

.field public final capacityHint:I

.field public volatile done:Z

.field public final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Lio/reactivex/for<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public emitted:J

.field public final errors:Landroid/support/v4/h4;

.field public final queue:Lio/reactivex/internal/queue/do;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/do<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field public final stopWindows:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final upstream:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field public window:Lio/reactivex/processors/else;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/else<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final windows:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/reactivex/internal/operators/flowable/q2$if;->NEXT_WINDOW:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/reactivestreams/Subscriber;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-",
            "Lio/reactivex/for<",
            "TT;>;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/q2$if;->downstream:Lorg/reactivestreams/Subscriber;

    .line 3
    iput p2, p0, Lio/reactivex/internal/operators/flowable/q2$if;->capacityHint:I

    .line 4
    new-instance p1, Lio/reactivex/internal/operators/flowable/q2$do;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/flowable/q2$do;-><init>(Lio/reactivex/internal/operators/flowable/q2$if;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/q2$if;->boundarySubscriber:Lio/reactivex/internal/operators/flowable/q2$do;

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/q2$if;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/q2$if;->windows:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    new-instance p1, Lio/reactivex/internal/queue/do;

    invoke-direct {p1}, Lio/reactivex/internal/queue/do;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/q2$if;->queue:Lio/reactivex/internal/queue/do;

    .line 8
    new-instance p1, Landroid/support/v4/h4;

    invoke-direct {p1}, Landroid/support/v4/h4;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/q2$if;->errors:Landroid/support/v4/h4;

    .line 9
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/q2$if;->stopWindows:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/q2$if;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q2$if;->stopWindows:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q2$if;->boundarySubscriber:Lio/reactivex/internal/operators/flowable/q2$do;

    invoke-virtual {v0}, Landroid/support/v4/p10;->dispose()V

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q2$if;->windows:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q2$if;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/for;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    :cond_0
    return-void
.end method

.method public drain()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q2$if;->downstream:Lorg/reactivestreams/Subscriber;

    .line 3
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/q2$if;->queue:Lio/reactivex/internal/queue/do;

    .line 4
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/q2$if;->errors:Landroid/support/v4/h4;

    .line 5
    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/q2$if;->emitted:J

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 6
    :cond_1
    :goto_0
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/q2$if;->windows:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_2

    .line 7
    invoke-virtual {v1}, Lio/reactivex/internal/queue/do;->clear()V

    .line 8
    iput-object v8, p0, Lio/reactivex/internal/operators/flowable/q2$if;->window:Lio/reactivex/processors/else;

    return-void

    .line 9
    :cond_2
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/q2$if;->window:Lio/reactivex/processors/else;

    .line 10
    iget-boolean v9, p0, Lio/reactivex/internal/operators/flowable/q2$if;->done:Z

    if-eqz v9, :cond_4

    .line 11
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 12
    invoke-virtual {v1}, Lio/reactivex/internal/queue/do;->clear()V

    .line 13
    invoke-virtual {v2}, Landroid/support/v4/h4;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v7, :cond_3

    .line 14
    iput-object v8, p0, Lio/reactivex/internal/operators/flowable/q2$if;->window:Lio/reactivex/processors/else;

    .line 15
    invoke-virtual {v7, v1}, Lio/reactivex/processors/else;->onError(Ljava/lang/Throwable;)V

    .line 16
    :cond_3
    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 17
    :cond_4
    invoke-virtual {v1}, Lio/reactivex/internal/queue/do;->poll()Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_5

    const/4 v11, 0x1

    goto :goto_1

    :cond_5
    const/4 v11, 0x0

    :goto_1
    if-eqz v9, :cond_9

    if-eqz v11, :cond_9

    .line 18
    invoke-virtual {v2}, Landroid/support/v4/h4;->terminate()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_7

    if-eqz v7, :cond_6

    .line 19
    iput-object v8, p0, Lio/reactivex/internal/operators/flowable/q2$if;->window:Lio/reactivex/processors/else;

    .line 20
    invoke-virtual {v7}, Lio/reactivex/processors/else;->onComplete()V

    .line 21
    :cond_6
    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    goto :goto_2

    :cond_7
    if-eqz v7, :cond_8

    .line 22
    iput-object v8, p0, Lio/reactivex/internal/operators/flowable/q2$if;->window:Lio/reactivex/processors/else;

    .line 23
    invoke-virtual {v7, v1}, Lio/reactivex/processors/else;->onError(Ljava/lang/Throwable;)V

    .line 24
    :cond_8
    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    :goto_2
    return-void

    :cond_9
    if-eqz v11, :cond_a

    .line 25
    iput-wide v3, p0, Lio/reactivex/internal/operators/flowable/q2$if;->emitted:J

    neg-int v6, v6

    .line 26
    invoke-virtual {p0, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v6

    if-nez v6, :cond_1

    return-void

    .line 27
    :cond_a
    sget-object v9, Lio/reactivex/internal/operators/flowable/q2$if;->NEXT_WINDOW:Ljava/lang/Object;

    if-eq v10, v9, :cond_b

    .line 28
    invoke-virtual {v7, v10}, Lio/reactivex/processors/else;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_b
    if-eqz v7, :cond_c

    .line 29
    iput-object v8, p0, Lio/reactivex/internal/operators/flowable/q2$if;->window:Lio/reactivex/processors/else;

    .line 30
    invoke-virtual {v7}, Lio/reactivex/processors/else;->onComplete()V

    .line 31
    :cond_c
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/q2$if;->stopWindows:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-nez v7, :cond_1

    .line 32
    iget v7, p0, Lio/reactivex/internal/operators/flowable/q2$if;->capacityHint:I

    invoke-static {v7, p0}, Lio/reactivex/processors/else;->T7(ILjava/lang/Runnable;)Lio/reactivex/processors/else;

    move-result-object v7

    .line 33
    iput-object v7, p0, Lio/reactivex/internal/operators/flowable/q2$if;->window:Lio/reactivex/processors/else;

    .line 34
    iget-object v8, p0, Lio/reactivex/internal/operators/flowable/q2$if;->windows:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 35
    iget-object v8, p0, Lio/reactivex/internal/operators/flowable/q2$if;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    cmp-long v10, v3, v8

    if-eqz v10, :cond_d

    const-wide/16 v8, 0x1

    add-long/2addr v3, v8

    .line 36
    invoke-interface {v0, v7}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 37
    :cond_d
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/q2$if;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v7}, Lio/reactivex/internal/subscriptions/for;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 38
    iget-object v7, p0, Lio/reactivex/internal/operators/flowable/q2$if;->boundarySubscriber:Lio/reactivex/internal/operators/flowable/q2$do;

    invoke-virtual {v7}, Landroid/support/v4/p10;->dispose()V

    .line 39
    new-instance v7, Landroid/support/v4/a01;

    const-string v8, "Could not deliver a window due to lack of requests"

    invoke-direct {v7, v8}, Landroid/support/v4/a01;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Landroid/support/v4/h4;->addThrowable(Ljava/lang/Throwable;)Z

    .line 40
    iput-boolean v5, p0, Lio/reactivex/internal/operators/flowable/q2$if;->done:Z

    goto/16 :goto_0
.end method

.method public innerComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q2$if;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/for;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/q2$if;->done:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/q2$if;->drain()V

    return-void
.end method

.method public innerError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q2$if;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/for;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q2$if;->errors:Landroid/support/v4/h4;

    invoke-virtual {v0, p1}, Landroid/support/v4/h4;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/q2$if;->done:Z

    .line 4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/q2$if;->drain()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Landroid/support/v4/jp1;->l(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public innerNext()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q2$if;->queue:Lio/reactivex/internal/queue/do;

    sget-object v1, Lio/reactivex/internal/operators/flowable/q2$if;->NEXT_WINDOW:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/queue/do;->offer(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/q2$if;->drain()V

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q2$if;->boundarySubscriber:Lio/reactivex/internal/operators/flowable/q2$do;

    invoke-virtual {v0}, Landroid/support/v4/p10;->dispose()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/q2$if;->done:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/q2$if;->drain()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q2$if;->boundarySubscriber:Lio/reactivex/internal/operators/flowable/q2$do;

    invoke-virtual {v0}, Landroid/support/v4/p10;->dispose()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q2$if;->errors:Landroid/support/v4/h4;

    invoke-virtual {v0, p1}, Landroid/support/v4/h4;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/q2$if;->done:Z

    .line 4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/q2$if;->drain()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Landroid/support/v4/jp1;->l(Ljava/lang/Throwable;)V

    :goto_0
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
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q2$if;->queue:Lio/reactivex/internal/queue/do;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/queue/do;->offer(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/q2$if;->drain()V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q2$if;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    const-wide v1, 0x7fffffffffffffffL

    invoke-static {v0, p1, v1, v2}, Lio/reactivex/internal/subscriptions/for;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;J)Z

    return-void
.end method

.method public request(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q2$if;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Landroid/support/v4/r6;->do(Ljava/util/concurrent/atomic/AtomicLong;J)J

    return-void
.end method

.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q2$if;->windows:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/q2$if;->upstream:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/for;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    :cond_0
    return-void
.end method
