.class abstract Lio/reactivex/internal/operators/parallel/class$do;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/parallel/class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
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
.field private static final serialVersionUID:J = 0x7ffc3440018b78e6L


# instance fields
.field public volatile cancelled:Z

.field public consumed:I

.field public volatile done:Z

.field public error:Ljava/lang/Throwable;

.field public final limit:I

.field public final prefetch:I

.field public final queue:Landroid/support/v4/b12;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/b12<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field public upstream:Lorg/reactivestreams/Subscription;

.field public final worker:Lio/reactivex/try$for;


# direct methods
.method public constructor <init>(ILandroid/support/v4/b12;Lio/reactivex/try$for;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/support/v4/b12<",
            "TT;>;",
            "Lio/reactivex/try$for;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/parallel/class$do;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 3
    iput p1, p0, Lio/reactivex/internal/operators/parallel/class$do;->prefetch:I

    .line 4
    iput-object p2, p0, Lio/reactivex/internal/operators/parallel/class$do;->queue:Landroid/support/v4/b12;

    shr-int/lit8 p2, p1, 0x2

    sub-int/2addr p1, p2

    .line 5
    iput p1, p0, Lio/reactivex/internal/operators/parallel/class$do;->limit:I

    .line 6
    iput-object p3, p0, Lio/reactivex/internal/operators/parallel/class$do;->worker:Lio/reactivex/try$for;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/class$do;->cancelled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/parallel/class$do;->cancelled:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/class$do;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/class$do;->worker:Lio/reactivex/try$for;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/class$do;->queue:Landroid/support/v4/b12;

    invoke-virtual {v0}, Landroid/support/v4/b12;->clear()V

    :cond_0
    return-void
.end method

.method public final onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/class$do;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/operators/parallel/class$do;->done:Z

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/class$do;->schedule()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/class$do;->done:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Landroid/support/v4/jp1;->l(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/parallel/class$do;->error:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lio/reactivex/internal/operators/parallel/class$do;->done:Z

    .line 5
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/class$do;->schedule()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/operators/parallel/class$do;->done:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/class$do;->queue:Landroid/support/v4/b12;

    invoke-virtual {v0, p1}, Landroid/support/v4/b12;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lio/reactivex/internal/operators/parallel/class$do;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 4
    new-instance p1, Landroid/support/v4/a01;

    const-string v0, "Queue is full?!"

    invoke-direct {p1, v0}, Landroid/support/v4/a01;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/parallel/class$do;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/class$do;->schedule()V

    return-void
.end method

.method public final request(J)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/for;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/class$do;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Landroid/support/v4/r6;->do(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 3
    invoke-virtual {p0}, Lio/reactivex/internal/operators/parallel/class$do;->schedule()V

    :cond_0
    return-void
.end method

.method public final schedule()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/parallel/class$do;->worker:Lio/reactivex/try$for;

    invoke-virtual {v0, p0}, Lio/reactivex/try$for;->if(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method
