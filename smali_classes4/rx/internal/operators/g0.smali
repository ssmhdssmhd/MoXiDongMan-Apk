.class public final Lrx/internal/operators/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/g0$for;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator<",
        "TT;",
        "Lrx/do<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static if()Lrx/internal/operators/g0;
    .locals 1

    .line 1
    sget-object v0, Lrx/internal/operators/g0$for;->do:Lrx/internal/operators/g0;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Lrx/internal/operators/g0;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;

    move-result-object p1

    return-object p1
.end method

.method public do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TT;>;)",
            "Landroid/support/v4/y22<",
            "-",
            "Lrx/do<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/operators/g0$do;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/g0$do;-><init>(Lrx/internal/operators/g0;Landroid/support/v4/y22;Landroid/support/v4/y22;)V

    return-object v0
.end method
