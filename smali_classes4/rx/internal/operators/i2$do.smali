.class Lrx/internal/operators/i2$do;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/i2;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/y22<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic for:Lrx/internal/operators/i2;

.field public final synthetic if:Landroid/support/v4/ax1;


# direct methods
.method public constructor <init>(Lrx/internal/operators/i2;Landroid/support/v4/y22;ZLjava/util/concurrent/atomic/AtomicReference;Landroid/support/v4/ax1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/i2$do;->for:Lrx/internal/operators/i2;

    iput-object p4, p0, Lrx/internal/operators/i2$do;->do:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p5, p0, Lrx/internal/operators/i2$do;->if:Landroid/support/v4/ax1;

    invoke-direct {p0, p2, p3}, Landroid/support/v4/y22;-><init>(Landroid/support/v4/y22;Z)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/i2$do;->if:Landroid/support/v4/ax1;

    invoke-virtual {v0}, Landroid/support/v4/ax1;->onCompleted()V

    .line 2
    iget-object v0, p0, Lrx/internal/operators/i2$do;->if:Landroid/support/v4/ax1;

    invoke-virtual {v0}, Landroid/support/v4/y22;->unsubscribe()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/i2$do;->if:Landroid/support/v4/ax1;

    invoke-virtual {v0, p1}, Landroid/support/v4/ax1;->onError(Ljava/lang/Throwable;)V

    .line 2
    iget-object p1, p0, Lrx/internal/operators/i2$do;->if:Landroid/support/v4/ax1;

    invoke-virtual {p1}, Landroid/support/v4/y22;->unsubscribe()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/operators/i2$do;->do:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2
    sget-object v1, Lrx/internal/operators/i2;->for:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 3
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/i2$do;->for:Lrx/internal/operators/i2;

    iget-object v1, v1, Lrx/internal/operators/i2;->do:Lrx/functions/Func2;

    invoke-interface {v1, p1, v0}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lrx/internal/operators/i2$do;->if:Landroid/support/v4/ax1;

    invoke-virtual {v0, p1}, Landroid/support/v4/ax1;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {p1, p0}, Landroid/support/v4/s80;->goto(Ljava/lang/Throwable;Lrx/Observer;)V

    :cond_0
    :goto_0
    return-void
.end method
