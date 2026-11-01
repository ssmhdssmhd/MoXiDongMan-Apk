.class final Lio/reactivex/internal/operators/observable/q1$do;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/q1;
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
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lio/reactivex/disposables/Disposable;",
        ">;",
        "Lio/reactivex/Observer<",
        "TR;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3540c639803a63b9L


# instance fields
.field public final bufferSize:I

.field public volatile done:Z

.field public final index:J

.field public final parent:Lio/reactivex/internal/operators/observable/q1$if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/q1$if<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field public volatile queue:Lio/reactivex/internal/fuseable/SimpleQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/fuseable/SimpleQueue<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/internal/operators/observable/q1$if;JI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/q1$if<",
            "TT;TR;>;JI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/q1$do;->parent:Lio/reactivex/internal/operators/observable/q1$if;

    .line 3
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/q1$do;->index:J

    .line 4
    iput p4, p0, Lio/reactivex/internal/operators/observable/q1$do;->bufferSize:I

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/reactivex/internal/disposables/do;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public onComplete()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/q1$do;->index:J

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/q1$do;->parent:Lio/reactivex/internal/operators/observable/q1$if;

    iget-wide v2, v2, Lio/reactivex/internal/operators/observable/q1$if;->unique:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/q1$do;->done:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/q1$do;->parent:Lio/reactivex/internal/operators/observable/q1$if;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/q1$if;->drain()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/q1$do;->parent:Lio/reactivex/internal/operators/observable/q1$if;

    invoke-virtual {v0, p0, p1}, Lio/reactivex/internal/operators/observable/q1$if;->innerError(Lio/reactivex/internal/operators/observable/q1$do;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/q1$do;->index:J

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/q1$do;->parent:Lio/reactivex/internal/operators/observable/q1$if;

    iget-wide v2, v2, Lio/reactivex/internal/operators/observable/q1$if;->unique:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/q1$do;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    invoke-interface {v0, p1}, Lio/reactivex/internal/fuseable/SimpleQueue;->offer(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/q1$do;->parent:Lio/reactivex/internal/operators/observable/q1$if;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/q1$if;->drain()V

    :cond_1
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lio/reactivex/internal/disposables/do;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_2

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
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/q1$do;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    .line 6
    iput-boolean v1, p0, Lio/reactivex/internal/operators/observable/q1$do;->done:Z

    .line 7
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/q1$do;->parent:Lio/reactivex/internal/operators/observable/q1$if;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/q1$if;->drain()V

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 8
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/q1$do;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    return-void

    .line 9
    :cond_1
    new-instance p1, Landroid/support/v4/e12;

    iget v0, p0, Lio/reactivex/internal/operators/observable/q1$do;->bufferSize:I

    invoke-direct {p1, v0}, Landroid/support/v4/e12;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/q1$do;->queue:Lio/reactivex/internal/fuseable/SimpleQueue;

    :cond_2
    return-void
.end method
