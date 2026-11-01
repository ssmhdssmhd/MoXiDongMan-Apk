.class public final Lrx/internal/operators/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/f$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final do:I

.field private final if:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lrx/internal/operators/f;->do:I

    .line 3
    iput p2, p0, Lrx/internal/operators/f;->if:I

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Lrx/internal/operators/f;->do(Landroid/support/v4/y22;)V

    return-void
.end method

.method public do(Landroid/support/v4/y22;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/operators/f$do;

    iget v1, p0, Lrx/internal/operators/f;->do:I

    iget v2, p0, Lrx/internal/operators/f;->if:I

    invoke-direct {v0, p1, v1, v2}, Lrx/internal/operators/f$do;-><init>(Landroid/support/v4/y22;II)V

    invoke-virtual {p1, v0}, Landroid/support/v4/y22;->setProducer(Lrx/Producer;)V

    return-void
.end method
