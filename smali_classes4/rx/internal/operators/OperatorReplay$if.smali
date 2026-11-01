.class final Lrx/internal/operators/OperatorReplay$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorReplay;->p6(Lrx/functions/Func0;Lrx/functions/Func1;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lrx/functions/Func0;

.field public final synthetic if:Lrx/functions/Func1;


# direct methods
.method public constructor <init>(Lrx/functions/Func0;Lrx/functions/Func1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/OperatorReplay$if;->do:Lrx/functions/Func0;

    iput-object p2, p0, Lrx/internal/operators/OperatorReplay$if;->if:Lrx/functions/Func1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorReplay$if;->do(Landroid/support/v4/y22;)V

    return-void
.end method

.method public do(Landroid/support/v4/y22;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$if;->do:Lrx/functions/Func0;

    invoke-interface {v0}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/observables/for;

    .line 2
    iget-object v1, p0, Lrx/internal/operators/OperatorReplay$if;->if:Lrx/functions/Func1;

    invoke-interface {v1, v0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {v1, p1}, Lrx/Observable;->Y3(Landroid/support/v4/y22;)Lrx/Subscription;

    .line 4
    new-instance v1, Lrx/internal/operators/OperatorReplay$if$do;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/OperatorReplay$if$do;-><init>(Lrx/internal/operators/OperatorReplay$if;Landroid/support/v4/y22;)V

    invoke-virtual {v0, v1}, Lrx/observables/for;->i6(Lrx/functions/Action1;)V

    return-void

    :catchall_0
    move-exception v0

    .line 5
    invoke-static {v0, p1}, Landroid/support/v4/s80;->goto(Ljava/lang/Throwable;Lrx/Observer;)V

    return-void
.end method
