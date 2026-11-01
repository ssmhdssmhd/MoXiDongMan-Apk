.class final Lcom/hwangjr/rxbus/thread/ThreadHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hwangjr/rxbus/thread/ThreadHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hwangjr/rxbus/thread/ThreadHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field private executor:Ljava/util/concurrent/Executor;

.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hwangjr/rxbus/thread/ThreadHandler$1;->executor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/hwangjr/rxbus/thread/ThreadHandler$1;->executor:Ljava/util/concurrent/Executor;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hwangjr/rxbus/thread/ThreadHandler$1;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hwangjr/rxbus/thread/ThreadHandler$1;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/hwangjr/rxbus/thread/ThreadHandler$1;->handler:Landroid/os/Handler;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hwangjr/rxbus/thread/ThreadHandler$1;->handler:Landroid/os/Handler;

    return-object v0
.end method
