.class final Lio/reactivex/internal/operators/flowable/h0$do;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/h0$do$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field public static final OTHER_STATE_CONSUMED_OR_EMPTY:I = 0x2

.field public static final OTHER_STATE_HAS_VALUE:I = 0x1

.field private static final serialVersionUID:J = -0x3fbd8a98db8e76f7L


# instance fields
.field public volatile cancelled:Z

.field public consumed:I

.field public final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public emitted:J

.field public final error:Landroid/support/v4/h4;

.field public final limit:I

.field public volatile mainDone:Z

.field public final mainSubscription:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field public final otherObserver:Lio/reactivex/internal/operators/flowable/h0$do$do;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/h0$do$do<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile otherState:I

.field public final prefetch:I

.field public volatile queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/SimplePlainQueue<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field public singleItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/h0$do;->downstream:Lorg/reactivestreams/Subscriber;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/h0$do;->mainSubscription:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    new-instance p1, Lio/reactivex/internal/operators/flowable/h0$do$do;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/flowable/h0$do$do;-><init>(Lio/reactivex/internal/operators/flowable/h0$do;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/h0$do;->otherObserver:Lio/reactivex/internal/operators/flowable/h0$do$do;

    .line 5
    new-instance p1, Landroid/support/v4/h4;

    invoke-direct {p1}, Landroid/support/v4/h4;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/h0$do;->error:Landroid/support/v4/h4;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/h0$do;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 7
    invoke-static {}, Lio/reactivex/for;->g()I

    move-result p1

    iput p1, p0, Lio/reactivex/internal/operators/flowable/h0$do;->prefetch:I

    shr-int/lit8 v0, p1, 0x2

    sub-int/2addr p1, v0

    .line 8
    iput p1, p0, Lio/reactivex/internal/operators/flowable/h0$do;->limit:I

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/h0$do;->cancelled:Z

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/h0$do;->mainSubscription:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/for;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/h0$do;->otherObserver:Lio/reactivex/internal/operators/flowable/h0$do$do;

    invoke-static {v0}, Lio/reactivex/internal/disposables/do;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/h0$do;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 6
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/h0$do;->singleItem:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public drain()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/h0$do;->drainLoop()V

    :cond_0
    return-void
.end method

.method public drainLoop()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lio/reactivex/internal/operators/flowable/h0$do;->downstream:Lorg/reactivestreams/Subscriber;

    .line 2
    iget-wide v2, v0, Lio/reactivex/internal/operators/flowable/h0$do;->emitted:J

    .line 3
    iget v4, v0, Lio/reactivex/internal/operators/flowable/h0$do;->consumed:I

    .line 4
    iget v5, v0, Lio/reactivex/internal/operators/flowable/h0$do;->limit:I

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 5
    :goto_0
    iget-object v8, v0, Lio/reactivex/internal/operators/flowable/h0$do;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    :goto_1
    const/4 v11, 0x2

    const/4 v12, 0x0

    cmp-long v13, v2, v8

    if-eqz v13, :cond_8

    .line 6
    iget-boolean v13, v0, Lio/reactivex/internal/operators/flowable/h0$do;->cancelled:Z

    if-eqz v13, :cond_0

    .line 7
    iput-object v12, v0, Lio/reactivex/internal/operators/flowable/h0$do;->singleItem:Ljava/lang/Object;

    .line 8
    iput-object v12, v0, Lio/reactivex/internal/operators/flowable/h0$do;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    return-void

    .line 9
    :cond_0
    iget-object v13, v0, Lio/reactivex/internal/operators/flowable/h0$do;->error:Landroid/support/v4/h4;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 10
    iput-object v12, v0, Lio/reactivex/internal/operators/flowable/h0$do;->singleItem:Ljava/lang/Object;

    .line 11
    iput-object v12, v0, Lio/reactivex/internal/operators/flowable/h0$do;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 12
    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/h0$do;->error:Landroid/support/v4/h4;

    invoke-virtual {v2}, Landroid/support/v4/h4;->terminate()Ljava/lang/Throwable;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 13
    :cond_1
    iget v13, v0, Lio/reactivex/internal/operators/flowable/h0$do;->otherState:I

    const-wide/16 v14, 0x1

    if-ne v13, v6, :cond_2

    .line 14
    iget-object v10, v0, Lio/reactivex/internal/operators/flowable/h0$do;->singleItem:Ljava/lang/Object;

    .line 15
    iput-object v12, v0, Lio/reactivex/internal/operators/flowable/h0$do;->singleItem:Ljava/lang/Object;

    .line 16
    iput v11, v0, Lio/reactivex/internal/operators/flowable/h0$do;->otherState:I

    .line 17
    invoke-interface {v1, v10}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    add-long/2addr v2, v14

    goto :goto_1

    .line 18
    :cond_2
    iget-boolean v6, v0, Lio/reactivex/internal/operators/flowable/h0$do;->mainDone:Z

    .line 19
    iget-object v10, v0, Lio/reactivex/internal/operators/flowable/h0$do;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    if-eqz v10, :cond_3

    .line 20
    invoke-interface {v10}, Lio/reactivex/internal/fuseable/SimplePlainQueue;->poll()Ljava/lang/Object;

    move-result-object v10

    goto :goto_2

    :cond_3
    move-object v10, v12

    :goto_2
    if-nez v10, :cond_4

    const/16 v16, 0x1

    goto :goto_3

    :cond_4
    const/16 v16, 0x0

    :goto_3
    if-eqz v6, :cond_5

    if-eqz v16, :cond_5

    if-ne v13, v11, :cond_5

    .line 21
    iput-object v12, v0, Lio/reactivex/internal/operators/flowable/h0$do;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 22
    invoke-interface {v1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    return-void

    :cond_5
    if-eqz v16, :cond_6

    goto :goto_4

    .line 23
    :cond_6
    invoke-interface {v1, v10}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    add-long/2addr v2, v14

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_7

    .line 24
    iget-object v4, v0, Lio/reactivex/internal/operators/flowable/h0$do;->mainSubscription:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/reactivestreams/Subscription;

    int-to-long v10, v5

    invoke-interface {v4, v10, v11}, Lorg/reactivestreams/Subscription;->request(J)V

    const/4 v4, 0x0

    :cond_7
    const/4 v6, 0x1

    goto :goto_1

    :cond_8
    :goto_4
    cmp-long v6, v2, v8

    if-nez v6, :cond_d

    .line 25
    iget-boolean v6, v0, Lio/reactivex/internal/operators/flowable/h0$do;->cancelled:Z

    if-eqz v6, :cond_9

    .line 26
    iput-object v12, v0, Lio/reactivex/internal/operators/flowable/h0$do;->singleItem:Ljava/lang/Object;

    .line 27
    iput-object v12, v0, Lio/reactivex/internal/operators/flowable/h0$do;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    return-void

    .line 28
    :cond_9
    iget-object v6, v0, Lio/reactivex/internal/operators/flowable/h0$do;->error:Landroid/support/v4/h4;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 29
    iput-object v12, v0, Lio/reactivex/internal/operators/flowable/h0$do;->singleItem:Ljava/lang/Object;

    .line 30
    iput-object v12, v0, Lio/reactivex/internal/operators/flowable/h0$do;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 31
    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/h0$do;->error:Landroid/support/v4/h4;

    invoke-virtual {v2}, Landroid/support/v4/h4;->terminate()Ljava/lang/Throwable;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 32
    :cond_a
    iget-boolean v6, v0, Lio/reactivex/internal/operators/flowable/h0$do;->mainDone:Z

    .line 33
    iget-object v8, v0, Lio/reactivex/internal/operators/flowable/h0$do;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    if-eqz v8, :cond_c

    .line 34
    invoke-interface {v8}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_b

    goto :goto_5

    :cond_b
    const/4 v10, 0x0

    goto :goto_6

    :cond_c
    :goto_5
    const/4 v10, 0x1

    :goto_6
    if-eqz v6, :cond_d

    if-eqz v10, :cond_d

    .line 35
    iget v6, v0, Lio/reactivex/internal/operators/flowable/h0$do;->otherState:I

    if-ne v6, v11, :cond_d

    .line 36
    iput-object v12, v0, Lio/reactivex/internal/operators/flowable/h0$do;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    .line 37
    invoke-interface {v1}, Lorg/reactivestreams/Subscriber;->onComplete()V

    return-void

    .line 38
    :cond_d
    iput-wide v2, v0, Lio/reactivex/internal/operators/flowable/h0$do;->emitted:J

    .line 39
    iput v4, v0, Lio/reactivex/internal/operators/flowable/h0$do;->consumed:I

    neg-int v6, v7

    .line 40
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v7

    if-nez v7, :cond_e

    return-void

    :cond_e
    const/4 v6, 0x1

    goto/16 :goto_0
.end method

.method public getOrCreateQueue()Lio/reactivex/internal/fuseable/SimplePlainQueue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/internal/fuseable/SimplePlainQueue<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/h0$do;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/support/v4/b12;

    invoke-static {}, Lio/reactivex/for;->g()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/support/v4/b12;-><init>(I)V

    .line 3
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/h0$do;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    :cond_0
    return-object v0
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/h0$do;->mainDone:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/h0$do;->drain()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/h0$do;->error:Landroid/support/v4/h4;

    invoke-virtual {v0, p1}, Landroid/support/v4/h4;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/h0$do;->otherObserver:Lio/reactivex/internal/operators/flowable/h0$do$do;

    invoke-static {p1}, Lio/reactivex/internal/disposables/do;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/h0$do;->drain()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Landroid/support/v4/jp1;->l(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/h0$do;->emitted:J

    .line 3
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/h0$do;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-eqz v6, :cond_3

    .line 4
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/h0$do;->queue:Lio/reactivex/internal/fuseable/SimplePlainQueue;

    if-eqz v4, :cond_1

    .line 5
    invoke-interface {v4}, Lio/reactivex/internal/fuseable/SimpleQueue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v4, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 7
    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/h0$do;->emitted:J

    .line 8
    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/h0$do;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v2, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 9
    iget p1, p0, Lio/reactivex/internal/operators/flowable/h0$do;->consumed:I

    add-int/2addr p1, v1

    .line 10
    iget v1, p0, Lio/reactivex/internal/operators/flowable/h0$do;->limit:I

    if-ne p1, v1, :cond_2

    .line 11
    iput v0, p0, Lio/reactivex/internal/operators/flowable/h0$do;->consumed:I

    .line 12
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/h0$do;->mainSubscription:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/reactivestreams/Subscription;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_1

    .line 13
    :cond_2
    iput p1, p0, Lio/reactivex/internal/operators/flowable/h0$do;->consumed:I

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/h0$do;->getOrCreateQueue()Lio/reactivex/internal/fuseable/SimplePlainQueue;

    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    .line 16
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_5

    return-void

    .line 17
    :cond_4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/h0$do;->getOrCreateQueue()Lio/reactivex/internal/fuseable/SimplePlainQueue;

    move-result-object v0

    .line 18
    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_5

    return-void

    .line 20
    :cond_5
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/h0$do;->drainLoop()V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/h0$do;->mainSubscription:Ljava/util/concurrent/atomic/AtomicReference;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/h0$do;->prefetch:I

    int-to-long v1, v1

    invoke-static {v0, p1, v1, v2}, Lio/reactivex/internal/subscriptions/for;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;J)Z

    return-void
.end method

.method public otherComplete()V
    .locals 1

    const/4 v0, 0x2

    .line 1
    iput v0, p0, Lio/reactivex/internal/operators/flowable/h0$do;->otherState:I

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/h0$do;->drain()V

    return-void
.end method

.method public otherError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/h0$do;->error:Landroid/support/v4/h4;

    invoke-virtual {v0, p1}, Landroid/support/v4/h4;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/h0$do;->mainSubscription:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lio/reactivex/internal/subscriptions/for;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/h0$do;->drain()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Landroid/support/v4/jp1;->l(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public otherSuccess(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/h0$do;->emitted:J

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/h0$do;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    add-long/2addr v2, v0

    .line 4
    iput-wide v2, p0, Lio/reactivex/internal/operators/flowable/h0$do;->emitted:J

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/h0$do;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    const/4 p1, 0x2

    .line 6
    iput p1, p0, Lio/reactivex/internal/operators/flowable/h0$do;->otherState:I

    goto :goto_0

    .line 7
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/h0$do;->singleItem:Ljava/lang/Object;

    .line 8
    iput v1, p0, Lio/reactivex/internal/operators/flowable/h0$do;->otherState:I

    .line 9
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 10
    :cond_1
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/h0$do;->singleItem:Ljava/lang/Object;

    .line 11
    iput v1, p0, Lio/reactivex/internal/operators/flowable/h0$do;->otherState:I

    .line 12
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 13
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/h0$do;->drainLoop()V

    return-void
.end method

.method public request(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/h0$do;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Landroid/support/v4/r6;->do(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/h0$do;->drain()V

    return-void
.end method
