.class abstract Lrx/internal/operators/extends$if;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements Lrx/Emitter;
.implements Lrx/Producer;
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/extends;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/Emitter<",
        "TT;>;",
        "Lrx/Producer;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x65ac35ee8a56a4bfL


# instance fields
.field public final actual:Landroid/support/v4/y22;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/y22<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final serial:Landroid/support/v4/ww1;


# direct methods
.method public constructor <init>(Landroid/support/v4/y22;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/extends$if;->actual:Landroid/support/v4/y22;

    .line 3
    new-instance p1, Landroid/support/v4/ww1;

    invoke-direct {p1}, Landroid/support/v4/ww1;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/extends$if;->serial:Landroid/support/v4/ww1;

    return-void
.end method


# virtual methods
.method public final isUnsubscribed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/extends$if;->serial:Landroid/support/v4/ww1;

    invoke-virtual {v0}, Landroid/support/v4/ww1;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public onCompleted()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/operators/extends$if;->actual:Landroid/support/v4/y22;

    invoke-virtual {v0}, Landroid/support/v4/y22;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/extends$if;->actual:Landroid/support/v4/y22;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v0, p0, Lrx/internal/operators/extends$if;->serial:Landroid/support/v4/ww1;

    invoke-virtual {v0}, Landroid/support/v4/ww1;->unsubscribe()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/extends$if;->serial:Landroid/support/v4/ww1;

    invoke-virtual {v1}, Landroid/support/v4/ww1;->unsubscribe()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/extends$if;->actual:Landroid/support/v4/y22;

    invoke-virtual {v0}, Landroid/support/v4/y22;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/extends$if;->actual:Landroid/support/v4/y22;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object p1, p0, Lrx/internal/operators/extends$if;->serial:Landroid/support/v4/ww1;

    invoke-virtual {p1}, Landroid/support/v4/ww1;->unsubscribe()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lrx/internal/operators/extends$if;->serial:Landroid/support/v4/ww1;

    invoke-virtual {v0}, Landroid/support/v4/ww1;->unsubscribe()V

    throw p1
.end method

.method public onRequested()V
    .locals 0

    return-void
.end method

.method public onUnsubscribed()V
    .locals 0

    return-void
.end method

.method public final request(J)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Landroid/support/v4/u6;->break(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, p1, p2}, Landroid/support/v4/u6;->if(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 3
    invoke-virtual {p0}, Lrx/internal/operators/extends$if;->onRequested()V

    :cond_0
    return-void
.end method

.method public final requested()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final setCancellation(Lrx/functions/Cancellable;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/nf;

    invoke-direct {v0, p1}, Landroid/support/v4/nf;-><init>(Lrx/functions/Cancellable;)V

    invoke-virtual {p0, v0}, Lrx/internal/operators/extends$if;->setSubscription(Lrx/Subscription;)V

    return-void
.end method

.method public final setSubscription(Lrx/Subscription;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/extends$if;->serial:Landroid/support/v4/ww1;

    invoke-virtual {v0, p1}, Landroid/support/v4/ww1;->if(Lrx/Subscription;)V

    return-void
.end method

.method public final unsubscribe()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/extends$if;->serial:Landroid/support/v4/ww1;

    invoke-virtual {v0}, Landroid/support/v4/ww1;->unsubscribe()V

    .line 2
    invoke-virtual {p0}, Lrx/internal/operators/extends$if;->onUnsubscribed()V

    return-void
.end method
