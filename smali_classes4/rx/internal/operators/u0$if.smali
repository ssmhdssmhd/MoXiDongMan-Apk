.class final Lrx/internal/operators/u0$if;
.super Landroid/support/v4/y22;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/u0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/y22<",
        "TT;>;",
        "Lrx/functions/Action0;"
    }
.end annotation


# instance fields
.field public break:J

.field public volatile case:Z

.field public final do:Landroid/support/v4/y22;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/y22<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final else:Ljava/util/concurrent/atomic/AtomicLong;

.field public final for:Z

.field public final goto:Ljava/util/concurrent/atomic/AtomicLong;

.field public final if:Lrx/if$do;

.field public final new:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public this:Ljava/lang/Throwable;

.field public final try:I


# direct methods
.method public constructor <init>(Lrx/if;Landroid/support/v4/y22;ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/if;",
            "Landroid/support/v4/y22<",
            "-TT;>;ZI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/u0$if;->else:Ljava/util/concurrent/atomic/AtomicLong;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/u0$if;->goto:Ljava/util/concurrent/atomic/AtomicLong;

    .line 4
    iput-object p2, p0, Lrx/internal/operators/u0$if;->do:Landroid/support/v4/y22;

    .line 5
    invoke-virtual {p1}, Lrx/if;->do()Lrx/if$do;

    move-result-object p1

    iput-object p1, p0, Lrx/internal/operators/u0$if;->if:Lrx/if$do;

    .line 6
    iput-boolean p3, p0, Lrx/internal/operators/u0$if;->for:Z

    if-lez p4, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    sget p4, Lrx/internal/util/try;->new:I

    :goto_0
    shr-int/lit8 p1, p4, 0x2

    sub-int p1, p4, p1

    .line 8
    iput p1, p0, Lrx/internal/operators/u0$if;->try:I

    .line 9
    invoke-static {}, Lrx/internal/util/unsafe/implements;->case()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    new-instance p1, Lrx/internal/util/unsafe/switch;

    invoke-direct {p1, p4}, Lrx/internal/util/unsafe/switch;-><init>(I)V

    iput-object p1, p0, Lrx/internal/operators/u0$if;->new:Ljava/util/Queue;

    goto :goto_1

    .line 11
    :cond_1
    new-instance p1, Lrx/internal/util/atomic/new;

    invoke-direct {p1, p4}, Lrx/internal/util/atomic/new;-><init>(I)V

    iput-object p1, p0, Lrx/internal/operators/u0$if;->new:Ljava/util/Queue;

    :goto_1
    int-to-long p1, p4

    .line 12
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/y22;->request(J)V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 15

    .line 1
    iget-wide v0, p0, Lrx/internal/operators/u0$if;->break:J

    .line 2
    iget-object v2, p0, Lrx/internal/operators/u0$if;->new:Ljava/util/Queue;

    .line 3
    iget-object v3, p0, Lrx/internal/operators/u0$if;->do:Landroid/support/v4/y22;

    const-wide/16 v4, 0x1

    move-wide v6, v4

    .line 4
    :cond_0
    iget-object v8, p0, Lrx/internal/operators/u0$if;->else:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    :cond_1
    :goto_0
    const-wide/16 v10, 0x0

    cmp-long v12, v8, v0

    if-eqz v12, :cond_5

    .line 5
    iget-boolean v12, p0, Lrx/internal/operators/u0$if;->case:Z

    .line 6
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_2

    const/4 v14, 0x1

    goto :goto_1

    :cond_2
    const/4 v14, 0x0

    .line 7
    :goto_1
    invoke-virtual {p0, v12, v14, v3, v2}, Lrx/internal/operators/u0$if;->do(ZZLandroid/support/v4/y22;Ljava/util/Queue;)Z

    move-result v12

    if-eqz v12, :cond_3

    return-void

    :cond_3
    if-eqz v14, :cond_4

    goto :goto_2

    .line 8
    :cond_4
    invoke-static {v13}, Lrx/internal/operators/return;->try(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v3, v12}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    add-long/2addr v0, v4

    .line 9
    iget v12, p0, Lrx/internal/operators/u0$if;->try:I

    int-to-long v12, v12

    cmp-long v14, v0, v12

    if-nez v14, :cond_1

    .line 10
    iget-object v8, p0, Lrx/internal/operators/u0$if;->else:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v8, v0, v1}, Landroid/support/v4/u6;->this(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v8

    .line 11
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/y22;->request(J)V

    move-wide v0, v10

    goto :goto_0

    :cond_5
    :goto_2
    cmp-long v12, v8, v0

    if-nez v12, :cond_6

    .line 12
    iget-boolean v8, p0, Lrx/internal/operators/u0$if;->case:Z

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v9

    invoke-virtual {p0, v8, v9, v3, v2}, Lrx/internal/operators/u0$if;->do(ZZLandroid/support/v4/y22;Ljava/util/Queue;)Z

    move-result v8

    if-eqz v8, :cond_6

    return-void

    .line 13
    :cond_6
    iput-wide v0, p0, Lrx/internal/operators/u0$if;->break:J

    .line 14
    iget-object v8, p0, Lrx/internal/operators/u0$if;->goto:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v6, v6

    invoke-virtual {v8, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v6

    cmp-long v8, v6, v10

    if-nez v8, :cond_0

    return-void
.end method

.method public do(ZZLandroid/support/v4/y22;Ljava/util/Queue;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Landroid/support/v4/y22<",
            "-TT;>;",
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Landroid/support/v4/y22;->isUnsubscribed()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p4}, Ljava/util/Queue;->clear()V

    return v1

    :cond_0
    if-eqz p1, :cond_4

    .line 3
    iget-boolean p1, p0, Lrx/internal/operators/u0$if;->for:Z

    if-eqz p1, :cond_2

    if-eqz p2, :cond_4

    .line 4
    iget-object p1, p0, Lrx/internal/operators/u0$if;->this:Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    .line 5
    :try_start_0
    invoke-interface {p3, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p3}, Lrx/Observer;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_0
    iget-object p1, p0, Lrx/internal/operators/u0$if;->if:Lrx/if$do;

    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lrx/internal/operators/u0$if;->if:Lrx/if$do;

    invoke-interface {p2}, Lrx/Subscription;->unsubscribe()V

    throw p1

    .line 8
    :cond_2
    iget-object p1, p0, Lrx/internal/operators/u0$if;->this:Ljava/lang/Throwable;

    if-eqz p1, :cond_3

    .line 9
    invoke-interface {p4}, Ljava/util/Queue;->clear()V

    .line 10
    :try_start_1
    invoke-interface {p3, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11
    iget-object p1, p0, Lrx/internal/operators/u0$if;->if:Lrx/if$do;

    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    return v1

    :catchall_1
    move-exception p1

    iget-object p2, p0, Lrx/internal/operators/u0$if;->if:Lrx/if$do;

    invoke-interface {p2}, Lrx/Subscription;->unsubscribe()V

    throw p1

    :cond_3
    if-eqz p2, :cond_4

    .line 12
    :try_start_2
    invoke-interface {p3}, Lrx/Observer;->onCompleted()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 13
    iget-object p1, p0, Lrx/internal/operators/u0$if;->if:Lrx/if$do;

    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    return v1

    :catchall_2
    move-exception p1

    iget-object p2, p0, Lrx/internal/operators/u0$if;->if:Lrx/if$do;

    invoke-interface {p2}, Lrx/Subscription;->unsubscribe()V

    throw p1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public for()V
    .locals 5

    .line 1
    iget-object v0, p0, Lrx/internal/operators/u0$if;->goto:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    iget-object v0, p0, Lrx/internal/operators/u0$if;->if:Lrx/if$do;

    invoke-virtual {v0, p0}, Lrx/if$do;->if(Lrx/functions/Action0;)Lrx/Subscription;

    :cond_0
    return-void
.end method

.method public if()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/operators/u0$if;->do:Landroid/support/v4/y22;

    .line 2
    new-instance v1, Lrx/internal/operators/u0$if$do;

    invoke-direct {v1, p0}, Lrx/internal/operators/u0$if$do;-><init>(Lrx/internal/operators/u0$if;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/y22;->setProducer(Lrx/Producer;)V

    .line 3
    iget-object v1, p0, Lrx/internal/operators/u0$if;->if:Lrx/if$do;

    invoke-virtual {v0, v1}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 4
    invoke-virtual {v0, p0}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    return-void
.end method

.method public onCompleted()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/y22;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lrx/internal/operators/u0$if;->case:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lrx/internal/operators/u0$if;->case:Z

    .line 3
    invoke-virtual {p0}, Lrx/internal/operators/u0$if;->for()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/y22;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lrx/internal/operators/u0$if;->case:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iput-object p1, p0, Lrx/internal/operators/u0$if;->this:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lrx/internal/operators/u0$if;->case:Z

    .line 4
    invoke-virtual {p0}, Lrx/internal/operators/u0$if;->for()V

    return-void

    .line 5
    :cond_1
    :goto_0
    invoke-static {p1}, Lrx/plugins/if;->protected(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/y22;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lrx/internal/operators/u0$if;->case:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/u0$if;->new:Ljava/util/Queue;

    invoke-static {p1}, Lrx/internal/operators/return;->break(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    new-instance p1, Landroid/support/v4/zz0;

    invoke-direct {p1}, Landroid/support/v4/zz0;-><init>()V

    invoke-virtual {p0, p1}, Lrx/internal/operators/u0$if;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Lrx/internal/operators/u0$if;->for()V

    :cond_2
    :goto_0
    return-void
.end method
