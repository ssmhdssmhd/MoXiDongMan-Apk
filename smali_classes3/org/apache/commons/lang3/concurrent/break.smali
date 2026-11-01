.class public Lorg/apache/commons/lang3/concurrent/break;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final class:I = 0x0

.field private static final const:I = 0x1


# instance fields
.field private break:I

.field private case:J

.field private catch:Z

.field private final do:Ljava/util/concurrent/ScheduledExecutorService;

.field private else:J

.field private final for:Ljava/util/concurrent/TimeUnit;

.field private goto:I

.field private final if:J

.field private final new:Z

.field private this:I

.field private try:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;I)V
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang3/concurrent/break;-><init>(Ljava/util/concurrent/ScheduledExecutorService;JLjava/util/concurrent/TimeUnit;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;JLjava/util/concurrent/TimeUnit;I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    .line 3
    iput-wide p2, p0, Lorg/apache/commons/lang3/concurrent/break;->if:J

    .line 4
    iput-object p4, p0, Lorg/apache/commons/lang3/concurrent/break;->for:Ljava/util/concurrent/TimeUnit;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 5
    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/break;->do:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    iput-boolean p2, p0, Lorg/apache/commons/lang3/concurrent/break;->new:Z

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    .line 8
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setContinueExistingPeriodicTasksAfterShutdownPolicy(Z)V

    .line 9
    invoke-virtual {p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setExecuteExistingDelayedTasksAfterShutdownPolicy(Z)V

    .line 10
    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/break;->do:Ljava/util/concurrent/ScheduledExecutorService;

    .line 11
    iput-boolean p3, p0, Lorg/apache/commons/lang3/concurrent/break;->new:Z

    .line 12
    :goto_0
    invoke-virtual {p0, p5}, Lorg/apache/commons/lang3/concurrent/break;->class(I)V

    return-void

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Time period must be greater 0!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public break()Ljava/util/concurrent/TimeUnit;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/break;->for:Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method

.method public case()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/break;->do:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public declared-synchronized catch()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/lang3/concurrent/break;->catch:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized class(I)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput p1, p0, Lorg/apache/commons/lang3/concurrent/break;->goto:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized const()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/commons/lang3/concurrent/break;->catch:Z

    if-nez v0, :cond_2

    .line 2
    iget-boolean v0, p0, Lorg/apache/commons/lang3/concurrent/break;->new:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/break;->case()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/break;->try:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 5
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lorg/apache/commons/lang3/concurrent/break;->catch:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized do()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/break;->catch()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/break;->try:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/break;->final()Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/concurrent/break;->try:Ljava/util/concurrent/ScheduledFuture;

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/break;->goto()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_2

    iget v0, p0, Lorg/apache/commons/lang3/concurrent/break;->this:I

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/break;->goto()I

    move-result v2

    if-ge v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_2

    .line 6
    :cond_3
    iget v2, p0, Lorg/apache/commons/lang3/concurrent/break;->this:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/commons/lang3/concurrent/break;->this:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    if-eqz v0, :cond_0

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_4
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TimedSemaphore is shut down!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public declared-synchronized else()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lorg/apache/commons/lang3/concurrent/break;->break:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final()Ljava/util/concurrent/ScheduledFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/break;->case()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/lang3/concurrent/break$do;

    invoke-direct {v1, p0}, Lorg/apache/commons/lang3/concurrent/break$do;-><init>(Lorg/apache/commons/lang3/concurrent/break;)V

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/break;->this()J

    move-result-wide v2

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/break;->this()J

    move-result-wide v4

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/break;->break()Ljava/util/concurrent/TimeUnit;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized for()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lorg/apache/commons/lang3/concurrent/break;->this:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized goto()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lorg/apache/commons/lang3/concurrent/break;->goto:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized if()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lorg/apache/commons/lang3/concurrent/break;->this:I

    iput v0, p0, Lorg/apache/commons/lang3/concurrent/break;->break:I

    .line 2
    iget-wide v1, p0, Lorg/apache/commons/lang3/concurrent/break;->case:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/lang3/concurrent/break;->case:J

    .line 3
    iget-wide v0, p0, Lorg/apache/commons/lang3/concurrent/break;->else:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/concurrent/break;->else:J

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lorg/apache/commons/lang3/concurrent/break;->this:I

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized new()I
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/break;->goto()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/break;->for()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public this()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/lang3/concurrent/break;->if:J

    return-wide v0
.end method

.method public declared-synchronized try()D
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lorg/apache/commons/lang3/concurrent/break;->else:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lorg/apache/commons/lang3/concurrent/break;->case:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-double v2, v2

    long-to-double v0, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double v0, v2, v0

    :goto_0
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
