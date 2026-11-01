.class public final Lrx/internal/operators/g2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/g2$for;,
        Lrx/internal/operators/g2$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator<",
        "Lrx/Observable<",
        "TT;>;TT;>;"
    }
.end annotation


# instance fields
.field public final do:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "+TU;>;"
        }
    .end annotation
.end field

.field public final if:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "-TU;+",
            "Lrx/Observable<",
            "+TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;Lrx/functions/Func1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "+TU;>;",
            "Lrx/functions/Func1<",
            "-TU;+",
            "Lrx/Observable<",
            "+TV;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/g2;->do:Lrx/Observable;

    .line 3
    iput-object p2, p0, Lrx/internal/operators/g2;->if:Lrx/functions/Func1;

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Lrx/internal/operators/g2;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;

    move-result-object p1

    return-object p1
.end method

.method public do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-",
            "Lrx/Observable<",
            "TT;>;>;)",
            "Landroid/support/v4/y22<",
            "-TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/dq;

    invoke-direct {v0}, Landroid/support/v4/dq;-><init>()V

    .line 2
    invoke-virtual {p1, v0}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 3
    new-instance v1, Lrx/internal/operators/g2$for;

    invoke-direct {v1, p0, p1, v0}, Lrx/internal/operators/g2$for;-><init>(Lrx/internal/operators/g2;Landroid/support/v4/y22;Landroid/support/v4/dq;)V

    .line 4
    new-instance p1, Lrx/internal/operators/g2$do;

    invoke-direct {p1, p0, v1}, Lrx/internal/operators/g2$do;-><init>(Lrx/internal/operators/g2;Lrx/internal/operators/g2$for;)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/support/v4/dq;->do(Lrx/Subscription;)V

    .line 6
    invoke-virtual {v0, p1}, Landroid/support/v4/dq;->do(Lrx/Subscription;)V

    .line 7
    iget-object v0, p0, Lrx/internal/operators/g2;->do:Lrx/Observable;

    invoke-virtual {v0, p1}, Lrx/Observable;->r5(Landroid/support/v4/y22;)Lrx/Subscription;

    return-object v1
.end method
