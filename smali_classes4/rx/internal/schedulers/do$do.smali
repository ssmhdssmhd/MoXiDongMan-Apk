.class final Lrx/internal/schedulers/do$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation


# instance fields
.field private final case:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private final do:Ljava/util/concurrent/ThreadFactory;

.field private final for:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lrx/internal/schedulers/do$for;",
            ">;"
        }
    .end annotation
.end field

.field private final if:J

.field private final new:Landroid/support/v4/dq;

.field private final try:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/schedulers/do$do;->do:Ljava/util/concurrent/ThreadFactory;

    if-eqz p4, :cond_0

    .line 3
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p2

    goto :goto_0

    :cond_0
    const-wide/16 p2, 0x0

    :goto_0
    move-wide v4, p2

    iput-wide v4, p0, Lrx/internal/schedulers/do$do;->if:J

    .line 4
    new-instance p2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p2, p0, Lrx/internal/schedulers/do$do;->for:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 5
    new-instance p2, Landroid/support/v4/dq;

    invoke-direct {p2}, Landroid/support/v4/dq;-><init>()V

    iput-object p2, p0, Lrx/internal/schedulers/do$do;->new:Landroid/support/v4/dq;

    const/4 p2, 0x0

    if-eqz p4, :cond_1

    const/4 p2, 0x1

    .line 6
    new-instance p3, Lrx/internal/schedulers/do$do$do;

    invoke-direct {p3, p0, p1}, Lrx/internal/schedulers/do$do$do;-><init>(Lrx/internal/schedulers/do$do;Ljava/util/concurrent/ThreadFactory;)V

    invoke-static {p2, p3}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p2

    .line 7
    invoke-static {p2}, Lrx/internal/schedulers/else;->class(Ljava/util/concurrent/ScheduledExecutorService;)Z

    .line 8
    new-instance v1, Lrx/internal/schedulers/do$do$if;

    invoke-direct {v1, p0}, Lrx/internal/schedulers/do$do$if;-><init>(Lrx/internal/schedulers/do$do;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, p2

    move-wide v2, v4

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, p2

    .line 9
    :goto_1
    iput-object p2, p0, Lrx/internal/schedulers/do$do;->try:Ljava/util/concurrent/ScheduledExecutorService;

    .line 10
    iput-object p1, p0, Lrx/internal/schedulers/do$do;->case:Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public do()V
    .locals 7

    .line 1
    iget-object v0, p0, Lrx/internal/schedulers/do$do;->for:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lrx/internal/schedulers/do$do;->for()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lrx/internal/schedulers/do$do;->for:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/internal/schedulers/do$for;

    .line 4
    invoke-virtual {v3}, Lrx/internal/schedulers/do$for;->const()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-gtz v6, :cond_1

    .line 5
    iget-object v4, p0, Lrx/internal/schedulers/do$do;->for:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    iget-object v4, p0, Lrx/internal/schedulers/do$do;->new:Landroid/support/v4/dq;

    invoke-virtual {v4, v3}, Landroid/support/v4/dq;->try(Lrx/Subscription;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public for()J
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public if()Lrx/internal/schedulers/do$for;
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/schedulers/do$do;->new:Landroid/support/v4/dq;

    invoke-virtual {v0}, Landroid/support/v4/dq;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lrx/internal/schedulers/do;->try:Lrx/internal/schedulers/do$for;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lrx/internal/schedulers/do$do;->for:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lrx/internal/schedulers/do$do;->for:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/schedulers/do$for;

    if-eqz v0, :cond_0

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Lrx/internal/schedulers/do$for;

    iget-object v1, p0, Lrx/internal/schedulers/do$do;->do:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Lrx/internal/schedulers/do$for;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 6
    iget-object v1, p0, Lrx/internal/schedulers/do$do;->new:Landroid/support/v4/dq;

    invoke-virtual {v1, v0}, Landroid/support/v4/dq;->do(Lrx/Subscription;)V

    return-object v0
.end method

.method public new(Lrx/internal/schedulers/do$for;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lrx/internal/schedulers/do$do;->for()J

    move-result-wide v0

    iget-wide v2, p0, Lrx/internal/schedulers/do$do;->if:J

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lrx/internal/schedulers/do$for;->final(J)V

    .line 2
    iget-object v0, p0, Lrx/internal/schedulers/do$do;->for:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public try()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lrx/internal/schedulers/do$do;->case:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 3
    :cond_0
    iget-object v0, p0, Lrx/internal/schedulers/do$do;->try:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_1
    iget-object v0, p0, Lrx/internal/schedulers/do$do;->new:Landroid/support/v4/dq;

    invoke-virtual {v0}, Landroid/support/v4/dq;->unsubscribe()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/schedulers/do$do;->new:Landroid/support/v4/dq;

    invoke-virtual {v1}, Landroid/support/v4/dq;->unsubscribe()V

    throw v0
.end method
