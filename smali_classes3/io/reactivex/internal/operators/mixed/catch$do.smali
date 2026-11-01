.class final Lio/reactivex/internal/operators/mixed/catch$do;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/mixed/catch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/mixed/catch$do$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x321c7f6dd838d46aL


# instance fields
.field public volatile active:Z

.field public volatile disposed:Z

.field public volatile done:Z

.field public final downstream:Lio/reactivex/CompletableObserver;

.field public final errorMode:Lio/reactivex/internal/util/try;

.field public final errors:Landroid/support/v4/h4;

.field public final inner:Lio/reactivex/internal/operators/mixed/catch$do$do;

.field public final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/CompletableSource;",
            ">;"
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

.field public upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>(Lio/reactivex/CompletableObserver;Lio/reactivex/functions/Function;Lio/reactivex/internal/util/try;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/CompletableObserver;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/CompletableSource;",
            ">;",
            "Lio/reactivex/internal/util/try;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/catch$do;->downstream:Lio/reactivex/CompletableObserver;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/mixed/catch$do;->mapper:Lio/reactivex/functions/Function;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/mixed/catch$do;->errorMode:Lio/reactivex/internal/util/try;

    .line 5
    iput p4, p0, Lio/reactivex/internal/operators/mixed/catch$do;->prefetch:I

    .line 6
    new-instance p1, Landroid/support/v4/h4;

    invoke-direct {p1}, Landroid/support/v4/h4;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/catch$do;->errors:Landroid/support/v4/h4;

    .line 7
    new-instance p1, Lio/reactivex/internal/operators/mixed/catch$do$do;

    invoke-direct {p1, p0}, Lio/reactivex/internal/operators/mixed/catch$do$do;-><init>(Lio/reactivex/internal/operators/mixed/catch$do;)V

    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/catch$do;->inner:Lio/reactivex/internal/operators/mixed/catch$do$do;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/operators/mixed/catch$do;->disposed:Z

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/catch$do;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/catch$do;->inner:Lio/reactivex/internal/operators/mixed/catch$do$do;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/mixed/catch$do$do;->dispose()V

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/catch$do;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    :cond_0
    return-void
.end method

.method public drain()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/catch$do;->errors:Landroid/support/v4/h4;

    .line 3
    iget-object v1, p0, Lio/reactivex/internal/operators/mixed/catch$do;->errorMode:Lio/reactivex/internal/util/try;

    .line 4
    :cond_1
    iget-boolean v2, p0, Lio/reactivex/internal/operators/mixed/catch$do;->disposed:Z

    if-eqz v2, :cond_2

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/catch$do;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v0}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    return-void

    .line 6
    :cond_2
    iget-boolean v2, p0, Lio/reactivex/internal/operators/mixed/catch$do;->active:Z

    if-nez v2, :cond_7

    .line 7
    sget-object v2, Lio/reactivex/internal/util/try;->BOUNDARY:Lio/reactivex/internal/util/try;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_3

    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 9
    iput-boolean v3, p0, Lio/reactivex/internal/operators/mixed/catch$do;->disposed:Z

    .line 10
    iget-object v1, p0, Lio/reactivex/internal/operators/mixed/catch$do;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v1}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    .line 11
    invoke-virtual {v0}, Landroid/support/v4/h4;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lio/reactivex/internal/operators/mixed/catch$do;->downstream:Lio/reactivex/CompletableObserver;

    invoke-interface {v1, v0}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 13
    :cond_3
    iget-boolean v2, p0, Lio/reactivex/internal/operators/mixed/catch$do;->done:Z

    const/4 v4, 0x0

    .line 14
    :try_start_0
    iget-object v5, p0, Lio/reactivex/internal/operators/mixed/catch$do;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v5}, Lio/reactivex/internal/fuseable/SimpleQueue;->poll()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 15
    iget-object v4, p0, Lio/reactivex/internal/operators/mixed/catch$do;->mapper:Lio/reactivex/functions/Function;

    invoke-interface {v4, v5}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "The mapper returned a null CompletableSource"

    invoke-static {v4, v5}, Lio/reactivex/internal/functions/if;->else(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/reactivex/CompletableSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    const/4 v5, 0x1

    :goto_0
    if-eqz v2, :cond_6

    if-eqz v5, :cond_6

    .line 16
    iput-boolean v3, p0, Lio/reactivex/internal/operators/mixed/catch$do;->disposed:Z

    .line 17
    invoke-virtual {v0}, Landroid/support/v4/h4;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 18
    iget-object v1, p0, Lio/reactivex/internal/operators/mixed/catch$do;->downstream:Lio/reactivex/CompletableObserver;

    invoke-interface {v1, v0}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 19
    :cond_5
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/catch$do;->downstream:Lio/reactivex/CompletableObserver;

    invoke-interface {v0}, Lio/reactivex/CompletableObserver;->onComplete()V

    :goto_1
    return-void

    :cond_6
    if-nez v5, :cond_7

    .line 20
    iput-boolean v3, p0, Lio/reactivex/internal/operators/mixed/catch$do;->active:Z

    .line 21
    iget-object v2, p0, Lio/reactivex/internal/operators/mixed/catch$do;->inner:Lio/reactivex/internal/operators/mixed/catch$do$do;

    invoke-interface {v4, v2}, Lio/reactivex/CompletableSource;->subscribe(Lio/reactivex/CompletableObserver;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 22
    invoke-static {v1}, Landroid/support/v4/t80;->if(Ljava/lang/Throwable;)V

    .line 23
    iput-boolean v3, p0, Lio/reactivex/internal/operators/mixed/catch$do;->disposed:Z

    .line 24
    iget-object v2, p0, Lio/reactivex/internal/operators/mixed/catch$do;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v2}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    .line 25
    iget-object v2, p0, Lio/reactivex/internal/operators/mixed/catch$do;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v2}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 26
    invoke-virtual {v0, v1}, Landroid/support/v4/h4;->addThrowable(Ljava/lang/Throwable;)Z

    .line 27
    invoke-virtual {v0}, Landroid/support/v4/h4;->terminate()Ljava/lang/Throwable;

    move-result-object v0

    .line 28
    iget-object v1, p0, Lio/reactivex/internal/operators/mixed/catch$do;->downstream:Lio/reactivex/CompletableObserver;

    invoke-interface {v1, v0}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 29
    :cond_7
    :goto_2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-nez v2, :cond_1

    return-void
.end method

.method public innerComplete()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/operators/mixed/catch$do;->active:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/catch$do;->drain()V

    return-void
.end method

.method public innerError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/catch$do;->errors:Landroid/support/v4/h4;

    invoke-virtual {v0, p1}, Landroid/support/v4/h4;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/catch$do;->errorMode:Lio/reactivex/internal/util/try;

    sget-object v0, Lio/reactivex/internal/util/try;->IMMEDIATE:Lio/reactivex/internal/util/try;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lio/reactivex/internal/operators/mixed/catch$do;->disposed:Z

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/catch$do;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 5
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/catch$do;->errors:Landroid/support/v4/h4;

    invoke-virtual {p1}, Landroid/support/v4/h4;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    .line 6
    sget-object v0, Lio/reactivex/internal/util/case;->do:Ljava/lang/Throwable;

    if-eq p1, v0, :cond_0

    .line 7
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/catch$do;->downstream:Lio/reactivex/CompletableObserver;

    invoke-interface {v0, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_3

    .line 9
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/catch$do;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lio/reactivex/internal/operators/mixed/catch$do;->active:Z

    .line 11
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/catch$do;->drain()V

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {p1}, Landroid/support/v4/jp1;->l(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/mixed/catch$do;->disposed:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/operators/mixed/catch$do;->done:Z

    .line 2
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/catch$do;->drain()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/catch$do;->errors:Landroid/support/v4/h4;

    invoke-virtual {v0, p1}, Landroid/support/v4/h4;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/catch$do;->errorMode:Lio/reactivex/internal/util/try;

    sget-object v0, Lio/reactivex/internal/util/try;->IMMEDIATE:Lio/reactivex/internal/util/try;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 3
    iput-boolean v1, p0, Lio/reactivex/internal/operators/mixed/catch$do;->disposed:Z

    .line 4
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/catch$do;->inner:Lio/reactivex/internal/operators/mixed/catch$do$do;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/mixed/catch$do$do;->dispose()V

    .line 5
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/catch$do;->errors:Landroid/support/v4/h4;

    invoke-virtual {p1}, Landroid/support/v4/h4;->terminate()Ljava/lang/Throwable;

    move-result-object p1

    .line 6
    sget-object v0, Lio/reactivex/internal/util/case;->do:Ljava/lang/Throwable;

    if-eq p1, v0, :cond_0

    .line 7
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/catch$do;->downstream:Lio/reactivex/CompletableObserver;

    invoke-interface {v0, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_3

    .line 9
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/catch$do;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->clear()V

    goto :goto_0

    .line 10
    :cond_1
    iput-boolean v1, p0, Lio/reactivex/internal/operators/mixed/catch$do;->done:Z

    .line 11
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/catch$do;->drain()V

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {p1}, Landroid/support/v4/jp1;->l(Ljava/lang/Throwable;)V

    :cond_3
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

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/catch$do;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    .line 2
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/catch$do;->drain()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/catch$do;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/do;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/catch$do;->upstream:Lio/reactivex/disposables/Disposable;

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
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/catch$do;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 7
    iput-boolean v1, p0, Lio/reactivex/internal/operators/mixed/catch$do;->done:Z

    .line 8
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/catch$do;->downstream:Lio/reactivex/CompletableObserver;

    invoke-interface {p1, p0}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 9
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/catch$do;->drain()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 10
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/catch$do;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 11
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/catch$do;->downstream:Lio/reactivex/CompletableObserver;

    invoke-interface {p1, p0}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    return-void

    .line 12
    :cond_1
    new-instance p1, Landroid/support/v4/e12;

    iget v0, p0, Lio/reactivex/internal/operators/mixed/catch$do;->prefetch:I

    invoke-direct {p1, v0}, Landroid/support/v4/e12;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/catch$do;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 13
    iget-object p1, p0, Lio/reactivex/internal/operators/mixed/catch$do;->downstream:Lio/reactivex/CompletableObserver;

    invoke-interface {p1, p0}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    :cond_2
    return-void
.end method
