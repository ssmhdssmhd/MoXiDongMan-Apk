.class Lrx/internal/operators/j$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/j;->try(Landroid/support/v4/y22;Ljava/util/concurrent/atomic/AtomicBoolean;)Lrx/functions/Action1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Lrx/Subscription;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Landroid/support/v4/y22;

.field public final synthetic for:Lrx/internal/operators/j;

.field public final synthetic if:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lrx/internal/operators/j;Landroid/support/v4/y22;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/j$do;->for:Lrx/internal/operators/j;

    iput-object p2, p0, Lrx/internal/operators/j$do;->do:Landroid/support/v4/y22;

    iput-object p3, p0, Lrx/internal/operators/j$do;->if:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lrx/Subscription;

    invoke-virtual {p0, p1}, Lrx/internal/operators/j$do;->do(Lrx/Subscription;)V

    return-void
.end method

.method public do(Lrx/Subscription;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/j$do;->for:Lrx/internal/operators/j;

    iget-object v1, v1, Lrx/internal/operators/j;->if:Landroid/support/v4/dq;

    invoke-virtual {v1, p1}, Landroid/support/v4/dq;->do(Lrx/Subscription;)V

    .line 2
    iget-object p1, p0, Lrx/internal/operators/j$do;->for:Lrx/internal/operators/j;

    iget-object v1, p0, Lrx/internal/operators/j$do;->do:Landroid/support/v4/y22;

    iget-object v2, p1, Lrx/internal/operators/j;->if:Landroid/support/v4/dq;

    invoke-virtual {p1, v1, v2}, Lrx/internal/operators/j;->new(Landroid/support/v4/y22;Landroid/support/v4/dq;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object p1, p0, Lrx/internal/operators/j$do;->for:Lrx/internal/operators/j;

    iget-object p1, p1, Lrx/internal/operators/j;->new:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 4
    iget-object p1, p0, Lrx/internal/operators/j$do;->if:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 5
    iget-object v1, p0, Lrx/internal/operators/j$do;->for:Lrx/internal/operators/j;

    iget-object v1, v1, Lrx/internal/operators/j;->new:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 6
    iget-object v1, p0, Lrx/internal/operators/j$do;->if:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw p1
.end method
