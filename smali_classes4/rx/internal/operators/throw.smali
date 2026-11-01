.class public final Lrx/internal/operators/throw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Completable$OnSubscribe;


# instance fields
.field public final do:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lrx/Completable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lrx/Completable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/throw;->do:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lrx/CompletableSubscriber;

    invoke-virtual {p0, p1}, Lrx/internal/operators/throw;->do(Lrx/CompletableSubscriber;)V

    return-void
.end method

.method public do(Lrx/CompletableSubscriber;)V
    .locals 13

    .line 1
    new-instance v6, Landroid/support/v4/dq;

    invoke-direct {v6}, Landroid/support/v4/dq;-><init>()V

    .line 2
    invoke-interface {p1, v6}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/throw;->do:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v7, :cond_0

    .line 4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The source iterator returned is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 5
    :cond_0
    new-instance v8, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 6
    new-instance v10, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 7
    :goto_0
    invoke-virtual {v6}, Landroid/support/v4/dq;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 8
    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_3

    .line 9
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_2

    .line 10
    invoke-virtual {v10, v0, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-interface {p1}, Lrx/CompletableSubscriber;->onCompleted()V

    :cond_2
    return-void

    .line 12
    :cond_3
    invoke-virtual {v6}, Landroid/support/v4/dq;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    .line 13
    :cond_4
    :try_start_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lrx/Completable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14
    invoke-virtual {v6}, Landroid/support/v4/dq;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_5

    return-void

    :cond_5
    if-nez v11, :cond_7

    .line 15
    invoke-virtual {v6}, Landroid/support/v4/dq;->unsubscribe()V

    .line 16
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "A completable source is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v10, v0, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 18
    invoke-interface {p1, v1}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 19
    :cond_6
    invoke-static {v1}, Lrx/plugins/if;->protected(Ljava/lang/Throwable;)V

    :goto_1
    return-void

    .line 20
    :cond_7
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 21
    new-instance v12, Lrx/internal/operators/throw$do;

    move-object v0, v12

    move-object v1, p0

    move-object v2, v6

    move-object v3, v10

    move-object v4, p1

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/throw$do;-><init>(Lrx/internal/operators/throw;Landroid/support/v4/dq;Ljava/util/concurrent/atomic/AtomicBoolean;Lrx/CompletableSubscriber;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {v11, v12}, Lrx/Completable;->V(Lrx/CompletableSubscriber;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 22
    invoke-virtual {v6}, Landroid/support/v4/dq;->unsubscribe()V

    .line 23
    invoke-virtual {v10, v0, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 24
    invoke-interface {p1, v1}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 25
    :cond_8
    invoke-static {v1}, Lrx/plugins/if;->protected(Ljava/lang/Throwable;)V

    :goto_2
    return-void

    :catchall_1
    move-exception v1

    .line 26
    invoke-virtual {v6}, Landroid/support/v4/dq;->unsubscribe()V

    .line 27
    invoke-virtual {v10, v0, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 28
    invoke-interface {p1, v1}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 29
    :cond_9
    invoke-static {v1}, Lrx/plugins/if;->protected(Ljava/lang/Throwable;)V

    :goto_3
    return-void

    :catchall_2
    move-exception v0

    .line 30
    invoke-interface {p1, v0}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
