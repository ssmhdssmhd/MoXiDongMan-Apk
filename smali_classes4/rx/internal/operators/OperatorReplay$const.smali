.class final Lrx/internal/operators/OperatorReplay$const;
.super Lrx/internal/operators/OperatorReplay$goto;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "const"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/OperatorReplay$goto<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x51dae9f17ccbb88eL


# instance fields
.field public final limit:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lrx/internal/operators/OperatorReplay$goto;-><init>()V

    .line 2
    iput p1, p0, Lrx/internal/operators/OperatorReplay$const;->limit:I

    return-void
.end method


# virtual methods
.method public truncate()V
    .locals 2

    .line 1
    iget v0, p0, Lrx/internal/operators/OperatorReplay$goto;->size:I

    iget v1, p0, Lrx/internal/operators/OperatorReplay$const;->limit:I

    if-le v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$goto;->removeFirst()V

    :cond_0
    return-void
.end method
