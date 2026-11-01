.class Lrx/internal/operators/j$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/j;->for(Landroid/support/v4/dq;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/support/v4/dq;

.field public final synthetic if:Lrx/internal/operators/j;


# direct methods
.method public constructor <init>(Lrx/internal/operators/j;Landroid/support/v4/dq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/j$for;->if:Lrx/internal/operators/j;

    iput-object p2, p0, Lrx/internal/operators/j$for;->do:Landroid/support/v4/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/operators/j$for;->if:Lrx/internal/operators/j;

    iget-object v0, v0, Lrx/internal/operators/j;->new:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/j$for;->if:Lrx/internal/operators/j;

    iget-object v0, v0, Lrx/internal/operators/j;->if:Landroid/support/v4/dq;

    iget-object v1, p0, Lrx/internal/operators/j$for;->do:Landroid/support/v4/dq;

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lrx/internal/operators/j$for;->if:Lrx/internal/operators/j;

    iget-object v0, v0, Lrx/internal/operators/j;->for:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lrx/internal/operators/j$for;->if:Lrx/internal/operators/j;

    invoke-static {v0}, Lrx/internal/operators/j;->do(Lrx/internal/operators/j;)Lrx/observables/for;

    move-result-object v0

    instance-of v0, v0, Lrx/Subscription;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lrx/internal/operators/j$for;->if:Lrx/internal/operators/j;

    invoke-static {v0}, Lrx/internal/operators/j;->do(Lrx/internal/operators/j;)Lrx/observables/for;

    move-result-object v0

    check-cast v0, Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 6
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/j$for;->if:Lrx/internal/operators/j;

    iget-object v0, v0, Lrx/internal/operators/j;->if:Landroid/support/v4/dq;

    invoke-virtual {v0}, Landroid/support/v4/dq;->unsubscribe()V

    .line 7
    iget-object v0, p0, Lrx/internal/operators/j$for;->if:Lrx/internal/operators/j;

    new-instance v1, Landroid/support/v4/dq;

    invoke-direct {v1}, Landroid/support/v4/dq;-><init>()V

    iput-object v1, v0, Lrx/internal/operators/j;->if:Landroid/support/v4/dq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_1
    iget-object v0, p0, Lrx/internal/operators/j$for;->if:Lrx/internal/operators/j;

    iget-object v0, v0, Lrx/internal/operators/j;->new:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/j$for;->if:Lrx/internal/operators/j;

    iget-object v1, v1, Lrx/internal/operators/j;->new:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
