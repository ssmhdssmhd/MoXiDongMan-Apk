.class final Lrx/observables/try$case;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements Lrx/Producer;
.implements Lrx/Subscription;
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/observables/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "case"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/Producer;",
        "Lrx/Subscription;",
        "Lrx/Observer<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x33dc0208097b2408L


# instance fields
.field private final actualSubscriber:Landroid/support/v4/y22;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/y22<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private hasTerminated:Z

.field private onNextCalled:Z

.field private final parent:Lrx/observables/try;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/observables/try<",
            "TS;TT;>;"
        }
    .end annotation
.end field

.field private state:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/y22;Lrx/observables/try;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TT;>;",
            "Lrx/observables/try<",
            "TS;TT;>;TS;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/observables/try$case;->actualSubscriber:Landroid/support/v4/y22;

    .line 3
    iput-object p2, p0, Lrx/observables/try$case;->parent:Lrx/observables/try;

    .line 4
    iput-object p3, p0, Lrx/observables/try$case;->state:Ljava/lang/Object;

    return-void
.end method

.method private case()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lrx/observables/try$case;->hasTerminated:Z

    const-wide/16 v1, -0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    :goto_0
    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 3
    invoke-direct {p0}, Lrx/observables/try$case;->do()V

    const/4 v0, 0x1

    return v0
.end method

.method private do()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lrx/observables/try$case;->parent:Lrx/observables/try;

    iget-object v1, p0, Lrx/observables/try$case;->state:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lrx/observables/try;->break(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {v0}, Landroid/support/v4/s80;->try(Ljava/lang/Throwable;)V

    .line 3
    invoke-static {v0}, Lrx/plugins/if;->protected(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private for(Landroid/support/v4/y22;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lrx/observables/try$case;->hasTerminated:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p2}, Lrx/plugins/if;->protected(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lrx/observables/try$case;->hasTerminated:Z

    .line 4
    invoke-interface {p1, p2}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {p0}, Lrx/observables/try$case;->unsubscribe()V

    :goto_0
    return-void
.end method

.method private if()V
    .locals 3

    .line 1
    iget-object v0, p0, Lrx/observables/try$case;->parent:Lrx/observables/try;

    .line 2
    iget-object v1, p0, Lrx/observables/try$case;->actualSubscriber:Landroid/support/v4/y22;

    :cond_0
    const/4 v2, 0x0

    .line 3
    :try_start_0
    iput-boolean v2, p0, Lrx/observables/try$case;->onNextCalled:Z

    .line 4
    invoke-direct {p0, v0}, Lrx/observables/try$case;->new(Lrx/observables/try;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-direct {p0}, Lrx/observables/try$case;->case()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :catchall_0
    move-exception v0

    .line 6
    invoke-direct {p0, v1, v0}, Lrx/observables/try$case;->for(Landroid/support/v4/y22;Ljava/lang/Throwable;)V

    return-void
.end method

.method private new(Lrx/observables/try;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/observables/try<",
            "TS;TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/observables/try$case;->state:Ljava/lang/Object;

    invoke-virtual {p1, v0, p0}, Lrx/observables/try;->this(Ljava/lang/Object;Lrx/Observer;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lrx/observables/try$case;->state:Ljava/lang/Object;

    return-void
.end method

.method private try(J)V
    .locals 7

    .line 1
    iget-object v0, p0, Lrx/observables/try$case;->parent:Lrx/observables/try;

    .line 2
    iget-object v1, p0, Lrx/observables/try$case;->actualSubscriber:Landroid/support/v4/y22;

    :cond_0
    move-wide v2, p1

    :cond_1
    const/4 v4, 0x0

    .line 3
    :try_start_0
    iput-boolean v4, p0, Lrx/observables/try$case;->onNextCalled:Z

    .line 4
    invoke-direct {p0, v0}, Lrx/observables/try$case;->new(Lrx/observables/try;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-direct {p0}, Lrx/observables/try$case;->case()Z

    move-result v4

    if-eqz v4, :cond_2

    return-void

    .line 6
    :cond_2
    iget-boolean v4, p0, Lrx/observables/try$case;->onNextCalled:Z

    if-eqz v4, :cond_3

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    :cond_3
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    neg-long p1, p1

    .line 7
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide p1

    cmp-long v2, p1, v4

    if-gtz v2, :cond_0

    .line 8
    invoke-direct {p0}, Lrx/observables/try$case;->case()Z

    return-void

    :catchall_0
    move-exception p1

    .line 9
    invoke-direct {p0, v1, p1}, Lrx/observables/try$case;->for(Landroid/support/v4/y22;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCompleted()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lrx/observables/try$case;->hasTerminated:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lrx/observables/try$case;->hasTerminated:Z

    .line 3
    iget-object v0, p0, Lrx/observables/try$case;->actualSubscriber:Landroid/support/v4/y22;

    invoke-virtual {v0}, Landroid/support/v4/y22;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lrx/observables/try$case;->actualSubscriber:Landroid/support/v4/y22;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    :cond_0
    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Terminal event already emitted."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrx/observables/try$case;->hasTerminated:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lrx/observables/try$case;->hasTerminated:Z

    .line 3
    iget-object v0, p0, Lrx/observables/try$case;->actualSubscriber:Landroid/support/v4/y22;

    invoke-virtual {v0}, Landroid/support/v4/y22;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lrx/observables/try$case;->actualSubscriber:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Terminal event already emitted."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lrx/observables/try$case;->onNextCalled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lrx/observables/try$case;->onNextCalled:Z

    .line 3
    iget-object v0, p0, Lrx/observables/try$case;->actualSubscriber:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onNext called multiple times!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public request(J)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 1
    invoke-static {p0, p1, p2}, Landroid/support/v4/u6;->if(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 2
    invoke-direct {p0}, Lrx/observables/try$case;->if()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lrx/observables/try$case;->try(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public unsubscribe()V
    .locals 6

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    .line 2
    invoke-virtual {p0, v2, v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    invoke-direct {p0}, Lrx/observables/try$case;->do()V

    return-void

    :cond_1
    const-wide/16 v2, -0x2

    .line 4
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method
