.class public Lrx/internal/operators/y1;
.super Lrx/internal/operators/OperatorTimeoutBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/OperatorTimeoutBase<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/Observable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func0<",
            "+",
            "Lrx/Observable<",
            "TU;>;>;",
            "Lrx/functions/Func1<",
            "-TT;+",
            "Lrx/Observable<",
            "TV;>;>;",
            "Lrx/Observable<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/operators/y1$do;

    invoke-direct {v0, p1}, Lrx/internal/operators/y1$do;-><init>(Lrx/functions/Func0;)V

    new-instance p1, Lrx/internal/operators/y1$if;

    invoke-direct {p1, p2}, Lrx/internal/operators/y1$if;-><init>(Lrx/functions/Func1;)V

    invoke-static {}, Landroid/support/v4/ds1;->new()Lrx/if;

    move-result-object p2

    invoke-direct {p0, v0, p1, p3, p2}, Lrx/internal/operators/OperatorTimeoutBase;-><init>(Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub;Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;Lrx/Observable;Lrx/if;)V

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
