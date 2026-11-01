.class public Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils$Consumer;,
        Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils$Provider;
    }
.end annotation


# static fields
.field private static do:Landroid/os/Handler;

.field private static for:Landroid/os/Handler;

.field private static final if:Ljava/lang/Object;

.field private static final new:Ljava/lang/Object;

.field private static final try:Ljava/util/concurrent/Executor;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils;->if:Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils;->new:Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils$if;

    invoke-direct {v0}, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils$if;-><init>()V

    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils;->try:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static break()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static case(Landroid/content/Context;J)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 2
    new-instance v0, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils$do;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils$do;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, p1, p2}, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils;->import(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private static catch()Landroid/os/Handler;
    .locals 3

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils;->if:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils;->do:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils;->do:Landroid/os/Handler;

    .line 4
    :cond_0
    sget-object v1, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils;->do:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static class()Z
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static const(Landroid/content/Context;Ljava/lang/Runnable;)Z
    .locals 3

    if-nez p0, :cond_0

    .line 1
    invoke-static {p1}, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils;->final(Ljava/lang/Runnable;)Z

    move-result p0

    return p0

    .line 2
    :cond_0
    invoke-static {}, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils;->this()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, p0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method public static synthetic do()Landroid/os/Handler;
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils;->this()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static else(Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils$Provider;Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils$Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils$Provider<",
            "TT;>;",
            "Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils$Consumer<",
            "TT;>;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils;->try:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils$for;

    invoke-direct {v1, p0, p1}, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils$for;-><init>(Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils$Provider;Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils$Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final(Ljava/lang/Runnable;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils;->this()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public static for(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils;->this()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static goto(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    sget-object v0, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils;->try:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static if(Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils;->this()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static import(Ljava/lang/Runnable;J)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils;->this()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p0

    return p0
.end method

.method public static native(Landroid/content/Context;Ljava/lang/Runnable;J)Z
    .locals 3

    if-nez p0, :cond_0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils;->public(Ljava/lang/Runnable;J)Z

    move-result p0

    return p0

    .line 2
    :cond_0
    invoke-static {}, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils;->catch()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, p0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method public static new(Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils;->catch()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static public(Ljava/lang/Runnable;J)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils;->catch()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p0

    return p0
.end method

.method public static return()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils;->this()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static static()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils;->catch()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static super(Landroid/content/Context;Ljava/lang/Runnable;)Z
    .locals 3

    if-nez p0, :cond_0

    .line 1
    invoke-static {p1}, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils;->throw(Ljava/lang/Runnable;)Z

    move-result p0

    return p0

    .line 2
    :cond_0
    invoke-static {}, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils;->catch()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, p0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method public static switch(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils;->static()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ThreadUtils safeCheck alert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static this()Landroid/os/Handler;
    .locals 3

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils;->new:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils;->for:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "daemon-handler-thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 5
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils;->for:Landroid/os/Handler;

    .line 6
    :cond_0
    sget-object v1, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils;->for:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static throw(Ljava/lang/Runnable;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils;->catch()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public static try(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils;->catch()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static while(Landroid/content/Context;Ljava/lang/Runnable;J)Z
    .locals 3

    if-nez p0, :cond_0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils;->import(Ljava/lang/Runnable;J)Z

    move-result p0

    return p0

    .line 2
    :cond_0
    invoke-static {}, Lcom/wsw/cospa/utils/notchtools/helper/ThreadUtils;->this()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, p0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method
