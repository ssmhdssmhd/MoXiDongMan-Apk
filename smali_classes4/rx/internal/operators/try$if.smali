.class final Lrx/internal/operators/try$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final do:Lrx/internal/operators/try$for;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/try$for<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/internal/operators/try$for;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/try$for<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/try$if;->do:Lrx/internal/operators/try$for;

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Lrx/internal/operators/try$if;->do(Landroid/support/v4/y22;)V

    return-void
.end method

.method public do(Landroid/support/v4/y22;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/operators/try$if;->do:Lrx/internal/operators/try$for;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lrx/internal/operators/try$for;->casObserverRef(Lrx/Observer;Lrx/Observer;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    new-instance v0, Lrx/internal/operators/try$if$do;

    invoke-direct {v0, p0}, Lrx/internal/operators/try$if$do;-><init>(Lrx/internal/operators/try$if;)V

    invoke-static {v0}, Lrx/subscriptions/for;->do(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 3
    iget-object p1, p0, Lrx/internal/operators/try$if;->do:Lrx/internal/operators/try$for;

    iget-object v0, p1, Lrx/internal/operators/try$for;->guard:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p1, p0, Lrx/internal/operators/try$if;->do:Lrx/internal/operators/try$for;

    iget-boolean v1, p1, Lrx/internal/operators/try$for;->emitting:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 5
    iput-boolean v2, p1, Lrx/internal/operators/try$for;->emitting:Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 6
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_4

    .line 7
    :goto_1
    iget-object p1, p0, Lrx/internal/operators/try$if;->do:Lrx/internal/operators/try$for;

    iget-object p1, p1, Lrx/internal/operators/try$for;->buffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    iget-object v0, p0, Lrx/internal/operators/try$if;->do:Lrx/internal/operators/try$for;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Observer;

    invoke-static {v0, p1}, Lrx/internal/operators/return;->do(Lrx/Observer;Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_1
    iget-object p1, p0, Lrx/internal/operators/try$if;->do:Lrx/internal/operators/try$for;

    iget-object p1, p1, Lrx/internal/operators/try$for;->guard:Ljava/lang/Object;

    monitor-enter p1

    .line 10
    :try_start_1
    iget-object v0, p0, Lrx/internal/operators/try$if;->do:Lrx/internal/operators/try$for;

    iget-object v0, v0, Lrx/internal/operators/try$for;->buffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lrx/internal/operators/try$if;->do:Lrx/internal/operators/try$for;

    iput-boolean v3, v0, Lrx/internal/operators/try$for;->emitting:Z

    .line 12
    monitor-exit p1

    goto :goto_2

    .line 13
    :cond_2
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    .line 14
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 15
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only one subscriber allowed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return-void
.end method
