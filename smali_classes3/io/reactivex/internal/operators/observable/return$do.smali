.class final Lio/reactivex/internal/operators/observable/return$do;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;
.implements Lio/reactivex/internal/observers/InnerQueuedObserverSupport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/return;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;",
        "Lio/reactivex/internal/observers/InnerQueuedObserverSupport<",
        "TR;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7023f1bcc236905eL


# instance fields
.field public activeCount:I

.field public volatile cancelled:Z

.field public current:Landroid/support/v4/vm0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/vm0<",
            "TR;>;"
        }
    .end annotation
.end field

.field public volatile done:Z

.field public final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final error:Landroid/support/v4/h4;

.field public final errorMode:Lio/reactivex/internal/util/try;

.field public final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/ObservableSource<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final maxConcurrency:I

.field public final observers:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/support/v4/vm0<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field public final prefetch:I

.field public queue:Lio/reactivex/internal/fuseable/SimpleQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/SimpleQueue<",
            "TT;>;"
        }
    .end annotation
.end field

.field public sourceMode:I

.field public upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>(Lio/reactivex/Observer;Lio/reactivex/functions/Function;IILio/reactivex/internal/util/try;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TR;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/ObservableSource<",
            "+TR;>;>;II",
            "Lio/reactivex/internal/util/try;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/return$do;->downstream:Lio/reactivex/Observer;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/return$do;->mapper:Lio/reactivex/functions/Function;

    .line 4
    iput p3, p0, Lio/reactivex/internal/operators/observable/return$do;->maxConcurrency:I

    .line 5
    iput p4, p0, Lio/reactivex/internal/operators/observable/return$do;->prefetch:I

    .line 6
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/return$do;->errorMode:Lio/reactivex/internal/util/try;

    .line 7
    new-instance p1, Landroid/support/v4/h4;

    invoke-direct {p1}, Landroid/support/v4/h4;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/return$do;->error:Landroid/support/v4/h4;

    .line 8
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/return$do;->observers:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/return$do;->cancelled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/return$do;->cancelled:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/return$do;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 4
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/return$do;->drainAndDispose()V

    return-void
.end method

.method public disposeAll()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/return$do;->current:Landroid/support/v4/vm0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/support/v4/vm0;->dispose()V

    .line 3
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/return$do;->observers:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/vm0;

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/vm0;->dispose()V

    goto :goto_0
.end method

.method public drain()V
    .locals 13

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/return$do;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 3
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/return$do;->observers:Ljava/util/ArrayDeque;

    .line 4
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/return$do;->downstream:Lio/reactivex/Observer;

    .line 5
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/return$do;->errorMode:Lio/reactivex/internal/util/try;

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 6
    :cond_1
    :goto_0
    iget v6, p0, Lio/reactivex/internal/operators/observable/return$do;->activeCount:I

    .line 7
    :goto_1
    iget v7, p0, Lio/reactivex/internal/operators/observable/return$do;->maxConcurrency:I

    if-eq v6, v7, :cond_5

    .line 8
    iget-boolean v7, p0, Lio/reactivex/internal/operators/observable/return$do;->cancelled:Z

    if-eqz v7, :cond_2

    .line 9
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    .line 10
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/return$do;->disposeAll()V

    return-void

    .line 11
    :cond_2
    sget-object v7, Lio/reactivex/internal/util/try;->IMMEDIATE:Lio/reactivex/internal/util/try;

    if-ne v3, v7, :cond_3

    .line 12
    iget-object v7, p0, Lio/reactivex/internal/operators/observable/return$do;->error:Landroid/support/v4/h4;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;

    if-eqz v7, :cond_3

    .line 13
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    .line 14
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/return$do;->disposeAll()V

    .line 15
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/return$do;->error:Landroid/support/v4/h4;

    invoke-virtual {v0}, Landroid/support/v4/h4;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 16
    :cond_3
    :try_start_0
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_4

    goto :goto_2

    .line 17
    :cond_4
    iget-object v8, p0, Lio/reactivex/internal/operators/observable/return$do;->mapper:Lio/reactivex/functions/Function;

    invoke-interface {v8, v7}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "The mapper returned a null ObservableSource"

    invoke-static {v7, v8}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/reactivex/ObservableSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    new-instance v8, Landroid/support/v4/vm0;

    iget v9, p0, Lio/reactivex/internal/operators/observable/return$do;->prefetch:I

    invoke-direct {v8, p0, v9}, Landroid/support/v4/vm0;-><init>(Lio/reactivex/internal/observers/InnerQueuedObserverSupport;I)V

    .line 19
    invoke-virtual {v1, v8}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 20
    invoke-interface {v7, v8}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 21
    invoke-static {v1}, Landroid/support/v4/t80;->if(Ljava/lang/Throwable;)V

    .line 22
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/return$do;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v3}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 23
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    .line 24
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/return$do;->disposeAll()V

    .line 25
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/return$do;->error:Landroid/support/v4/h4;

    invoke-virtual {v0, v1}, Landroid/support/v4/h4;->addThrowable(Ljava/lang/Throwable;)Z

    .line 26
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/return$do;->error:Landroid/support/v4/h4;

    invoke-virtual {v0}, Landroid/support/v4/h4;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 27
    :cond_5
    :goto_2
    iput v6, p0, Lio/reactivex/internal/operators/observable/return$do;->activeCount:I

    .line 28
    iget-boolean v6, p0, Lio/reactivex/internal/operators/observable/return$do;->cancelled:Z

    if-eqz v6, :cond_6

    .line 29
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    .line 30
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/return$do;->disposeAll()V

    return-void

    .line 31
    :cond_6
    sget-object v6, Lio/reactivex/internal/util/try;->IMMEDIATE:Lio/reactivex/internal/util/try;

    if-ne v3, v6, :cond_7

    .line 32
    iget-object v6, p0, Lio/reactivex/internal/operators/observable/return$do;->error:Landroid/support/v4/h4;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Throwable;

    if-eqz v6, :cond_7

    .line 33
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    .line 34
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/return$do;->disposeAll()V

    .line 35
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/return$do;->error:Landroid/support/v4/h4;

    invoke-virtual {v0}, Landroid/support/v4/h4;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 36
    :cond_7
    iget-object v6, p0, Lio/reactivex/internal/operators/observable/return$do;->current:Landroid/support/v4/vm0;

    const/4 v7, 0x0

    if-nez v6, :cond_d

    .line 37
    sget-object v6, Lio/reactivex/internal/util/try;->BOUNDARY:Lio/reactivex/internal/util/try;

    if-ne v3, v6, :cond_8

    .line 38
    iget-object v6, p0, Lio/reactivex/internal/operators/observable/return$do;->error:Landroid/support/v4/h4;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Throwable;

    if-eqz v6, :cond_8

    .line 39
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    .line 40
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/return$do;->disposeAll()V

    .line 41
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/return$do;->error:Landroid/support/v4/h4;

    invoke-virtual {v0}, Landroid/support/v4/h4;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 42
    :cond_8
    iget-boolean v6, p0, Lio/reactivex/internal/operators/observable/return$do;->done:Z

    .line 43
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/vm0;

    if-nez v8, :cond_9

    const/4 v9, 0x1

    goto :goto_3

    :cond_9
    const/4 v9, 0x0

    :goto_3
    if-eqz v6, :cond_b

    if-eqz v9, :cond_b

    .line 44
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/return$do;->error:Landroid/support/v4/h4;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_a

    .line 45
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    .line 46
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/return$do;->disposeAll()V

    .line 47
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/return$do;->error:Landroid/support/v4/h4;

    invoke-virtual {v0}, Landroid/support/v4/h4;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 48
    :cond_a
    invoke-interface {v2}, Lio/reactivex/Observer;->onComplete()V

    :goto_4
    return-void

    :cond_b
    if-nez v9, :cond_c

    .line 49
    iput-object v8, p0, Lio/reactivex/internal/operators/observable/return$do;->current:Landroid/support/v4/vm0;

    :cond_c
    move-object v6, v8

    :cond_d
    if-eqz v6, :cond_13

    .line 50
    invoke-virtual {v6}, Landroid/support/v4/vm0;->queue()Lio/reactivex/internal/fuseable/SimpleQueue;

    move-result-object v8

    .line 51
    :goto_5
    iget-boolean v9, p0, Lio/reactivex/internal/operators/observable/return$do;->cancelled:Z

    if-eqz v9, :cond_e

    .line 52
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    .line 53
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/return$do;->disposeAll()V

    return-void

    .line 54
    :cond_e
    invoke-virtual {v6}, Landroid/support/v4/vm0;->isDone()Z

    move-result v9

    .line 55
    sget-object v10, Lio/reactivex/internal/util/try;->IMMEDIATE:Lio/reactivex/internal/util/try;

    if-ne v3, v10, :cond_f

    .line 56
    iget-object v10, p0, Lio/reactivex/internal/operators/observable/return$do;->error:Landroid/support/v4/h4;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Throwable;

    if-eqz v10, :cond_f

    .line 57
    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    .line 58
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/return$do;->disposeAll()V

    .line 59
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/return$do;->error:Landroid/support/v4/h4;

    invoke-virtual {v0}, Landroid/support/v4/h4;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_f
    const/4 v10, 0x0

    .line 60
    :try_start_1
    invoke-interface {v8}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v11, :cond_10

    const/4 v12, 0x1

    goto :goto_6

    :cond_10
    const/4 v12, 0x0

    :goto_6
    if-eqz v9, :cond_11

    if-eqz v12, :cond_11

    .line 61
    iput-object v10, p0, Lio/reactivex/internal/operators/observable/return$do;->current:Landroid/support/v4/vm0;

    .line 62
    iget v6, p0, Lio/reactivex/internal/operators/observable/return$do;->activeCount:I

    sub-int/2addr v6, v4

    iput v6, p0, Lio/reactivex/internal/operators/observable/return$do;->activeCount:I

    goto/16 :goto_0

    :cond_11
    if-eqz v12, :cond_12

    goto :goto_7

    .line 63
    :cond_12
    invoke-interface {v2, v11}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_5

    :catchall_1
    move-exception v6

    .line 64
    invoke-static {v6}, Landroid/support/v4/t80;->if(Ljava/lang/Throwable;)V

    .line 65
    iget-object v7, p0, Lio/reactivex/internal/operators/observable/return$do;->error:Landroid/support/v4/h4;

    invoke-virtual {v7, v6}, Landroid/support/v4/h4;->addThrowable(Ljava/lang/Throwable;)Z

    .line 66
    iput-object v10, p0, Lio/reactivex/internal/operators/observable/return$do;->current:Landroid/support/v4/vm0;

    .line 67
    iget v6, p0, Lio/reactivex/internal/operators/observable/return$do;->activeCount:I

    sub-int/2addr v6, v4

    iput v6, p0, Lio/reactivex/internal/operators/observable/return$do;->activeCount:I

    goto/16 :goto_0

    :cond_13
    :goto_7
    neg-int v5, v5

    .line 68
    invoke-virtual {p0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v5

    if-nez v5, :cond_1

    return-void
.end method

.method public drainAndDispose()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/return$do;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/return$do;->disposeAll()V

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method public innerComplete(Landroid/support/v4/vm0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/vm0<",
            "TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/vm0;->setDone()V

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/return$do;->drain()V

    return-void
.end method

.method public innerError(Landroid/support/v4/vm0;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/vm0<",
            "TR;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/return$do;->error:Landroid/support/v4/h4;

    invoke-virtual {v0, p2}, Landroid/support/v4/h4;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object p2, p0, Lio/reactivex/internal/operators/observable/return$do;->errorMode:Lio/reactivex/internal/util/try;

    sget-object v0, Lio/reactivex/internal/util/try;->IMMEDIATE:Lio/reactivex/internal/util/try;

    if-ne p2, v0, :cond_0

    .line 3
    iget-object p2, p0, Lio/reactivex/internal/operators/observable/return$do;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {p2}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/vm0;->setDone()V

    .line 5
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/return$do;->drain()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p2}, Landroid/support/v4/jp1;->l(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public innerNext(Landroid/support/v4/vm0;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/vm0<",
            "TR;>;TR;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/vm0;->queue()Lio/reactivex/internal/fuseable/SimpleQueue;

    move-result-object p1

    invoke-interface {p1, p2}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/return$do;->drain()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/return$do;->cancelled:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/return$do;->done:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/return$do;->drain()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/return$do;->error:Landroid/support/v4/h4;

    invoke-virtual {v0, p1}, Landroid/support/v4/h4;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lio/reactivex/internal/operators/observable/return$do;->done:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/return$do;->drain()V

    goto :goto_0

    .line 4
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
    iget v0, p0, Lio/reactivex/internal/operators/observable/return$do;->sourceMode:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/return$do;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/return$do;->drain()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/return$do;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/do;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/return$do;->upstream:Lio/reactivex/disposables/Disposable;

    .line 3
    instance-of v0, p1, Lio/reactivex/internal/fuseable/QueueDisposable;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Lio/reactivex/internal/fuseable/QueueDisposable;

    const/4 v0, 0x3

    .line 5
    invoke-interface {p1, v0}, Lio/reactivex/internal/fuseable/QueueFuseable;->requestFusion(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6
    iput v0, p0, Lio/reactivex/internal/operators/observable/return$do;->sourceMode:I

    .line 7
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/return$do;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 8
    iput-boolean v1, p0, Lio/reactivex/internal/operators/observable/return$do;->done:Z

    .line 9
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/return$do;->downstream:Lio/reactivex/Observer;

    invoke-interface {p1, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 10
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/return$do;->drain()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 11
    iput v0, p0, Lio/reactivex/internal/operators/observable/return$do;->sourceMode:I

    .line 12
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/return$do;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 13
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/return$do;->downstream:Lio/reactivex/Observer;

    invoke-interface {p1, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    return-void

    .line 14
    :cond_1
    new-instance p1, Landroid/support/v4/e12;

    iget v0, p0, Lio/reactivex/internal/operators/observable/return$do;->prefetch:I

    invoke-direct {p1, v0}, Landroid/support/v4/e12;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/return$do;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 15
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/return$do;->downstream:Lio/reactivex/Observer;

    invoke-interface {p1, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    :cond_2
    return-void
.end method
