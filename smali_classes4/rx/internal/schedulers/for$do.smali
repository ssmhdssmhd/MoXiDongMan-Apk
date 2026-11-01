.class final Lrx/internal/schedulers/for$do;
.super Lrx/if$do;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation


# instance fields
.field public final do:Ljava/util/concurrent/Executor;

.field public final for:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lrx/internal/schedulers/goto;",
            ">;"
        }
    .end annotation
.end field

.field public final if:Landroid/support/v4/dq;

.field public final new:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final try:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrx/if$do;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/schedulers/for$do;->do:Ljava/util/concurrent/Executor;

    .line 3
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lrx/internal/schedulers/for$do;->for:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lrx/internal/schedulers/for$do;->new:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    new-instance p1, Landroid/support/v4/dq;

    invoke-direct {p1}, Landroid/support/v4/dq;-><init>()V

    iput-object p1, p0, Lrx/internal/schedulers/for$do;->if:Landroid/support/v4/dq;

    .line 6
    invoke-static {}, Lrx/internal/schedulers/new;->do()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lrx/internal/schedulers/for$do;->try:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public for(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lrx/internal/schedulers/for$do;->if(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lrx/internal/schedulers/for$do;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lrx/subscriptions/for;->try()Lrx/Subscription;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    invoke-static {p1}, Lrx/plugins/if;->c(Lrx/functions/Action0;)Lrx/functions/Action0;

    move-result-object p1

    .line 5
    new-instance v0, Landroid/support/v4/x01;

    invoke-direct {v0}, Landroid/support/v4/x01;-><init>()V

    .line 6
    new-instance v1, Landroid/support/v4/x01;

    invoke-direct {v1}, Landroid/support/v4/x01;-><init>()V

    .line 7
    invoke-virtual {v1, v0}, Landroid/support/v4/x01;->if(Lrx/Subscription;)V

    .line 8
    iget-object v2, p0, Lrx/internal/schedulers/for$do;->if:Landroid/support/v4/dq;

    invoke-virtual {v2, v1}, Landroid/support/v4/dq;->do(Lrx/Subscription;)V

    .line 9
    new-instance v2, Lrx/internal/schedulers/for$do$do;

    invoke-direct {v2, p0, v1}, Lrx/internal/schedulers/for$do$do;-><init>(Lrx/internal/schedulers/for$do;Landroid/support/v4/x01;)V

    invoke-static {v2}, Lrx/subscriptions/for;->do(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v2

    .line 10
    new-instance v3, Lrx/internal/schedulers/goto;

    new-instance v4, Lrx/internal/schedulers/for$do$if;

    invoke-direct {v4, p0, v1, p1, v2}, Lrx/internal/schedulers/for$do$if;-><init>(Lrx/internal/schedulers/for$do;Landroid/support/v4/x01;Lrx/functions/Action0;Lrx/Subscription;)V

    invoke-direct {v3, v4}, Lrx/internal/schedulers/goto;-><init>(Lrx/functions/Action0;)V

    .line 11
    invoke-virtual {v0, v3}, Landroid/support/v4/x01;->if(Lrx/Subscription;)V

    .line 12
    :try_start_0
    iget-object p1, p0, Lrx/internal/schedulers/for$do;->try:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v3, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 13
    invoke-virtual {v3, p1}, Lrx/internal/schedulers/goto;->add(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    .line 14
    invoke-static {p1}, Lrx/plugins/if;->protected(Ljava/lang/Throwable;)V

    .line 15
    throw p1
.end method

.method public if(Lrx/functions/Action0;)Lrx/Subscription;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lrx/internal/schedulers/for$do;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lrx/subscriptions/for;->try()Lrx/Subscription;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Lrx/plugins/if;->c(Lrx/functions/Action0;)Lrx/functions/Action0;

    move-result-object p1

    .line 4
    new-instance v0, Lrx/internal/schedulers/goto;

    iget-object v1, p0, Lrx/internal/schedulers/for$do;->if:Landroid/support/v4/dq;

    invoke-direct {v0, p1, v1}, Lrx/internal/schedulers/goto;-><init>(Lrx/functions/Action0;Landroid/support/v4/dq;)V

    .line 5
    iget-object p1, p0, Lrx/internal/schedulers/for$do;->if:Landroid/support/v4/dq;

    invoke-virtual {p1, v0}, Landroid/support/v4/dq;->do(Lrx/Subscription;)V

    .line 6
    iget-object p1, p0, Lrx/internal/schedulers/for$do;->for:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Lrx/internal/schedulers/for$do;->new:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_1

    .line 8
    :try_start_0
    iget-object p1, p0, Lrx/internal/schedulers/for$do;->do:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    iget-object v1, p0, Lrx/internal/schedulers/for$do;->if:Landroid/support/v4/dq;

    invoke-virtual {v1, v0}, Landroid/support/v4/dq;->try(Lrx/Subscription;)V

    .line 10
    iget-object v0, p0, Lrx/internal/schedulers/for$do;->new:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 11
    invoke-static {p1}, Lrx/plugins/if;->protected(Ljava/lang/Throwable;)V

    .line 12
    throw p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public isUnsubscribed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/schedulers/for$do;->if:Landroid/support/v4/dq;

    invoke-virtual {v0}, Landroid/support/v4/dq;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 2

    .line 1
    :cond_0
    iget-object v0, p0, Lrx/internal/schedulers/for$do;->if:Landroid/support/v4/dq;

    invoke-virtual {v0}, Landroid/support/v4/dq;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lrx/internal/schedulers/for$do;->for:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lrx/internal/schedulers/for$do;->for:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/schedulers/goto;

    if-nez v0, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-virtual {v0}, Lrx/internal/schedulers/goto;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 5
    iget-object v1, p0, Lrx/internal/schedulers/for$do;->if:Landroid/support/v4/dq;

    invoke-virtual {v1}, Landroid/support/v4/dq;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 6
    invoke-virtual {v0}, Lrx/internal/schedulers/goto;->run()V

    goto :goto_0

    .line 7
    :cond_3
    iget-object v0, p0, Lrx/internal/schedulers/for$do;->for:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return-void

    .line 8
    :cond_4
    :goto_0
    iget-object v0, p0, Lrx/internal/schedulers/for$do;->new:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method public unsubscribe()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/schedulers/for$do;->if:Landroid/support/v4/dq;

    invoke-virtual {v0}, Landroid/support/v4/dq;->unsubscribe()V

    .line 2
    iget-object v0, p0, Lrx/internal/schedulers/for$do;->for:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return-void
.end method
