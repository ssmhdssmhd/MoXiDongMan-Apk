.class public final Lrx/internal/schedulers/goto;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/schedulers/goto$if;,
        Lrx/internal/schedulers/goto$for;,
        Lrx/internal/schedulers/goto$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Thread;",
        ">;",
        "Ljava/lang/Runnable;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x36fd4556f787c9b1L


# instance fields
.field public final action:Lrx/functions/Action0;

.field public final cancel:Landroid/support/v4/d32;


# direct methods
.method public constructor <init>(Lrx/functions/Action0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/schedulers/goto;->action:Lrx/functions/Action0;

    .line 3
    new-instance p1, Landroid/support/v4/d32;

    invoke-direct {p1}, Landroid/support/v4/d32;-><init>()V

    iput-object p1, p0, Lrx/internal/schedulers/goto;->cancel:Landroid/support/v4/d32;

    return-void
.end method

.method public constructor <init>(Lrx/functions/Action0;Landroid/support/v4/d32;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 8
    iput-object p1, p0, Lrx/internal/schedulers/goto;->action:Lrx/functions/Action0;

    .line 9
    new-instance p1, Landroid/support/v4/d32;

    new-instance v0, Lrx/internal/schedulers/goto$if;

    invoke-direct {v0, p0, p2}, Lrx/internal/schedulers/goto$if;-><init>(Lrx/internal/schedulers/goto;Landroid/support/v4/d32;)V

    invoke-direct {p1, v0}, Landroid/support/v4/d32;-><init>(Lrx/Subscription;)V

    iput-object p1, p0, Lrx/internal/schedulers/goto;->cancel:Landroid/support/v4/d32;

    return-void
.end method

.method public constructor <init>(Lrx/functions/Action0;Landroid/support/v4/dq;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 5
    iput-object p1, p0, Lrx/internal/schedulers/goto;->action:Lrx/functions/Action0;

    .line 6
    new-instance p1, Landroid/support/v4/d32;

    new-instance v0, Lrx/internal/schedulers/goto$for;

    invoke-direct {v0, p0, p2}, Lrx/internal/schedulers/goto$for;-><init>(Lrx/internal/schedulers/goto;Landroid/support/v4/dq;)V

    invoke-direct {p1, v0}, Landroid/support/v4/d32;-><init>(Lrx/Subscription;)V

    iput-object p1, p0, Lrx/internal/schedulers/goto;->cancel:Landroid/support/v4/d32;

    return-void
.end method


# virtual methods
.method public add(Ljava/util/concurrent/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lrx/internal/schedulers/goto;->cancel:Landroid/support/v4/d32;

    new-instance v1, Lrx/internal/schedulers/goto$do;

    invoke-direct {v1, p0, p1}, Lrx/internal/schedulers/goto$do;-><init>(Lrx/internal/schedulers/goto;Ljava/util/concurrent/Future;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/d32;->do(Lrx/Subscription;)V

    return-void
.end method

.method public add(Lrx/Subscription;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/schedulers/goto;->cancel:Landroid/support/v4/d32;

    invoke-virtual {v0, p1}, Landroid/support/v4/d32;->do(Lrx/Subscription;)V

    return-void
.end method

.method public addParent(Landroid/support/v4/d32;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lrx/internal/schedulers/goto;->cancel:Landroid/support/v4/d32;

    new-instance v1, Lrx/internal/schedulers/goto$if;

    invoke-direct {v1, p0, p1}, Lrx/internal/schedulers/goto$if;-><init>(Lrx/internal/schedulers/goto;Landroid/support/v4/d32;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/d32;->do(Lrx/Subscription;)V

    return-void
.end method

.method public addParent(Landroid/support/v4/dq;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/schedulers/goto;->cancel:Landroid/support/v4/d32;

    new-instance v1, Lrx/internal/schedulers/goto$for;

    invoke-direct {v1, p0, p1}, Lrx/internal/schedulers/goto$for;-><init>(Lrx/internal/schedulers/goto;Landroid/support/v4/dq;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/d32;->do(Lrx/Subscription;)V

    return-void
.end method

.method public isUnsubscribed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/schedulers/goto;->cancel:Landroid/support/v4/d32;

    invoke-virtual {v0}, Landroid/support/v4/d32;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lrx/internal/schedulers/goto;->action:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V
    :try_end_0
    .catch Landroid/support/v4/y61; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lrx/internal/schedulers/goto;->unsubscribe()V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 4
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Fatal Exception thrown on Scheduler.Worker thread."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lrx/internal/schedulers/goto;->signalError(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Exception thrown on Scheduler.Worker thread. Add `onError` handling."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lrx/internal/schedulers/goto;->signalError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_1
    return-void

    :catchall_1
    move-exception v0

    .line 6
    invoke-virtual {p0}, Lrx/internal/schedulers/goto;->unsubscribe()V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public signalError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lrx/plugins/if;->protected(Ljava/lang/Throwable;)V

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method public unsubscribe()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/schedulers/goto;->cancel:Landroid/support/v4/d32;

    invoke-virtual {v0}, Landroid/support/v4/d32;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lrx/internal/schedulers/goto;->cancel:Landroid/support/v4/d32;

    invoke-virtual {v0}, Landroid/support/v4/d32;->unsubscribe()V

    :cond_0
    return-void
.end method
