.class Lrx/internal/operators/k1$if;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/k1;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
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
.field public final synthetic do:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic for:Lrx/internal/operators/k1;

.field public final synthetic if:Landroid/support/v4/ax1;


# direct methods
.method public constructor <init>(Lrx/internal/operators/k1;Landroid/support/v4/y22;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/support/v4/ax1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/k1$if;->for:Lrx/internal/operators/k1;

    iput-object p3, p0, Lrx/internal/operators/k1$if;->do:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lrx/internal/operators/k1$if;->if:Landroid/support/v4/ax1;

    invoke-direct {p0, p2}, Landroid/support/v4/y22;-><init>(Landroid/support/v4/y22;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/k1$if;->if:Landroid/support/v4/ax1;

    invoke-virtual {v0}, Landroid/support/v4/ax1;->onCompleted()V

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/y22;->unsubscribe()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/k1$if;->if:Landroid/support/v4/ax1;

    invoke-virtual {v0, p1}, Landroid/support/v4/ax1;->onError(Ljava/lang/Throwable;)V

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/y22;->unsubscribe()V

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
    iget-object v0, p0, Lrx/internal/operators/k1$if;->do:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lrx/internal/operators/k1$if;->if:Landroid/support/v4/ax1;

    invoke-virtual {v0, p1}, Landroid/support/v4/ax1;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/y22;->request(J)V

    :goto_0
    return-void
.end method
