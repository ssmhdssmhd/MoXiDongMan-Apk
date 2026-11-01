.class public Lcom/wsw/cospa/utils/case;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/utils/case$if;
    }
.end annotation


# static fields
.field private static volatile case:Lcom/wsw/cospa/utils/case; = null

.field private static final try:Ljava/lang/String; = "AppExecutors"


# instance fields
.field private final do:Ljava/util/concurrent/ExecutorService;

.field private final for:Ljava/util/concurrent/Executor;

.field private final if:Ljava/util/concurrent/ExecutorService;

.field private final new:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 6
    invoke-static {}, Lcom/wsw/cospa/utils/case;->goto()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {}, Lcom/wsw/cospa/utils/case;->while()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/wsw/cospa/utils/case$if;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/wsw/cospa/utils/case$if;-><init>(Lcom/wsw/cospa/utils/case$do;)V

    invoke-static {}, Lcom/wsw/cospa/utils/case;->public()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/wsw/cospa/utils/case;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/utils/case;->do:Ljava/util/concurrent/ExecutorService;

    .line 3
    iput-object p2, p0, Lcom/wsw/cospa/utils/case;->if:Ljava/util/concurrent/ExecutorService;

    .line 4
    iput-object p3, p0, Lcom/wsw/cospa/utils/case;->for:Ljava/util/concurrent/Executor;

    .line 5
    iput-object p4, p0, Lcom/wsw/cospa/utils/case;->new:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private static synthetic break(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "disk_executor"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic case(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/wsw/cospa/utils/case;->catch(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-void
.end method

.method private static synthetic catch(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    return-void
.end method

.method private static synthetic class(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "network_executor"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method private static synthetic const(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    return-void
.end method

.method public static synthetic do(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/wsw/cospa/utils/case;->super(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-void
.end method

.method private static synthetic final(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "scheduled_executor"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic for(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0}, Lcom/wsw/cospa/utils/case;->final(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method private static goto()Ljava/util/concurrent/ExecutorService;
    .locals 10

    .line 1
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0x400

    invoke-direct {v6, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sget-object v7, Landroid/support/v4/p2;->do:Landroid/support/v4/p2;

    sget-object v8, Landroid/support/v4/n2;->do:Landroid/support/v4/n2;

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-object v9
.end method

.method public static synthetic if(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/wsw/cospa/utils/case;->const(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-void
.end method

.method public static synthetic new(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0}, Lcom/wsw/cospa/utils/case;->break(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method private static public()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v1, Landroid/support/v4/o2;->do:Landroid/support/v4/o2;

    sget-object v2, Landroid/support/v4/l2;->do:Landroid/support/v4/l2;

    const/16 v3, 0x10

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-object v0
.end method

.method private static synthetic super(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    return-void
.end method

.method public static this()Lcom/wsw/cospa/utils/case;
    .locals 2

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/case;->case:Lcom/wsw/cospa/utils/case;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/wsw/cospa/utils/case;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/wsw/cospa/utils/case;->case:Lcom/wsw/cospa/utils/case;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/wsw/cospa/utils/case;

    invoke-direct {v1}, Lcom/wsw/cospa/utils/case;-><init>()V

    sput-object v1, Lcom/wsw/cospa/utils/case;->case:Lcom/wsw/cospa/utils/case;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/wsw/cospa/utils/case;->case:Lcom/wsw/cospa/utils/case;

    return-object v0
.end method

.method public static synthetic try(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0}, Lcom/wsw/cospa/utils/case;->class(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method private static while()Ljava/util/concurrent/ExecutorService;
    .locals 10

    .line 1
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v0, 0x6

    invoke-direct {v6, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sget-object v7, Landroid/support/v4/q2;->do:Landroid/support/v4/q2;

    sget-object v8, Landroid/support/v4/m2;->do:Landroid/support/v4/m2;

    const/4 v1, 0x3

    const/4 v2, 0x6

    const-wide/16 v3, 0x3e8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-object v9
.end method


# virtual methods
.method public else()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/case;->do:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public import()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/case;->if:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public native()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/case;->new:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public throw()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/case;->for:Ljava/util/concurrent/Executor;

    return-object v0
.end method
