.class final Lcom/google/common/collect/c;
.super Lcom/google/common/collect/k1;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/li0;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/k1<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final transient new:Lcom/google/common/collect/k1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/k1<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/k1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/k1<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/k1;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/c;->new:Lcom/google/common/collect/k1;

    return-void
.end method


# virtual methods
.method public count(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/c;->new:Lcom/google/common/collect/k1;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic descendingMultiset()Lcom/google/common/collect/SortedMultiset;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/c;->descendingMultiset()Lcom/google/common/collect/k1;

    move-result-object v0

    return-object v0
.end method

.method public descendingMultiset()Lcom/google/common/collect/k1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/k1<",
            "TE;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/c;->new:Lcom/google/common/collect/k1;

    return-object v0
.end method

.method public bridge synthetic elementSet()Lcom/google/common/collect/g1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/c;->elementSet()Lcom/google/common/collect/m1;

    move-result-object v0

    return-object v0
.end method

.method public elementSet()Lcom/google/common/collect/m1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/m1<",
            "TE;>;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/common/collect/c;->new:Lcom/google/common/collect/k1;

    invoke-virtual {v0}, Lcom/google/common/collect/k1;->elementSet()Lcom/google/common/collect/m1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/m1;->descendingSet()Lcom/google/common/collect/m1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/NavigableSet;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/c;->elementSet()Lcom/google/common/collect/m1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/c;->elementSet()Lcom/google/common/collect/m1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/SortedSet;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/google/common/collect/c;->elementSet()Lcom/google/common/collect/m1;

    move-result-object v0

    return-object v0
.end method

.method public firstEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/c;->new:Lcom/google/common/collect/k1;

    invoke-interface {v0}, Lcom/google/common/collect/SortedMultiset;->lastEntry()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getEntry(I)Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/c;->new:Lcom/google/common/collect/k1;

    invoke-virtual {v0}, Lcom/google/common/collect/c1;->entrySet()Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/g1;->asList()Lcom/google/common/collect/v0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/v0;->reverse()Lcom/google/common/collect/v0;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/Multiset$Entry;

    return-object p1
.end method

.method public bridge synthetic headMultiset(Ljava/lang/Object;Lcom/google/common/collect/static;)Lcom/google/common/collect/SortedMultiset;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/c;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/static;)Lcom/google/common/collect/k1;

    move-result-object p1

    return-object p1
.end method

.method public headMultiset(Ljava/lang/Object;Lcom/google/common/collect/static;)Lcom/google/common/collect/k1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/static;",
            ")",
            "Lcom/google/common/collect/k1<",
            "TE;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/c;->new:Lcom/google/common/collect/k1;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/k1;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/static;)Lcom/google/common/collect/k1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/k1;->descendingMultiset()Lcom/google/common/collect/k1;

    move-result-object p1

    return-object p1
.end method

.method public isPartialView()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/c;->new:Lcom/google/common/collect/k1;

    invoke-virtual {v0}, Lcom/google/common/collect/r0;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public lastEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/c;->new:Lcom/google/common/collect/k1;

    invoke-interface {v0}, Lcom/google/common/collect/SortedMultiset;->firstEntry()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/c;->new:Lcom/google/common/collect/k1;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/static;)Lcom/google/common/collect/SortedMultiset;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/c;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/static;)Lcom/google/common/collect/k1;

    move-result-object p1

    return-object p1
.end method

.method public tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/static;)Lcom/google/common/collect/k1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/static;",
            ")",
            "Lcom/google/common/collect/k1<",
            "TE;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/c;->new:Lcom/google/common/collect/k1;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/k1;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/static;)Lcom/google/common/collect/k1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/k1;->descendingMultiset()Lcom/google/common/collect/k1;

    move-result-object p1

    return-object p1
.end method
