.class final Lio/reactivex/internal/operators/observable/e$do;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/Observer<",
        "TU;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3fec6c572fe7d027L


# instance fields
.field public volatile done:Z

.field public fusionMode:I

.field public final id:J

.field public final parent:Lio/reactivex/internal/operators/observable/e$if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/e$if<",
            "TT;TU;>;"
        }
    .end annotation
.end field

.field public volatile queue:Lio/reactivex/internal/fuseable/SimpleQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/SimpleQueue<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/internal/operators/observable/e$if;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/e$if<",
            "TT;TU;>;J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/e$do;->id:J

    .line 3
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/e$do;->parent:Lio/reactivex/internal/operators/observable/e$if;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/reactivex/internal/disposables/do;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/e$do;->done:Z

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/e$do;->parent:Lio/reactivex/internal/operators/observable/e$if;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/e$if;->drain()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/e$do;->parent:Lio/reactivex/internal/operators/observable/e$if;

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/e$if;->errors:Landroid/support/v4/h4;

    invoke-virtual {v0, p1}, Landroid/support/v4/h4;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/e$do;->parent:Lio/reactivex/internal/operators/observable/e$if;

    iget-boolean v0, p1, Lio/reactivex/internal/operators/observable/e$if;->delayErrors:Z

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/e$if;->disposeAll()Z

    :cond_0
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lio/reactivex/internal/operators/observable/e$do;->done:Z

    .line 5
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/e$do;->parent:Lio/reactivex/internal/operators/observable/e$if;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/e$if;->drain()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p1}, Landroid/support/v4/jp1;->l(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lio/reactivex/internal/operators/observable/e$do;->fusionMode:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/e$do;->parent:Lio/reactivex/internal/operators/observable/e$if;

    invoke-virtual {v0, p1, p0}, Lio/reactivex/internal/operators/observable/e$if;->tryEmit(Ljava/lang/Object;Lio/reactivex/internal/operators/observable/e$do;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/e$do;->parent:Lio/reactivex/internal/operators/observable/e$if;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/e$if;->drain()V

    :goto_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/do;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v0, p1, Lio/reactivex/internal/fuseable/QueueDisposable;

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Lio/reactivex/internal/fuseable/QueueDisposable;

    const/4 v0, 0x7

    .line 4
    invoke-interface {p1, v0}, Lio/reactivex/internal/fuseable/QueueFuseable;->requestFusion(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5
    iput v0, p0, Lio/reactivex/internal/operators/observable/e$do;->fusionMode:I

    .line 6
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/e$do;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 7
    iput-boolean v1, p0, Lio/reactivex/internal/operators/observable/e$do;->done:Z

    .line 8
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/e$do;->parent:Lio/reactivex/internal/operators/observable/e$if;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/e$if;->drain()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 9
    iput v0, p0, Lio/reactivex/internal/operators/observable/e$do;->fusionMode:I

    .line 10
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/e$do;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    :cond_1
    return-void
.end method
