.class public Landroid/support/v4/sw1;
.super Lorg/chromium/base/task/TaskRunnerImpl;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/task/SequencedTaskRunner;


# instance fields
.field private const:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile final:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/b52;)V
    .locals 2

    const-string v0, "SequencedTaskRunnerImpl"

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lorg/chromium/base/task/TaskRunnerImpl;-><init>(Landroid/support/v4/b52;Ljava/lang/String;I)V

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Landroid/support/v4/sw1;->const:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public else()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/chromium/base/task/TaskRunnerImpl;->else()V

    .line 2
    iget-object v0, p0, Landroid/support/v4/sw1;->const:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    iget-boolean v0, p0, Landroid/support/v4/sw1;->final:Z

    if-nez v0, :cond_0

    .line 4
    invoke-super {p0}, Lorg/chromium/base/task/TaskRunnerImpl;->goto()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-super {p0}, Lorg/chromium/base/task/TaskRunnerImpl;->try()V

    :cond_1
    :goto_0
    return-void
.end method

.method public goto()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/sw1;->const:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Lorg/chromium/base/task/TaskRunnerImpl;->goto()V

    :cond_0
    return-void
.end method

.method public try()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/support/v4/sw1;->final:Z

    .line 2
    iget-object v0, p0, Landroid/support/v4/sw1;->const:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-super {p0}, Lorg/chromium/base/task/TaskRunnerImpl;->try()V

    :cond_0
    return-void
.end method
