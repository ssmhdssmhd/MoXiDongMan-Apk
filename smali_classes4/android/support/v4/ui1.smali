.class public final Landroid/support/v4/ui1;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements Lrx/Producer;
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/Producer;",
        "Lrx/Observer<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final NULL_SENTINEL:Ljava/lang/Object;

.field private static final serialVersionUID:J = 0x64fd87a3da19de97L


# instance fields
.field public final child:Landroid/support/v4/y22;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/y22<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public volatile done:Z

.field public error:Ljava/lang/Throwable;

.field public final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/ui1;->NULL_SENTINEL:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/y22;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lrx/internal/util/unsafe/implements;->case()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lrx/internal/util/unsafe/abstract;

    invoke-direct {v0}, Lrx/internal/util/unsafe/abstract;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lrx/internal/util/atomic/try;

    invoke-direct {v0}, Lrx/internal/util/atomic/try;-><init>()V

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/support/v4/ui1;-><init>(Landroid/support/v4/y22;Ljava/util/Queue;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/y22;Ljava/util/Queue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TT;>;",
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 3
    iput-object p1, p0, Landroid/support/v4/ui1;->child:Landroid/support/v4/y22;

    .line 4
    iput-object p2, p0, Landroid/support/v4/ui1;->queue:Ljava/util/Queue;

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Landroid/support/v4/ui1;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private do(ZZ)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/ui1;->child:Landroid/support/v4/y22;

    invoke-virtual {v0}, Landroid/support/v4/y22;->isUnsubscribed()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Landroid/support/v4/ui1;->error:Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    .line 3
    iget-object p2, p0, Landroid/support/v4/ui1;->queue:Ljava/util/Queue;

    invoke-interface {p2}, Ljava/util/Queue;->clear()V

    .line 4
    iget-object p2, p0, Landroid/support/v4/ui1;->child:Landroid/support/v4/y22;

    invoke-interface {p2, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_1
    if-eqz p2, :cond_2

    .line 5
    iget-object p1, p0, Landroid/support/v4/ui1;->child:Landroid/support/v4/y22;

    invoke-interface {p1}, Lrx/Observer;->onCompleted()V

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private if()V
    .locals 12

    .line 1
    iget-object v0, p0, Landroid/support/v4/ui1;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_9

    .line 2
    iget-object v0, p0, Landroid/support/v4/ui1;->child:Landroid/support/v4/y22;

    .line 3
    iget-object v1, p0, Landroid/support/v4/ui1;->queue:Ljava/util/Queue;

    .line 4
    :cond_0
    iget-boolean v2, p0, Landroid/support/v4/ui1;->done:Z

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/support/v4/ui1;->do(ZZ)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v2, p0, Landroid/support/v4/ui1;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    .line 6
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    move-wide v8, v6

    :goto_0
    cmp-long v2, v4, v6

    if-eqz v2, :cond_7

    .line 7
    iget-boolean v2, p0, Landroid/support/v4/ui1;->done:Z

    .line 8
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_2

    const/4 v11, 0x1

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    .line 9
    :goto_1
    invoke-direct {p0, v2, v11}, Landroid/support/v4/ui1;->do(ZZ)Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    :cond_3
    if-nez v10, :cond_4

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    .line 10
    :try_start_0
    sget-object v11, Landroid/support/v4/ui1;->NULL_SENTINEL:Ljava/lang/Object;

    if-ne v10, v11, :cond_5

    .line 11
    invoke-interface {v0, v2}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_2

    .line 12
    :cond_5
    invoke-interface {v0, v10}, Lrx/Observer;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    const-wide/16 v10, 0x1

    sub-long/2addr v4, v10

    add-long/2addr v8, v10

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 13
    sget-object v3, Landroid/support/v4/ui1;->NULL_SENTINEL:Ljava/lang/Object;

    if-eq v10, v3, :cond_6

    goto :goto_3

    :cond_6
    move-object v10, v2

    :goto_3
    invoke-static {v1, v0, v10}, Landroid/support/v4/s80;->this(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    return-void

    :cond_7
    :goto_4
    cmp-long v2, v8, v6

    if-eqz v2, :cond_8

    .line 14
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v6, v2, v4

    if-eqz v6, :cond_8

    neg-long v2, v8

    .line 15
    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 16
    :cond_8
    iget-object v2, p0, Landroid/support/v4/ui1;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-nez v2, :cond_0

    :cond_9
    return-void
.end method


# virtual methods
.method public offer(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Landroid/support/v4/ui1;->queue:Ljava/util/Queue;

    sget-object v1, Landroid/support/v4/ui1;->NULL_SENTINEL:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 2
    :cond_0
    iget-object v1, p0, Landroid/support/v4/ui1;->queue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-direct {p0}, Landroid/support/v4/ui1;->if()V

    const/4 p1, 0x1

    return p1
.end method

.method public onCompleted()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/support/v4/ui1;->done:Z

    .line 2
    invoke-direct {p0}, Landroid/support/v4/ui1;->if()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/ui1;->error:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroid/support/v4/ui1;->done:Z

    .line 3
    invoke-direct {p0}, Landroid/support/v4/ui1;->if()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/ui1;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Landroid/support/v4/zz0;

    invoke-direct {p1}, Landroid/support/v4/zz0;-><init>()V

    invoke-virtual {p0, p1}, Landroid/support/v4/ui1;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 1
    invoke-static {p0, p1, p2}, Landroid/support/v4/u6;->if(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 2
    invoke-direct {p0}, Landroid/support/v4/ui1;->if()V

    :cond_0
    return-void

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "n >= 0 required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
