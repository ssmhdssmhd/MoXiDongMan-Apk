.class Lrx/internal/operators/OperatorTimeoutBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorTimeoutBase$do;,
        Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;,
        Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final do:Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final for:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final if:Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final new:Lrx/if;


# direct methods
.method public constructor <init>(Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub;Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;Lrx/Observable;Lrx/if;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub<",
            "TT;>;",
            "Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub<",
            "TT;>;",
            "Lrx/Observable<",
            "+TT;>;",
            "Lrx/if;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/OperatorTimeoutBase;->do:Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub;

    .line 3
    iput-object p2, p0, Lrx/internal/operators/OperatorTimeoutBase;->if:Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;

    .line 4
    iput-object p3, p0, Lrx/internal/operators/OperatorTimeoutBase;->for:Lrx/Observable;

    .line 5
    iput-object p4, p0, Lrx/internal/operators/OperatorTimeoutBase;->new:Lrx/if;

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorTimeoutBase;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;

    move-result-object p1

    return-object p1
.end method

.method public do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TT;>;)",
            "Landroid/support/v4/y22<",
            "-TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/operators/OperatorTimeoutBase;->new:Lrx/if;

    invoke-virtual {v0}, Lrx/if;->do()Lrx/if$do;

    move-result-object v0

    .line 2
    invoke-virtual {p1, v0}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 3
    new-instance v7, Landroid/support/v4/ax1;

    invoke-direct {v7, p1}, Landroid/support/v4/ax1;-><init>(Landroid/support/v4/y22;)V

    .line 4
    new-instance p1, Landroid/support/v4/ww1;

    invoke-direct {p1}, Landroid/support/v4/ww1;-><init>()V

    .line 5
    invoke-virtual {v7, p1}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 6
    new-instance v8, Lrx/internal/operators/OperatorTimeoutBase$do;

    iget-object v3, p0, Lrx/internal/operators/OperatorTimeoutBase;->if:Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;

    iget-object v5, p0, Lrx/internal/operators/OperatorTimeoutBase;->for:Lrx/Observable;

    move-object v1, v8

    move-object v2, v7

    move-object v4, p1

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lrx/internal/operators/OperatorTimeoutBase$do;-><init>(Landroid/support/v4/ax1;Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;Landroid/support/v4/ww1;Lrx/Observable;Lrx/if$do;)V

    .line 7
    invoke-virtual {v7, v8}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 8
    iget-object v1, v8, Lrx/internal/operators/OperatorTimeoutBase$do;->case:Lrx/internal/producers/do;

    invoke-virtual {v7, v1}, Landroid/support/v4/y22;->setProducer(Lrx/Producer;)V

    .line 9
    iget-object v1, p0, Lrx/internal/operators/OperatorTimeoutBase;->do:Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v8, v2, v0}, Lrx/functions/Func3;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Subscription;

    invoke-virtual {p1, v0}, Landroid/support/v4/ww1;->if(Lrx/Subscription;)V

    return-object v8
.end method
