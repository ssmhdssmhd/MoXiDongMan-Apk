.class public abstract Lorg/chromium/net/impl/else;
.super Landroid/support/v4/yc2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/impl/else$try;
    }
.end annotation


# static fields
.field public static final goto:I = 0x2000


# instance fields
.field private case:J

.field private final do:Ljava/util/concurrent/atomic/AtomicInteger;

.field private else:J

.field private final for:Ljava/util/concurrent/Executor;

.field private final if:Ljava/util/concurrent/Executor;

.field private final new:Lorg/chromium/net/public;

.field private try:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lorg/chromium/net/public;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/support/v4/yc2;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/net/impl/else;->do:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    new-instance v0, Lorg/chromium/net/impl/else$do;

    invoke-direct {v0, p0, p1}, Lorg/chromium/net/impl/else$do;-><init>(Lorg/chromium/net/impl/else;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lorg/chromium/net/impl/else;->if:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p2, p0, Lorg/chromium/net/impl/else;->for:Ljava/util/concurrent/Executor;

    .line 5
    iput-object p3, p0, Lorg/chromium/net/impl/else;->new:Lorg/chromium/net/public;

    return-void
.end method

.method public static synthetic break(Lorg/chromium/net/impl/else;J)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/net/impl/else;->else:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/chromium/net/impl/else;->else:J

    return-wide v0
.end method

.method public static synthetic case(Lorg/chromium/net/impl/else;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/chromium/net/impl/else;->try:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public static synthetic catch(Lorg/chromium/net/impl/else;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/net/impl/else;->do:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static synthetic class(Lorg/chromium/net/impl/else;)Lorg/chromium/net/public;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/net/impl/else;->new:Lorg/chromium/net/public;

    return-object p0
.end method

.method public static synthetic const(Lorg/chromium/net/impl/else;Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/chromium/net/impl/else;->super(Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)V

    return-void
.end method

.method public static synthetic else(Lorg/chromium/net/impl/else;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/net/impl/else;->case:J

    return-wide v0
.end method

.method public static synthetic final(Lorg/chromium/net/impl/else;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/chromium/net/impl/else;->throws()V

    return-void
.end method

.method public static synthetic goto(Lorg/chromium/net/impl/else;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/chromium/net/impl/else;->case:J

    return-wide p1
.end method

.method private super(Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/chromium/net/impl/else;->if:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/else;->import(Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/else;->static(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic this(Lorg/chromium/net/impl/else;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/net/impl/else;->else:J

    return-wide v0
.end method

.method private throws()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/else;->for:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/chromium/net/impl/else$for;

    invoke-direct {v1, p0}, Lorg/chromium/net/impl/else$for;-><init>(Lorg/chromium/net/impl/else;)V

    invoke-virtual {p0, v1}, Lorg/chromium/net/impl/else;->while(Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic try(Lorg/chromium/net/impl/else;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/net/impl/else;->try:Ljava/nio/ByteBuffer;

    return-object p0
.end method


# virtual methods
.method public do(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/else;->static(Ljava/lang/Throwable;)V

    return-void
.end method

.method public for(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/else;->static(Ljava/lang/Throwable;)V

    return-void
.end method

.method public if(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/else;->do:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/net/impl/else;->for:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/chromium/net/impl/else$if;

    invoke-direct {v1, p0, p1}, Lorg/chromium/net/impl/else$if;-><init>(Lorg/chromium/net/impl/else;Z)V

    invoke-virtual {p0, v1}, Lorg/chromium/net/impl/else;->while(Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReadSucceeded() called when not awaiting a read result; in state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/chromium/net/impl/else;->do:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract import(Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)Ljava/lang/Runnable;
.end method

.method public abstract native()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public new()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/else;->do:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lorg/chromium/net/impl/else;->throws()V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRewindSucceeded() called when not awaiting a rewind; in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/chromium/net/impl/else;->do:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract public(J)V
.end method

.method public abstract return(Ljava/nio/ByteBuffer;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract static(Ljava/lang/Throwable;)V
.end method

.method public switch(Z)V
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/net/impl/else$new;

    invoke-direct {v0, p0, p1}, Lorg/chromium/net/impl/else$new;-><init>(Lorg/chromium/net/impl/else;Z)V

    invoke-direct {p0, v0}, Lorg/chromium/net/impl/else;->super(Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)V

    return-void
.end method

.method public abstract throw()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract while(Lorg/chromium/net/impl/JavaUrlRequestUtils$CheckedRunnable;)Ljava/lang/Runnable;
.end method
