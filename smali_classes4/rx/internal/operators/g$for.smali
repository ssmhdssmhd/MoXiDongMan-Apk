.class Lrx/internal/operators/g$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/g;->do(Landroid/support/v4/y22;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator<",
        "Lrx/do<",
        "*>;",
        "Lrx/do<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lrx/internal/operators/g;


# direct methods
.method public constructor <init>(Lrx/internal/operators/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/g$for;->do:Lrx/internal/operators/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Lrx/internal/operators/g$for;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;

    move-result-object p1

    return-object p1
.end method

.method public do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-",
            "Lrx/do<",
            "*>;>;)",
            "Landroid/support/v4/y22<",
            "-",
            "Lrx/do<",
            "*>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/operators/g$for$do;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/g$for$do;-><init>(Lrx/internal/operators/g$for;Landroid/support/v4/y22;Landroid/support/v4/y22;)V

    return-object v0
.end method
