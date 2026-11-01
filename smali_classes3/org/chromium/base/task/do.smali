.class public abstract Lorg/chromium/base/task/do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/task/do$if;,
        Lorg/chromium/base/task/do$for;,
        Lorg/chromium/base/task/do$new;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final case:Ljava/lang/String; = "AsyncTask"

.field public static final else:Ljava/util/concurrent/Executor;

.field public static final goto:Ljava/util/concurrent/Executor;

.field private static final this:Lorg/chromium/base/task/do$new;


# instance fields
.field private final do:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TResult;>;"
        }
    .end annotation
.end field

.field private volatile for:I

.field private final if:Lorg/chromium/base/task/do$if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/task/do<",
            "TResult;>.if;"
        }
    .end annotation
.end field

.field private final new:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final try:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Landroid/support/v4/d4;->do:Landroid/support/v4/d4;

    sput-object v0, Lorg/chromium/base/task/do;->else:Ljava/util/concurrent/Executor;

    .line 2
    new-instance v0, Lorg/chromium/base/task/goto;

    invoke-direct {v0}, Lorg/chromium/base/task/goto;-><init>()V

    sput-object v0, Lorg/chromium/base/task/do;->goto:Ljava/util/concurrent/Executor;

    .line 3
    new-instance v0, Lorg/chromium/base/task/do$new;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/base/task/do$new;-><init>(Lorg/chromium/base/task/do$do;)V

    sput-object v0, Lorg/chromium/base/task/do;->this:Lorg/chromium/base/task/do$new;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/chromium/base/task/do;->for:I

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/task/do;->new:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/task/do;->try:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance v0, Lorg/chromium/base/task/do$do;

    invoke-direct {v0, p0}, Lorg/chromium/base/task/do$do;-><init>(Lorg/chromium/base/task/do;)V

    iput-object v0, p0, Lorg/chromium/base/task/do;->do:Ljava/util/concurrent/Callable;

    .line 6
    new-instance v1, Lorg/chromium/base/task/do$if;

    invoke-direct {v1, p0, v0}, Lorg/chromium/base/task/do$if;-><init>(Lorg/chromium/base/task/do;Ljava/util/concurrent/Callable;)V

    iput-object v1, p0, Lorg/chromium/base/task/do;->if:Lorg/chromium/base/task/do$if;

    return-void
.end method

.method public static synthetic case(Lorg/chromium/base/task/do;)Lorg/chromium/base/task/do$if;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/base/task/do;->if:Lorg/chromium/base/task/do$if;

    return-object p0
.end method

.method private const()V
    .locals 3

    .line 1
    iget v0, p0, Lorg/chromium/base/task/do;->for:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 2
    iget v0, p0, Lorg/chromium/base/task/do;->for:I

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_2
    :goto_0
    iput v1, p0, Lorg/chromium/base/task/do;->for:I

    .line 6
    invoke-virtual {p0}, Lorg/chromium/base/task/do;->switch()V

    return-void
.end method

.method private default(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/base/task/do;->try:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lorg/chromium/base/task/do;->throws(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic do(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/base/task/do;->native(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic else(Lorg/chromium/base/task/do;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/chromium/base/task/do;->default(Ljava/lang/Object;)V

    return-void
.end method

.method public static extends()V
    .locals 2

    .line 1
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    sget-object v1, Lorg/chromium/base/task/do;->this:Lorg/chromium/base/task/do$new;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    return-void
.end method

.method private final(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/chromium/base/task/do;->while()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lorg/chromium/base/task/do;->return(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lorg/chromium/base/task/do;->static(Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x2

    .line 4
    iput p1, p0, Lorg/chromium/base/task/do;->for:I

    return-void
.end method

.method public static synthetic for(Lorg/chromium/base/task/do;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/base/task/do;->try:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic if(Lorg/chromium/base/task/do;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/base/task/do;->import(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic import(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/chromium/base/task/do;->final(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic native(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Landroid/support/v4/b52;->catch:Landroid/support/v4/b52;

    invoke-static {v0, p0}, Lorg/chromium/base/task/PostTask;->goto(Landroid/support/v4/b52;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic new(Lorg/chromium/base/task/do;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/base/task/do;->new:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private throws(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Landroid/support/v4/q6;

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    .line 2
    iput p1, p0, Lorg/chromium/base/task/do;->for:I

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Landroid/support/v4/c4;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/c4;-><init>(Lorg/chromium/base/task/do;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->goto(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public static synthetic try(Lorg/chromium/base/task/do;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/chromium/base/task/do;->throws(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final break(Ljava/util/concurrent/Executor;)Lorg/chromium/base/task/do;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lorg/chromium/base/task/do<",
            "TResult;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/chromium/base/task/do;->const()V

    .line 2
    iget-object v0, p0, Lorg/chromium/base/task/do;->if:Lorg/chromium/base/task/do$if;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public final catch(Lorg/chromium/base/task/TaskRunner;)Lorg/chromium/base/task/do;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/task/TaskRunner;",
            ")",
            "Lorg/chromium/base/task/do<",
            "TResult;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/chromium/base/task/do;->const()V

    .line 2
    iget-object v0, p0, Lorg/chromium/base/task/do;->if:Lorg/chromium/base/task/do$if;

    invoke-interface {p1, v0}, Lorg/chromium/base/task/TaskRunner;->postTask(Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public final class(Landroid/support/v4/b52;)Lorg/chromium/base/task/do;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/b52;",
            ")",
            "Lorg/chromium/base/task/do<",
            "TResult;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/chromium/base/task/do;->const()V

    .line 2
    iget-object v0, p0, Lorg/chromium/base/task/do;->if:Lorg/chromium/base/task/do$if;

    invoke-static {p1, v0}, Lorg/chromium/base/task/PostTask;->goto(Landroid/support/v4/b52;Ljava/lang/Runnable;)V

    return-object p0
.end method

.method public final goto(Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/base/task/do;->new:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object v0, p0, Lorg/chromium/base/task/do;->if:Lorg/chromium/base/task/do$if;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result p1

    return p1
.end method

.method public public()V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public return(Ljava/lang/Object;)V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/chromium/base/task/do;->public()V

    return-void
.end method

.method public abstract static(Ljava/lang/Object;)V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation
.end method

.method public final super()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .annotation build Lorg/chromium/base/annotations/DoNotInline;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/chromium/base/task/do;->throw()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->throw()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 5
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "AsyncTask.get"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->const(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lorg/chromium/base/task/do;->if:Lorg/chromium/base/task/do$if;

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent;->close()V

    goto :goto_2

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 8
    :try_start_1
    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v1

    .line 9
    :cond_2
    iget-object v0, p0, Lorg/chromium/base/task/do;->if:Lorg/chromium/base/task/do$if;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    :cond_3
    :goto_2
    return-object v1
.end method

.method public switch()V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    return-void
.end method

.method public abstract this()Ljava/lang/Object;
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation
.end method

.method public final throw()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/chromium/base/task/do;->for:I

    return v0
.end method

.method public final while()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/base/task/do;->new:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
