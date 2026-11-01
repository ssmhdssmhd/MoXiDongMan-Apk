.class abstract Lcom/google/common/collect/y2;
.super Lcom/google/common/collect/o1;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/ki0;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/y2$for;,
        Lcom/google/common/collect/y2$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/o1<",
        "TR;TC;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/o1;-><init>()V

    return-void
.end method

.method public static forCells(Ljava/lang/Iterable;)Lcom/google/common/collect/y2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "Lcom/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;>;)",
            "Lcom/google/common/collect/y2<",
            "TR;TC;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 5
    invoke-static {p0, v0, v0}, Lcom/google/common/collect/y2;->if(Ljava/lang/Iterable;Ljava/util/Comparator;Ljava/util/Comparator;)Lcom/google/common/collect/y2;

    move-result-object p0

    return-object p0
.end method

.method public static forCells(Ljava/util/List;Ljava/util/Comparator;Ljava/util/Comparator;)Lcom/google/common/collect/y2;
    .locals 1
    .param p1    # Ljava/util/Comparator;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .param p2    # Ljava/util/Comparator;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lcom/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;>;",
            "Ljava/util/Comparator<",
            "-TR;>;",
            "Ljava/util/Comparator<",
            "-TC;>;)",
            "Lcom/google/common/collect/y2<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 2
    :cond_0
    new-instance v0, Lcom/google/common/collect/y2$do;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/y2$do;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    .line 3
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/google/common/collect/y2;->if(Ljava/lang/Iterable;Ljava/util/Comparator;Ljava/util/Comparator;)Lcom/google/common/collect/y2;

    move-result-object p0

    return-object p0
.end method

.method public static forOrderedComponents(Lcom/google/common/collect/v0;Lcom/google/common/collect/g1;Lcom/google/common/collect/g1;)Lcom/google/common/collect/y2;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/v0<",
            "Lcom/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;>;",
            "Lcom/google/common/collect/g1<",
            "TR;>;",
            "Lcom/google/common/collect/g1<",
            "TC;>;)",
            "Lcom/google/common/collect/y2<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    int-to-long v4, v4

    mul-long v2, v2, v4

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    new-instance v0, Lcom/google/common/collect/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/b;-><init>(Lcom/google/common/collect/v0;Lcom/google/common/collect/g1;Lcom/google/common/collect/g1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/collect/i3;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/i3;-><init>(Lcom/google/common/collect/v0;Lcom/google/common/collect/g1;Lcom/google/common/collect/g1;)V

    :goto_0
    return-object v0
.end method

.method private static if(Ljava/lang/Iterable;Ljava/util/Comparator;Ljava/util/Comparator;)Lcom/google/common/collect/y2;
    .locals 5
    .param p1    # Ljava/util/Comparator;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .param p2    # Ljava/util/Comparator;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "Lcom/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;>;",
            "Ljava/util/Comparator<",
            "-TR;>;",
            "Ljava/util/Comparator<",
            "-TC;>;)",
            "Lcom/google/common/collect/y2<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 3
    invoke-static {p0}, Lcom/google/common/collect/v0;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/v0;

    move-result-object v2

    .line 4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/Table$Cell;

    .line 5
    invoke-interface {v3}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-interface {v3}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 7
    invoke-static {v0}, Lcom/google/common/collect/g1;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/g1;

    move-result-object p0

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {p1, v0}, Lcom/google/common/collect/v0;->sortedCopyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/v0;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/g1;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/g1;

    move-result-object p0

    :goto_1
    if-nez p2, :cond_2

    .line 9
    invoke-static {v1}, Lcom/google/common/collect/g1;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/g1;

    move-result-object p1

    goto :goto_2

    .line 10
    :cond_2
    invoke-static {p2, v1}, Lcom/google/common/collect/v0;->sortedCopyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/v0;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/g1;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/g1;

    move-result-object p1

    .line 11
    :goto_2
    invoke-static {v2, p0, p1}, Lcom/google/common/collect/y2;->forOrderedComponents(Lcom/google/common/collect/v0;Lcom/google/common/collect/g1;Lcom/google/common/collect/g1;)Lcom/google/common/collect/y2;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final checkNoDuplicate(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TV;TV;)V"
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const-string v2, "Duplicate key: (row=%s, column=%s), values: [%s, %s]."

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    .line 1
    invoke-static/range {v1 .. v6}, Landroid/support/v4/af1;->finally(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final createCellSet()Lcom/google/common/collect/g1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g1<",
            "Lcom/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/o1;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/g1;->of()Lcom/google/common/collect/g1;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/collect/y2$if;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/y2$if;-><init>(Lcom/google/common/collect/y2;Lcom/google/common/collect/y2$do;)V

    :goto_0
    return-object v0
.end method

.method public bridge synthetic createCellSet()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/y2;->createCellSet()Lcom/google/common/collect/g1;

    move-result-object v0

    return-object v0
.end method

.method public final createValues()Lcom/google/common/collect/r0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/r0<",
            "TV;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/o1;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/v0;->of()Lcom/google/common/collect/v0;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/collect/y2$for;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/y2$for;-><init>(Lcom/google/common/collect/y2;Lcom/google/common/collect/y2$do;)V

    :goto_0
    return-object v0
.end method

.method public bridge synthetic createValues()Ljava/util/Collection;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/y2;->createValues()Lcom/google/common/collect/r0;

    move-result-object v0

    return-object v0
.end method

.method public abstract getCell(I)Lcom/google/common/collect/Table$Cell;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;"
        }
    .end annotation
.end method

.method public abstract getValue(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation
.end method
