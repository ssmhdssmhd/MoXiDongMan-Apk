.class Lrx/internal/operators/j$if;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/j;->new(Landroid/support/v4/y22;Landroid/support/v4/dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/y22<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Landroid/support/v4/y22;

.field public final synthetic for:Lrx/internal/operators/j;

.field public final synthetic if:Landroid/support/v4/dq;


# direct methods
.method public constructor <init>(Lrx/internal/operators/j;Landroid/support/v4/y22;Landroid/support/v4/y22;Landroid/support/v4/dq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/j$if;->for:Lrx/internal/operators/j;

    iput-object p3, p0, Lrx/internal/operators/j$if;->do:Landroid/support/v4/y22;

    iput-object p4, p0, Lrx/internal/operators/j$if;->if:Landroid/support/v4/dq;

    invoke-direct {p0, p2}, Landroid/support/v4/y22;-><init>(Landroid/support/v4/y22;)V

    return-void
.end method


# virtual methods
.method public do()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/operators/j$if;->for:Lrx/internal/operators/j;

    iget-object v0, v0, Lrx/internal/operators/j;->new:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/j$if;->for:Lrx/internal/operators/j;

    iget-object v0, v0, Lrx/internal/operators/j;->if:Landroid/support/v4/dq;

    iget-object v1, p0, Lrx/internal/operators/j$if;->if:Landroid/support/v4/dq;

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lrx/internal/operators/j$if;->for:Lrx/internal/operators/j;

    invoke-static {v0}, Lrx/internal/operators/j;->do(Lrx/internal/operators/j;)Lrx/observables/for;

    move-result-object v0

    instance-of v0, v0, Lrx/Subscription;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lrx/internal/operators/j$if;->for:Lrx/internal/operators/j;

    invoke-static {v0}, Lrx/internal/operators/j;->do(Lrx/internal/operators/j;)Lrx/observables/for;

    move-result-object v0

    check-cast v0, Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 5
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/j$if;->for:Lrx/internal/operators/j;

    iget-object v0, v0, Lrx/internal/operators/j;->if:Landroid/support/v4/dq;

    invoke-virtual {v0}, Landroid/support/v4/dq;->unsubscribe()V

    .line 6
    iget-object v0, p0, Lrx/internal/operators/j$if;->for:Lrx/internal/operators/j;

    new-instance v1, Landroid/support/v4/dq;

    invoke-direct {v1}, Landroid/support/v4/dq;-><init>()V

    iput-object v1, v0, Lrx/internal/operators/j;->if:Landroid/support/v4/dq;

    .line 7
    iget-object v0, p0, Lrx/internal/operators/j$if;->for:Lrx/internal/operators/j;

    iget-object v0, v0, Lrx/internal/operators/j;->for:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_1
    iget-object v0, p0, Lrx/internal/operators/j$if;->for:Lrx/internal/operators/j;

    iget-object v0, v0, Lrx/internal/operators/j;->new:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/j$if;->for:Lrx/internal/operators/j;

    iget-object v1, v1, Lrx/internal/operators/j;->new:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public onCompleted()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lrx/internal/operators/j$if;->do()V

    .line 2
    iget-object v0, p0, Lrx/internal/operators/j$if;->do:Landroid/support/v4/y22;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lrx/internal/operators/j$if;->do()V

    .line 2
    iget-object v0, p0, Lrx/internal/operators/j$if;->do:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

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
    iget-object v0, p0, Lrx/internal/operators/j$if;->do:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    return-void
.end method
