.class public final Lrx/internal/operators/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/y$if;,
        Lrx/internal/operators/y$for;,
        Lrx/internal/operators/y$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator<",
        "Ljava/util/List<",
        "TT;>;TT;>;"
    }
.end annotation


# instance fields
.field public final do:I

.field public final if:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_1

    if-lez p2, :cond_0

    .line 2
    iput p1, p0, Lrx/internal/operators/y;->do:I

    .line 3
    iput p2, p0, Lrx/internal/operators/y;->if:I

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "skip must be greater than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "count must be greater than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Lrx/internal/operators/y;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;

    move-result-object p1

    return-object p1
.end method

.method public do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-",
            "Ljava/util/List<",
            "TT;>;>;)",
            "Landroid/support/v4/y22<",
            "-TT;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lrx/internal/operators/y;->if:I

    iget v1, p0, Lrx/internal/operators/y;->do:I

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Lrx/internal/operators/y$do;

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/y$do;-><init>(Landroid/support/v4/y22;I)V

    .line 3
    invoke-virtual {p1, v0}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 4
    invoke-virtual {v0}, Lrx/internal/operators/y$do;->if()Lrx/Producer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v4/y22;->setProducer(Lrx/Producer;)V

    return-object v0

    :cond_0
    if-le v0, v1, :cond_1

    .line 5
    new-instance v2, Lrx/internal/operators/y$for;

    invoke-direct {v2, p1, v1, v0}, Lrx/internal/operators/y$for;-><init>(Landroid/support/v4/y22;II)V

    .line 6
    invoke-virtual {p1, v2}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 7
    invoke-virtual {v2}, Lrx/internal/operators/y$for;->for()Lrx/Producer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/y22;->setProducer(Lrx/Producer;)V

    return-object v2

    .line 8
    :cond_1
    new-instance v2, Lrx/internal/operators/y$if;

    invoke-direct {v2, p1, v1, v0}, Lrx/internal/operators/y$if;-><init>(Landroid/support/v4/y22;II)V

    .line 9
    invoke-virtual {p1, v2}, Landroid/support/v4/y22;->add(Lrx/Subscription;)V

    .line 10
    invoke-virtual {v2}, Lrx/internal/operators/y$if;->for()Lrx/Producer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/y22;->setProducer(Lrx/Producer;)V

    return-object v2
.end method
