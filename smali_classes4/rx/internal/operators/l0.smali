.class public final Lrx/internal/operators/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/l0$do;,
        Lrx/internal/operators/l0$for;,
        Lrx/internal/operators/l0$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator<",
        "TR;TT;>;"
    }
.end annotation


# instance fields
.field public final do:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "-TT;+",
            "Lrx/Observable<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field private final for:I

.field public final if:I


# direct methods
.method public constructor <init>(Lrx/functions/Func1;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1<",
            "-TT;+",
            "Lrx/Observable<",
            "+TR;>;>;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/l0;->do:Lrx/functions/Func1;

    .line 3
    iput p2, p0, Lrx/internal/operators/l0;->if:I

    .line 4
    iput p3, p0, Lrx/internal/operators/l0;->for:I

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/support/v4/y22;

    invoke-virtual {p0, p1}, Lrx/internal/operators/l0;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;

    move-result-object p1

    return-object p1
.end method

.method public do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/y22<",
            "-TR;>;)",
            "Landroid/support/v4/y22<",
            "-TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/operators/l0$for;

    iget-object v1, p0, Lrx/internal/operators/l0;->do:Lrx/functions/Func1;

    iget v2, p0, Lrx/internal/operators/l0;->if:I

    iget v3, p0, Lrx/internal/operators/l0;->for:I

    invoke-direct {v0, v1, v2, v3, p1}, Lrx/internal/operators/l0$for;-><init>(Lrx/functions/Func1;IILandroid/support/v4/y22;)V

    .line 2
    invoke-virtual {v0}, Lrx/internal/operators/l0$for;->for()V

    return-object v0
.end method
