.class Lorg/chromium/net/urlconnection/this;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field private static final else:J = -0x1L

.field public static final synthetic goto:Z


# instance fields
.field private case:J

.field private final do:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private for:Z

.field private if:Z

.field private new:Ljava/io/InterruptedIOException;

.field private try:Ljava/lang/RuntimeException;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/net/urlconnection/this;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lorg/chromium/net/urlconnection/this;->case:J

    .line 3
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lorg/chromium/net/urlconnection/this;->do:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method private do()Z
    .locals 6

    .line 1
    iget-wide v0, p0, Lorg/chromium/net/urlconnection/this;->case:J

    const/4 v2, 0x1

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/net/urlconnection/this;->case:J

    return v2

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private else(ZJ)Ljava/lang/Runnable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lorg/chromium/net/urlconnection/this;->do:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lorg/chromium/net/urlconnection/this;->do:Ljava/util/concurrent/BlockingQueue;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p2, p3, v0}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz p1, :cond_1

    return-object p1

    .line 3
    :cond_1
    new-instance p1, Ljava/net/SocketTimeoutException;

    invoke-direct {p1}, Ljava/net/SocketTimeoutException;-><init>()V

    throw p1

    :catch_0
    move-exception p1

    .line 4
    new-instance p2, Ljava/io/InterruptedIOException;

    invoke-direct {p2}, Ljava/io/InterruptedIOException;-><init>()V

    .line 5
    invoke-virtual {p2, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 6
    throw p2
.end method


# virtual methods
.method public case()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lorg/chromium/net/urlconnection/this;->if:Z

    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/RejectedExecutionException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/chromium/net/urlconnection/this;->do:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {v0, p1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public for()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/net/urlconnection/this;->if:Z

    return v0
.end method

.method public if()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/chromium/net/urlconnection/this;->for:Z

    return v0
.end method

.method public new()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/chromium/net/urlconnection/this;->try(I)V

    return-void
.end method

.method public try(I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v3, p1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    .line 3
    iget-boolean v4, p0, Lorg/chromium/net/urlconnection/this;->for:Z

    if-eqz v4, :cond_1

    .line 4
    iget-object p1, p0, Lorg/chromium/net/urlconnection/this;->new:Ljava/io/InterruptedIOException;

    if-eqz p1, :cond_0

    .line 5
    throw p1

    .line 6
    :cond_0
    iget-object p1, p0, Lorg/chromium/net/urlconnection/this;->try:Ljava/lang/RuntimeException;

    throw p1

    .line 7
    :cond_1
    iget-boolean v4, p0, Lorg/chromium/net/urlconnection/this;->if:Z

    if-nez v4, :cond_4

    const/4 v4, 0x1

    .line 8
    iput-boolean v4, p0, Lorg/chromium/net/urlconnection/this;->if:Z

    .line 9
    :goto_0
    iget-boolean v5, p0, Lorg/chromium/net/urlconnection/this;->if:Z

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    if-nez p1, :cond_2

    const-wide/16 v6, 0x0

    .line 10
    :try_start_0
    invoke-direct {p0, v5, v6, v7}, Lorg/chromium/net/urlconnection/this;->else(ZJ)Ljava/lang/Runnable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 11
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v6, v2, v6

    add-long/2addr v6, v0

    invoke-direct {p0, v4, v6, v7}, Lorg/chromium/net/urlconnection/this;->else(ZJ)Ljava/lang/Runnable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    iput-boolean v5, p0, Lorg/chromium/net/urlconnection/this;->if:Z

    .line 13
    iput-boolean v4, p0, Lorg/chromium/net/urlconnection/this;->for:Z

    .line 14
    iput-object p1, p0, Lorg/chromium/net/urlconnection/this;->try:Ljava/lang/RuntimeException;

    .line 15
    throw p1

    :catch_1
    move-exception p1

    .line 16
    iput-boolean v5, p0, Lorg/chromium/net/urlconnection/this;->if:Z

    .line 17
    iput-boolean v4, p0, Lorg/chromium/net/urlconnection/this;->for:Z

    .line 18
    iput-object p1, p0, Lorg/chromium/net/urlconnection/this;->new:Ljava/io/InterruptedIOException;

    .line 19
    throw p1

    :cond_3
    return-void

    .line 20
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot run loop when it is already running."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
