.class final Lrx/internal/operators/f2$if;
.super Landroid/support/v4/y22;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/f2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/f2$if$do;
    }
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
.field public break:Ljava/lang/Throwable;

.field public final case:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/support/v4/u22<",
            "TT;TT;>;>;"
        }
    .end annotation
.end field

.field public volatile catch:Z

.field public class:I

.field public const:I

.field public final do:Landroid/support/v4/y22;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/y22<",
            "-",
            "Lrx/Observable<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final else:Ljava/util/concurrent/atomic/AtomicLong;

.field public final for:I

.field public final goto:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final if:I

.field public final new:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final this:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/support/v4/u22<",
            "TT;TT;>;>;"
        }
    .end annotation
.end field

.field public final try:Lrx/Subscription;


# direct methods
.method public constructor <init>(Landroid/support/v4/y22;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-",
            "Lrx/Observable<",
            "TT;>;>;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/f2$if;->do:Landroid/support/v4/y22;

    .line 3
    iput p2, p0, Lrx/internal/operators/f2$if;->if:I

    .line 4
    iput p3, p0, Lrx/internal/operators/f2$if;->for:I

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lrx/internal/operators/f2$if;->new:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/f2$if;->case:Ljava/util/ArrayDeque;

    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/f2$if;->goto:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/f2$if;->else:Ljava/util/concurrent/atomic/AtomicLong;

    .line 9
    invoke-static {p0}, Lrx/subscriptions/for;->do(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lrx/internal/operators/f2$if;->try:Lrx/Subscription;

    .line 10
    invoke-virtual {p0, p1}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    const-wide/16 v0, 0x0

    .line 11
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/y22;->request(J)V

    add-int/lit8 p1, p3, -0x1

    add-int/2addr p2, p1

    .line 12
    div-int/2addr p2, p3

    .line 13
    new-instance p1, Landroid/support/v4/d12;

    invoke-direct {p1, p2}, Landroid/support/v4/d12;-><init>(I)V

    iput-object p1, p0, Lrx/internal/operators/f2$if;->this:Ljava/util/Queue;

    return-void
.end method

.method public static synthetic do(Lrx/internal/operators/f2$if;J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/y22;->request(J)V

    return-void
.end method

.method public static synthetic if(Lrx/internal/operators/f2$if;J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/y22;->request(J)V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/f2$if;->new:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/y22;->unsubscribe()V

    :cond_0
    return-void
.end method

.method public for(ZZLandroid/support/v4/y22;Ljava/util/Queue;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Landroid/support/v4/y22<",
            "-",
            "Landroid/support/v4/u22<",
            "TT;TT;>;>;",
            "Ljava/util/Queue<",
            "Landroid/support/v4/u22<",
            "TT;TT;>;>;)Z"
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
    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lrx/internal/operators/f2$if;->break:Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p4}, Ljava/util/Queue;->clear()V

    .line 5
    invoke-interface {p3, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_1
    if-eqz p2, :cond_2

    .line 6
    invoke-interface {p3}, Lrx/Observer;->onCompleted()V

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public new()Lrx/Producer;
    .locals 1

    .line 1
    new-instance v0, Lrx/internal/operators/f2$if$do;

    invoke-direct {v0, p0}, Lrx/internal/operators/f2$if$do;-><init>(Lrx/internal/operators/f2$if;)V

    return-object v0
.end method

.method public onCompleted()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/operators/f2$if;->case:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/u22;

    .line 2
    invoke-interface {v1}, Lrx/Observer;->onCompleted()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/f2$if;->case:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lrx/internal/operators/f2$if;->catch:Z

    .line 5
    invoke-virtual {p0}, Lrx/internal/operators/f2$if;->try()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/operators/f2$if;->case:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/u22;

    .line 2
    invoke-interface {v1, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/f2$if;->case:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 4
    iput-object p1, p0, Lrx/internal/operators/f2$if;->break:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lrx/internal/operators/f2$if;->catch:Z

    .line 6
    invoke-virtual {p0}, Lrx/internal/operators/f2$if;->try()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lrx/internal/operators/f2$if;->class:I

    .line 2
    iget-object v1, p0, Lrx/internal/operators/f2$if;->case:Ljava/util/ArrayDeque;

    if-nez v0, :cond_0

    .line 3
    iget-object v2, p0, Lrx/internal/operators/f2$if;->do:Landroid/support/v4/y22;

    invoke-virtual {v2}, Landroid/support/v4/y22;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    iget-object v2, p0, Lrx/internal/operators/f2$if;->new:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    const/16 v2, 0x10

    .line 5
    invoke-static {v2, p0}, Lrx/subjects/else;->i6(ILrx/functions/Action0;)Lrx/subjects/else;

    move-result-object v2

    .line 6
    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 7
    iget-object v3, p0, Lrx/internal/operators/f2$if;->this:Ljava/util/Queue;

    invoke-interface {v3, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {p0}, Lrx/internal/operators/f2$if;->try()V

    .line 9
    :cond_0
    iget-object v2, p0, Lrx/internal/operators/f2$if;->case:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/u22;

    .line 10
    invoke-interface {v3, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_1
    iget p1, p0, Lrx/internal/operators/f2$if;->const:I

    add-int/lit8 p1, p1, 0x1

    .line 12
    iget v2, p0, Lrx/internal/operators/f2$if;->if:I

    if-ne p1, v2, :cond_2

    .line 13
    iget v2, p0, Lrx/internal/operators/f2$if;->for:I

    sub-int/2addr p1, v2

    iput p1, p0, Lrx/internal/operators/f2$if;->const:I

    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/u22;

    if-eqz p1, :cond_3

    .line 15
    invoke-interface {p1}, Lrx/Observer;->onCompleted()V

    goto :goto_1

    .line 16
    :cond_2
    iput p1, p0, Lrx/internal/operators/f2$if;->const:I

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 17
    iget p1, p0, Lrx/internal/operators/f2$if;->for:I

    if-ne v0, p1, :cond_4

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lrx/internal/operators/f2$if;->class:I

    goto :goto_2

    .line 19
    :cond_4
    iput v0, p0, Lrx/internal/operators/f2$if;->class:I

    :goto_2
    return-void
.end method

.method public try()V
    .locals 14

    .line 1
    iget-object v0, p0, Lrx/internal/operators/f2$if;->goto:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lrx/internal/operators/f2$if;->do:Landroid/support/v4/y22;

    .line 4
    iget-object v2, p0, Lrx/internal/operators/f2$if;->this:Ljava/util/Queue;

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 5
    :cond_1
    iget-object v5, p0, Lrx/internal/operators/f2$if;->else:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    move-wide v9, v7

    :goto_0
    cmp-long v11, v9, v5

    if-eqz v11, :cond_5

    .line 6
    iget-boolean v11, p0, Lrx/internal/operators/f2$if;->catch:Z

    .line 7
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/v4/u22;

    if-nez v12, :cond_2

    const/4 v13, 0x1

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    .line 8
    :goto_1
    invoke-virtual {p0, v11, v13, v1, v2}, Lrx/internal/operators/f2$if;->for(ZZLandroid/support/v4/y22;Ljava/util/Queue;)Z

    move-result v11

    if-eqz v11, :cond_3

    return-void

    :cond_3
    if-eqz v13, :cond_4

    goto :goto_2

    .line 9
    :cond_4
    invoke-interface {v1, v12}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    goto :goto_0

    :cond_5
    :goto_2
    cmp-long v11, v9, v5

    if-nez v11, :cond_6

    .line 10
    iget-boolean v11, p0, Lrx/internal/operators/f2$if;->catch:Z

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v12

    invoke-virtual {p0, v11, v12, v1, v2}, Lrx/internal/operators/f2$if;->for(ZZLandroid/support/v4/y22;Ljava/util/Queue;)Z

    move-result v11

    if-eqz v11, :cond_6

    return-void

    :cond_6
    cmp-long v11, v9, v7

    if-eqz v11, :cond_7

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v11, v5, v7

    if-eqz v11, :cond_7

    .line 11
    iget-object v5, p0, Lrx/internal/operators/f2$if;->else:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v6, v9

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :cond_7
    neg-int v4, v4

    .line 12
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_1

    return-void
.end method
