.class public final Lcom/google/common/collect/e1$for;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Landroid/support/v4/v10;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/e1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable<",
        "*>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final do:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Lcom/google/common/collect/n2<",
            "TK;>;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/common/collect/x1;->while()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/e1$for;->do:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public do()Lcom/google/common/collect/e1;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e1<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/e1$for;->do:Ljava/util/List;

    invoke-static {}, Lcom/google/common/collect/n2;->rangeLexOrdering()Lcom/google/common/collect/k2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/k2;->onKeys()Lcom/google/common/collect/k2;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2
    new-instance v0, Lcom/google/common/collect/v0$do;

    iget-object v1, p0, Lcom/google/common/collect/e1$for;->do:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/v0$do;-><init>(I)V

    .line 3
    new-instance v1, Lcom/google/common/collect/v0$do;

    iget-object v2, p0, Lcom/google/common/collect/e1$for;->do:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/google/common/collect/v0$do;-><init>(I)V

    const/4 v2, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/google/common/collect/e1$for;->do:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 5
    iget-object v3, p0, Lcom/google/common/collect/e1$for;->do:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/n2;

    if-lez v2, :cond_1

    .line 6
    iget-object v4, p0, Lcom/google/common/collect/e1$for;->do:Ljava/util/List;

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/collect/n2;

    .line 7
    invoke-virtual {v3, v4}, Lcom/google/common/collect/n2;->isConnected(Lcom/google/common/collect/n2;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3, v4}, Lcom/google/common/collect/n2;->intersection(Lcom/google/common/collect/n2;)Lcom/google/common/collect/n2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/collect/n2;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Overlapping ranges: range "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " overlaps with entry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_1
    :goto_1
    invoke-virtual {v0, v3}, Lcom/google/common/collect/v0$do;->this(Ljava/lang/Object;)Lcom/google/common/collect/v0$do;

    .line 10
    iget-object v3, p0, Lcom/google/common/collect/e1$for;->do:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/common/collect/v0$do;->this(Ljava/lang/Object;)Lcom/google/common/collect/v0$do;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_2
    new-instance v2, Lcom/google/common/collect/e1;

    invoke-virtual {v0}, Lcom/google/common/collect/v0$do;->const()Lcom/google/common/collect/v0;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/common/collect/v0$do;->const()Lcom/google/common/collect/v0;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/google/common/collect/e1;-><init>(Lcom/google/common/collect/v0;Lcom/google/common/collect/v0;)V

    return-object v2
.end method

.method public for(Lcom/google/common/collect/RangeMap;)Lcom/google/common/collect/e1$for;
    .locals 2
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeMap<",
            "TK;+TV;>;)",
            "Lcom/google/common/collect/e1$for<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/common/collect/RangeMap;->asMapOfRanges()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/n2;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/e1$for;->if(Lcom/google/common/collect/n2;Ljava/lang/Object;)Lcom/google/common/collect/e1$for;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public if(Lcom/google/common/collect/n2;Ljava/lang/Object;)Lcom/google/common/collect/e1$for;
    .locals 2
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/n2<",
            "TK;>;TV;)",
            "Lcom/google/common/collect/e1$for<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lcom/google/common/collect/n2;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Range must not be empty, but was %s"

    invoke-static {v0, v1, p1}, Landroid/support/v4/af1;->return(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/google/common/collect/e1$for;->do:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/google/common/collect/Maps;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
