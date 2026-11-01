.class public final Lrx/internal/operators/x1;
.super Lrx/internal/operators/OperatorTimeoutBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/OperatorTimeoutBase<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lrx/Observable;Lrx/if;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Observable<",
            "+TT;>;",
            "Lrx/if;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/operators/x1$do;

    invoke-direct {v0, p1, p2, p3}, Lrx/internal/operators/x1$do;-><init>(JLjava/util/concurrent/TimeUnit;)V

    new-instance v1, Lrx/internal/operators/x1$if;

    invoke-direct {v1, p1, p2, p3}, Lrx/internal/operators/x1$if;-><init>(JLjava/util/concurrent/TimeUnit;)V

    invoke-direct {p0, v0, v1, p4, p5}, Lrx/internal/operators/OperatorTimeoutBase;-><init>(Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub;Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;Lrx/Observable;Lrx/if;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lrx/internal/operators/OperatorTimeoutBase;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;

    move-result-object p1

    return-object p1
.end method
