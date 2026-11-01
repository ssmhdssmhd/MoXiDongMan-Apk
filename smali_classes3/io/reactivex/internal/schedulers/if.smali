.class public final Lio/reactivex/internal/schedulers/if;
.super Lio/reactivex/try;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/schedulers/SchedulerMultiWorkerSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/schedulers/if$for;,
        Lio/reactivex/internal/schedulers/if$do;,
        Lio/reactivex/internal/schedulers/if$if;
    }
.end annotation


# static fields
.field private static final break:Ljava/lang/String; = "rx2.computation-priority"

.field public static final case:Lio/reactivex/internal/schedulers/this;

.field public static final else:Ljava/lang/String; = "rx2.computation-threads"

.field public static final goto:I

.field public static final new:Lio/reactivex/internal/schedulers/if$if;

.field public static final this:Lio/reactivex/internal/schedulers/if$for;

.field private static final try:Ljava/lang/String; = "RxComputationThreadPool"


# instance fields
.field public final for:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/schedulers/if$if;",
            ">;"
        }
    .end annotation
.end field

.field public final if:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const-string v1, "rx2.computation-threads"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lio/reactivex/internal/schedulers/if;->break(II)I

    move-result v0

    sput v0, Lio/reactivex/internal/schedulers/if;->goto:I

    .line 2
    new-instance v0, Lio/reactivex/internal/schedulers/if$for;

    new-instance v1, Lio/reactivex/internal/schedulers/this;

    const-string v3, "RxComputationShutdown"

    invoke-direct {v1, v3}, Lio/reactivex/internal/schedulers/this;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lio/reactivex/internal/schedulers/if$for;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lio/reactivex/internal/schedulers/if;->this:Lio/reactivex/internal/schedulers/if$for;

    .line 3
    invoke-virtual {v0}, Lio/reactivex/internal/schedulers/goto;->dispose()V

    const-string v0, "rx2.computation-priority"

    const/4 v1, 0x5

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    .line 5
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 6
    new-instance v3, Lio/reactivex/internal/schedulers/this;

    const-string v4, "RxComputationThreadPool"

    invoke-direct {v3, v4, v0, v1}, Lio/reactivex/internal/schedulers/this;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lio/reactivex/internal/schedulers/if;->case:Lio/reactivex/internal/schedulers/this;

    .line 7
    new-instance v0, Lio/reactivex/internal/schedulers/if$if;

    invoke-direct {v0, v2, v3}, Lio/reactivex/internal/schedulers/if$if;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lio/reactivex/internal/schedulers/if;->new:Lio/reactivex/internal/schedulers/if$if;

    .line 8
    invoke-virtual {v0}, Lio/reactivex/internal/schedulers/if$if;->if()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lio/reactivex/internal/schedulers/if;->case:Lio/reactivex/internal/schedulers/this;

    invoke-direct {p0, v0}, Lio/reactivex/internal/schedulers/if;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lio/reactivex/try;-><init>()V

    .line 3
    iput-object p1, p0, Lio/reactivex/internal/schedulers/if;->if:Ljava/util/concurrent/ThreadFactory;

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lio/reactivex/internal/schedulers/if;->new:Lio/reactivex/internal/schedulers/if$if;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/internal/schedulers/if;->for:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    invoke-virtual {p0}, Lio/reactivex/internal/schedulers/if;->goto()V

    return-void
.end method

.method public static break(II)I
    .locals 0

    if-lez p1, :cond_1

    if-le p1, p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :cond_1
    :goto_0
    return p0
.end method


# virtual methods
.method public case(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
    .locals 8
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/schedulers/if;->for:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/schedulers/if$if;

    invoke-virtual {v0}, Lio/reactivex/internal/schedulers/if$if;->do()Lio/reactivex/internal/schedulers/if$for;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    .line 2
    invoke-virtual/range {v1 .. v7}, Lio/reactivex/internal/schedulers/goto;->else(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method public createWorkers(ILio/reactivex/internal/schedulers/SchedulerMultiWorkerSupport$WorkerCallback;)V
    .locals 1

    const-string v0, "number > 0 required"

    .line 1
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/if;->goto(ILjava/lang/String;)I

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/schedulers/if;->for:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/schedulers/if$if;

    invoke-virtual {v0, p1, p2}, Lio/reactivex/internal/schedulers/if$if;->createWorkers(ILio/reactivex/internal/schedulers/SchedulerMultiWorkerSupport$WorkerCallback;)V

    return-void
.end method

.method public else()V
    .locals 3

    .line 1
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/schedulers/if;->for:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/schedulers/if$if;

    .line 2
    sget-object v1, Lio/reactivex/internal/schedulers/if;->new:Lio/reactivex/internal/schedulers/if$if;

    if-ne v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v2, p0, Lio/reactivex/internal/schedulers/if;->for:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lio/reactivex/internal/schedulers/if$if;->if()V

    return-void
.end method

.method public goto()V
    .locals 3

    .line 1
    new-instance v0, Lio/reactivex/internal/schedulers/if$if;

    sget v1, Lio/reactivex/internal/schedulers/if;->goto:I

    iget-object v2, p0, Lio/reactivex/internal/schedulers/if;->if:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/schedulers/if$if;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 2
    iget-object v1, p0, Lio/reactivex/internal/schedulers/if;->for:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lio/reactivex/internal/schedulers/if;->new:Lio/reactivex/internal/schedulers/if$if;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lio/reactivex/internal/schedulers/if$if;->if()V

    :cond_0
    return-void
.end method

.method public if()Lio/reactivex/try$for;
    .locals 2
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .line 1
    new-instance v0, Lio/reactivex/internal/schedulers/if$do;

    iget-object v1, p0, Lio/reactivex/internal/schedulers/if;->for:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/internal/schedulers/if$if;

    invoke-virtual {v1}, Lio/reactivex/internal/schedulers/if$if;->do()Lio/reactivex/internal/schedulers/if$for;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/reactivex/internal/schedulers/if$do;-><init>(Lio/reactivex/internal/schedulers/if$for;)V

    return-object v0
.end method

.method public try(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/schedulers/if;->for:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/schedulers/if$if;

    invoke-virtual {v0}, Lio/reactivex/internal/schedulers/if$if;->do()Lio/reactivex/internal/schedulers/if$for;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lio/reactivex/internal/schedulers/goto;->case(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method
