.class public final Landroid/support/v4/vi1;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/Producer;"
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

    sput-object v0, Landroid/support/v4/vi1;->NULL_SENTINEL:Ljava/lang/Object;

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
    invoke-direct {p0, p1, v0}, Landroid/support/v4/vi1;-><init>(Landroid/support/v4/y22;Ljava/util/Queue;)V

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
    iput-object p1, p0, Landroid/support/v4/vi1;->child:Landroid/support/v4/y22;

    .line 4
    iput-object p2, p0, Landroid/support/v4/vi1;->queue:Ljava/util/Queue;

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Landroid/support/v4/vi1;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private do()V
    .locals 11

    .line 1
    iget-object v0, p0, Landroid/support/v4/vi1;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_7

    .line 2
    iget-object v0, p0, Landroid/support/v4/vi1;->child:Landroid/support/v4/y22;

    .line 3
    iget-object v1, p0, Landroid/support/v4/vi1;->queue:Ljava/util/Queue;

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/y22;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v2, p0, Landroid/support/v4/vi1;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    .line 6
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    move-wide v6, v4

    :goto_0
    cmp-long v8, v2, v4

    if-eqz v8, :cond_5

    .line 7
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_5

    const/4 v9, 0x0

    .line 8
    :try_start_0
    sget-object v10, Landroid/support/v4/vi1;->NULL_SENTINEL:Ljava/lang/Object;

    if-ne v8, v10, :cond_2

    .line 9
    invoke-interface {v0, v9}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_1

    .line 10
    :cond_2
    invoke-interface {v0, v8}, Lrx/Observer;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :goto_1
    invoke-virtual {v0}, Landroid/support/v4/y22;->isUnsubscribed()Z

    move-result v8

    if-eqz v8, :cond_3

    return-void

    :cond_3
    const-wide/16 v8, 0x1

    sub-long/2addr v2, v8

    add-long/2addr v6, v8

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 12
    sget-object v2, Landroid/support/v4/vi1;->NULL_SENTINEL:Ljava/lang/Object;

    if-eq v8, v2, :cond_4

    goto :goto_2

    :cond_4
    move-object v8, v9

    :goto_2
    invoke-static {v1, v0, v8}, Landroid/support/v4/s80;->this(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    return-void

    :cond_5
    cmp-long v2, v6, v4

    if-eqz v2, :cond_6

    .line 13
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v8, v2, v4

    if-eqz v8, :cond_6

    neg-long v2, v6

    .line 14
    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 15
    :cond_6
    iget-object v2, p0, Landroid/support/v4/vi1;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-nez v2, :cond_0

    :cond_7
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
    iget-object p1, p0, Landroid/support/v4/vi1;->queue:Ljava/util/Queue;

    sget-object v1, Landroid/support/v4/vi1;->NULL_SENTINEL:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 2
    :cond_0
    iget-object v1, p0, Landroid/support/v4/vi1;->queue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-direct {p0}, Landroid/support/v4/vi1;->do()V

    const/4 p1, 0x1

    return p1
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
    invoke-direct {p0}, Landroid/support/v4/vi1;->do()V

    :cond_0
    return-void

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "n >= 0 required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
