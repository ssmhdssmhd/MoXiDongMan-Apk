.class public final Lrx/internal/operators/try;
.super Landroid/support/v4/u22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/try$if;,
        Lrx/internal/operators/try$for;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/u22<",
        "TT;TT;>;"
    }
.end annotation


# static fields
.field public static final new:Lrx/Observer;


# instance fields
.field private for:Z

.field public final if:Lrx/internal/operators/try$for;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/try$for<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lrx/internal/operators/try$do;

    invoke-direct {v0}, Lrx/internal/operators/try$do;-><init>()V

    sput-object v0, Lrx/internal/operators/try;->new:Lrx/Observer;

    return-void
.end method

.method private constructor <init>(Lrx/internal/operators/try$for;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/try$for<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/operators/try$if;

    invoke-direct {v0, p1}, Lrx/internal/operators/try$if;-><init>(Lrx/internal/operators/try$for;)V

    invoke-direct {p0, v0}, Landroid/support/v4/u22;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/try;->if:Lrx/internal/operators/try$for;

    return-void
.end method

.method public static g6()Lrx/internal/operators/try;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/operators/try<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/operators/try$for;

    invoke-direct {v0}, Lrx/internal/operators/try$for;-><init>()V

    .line 2
    new-instance v1, Lrx/internal/operators/try;

    invoke-direct {v1, v0}, Lrx/internal/operators/try;-><init>(Lrx/internal/operators/try$for;)V

    return-object v1
.end method

.method private h6(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/operators/try;->if:Lrx/internal/operators/try$for;

    iget-object v0, v0, Lrx/internal/operators/try$for;->guard:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/try;->if:Lrx/internal/operators/try$for;

    iget-object v1, v1, Lrx/internal/operators/try$for;->buffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lrx/internal/operators/try;->if:Lrx/internal/operators/try$for;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lrx/internal/operators/try;->if:Lrx/internal/operators/try$for;

    iget-boolean v1, p1, Lrx/internal/operators/try$for;->emitting:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lrx/internal/operators/try;->for:Z

    .line 5
    iput-boolean v1, p1, Lrx/internal/operators/try$for;->emitting:Z

    .line 6
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-boolean p1, p0, Lrx/internal/operators/try;->for:Z

    if-eqz p1, :cond_1

    .line 8
    :goto_0
    iget-object p1, p0, Lrx/internal/operators/try;->if:Lrx/internal/operators/try$for;

    iget-object p1, p1, Lrx/internal/operators/try$for;->buffer:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
    iget-object v0, p0, Lrx/internal/operators/try;->if:Lrx/internal/operators/try$for;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Observer;

    invoke-static {v0, p1}, Lrx/internal/operators/return;->do(Lrx/Observer;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public e6()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/operators/try;->if:Lrx/internal/operators/try$for;

    iget-object v0, v0, Lrx/internal/operators/try$for;->guard:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/try;->if:Lrx/internal/operators/try$for;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCompleted()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/try;->for:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lrx/internal/operators/try;->if:Lrx/internal/operators/try$for;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Observer;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lrx/internal/operators/return;->if()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/internal/operators/try;->h6(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrx/internal/operators/try;->for:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lrx/internal/operators/try;->if:Lrx/internal/operators/try$for;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Observer;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lrx/internal/operators/return;->for(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lrx/internal/operators/try;->h6(Ljava/lang/Object;)V

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
    iget-boolean v0, p0, Lrx/internal/operators/try;->for:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lrx/internal/operators/try;->if:Lrx/internal/operators/try$for;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Observer;

    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lrx/internal/operators/return;->break(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lrx/internal/operators/try;->h6(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
