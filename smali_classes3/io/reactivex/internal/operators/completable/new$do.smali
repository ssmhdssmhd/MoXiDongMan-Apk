.class final Lio/reactivex/internal/operators/completable/new$do;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/completable/new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/new$do$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/FlowableSubscriber<",
        "Lio/reactivex/CompletableSource;",
        ">;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7d58c452a57faa4cL


# instance fields
.field public volatile active:Z

.field public consumed:I

.field public volatile done:Z

.field public final downstream:Lio/reactivex/CompletableObserver;

.field public final inner:Lio/reactivex/internal/operators/completable/new$do$do;

.field public final limit:I

.field public final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final prefetch:I

.field public queue:Lio/reactivex/internal/fuseable/SimpleQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/SimpleQueue<",
            "Lio/reactivex/CompletableSource;",
            ">;"
        }
    .end annotation
.end field

.field public sourceFused:I

.field public upstream:Lorg/reactivestreams/Subscription;


# direct methods
.method public constructor <init>(Lio/reactivex/CompletableObserver;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/new$do;->downstream:Lio/reactivex/CompletableObserver;

    .line 3
    iput p2, p0, Lio/reactivex/internal/operators/completable/new$do;->prefetch:I

    .line 4
    new-instance p1, Lio/reactivex/internal/operators/completable/new$do$do;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/completable/new$do$do;-><init>(Lio/reactivex/internal/operators/completable/new$do;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/completable/new$do;->inner:Lio/reactivex/internal/operators/completable/new$do$do;

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/completable/new$do;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    shr-int/lit8 p1, p2, 0x2

    sub-int/2addr p2, p1

    .line 6
    iput p2, p0, Lio/reactivex/internal/operators/completable/new$do;->limit:I

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/new$do;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/new$do;->inner:Lio/reactivex/internal/operators/completable/new$do$do;

    invoke-static {v0}, Lio/reactivex/internal/disposables/do;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public drain()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/completable/new$do;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/completable/new$do;->active:Z

    if-nez v0, :cond_5

    .line 4
    iget-boolean v0, p0, Lio/reactivex/internal/operators/completable/new$do;->done:Z

    .line 5
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/completable/new$do;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v1}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/CompletableSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-eqz v0, :cond_4

    if-eqz v4, :cond_4

    .line 6
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/new$do;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/new$do;->downstream:Lio/reactivex/CompletableObserver;

    invoke-interface {v0}, Lio/reactivex/CompletableObserver;->onComplete()V

    :cond_3
    return-void

    :cond_4
    if-nez v4, :cond_5

    .line 8
    iput-boolean v3, p0, Lio/reactivex/internal/operators/completable/new$do;->active:Z

    .line 9
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/new$do;->inner:Lio/reactivex/internal/operators/completable/new$do$do;

    invoke-interface {v1, v0}, Lio/reactivex/CompletableSource;->subscribe(Lio/reactivex/CompletableObserver;)V

    .line 10
    invoke-virtual {p0}, Lio/reactivex/internal/operators/completable/new$do;->request()V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 11
    invoke-static {v0}, Landroid/support/v4/t80;->if(Ljava/lang/Throwable;)V

    .line 12
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/completable/new$do;->innerError(Ljava/lang/Throwable;)V

    return-void

    .line 13
    :cond_5
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public innerComplete()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/operators/completable/new$do;->active:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/completable/new$do;->drain()V

    return-void
.end method

.method public innerError(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/new$do;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/new$do;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/new$do;->downstream:Lio/reactivex/CompletableObserver;

    invoke-interface {v0, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Landroid/support/v4/jp1;->l(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/new$do;->inner:Lio/reactivex/internal/operators/completable/new$do$do;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lio/reactivex/internal/disposables/do;->isDisposed(Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/operators/completable/new$do;->done:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/completable/new$do;->drain()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/new$do;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/new$do;->inner:Lio/reactivex/internal/operators/completable/new$do$do;

    invoke-static {v0}, Lio/reactivex/internal/disposables/do;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/new$do;->downstream:Lio/reactivex/CompletableObserver;

    invoke-interface {v0, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Landroid/support/v4/jp1;->l(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Lio/reactivex/CompletableSource;)V
    .locals 1

    .line 2
    iget v0, p0, Lio/reactivex/internal/operators/completable/new$do;->sourceFused:I

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/new$do;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Landroid/support/v4/a01;

    invoke-direct {p1}, Landroid/support/v4/a01;-><init>()V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/completable/new$do;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/completable/new$do;->drain()V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lio/reactivex/CompletableSource;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/completable/new$do;->onNext(Lio/reactivex/CompletableSource;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/new$do;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/for;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/new$do;->upstream:Lorg/reactivestreams/Subscription;

    .line 3
    iget v0, p0, Lio/reactivex/internal/operators/completable/new$do;->prefetch:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const-wide v2, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    int-to-long v2, v0

    .line 4
    :goto_0
    instance-of v0, p1, Lio/reactivex/internal/fuseable/QueueSubscription;

    if-eqz v0, :cond_2

    .line 5
    move-object v0, p1

    check-cast v0, Lio/reactivex/internal/fuseable/QueueSubscription;

    const/4 v4, 0x3

    .line 6
    invoke-interface {v0, v4}, Lio/reactivex/internal/fuseable/QueueFuseable;->requestFusion(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 7
    iput v4, p0, Lio/reactivex/internal/operators/completable/new$do;->sourceFused:I

    .line 8
    iput-object v0, p0, Lio/reactivex/internal/operators/completable/new$do;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 9
    iput-boolean v5, p0, Lio/reactivex/internal/operators/completable/new$do;->done:Z

    .line 10
    iget-object p1, p0, Lio/reactivex/internal/operators/completable/new$do;->downstream:Lio/reactivex/CompletableObserver;

    invoke-interface {p1, p0}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 11
    invoke-virtual {p0}, Lio/reactivex/internal/operators/completable/new$do;->drain()V

    return-void

    :cond_1
    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 12
    iput v4, p0, Lio/reactivex/internal/operators/completable/new$do;->sourceFused:I

    .line 13
    iput-object v0, p0, Lio/reactivex/internal/operators/completable/new$do;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 14
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/new$do;->downstream:Lio/reactivex/CompletableObserver;

    invoke-interface {v0, p0}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 15
    invoke-interface {p1, v2, v3}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void

    .line 16
    :cond_2
    iget v0, p0, Lio/reactivex/internal/operators/completable/new$do;->prefetch:I

    if-ne v0, v1, :cond_3

    .line 17
    new-instance v0, Landroid/support/v4/e12;

    invoke-static {}, Lio/reactivex/for;->g()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/support/v4/e12;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/completable/new$do;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    goto :goto_1

    .line 18
    :cond_3
    new-instance v0, Landroid/support/v4/b12;

    iget v1, p0, Lio/reactivex/internal/operators/completable/new$do;->prefetch:I

    invoke-direct {v0, v1}, Landroid/support/v4/b12;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/completable/new$do;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 19
    :goto_1
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/new$do;->downstream:Lio/reactivex/CompletableObserver;

    invoke-interface {v0, p0}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 20
    invoke-interface {p1, v2, v3}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_4
    return-void
.end method

.method public request()V
    .locals 4

    .line 1
    iget v0, p0, Lio/reactivex/internal/operators/completable/new$do;->sourceFused:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 2
    iget v0, p0, Lio/reactivex/internal/operators/completable/new$do;->consumed:I

    add-int/2addr v0, v1

    .line 3
    iget v1, p0, Lio/reactivex/internal/operators/completable/new$do;->limit:I

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lio/reactivex/internal/operators/completable/new$do;->consumed:I

    .line 5
    iget-object v1, p0, Lio/reactivex/internal/operators/completable/new$do;->upstream:Lorg/reactivestreams/Subscription;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lorg/reactivestreams/Subscription;->request(J)V

    goto :goto_0

    .line 6
    :cond_0
    iput v0, p0, Lio/reactivex/internal/operators/completable/new$do;->consumed:I

    :cond_1
    :goto_0
    return-void
.end method
