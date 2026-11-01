.class final Lcom/google/common/collect/interface$if;
.super Lcom/google/common/collect/interface;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/interface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# instance fields
.field public final new:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/common/collect/interface;-><init>(Lcom/google/common/collect/interface$do;)V

    .line 2
    iput p1, p0, Lcom/google/common/collect/interface$if;->new:I

    return-void
.end method


# virtual methods
.method public break(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/interface;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .param p3    # Ljava/util/Comparator;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lcom/google/common/collect/interface;"
        }
    .end annotation

    return-object p0
.end method

.method public case(II)Lcom/google/common/collect/interface;
    .locals 0

    return-object p0
.end method

.method public catch(ZZ)Lcom/google/common/collect/interface;
    .locals 0

    return-object p0
.end method

.method public class(ZZ)Lcom/google/common/collect/interface;
    .locals 0

    return-object p0
.end method

.method public const()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/interface$if;->new:I

    return v0
.end method

.method public else(JJ)Lcom/google/common/collect/interface;
    .locals 0

    return-object p0
.end method

.method public new(DD)Lcom/google/common/collect/interface;
    .locals 0

    return-object p0
.end method

.method public this(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/interface;
    .locals 0
    .param p1    # Ljava/lang/Comparable;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Comparable;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    return-object p0
.end method

.method public try(FF)Lcom/google/common/collect/interface;
    .locals 0

    return-object p0
.end method
