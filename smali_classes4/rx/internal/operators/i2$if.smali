.class Lrx/internal/operators/i2$if;
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
        "TU;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic for:Lrx/internal/operators/i2;

.field public final synthetic if:Landroid/support/v4/ax1;


# direct methods
.method public constructor <init>(Lrx/internal/operators/i2;Ljava/util/concurrent/atomic/AtomicReference;Landroid/support/v4/ax1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/i2$if;->for:Lrx/internal/operators/i2;

    iput-object p2, p0, Lrx/internal/operators/i2$if;->do:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lrx/internal/operators/i2$if;->if:Landroid/support/v4/ax1;

    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/operators/i2$if;->do:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lrx/internal/operators/i2;->for:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lrx/internal/operators/i2$if;->if:Landroid/support/v4/ax1;

    invoke-virtual {v0}, Landroid/support/v4/ax1;->onCompleted()V

    .line 3
    iget-object v0, p0, Lrx/internal/operators/i2$if;->if:Landroid/support/v4/ax1;

    invoke-virtual {v0}, Landroid/support/v4/y22;->unsubscribe()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/i2$if;->if:Landroid/support/v4/ax1;

    invoke-virtual {v0, p1}, Landroid/support/v4/ax1;->onError(Ljava/lang/Throwable;)V

    .line 2
    iget-object p1, p0, Lrx/internal/operators/i2$if;->if:Landroid/support/v4/ax1;

    invoke-virtual {p1}, Landroid/support/v4/y22;->unsubscribe()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/operators/i2$if;->do:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
