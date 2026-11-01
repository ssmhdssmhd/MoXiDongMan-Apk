.class final Lrx/internal/operators/OperatorReplay$else;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorReplay;->o6(Lrx/Observable;Lrx/functions/Func0;)Lrx/observables/for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic if:Lrx/functions/Func0;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Lrx/functions/Func0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/OperatorReplay$else;->do:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lrx/internal/operators/OperatorReplay$else;->if:Lrx/functions/Func0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorReplay$else;->do(Landroid/support/v4/y22;)V

    return-void
.end method

.method public do(Landroid/support/v4/y22;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$else;->do:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorReplay$catch;

    if-nez v0, :cond_1

    .line 2
    new-instance v1, Lrx/internal/operators/OperatorReplay$catch;

    iget-object v2, p0, Lrx/internal/operators/OperatorReplay$else;->if:Lrx/functions/Func0;

    invoke-interface {v2}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/internal/operators/OperatorReplay$ReplayBuffer;

    invoke-direct {v1, v2}, Lrx/internal/operators/OperatorReplay$catch;-><init>(Lrx/internal/operators/OperatorReplay$ReplayBuffer;)V

    .line 3
    invoke-virtual {v1}, Lrx/internal/operators/OperatorReplay$catch;->for()V

    .line 4
    iget-object v2, p0, Lrx/internal/operators/OperatorReplay$else;->do:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 5
    :cond_1
    new-instance v1, Lrx/internal/operators/OperatorReplay$this;

    invoke-direct {v1, v0, p1}, Lrx/internal/operators/OperatorReplay$this;-><init>(Lrx/internal/operators/OperatorReplay$catch;Landroid/support/v4/y22;)V

    .line 6
    invoke-virtual {v0, v1}, Lrx/internal/operators/OperatorReplay$catch;->do(Lrx/internal/operators/OperatorReplay$this;)Z

    .line 7
    invoke-virtual {p1, v1}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 8
    iget-object v0, v0, Lrx/internal/operators/OperatorReplay$catch;->do:Lrx/internal/operators/OperatorReplay$ReplayBuffer;

    invoke-interface {v0, v1}, Lrx/internal/operators/OperatorReplay$ReplayBuffer;->replay(Lrx/internal/operators/OperatorReplay$this;)V

    .line 9
    invoke-virtual {p1, v1}, Landroid/support/v4/y22;->setProducer(Lrx/Producer;)V

    return-void
.end method
