.class final Lrx/internal/operators/p2$do;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "SourceFile"

# interfaces
.implements Lrx/SingleEmitter;
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/p2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lrx/SingleEmitter<",
        "TT;>;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x702bfed8d3c68cb9L


# instance fields
.field public final actual:Landroid/support/v4/b02;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/b02<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final resource:Landroid/support/v4/uw1;


# direct methods
.method public constructor <init>(Landroid/support/v4/b02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/b02<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/p2$do;->actual:Landroid/support/v4/b02;

    .line 3
    new-instance p1, Landroid/support/v4/uw1;

    invoke-direct {p1}, Landroid/support/v4/uw1;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/p2$do;->resource:Landroid/support/v4/uw1;

    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/p2$do;->actual:Landroid/support/v4/b02;

    invoke-virtual {v0, p1}, Landroid/support/v4/b02;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p1, p0, Lrx/internal/operators/p2$do;->resource:Landroid/support/v4/uw1;

    invoke-virtual {p1}, Landroid/support/v4/uw1;->unsubscribe()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lrx/internal/operators/p2$do;->resource:Landroid/support/v4/uw1;

    invoke-virtual {v0}, Landroid/support/v4/uw1;->unsubscribe()V

    throw p1

    .line 5
    :cond_1
    invoke-static {p1}, Lrx/plugins/if;->protected(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/p2$do;->actual:Landroid/support/v4/b02;

    invoke-virtual {v0, p1}, Landroid/support/v4/b02;->if(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object p1, p0, Lrx/internal/operators/p2$do;->resource:Landroid/support/v4/uw1;

    invoke-virtual {p1}, Landroid/support/v4/uw1;->unsubscribe()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lrx/internal/operators/p2$do;->resource:Landroid/support/v4/uw1;

    invoke-virtual {v0}, Landroid/support/v4/uw1;->unsubscribe()V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public setCancellation(Lrx/functions/Cancellable;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/nf;

    invoke-direct {v0, p1}, Landroid/support/v4/nf;-><init>(Lrx/functions/Cancellable;)V

    invoke-virtual {p0, v0}, Lrx/internal/operators/p2$do;->setSubscription(Lrx/Subscription;)V

    return-void
.end method

.method public setSubscription(Lrx/Subscription;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/p2$do;->resource:Landroid/support/v4/uw1;

    invoke-virtual {v0, p1}, Landroid/support/v4/uw1;->update(Lrx/Subscription;)Z

    return-void
.end method

.method public unsubscribe()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lrx/internal/operators/p2$do;->resource:Landroid/support/v4/uw1;

    invoke-virtual {v0}, Landroid/support/v4/uw1;->unsubscribe()V

    :cond_0
    return-void
.end method
