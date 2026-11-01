.class public abstract Lcom/wsw/cospa/widget/LastMsgHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private count:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/wsw/cospa/widget/LastMsgHandler;->count:I

    return-void
.end method


# virtual methods
.method public final declared-synchronized clearAll()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput v0, p0, Lcom/wsw/cospa/widget/LastMsgHandler;->count:I

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract handleLastMessage(Landroid/os/Message;)V
.end method

.method public final declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget v0, p0, Lcom/wsw/cospa/widget/LastMsgHandler;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/wsw/cospa/widget/LastMsgHandler;->count:I

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/widget/LastMsgHandler;->handleLastMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    .line 5
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "count\u6570\u5f02\u5e38"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized increaseCount()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/wsw/cospa/widget/LastMsgHandler;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/wsw/cospa/widget/LastMsgHandler;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final sendMsg()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/wsw/cospa/widget/LastMsgHandler;->sendMsgDelayed(J)V

    return-void
.end method

.method public final sendMsgDelayed(J)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/LastMsgHandler;->increaseCount()V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-gtz v3, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method
