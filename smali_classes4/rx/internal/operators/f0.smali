.class public final Lrx/internal/operators/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final do:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final if:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "-TT;+",
            "Lrx/Observable<",
            "TV;>;>;"
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
            "+TT;>;",
            "Lrx/functions/Func1<",
            "-TT;+",
            "Lrx/Observable<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/f0;->do:Lrx/Observable;

    .line 3
    iput-object p2, p0, Lrx/internal/operators/f0;->if:Lrx/functions/Func1;

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Lrx/internal/operators/f0;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;

    move-result-object p1

    return-object p1
.end method

.method public do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
    .locals 4
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
    new-instance v0, Landroid/support/v4/ax1;

    invoke-direct {v0, p1}, Landroid/support/v4/ax1;-><init>(Landroid/support/v4/y22;)V

    .line 2
    invoke-static {}, Lrx/subjects/for;->g6()Lrx/subjects/for;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lrx/Observable;->P1(Lrx/Observable;)Lrx/Observable;

    move-result-object v2

    invoke-static {v0}, Lrx/observers/new;->try(Lrx/Observer;)Landroid/support/v4/y22;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->r5(Landroid/support/v4/y22;)Lrx/Subscription;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 4
    new-instance v2, Lrx/internal/operators/f0$do;

    invoke-direct {v2, p0, p1, v1, v0}, Lrx/internal/operators/f0$do;-><init>(Lrx/internal/operators/f0;Landroid/support/v4/y22;Lrx/subjects/for;Landroid/support/v4/ax1;)V

    return-object v2
.end method
