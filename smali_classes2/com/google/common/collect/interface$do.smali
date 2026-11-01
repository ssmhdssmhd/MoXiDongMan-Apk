.class final Lcom/google/common/collect/interface$do;
.super Lcom/google/common/collect/interface;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/interface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/common/collect/interface;-><init>(Lcom/google/common/collect/interface$do;)V

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

    .line 1
    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/interface$do;->super(I)Lcom/google/common/collect/interface;

    move-result-object p1

    return-object p1
.end method

.method public case(II)Lcom/google/common/collect/interface;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/google/common/primitives/this;->try(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/interface$do;->super(I)Lcom/google/common/collect/interface;

    move-result-object p1

    return-object p1
.end method

.method public catch(ZZ)Lcom/google/common/collect/interface;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/google/common/primitives/do;->new(ZZ)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/interface$do;->super(I)Lcom/google/common/collect/interface;

    move-result-object p1

    return-object p1
.end method

.method public class(ZZ)Lcom/google/common/collect/interface;
    .locals 0

    .line 1
    invoke-static {p2, p1}, Lcom/google/common/primitives/do;->new(ZZ)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/interface$do;->super(I)Lcom/google/common/collect/interface;

    move-result-object p1

    return-object p1
.end method

.method public const()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public else(JJ)Lcom/google/common/collect/interface;
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Lcom/google/common/primitives/break;->new(JJ)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/interface$do;->super(I)Lcom/google/common/collect/interface;

    move-result-object p1

    return-object p1
.end method

.method public new(DD)Lcom/google/common/collect/interface;
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/interface$do;->super(I)Lcom/google/common/collect/interface;

    move-result-object p1

    return-object p1
.end method

.method public super(I)Lcom/google/common/collect/interface;
    .locals 0

    if-gez p1, :cond_0

    .line 1
    invoke-static {}, Lcom/google/common/collect/interface;->do()Lcom/google/common/collect/interface;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    invoke-static {}, Lcom/google/common/collect/interface;->if()Lcom/google/common/collect/interface;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/common/collect/interface;->for()Lcom/google/common/collect/interface;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public this(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/interface;
    .locals 0

    .line 1
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/interface$do;->super(I)Lcom/google/common/collect/interface;

    move-result-object p1

    return-object p1
.end method

.method public try(FF)Lcom/google/common/collect/interface;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/interface$do;->super(I)Lcom/google/common/collect/interface;

    move-result-object p1

    return-object p1
.end method
