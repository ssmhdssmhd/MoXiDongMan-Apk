.class public final Lio/reactivex/internal/schedulers/new$for;
.super Lio/reactivex/try$for;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/schedulers/new$for$if;,
        Lio/reactivex/internal/schedulers/new$for$for;,
        Lio/reactivex/internal/schedulers/new$for$do;
    }
.end annotation


# instance fields
.field public final case:Landroid/support/v4/cq;

.field public final do:Z

.field public final for:Lio/reactivex/internal/queue/do;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/do<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final if:Ljava/util/concurrent/Executor;

.field public volatile new:Z

.field public final try:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/reactivex/try$for;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/schedulers/new$for;->try:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    new-instance v0, Landroid/support/v4/cq;

    invoke-direct {v0}, Landroid/support/v4/cq;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/schedulers/new$for;->case:Landroid/support/v4/cq;

    .line 4
    iput-object p1, p0, Lio/reactivex/internal/schedulers/new$for;->if:Ljava/util/concurrent/Executor;

    .line 5
    new-instance p1, Lio/reactivex/internal/queue/do;

    invoke-direct {p1}, Lio/reactivex/internal/queue/do;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/schedulers/new$for;->for:Lio/reactivex/internal/queue/do;

    .line 6
    iput-boolean p2, p0, Lio/reactivex/internal/schedulers/new$for;->do:Z

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/new$for;->new:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/reactivex/internal/schedulers/new$for;->new:Z

    .line 3
    iget-object v0, p0, Lio/reactivex/internal/schedulers/new$for;->case:Landroid/support/v4/cq;

    invoke-virtual {v0}, Landroid/support/v4/cq;->dispose()V

    .line 4
    iget-object v0, p0, Lio/reactivex/internal/schedulers/new$for;->try:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lio/reactivex/internal/schedulers/new$for;->for:Lio/reactivex/internal/queue/do;

    invoke-virtual {v0}, Lio/reactivex/internal/queue/do;->clear()V

    :cond_0
    return-void
.end method

.method public for(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
    .locals 4
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lio/reactivex/internal/schedulers/new$for;->if(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/new$for;->new:Z

    if-eqz v0, :cond_1

    .line 3
    sget-object p1, Lio/reactivex/internal/disposables/if;->INSTANCE:Lio/reactivex/internal/disposables/if;

    return-object p1

    .line 4
    :cond_1
    new-instance v0, Landroid/support/v4/tw1;

    invoke-direct {v0}, Landroid/support/v4/tw1;-><init>()V

    .line 5
    new-instance v1, Landroid/support/v4/tw1;

    invoke-direct {v1, v0}, Landroid/support/v4/tw1;-><init>(Lio/reactivex/disposables/Disposable;)V

    .line 6
    invoke-static {p1}, Landroid/support/v4/jp1;->o(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 7
    new-instance v2, Landroid/support/v4/bs1;

    new-instance v3, Lio/reactivex/internal/schedulers/new$for$for;

    invoke-direct {v3, p0, v1, p1}, Lio/reactivex/internal/schedulers/new$for$for;-><init>(Lio/reactivex/internal/schedulers/new$for;Landroid/support/v4/tw1;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lio/reactivex/internal/schedulers/new$for;->case:Landroid/support/v4/cq;

    invoke-direct {v2, v3, p1}, Landroid/support/v4/bs1;-><init>(Ljava/lang/Runnable;Lio/reactivex/internal/disposables/DisposableContainer;)V

    .line 8
    iget-object p1, p0, Lio/reactivex/internal/schedulers/new$for;->case:Landroid/support/v4/cq;

    invoke-virtual {p1, v2}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 9
    iget-object p1, p0, Lio/reactivex/internal/schedulers/new$for;->if:Ljava/util/concurrent/Executor;

    instance-of v3, p1, Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v3, :cond_2

    .line 10
    :try_start_0
    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v2, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 11
    invoke-virtual {v2, p1}, Landroid/support/v4/bs1;->setFuture(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    .line 12
    iput-boolean p2, p0, Lio/reactivex/internal/schedulers/new$for;->new:Z

    .line 13
    invoke-static {p1}, Landroid/support/v4/jp1;->l(Ljava/lang/Throwable;)V

    .line 14
    sget-object p1, Lio/reactivex/internal/disposables/if;->INSTANCE:Lio/reactivex/internal/disposables/if;

    return-object p1

    .line 15
    :cond_2
    sget-object p1, Lio/reactivex/internal/schedulers/new;->new:Lio/reactivex/try;

    invoke-virtual {p1, v2, p2, p3, p4}, Lio/reactivex/try;->try(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 16
    new-instance p2, Lio/reactivex/internal/schedulers/for;

    invoke-direct {p2, p1}, Lio/reactivex/internal/schedulers/for;-><init>(Lio/reactivex/disposables/Disposable;)V

    invoke-virtual {v2, p2}, Landroid/support/v4/bs1;->setFuture(Ljava/util/concurrent/Future;)V

    .line 17
    :goto_0
    invoke-virtual {v0, v2}, Landroid/support/v4/tw1;->replace(Lio/reactivex/disposables/Disposable;)Z

    return-object v1
.end method

.method public if(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/b41;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/new$for;->new:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lio/reactivex/internal/disposables/if;->INSTANCE:Lio/reactivex/internal/disposables/if;

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/support/v4/jp1;->o(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 4
    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/new$for;->do:Z

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Lio/reactivex/internal/schedulers/new$for$if;

    iget-object v1, p0, Lio/reactivex/internal/schedulers/new$for;->case:Landroid/support/v4/cq;

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/schedulers/new$for$if;-><init>(Ljava/lang/Runnable;Lio/reactivex/internal/disposables/DisposableContainer;)V

    .line 6
    iget-object p1, p0, Lio/reactivex/internal/schedulers/new$for;->case:Landroid/support/v4/cq;

    invoke-virtual {p1, v0}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Lio/reactivex/internal/schedulers/new$for$do;

    invoke-direct {v0, p1}, Lio/reactivex/internal/schedulers/new$for$do;-><init>(Ljava/lang/Runnable;)V

    .line 8
    :goto_0
    iget-object p1, p0, Lio/reactivex/internal/schedulers/new$for;->for:Lio/reactivex/internal/queue/do;

    invoke-virtual {p1, v0}, Lio/reactivex/internal/queue/do;->offer(Ljava/lang/Object;)Z

    .line 9
    iget-object p1, p0, Lio/reactivex/internal/schedulers/new$for;->try:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_2

    .line 10
    :try_start_0
    iget-object p1, p0, Lio/reactivex/internal/schedulers/new$for;->if:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lio/reactivex/internal/schedulers/new$for;->new:Z

    .line 12
    iget-object v0, p0, Lio/reactivex/internal/schedulers/new$for;->for:Lio/reactivex/internal/queue/do;

    invoke-virtual {v0}, Lio/reactivex/internal/queue/do;->clear()V

    .line 13
    invoke-static {p1}, Landroid/support/v4/jp1;->l(Ljava/lang/Throwable;)V

    .line 14
    sget-object p1, Lio/reactivex/internal/disposables/if;->INSTANCE:Lio/reactivex/internal/disposables/if;

    return-object p1

    :cond_2
    :goto_1
    return-object v0
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/reactivex/internal/schedulers/new$for;->new:Z

    return v0
.end method

.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/schedulers/new$for;->for:Lio/reactivex/internal/queue/do;

    const/4 v1, 0x1

    .line 2
    :cond_0
    iget-boolean v2, p0, Lio/reactivex/internal/schedulers/new$for;->new:Z

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {v0}, Lio/reactivex/internal/queue/do;->clear()V

    return-void

    .line 4
    :cond_1
    invoke-virtual {v0}, Lio/reactivex/internal/queue/do;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    if-nez v2, :cond_3

    .line 5
    iget-boolean v2, p0, Lio/reactivex/internal/schedulers/new$for;->new:Z

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v0}, Lio/reactivex/internal/queue/do;->clear()V

    return-void

    .line 7
    :cond_2
    iget-object v2, p0, Lio/reactivex/internal/schedulers/new$for;->try:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v1, v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 8
    :cond_3
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 9
    iget-boolean v2, p0, Lio/reactivex/internal/schedulers/new$for;->new:Z

    if-eqz v2, :cond_1

    .line 10
    invoke-virtual {v0}, Lio/reactivex/internal/queue/do;->clear()V

    return-void
.end method
