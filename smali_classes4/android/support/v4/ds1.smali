.class public final Landroid/support/v4/ds1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final new:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/support/v4/ds1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final do:Lrx/if;

.field private final for:Lrx/if;

.field private final if:Lrx/if;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Landroid/support/v4/ds1;->new:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lrx/plugins/new;->for()Lrx/plugins/new;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/new;->case()Landroid/support/v4/kp1;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/support/v4/kp1;->else()Lrx/if;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iput-object v1, p0, Landroid/support/v4/ds1;->do:Lrx/if;

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Landroid/support/v4/kp1;->do()Lrx/if;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/ds1;->do:Lrx/if;

    .line 6
    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/kp1;->this()Lrx/if;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    iput-object v1, p0, Landroid/support/v4/ds1;->if:Lrx/if;

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {}, Landroid/support/v4/kp1;->for()Lrx/if;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/ds1;->if:Lrx/if;

    .line 9
    :goto_1
    invoke-virtual {v0}, Landroid/support/v4/kp1;->break()Lrx/if;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10
    iput-object v0, p0, Landroid/support/v4/ds1;->for:Lrx/if;

    goto :goto_2

    .line 11
    :cond_2
    invoke-static {}, Landroid/support/v4/kp1;->try()Lrx/if;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/ds1;->for:Lrx/if;

    :goto_2
    return-void
.end method

.method public static break()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/support/v4/ds1;->for()Landroid/support/v4/ds1;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/support/v4/ds1;->catch()V

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lrx/internal/schedulers/new;->new:Lrx/internal/schedulers/new;

    invoke-virtual {v1}, Lrx/internal/schedulers/new;->start()V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static case()Lrx/if;
    .locals 1

    .line 1
    invoke-static {}, Landroid/support/v4/ds1;->for()Landroid/support/v4/ds1;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v4/ds1;->for:Lrx/if;

    invoke-static {v0}, Lrx/plugins/if;->implements(Lrx/if;)Lrx/if;

    move-result-object v0

    return-object v0
.end method

.method public static class()Lrx/schedulers/do;
    .locals 1

    .line 1
    new-instance v0, Lrx/schedulers/do;

    invoke-direct {v0}, Lrx/schedulers/do;-><init>()V

    return-object v0
.end method

.method public static const()Lrx/if;
    .locals 1

    .line 1
    sget-object v0, Lrx/internal/schedulers/catch;->do:Lrx/internal/schedulers/catch;

    return-object v0
.end method

.method public static do()Lrx/if;
    .locals 1

    .line 1
    invoke-static {}, Landroid/support/v4/ds1;->for()Landroid/support/v4/ds1;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v4/ds1;->do:Lrx/if;

    invoke-static {v0}, Lrx/plugins/if;->continue(Lrx/if;)Lrx/if;

    move-result-object v0

    return-object v0
.end method

.method public static else()V
    .locals 2

    .line 1
    sget-object v0, Landroid/support/v4/ds1;->new:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/ds1;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/support/v4/ds1;->this()V

    :cond_0
    return-void
.end method

.method private static for()Landroid/support/v4/ds1;
    .locals 3

    .line 1
    :goto_0
    sget-object v0, Landroid/support/v4/ds1;->new:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/ds1;

    if-eqz v1, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v1, Landroid/support/v4/ds1;

    invoke-direct {v1}, Landroid/support/v4/ds1;-><init>()V

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 4
    :cond_1
    invoke-virtual {v1}, Landroid/support/v4/ds1;->this()V

    goto :goto_0
.end method

.method public static goto()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/support/v4/ds1;->for()Landroid/support/v4/ds1;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/support/v4/ds1;->this()V

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lrx/internal/schedulers/new;->new:Lrx/internal/schedulers/new;

    invoke-virtual {v1}, Lrx/internal/schedulers/new;->shutdown()V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static if(Ljava/util/concurrent/Executor;)Lrx/if;
    .locals 1

    .line 1
    new-instance v0, Lrx/internal/schedulers/for;

    invoke-direct {v0, p0}, Lrx/internal/schedulers/for;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static new()Lrx/if;
    .locals 1

    .line 1
    sget-object v0, Lrx/internal/schedulers/case;->do:Lrx/internal/schedulers/case;

    return-object v0
.end method

.method public static try()Lrx/if;
    .locals 1

    .line 1
    invoke-static {}, Landroid/support/v4/ds1;->for()Landroid/support/v4/ds1;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v4/ds1;->if:Lrx/if;

    invoke-static {v0}, Lrx/plugins/if;->transient(Lrx/if;)Lrx/if;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized catch()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/ds1;->do:Lrx/if;

    instance-of v1, v0, Lrx/internal/schedulers/SchedulerLifecycle;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lrx/internal/schedulers/SchedulerLifecycle;

    invoke-interface {v0}, Lrx/internal/schedulers/SchedulerLifecycle;->start()V

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v4/ds1;->if:Lrx/if;

    instance-of v1, v0, Lrx/internal/schedulers/SchedulerLifecycle;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Lrx/internal/schedulers/SchedulerLifecycle;

    invoke-interface {v0}, Lrx/internal/schedulers/SchedulerLifecycle;->start()V

    .line 5
    :cond_1
    iget-object v0, p0, Landroid/support/v4/ds1;->for:Lrx/if;

    instance-of v1, v0, Lrx/internal/schedulers/SchedulerLifecycle;

    if-eqz v1, :cond_2

    .line 6
    check-cast v0, Lrx/internal/schedulers/SchedulerLifecycle;

    invoke-interface {v0}, Lrx/internal/schedulers/SchedulerLifecycle;->start()V
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

.method public declared-synchronized this()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/ds1;->do:Lrx/if;

    instance-of v1, v0, Lrx/internal/schedulers/SchedulerLifecycle;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lrx/internal/schedulers/SchedulerLifecycle;

    invoke-interface {v0}, Lrx/internal/schedulers/SchedulerLifecycle;->shutdown()V

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v4/ds1;->if:Lrx/if;

    instance-of v1, v0, Lrx/internal/schedulers/SchedulerLifecycle;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Lrx/internal/schedulers/SchedulerLifecycle;

    invoke-interface {v0}, Lrx/internal/schedulers/SchedulerLifecycle;->shutdown()V

    .line 5
    :cond_1
    iget-object v0, p0, Landroid/support/v4/ds1;->for:Lrx/if;

    instance-of v1, v0, Lrx/internal/schedulers/SchedulerLifecycle;

    if-eqz v1, :cond_2

    .line 6
    check-cast v0, Lrx/internal/schedulers/SchedulerLifecycle;

    invoke-interface {v0}, Lrx/internal/schedulers/SchedulerLifecycle;->shutdown()V
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
