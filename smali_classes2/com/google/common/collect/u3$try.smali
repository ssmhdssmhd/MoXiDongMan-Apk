.class final Lcom/google/common/collect/u3$try;
.super Lcom/google/common/collect/break;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/af2;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/u3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "try"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable<",
        "*>;>",
        "Lcom/google/common/collect/break<",
        "Lcom/google/common/collect/a<",
        "TC;>;",
        "Lcom/google/common/collect/n2<",
        "TC;>;>;"
    }
.end annotation


# instance fields
.field private final do:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Lcom/google/common/collect/a<",
            "TC;>;",
            "Lcom/google/common/collect/n2<",
            "TC;>;>;"
        }
    .end annotation
.end field

.field private final if:Lcom/google/common/collect/n2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/n2<",
            "Lcom/google/common/collect/a<",
            "TC;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/NavigableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap<",
            "Lcom/google/common/collect/a<",
            "TC;>;",
            "Lcom/google/common/collect/n2<",
            "TC;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/break;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/u3$try;->do:Ljava/util/NavigableMap;

    .line 3
    invoke-static {}, Lcom/google/common/collect/n2;->all()Lcom/google/common/collect/n2;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/u3$try;->if:Lcom/google/common/collect/n2;

    return-void
.end method

.method private constructor <init>(Ljava/util/NavigableMap;Lcom/google/common/collect/n2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap<",
            "Lcom/google/common/collect/a<",
            "TC;>;",
            "Lcom/google/common/collect/n2<",
            "TC;>;>;",
            "Lcom/google/common/collect/n2<",
            "Lcom/google/common/collect/a<",
            "TC;>;>;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/google/common/collect/break;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/google/common/collect/u3$try;->do:Ljava/util/NavigableMap;

    .line 6
    iput-object p2, p0, Lcom/google/common/collect/u3$try;->if:Lcom/google/common/collect/n2;

    return-void
.end method

.method private else(Lcom/google/common/collect/n2;)Ljava/util/NavigableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/n2<",
            "Lcom/google/common/collect/a<",
            "TC;>;>;)",
            "Ljava/util/NavigableMap<",
            "Lcom/google/common/collect/a<",
            "TC;>;",
            "Lcom/google/common/collect/n2<",
            "TC;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/u3$try;->if:Lcom/google/common/collect/n2;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/n2;->isConnected(Lcom/google/common/collect/n2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/common/collect/u3$try;

    iget-object v1, p0, Lcom/google/common/collect/u3$try;->do:Ljava/util/NavigableMap;

    iget-object v2, p0, Lcom/google/common/collect/u3$try;->if:Lcom/google/common/collect/n2;

    invoke-virtual {p1, v2}, Lcom/google/common/collect/n2;->intersection(Lcom/google/common/collect/n2;)Lcom/google/common/collect/n2;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/u3$try;-><init>(Ljava/util/NavigableMap;Lcom/google/common/collect/n2;)V

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/common/collect/i1;->of()Lcom/google/common/collect/i1;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic for(Lcom/google/common/collect/u3$try;)Lcom/google/common/collect/n2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/collect/u3$try;->if:Lcom/google/common/collect/n2;

    return-object p0
.end method


# virtual methods
.method public case(Lcom/google/common/collect/a;ZLcom/google/common/collect/a;Z)Ljava/util/NavigableMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/a<",
            "TC;>;Z",
            "Lcom/google/common/collect/a<",
            "TC;>;Z)",
            "Ljava/util/NavigableMap<",
            "Lcom/google/common/collect/a<",
            "TC;>;",
            "Lcom/google/common/collect/n2<",
            "TC;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/common/collect/static;->forBoolean(Z)Lcom/google/common/collect/static;

    move-result-object p2

    .line 2
    invoke-static {p4}, Lcom/google/common/collect/static;->forBoolean(Z)Lcom/google/common/collect/static;

    move-result-object p4

    .line 3
    invoke-static {p1, p2, p3, p4}, Lcom/google/common/collect/n2;->range(Ljava/lang/Comparable;Lcom/google/common/collect/static;Ljava/lang/Comparable;Lcom/google/common/collect/static;)Lcom/google/common/collect/n2;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Lcom/google/common/collect/u3$try;->else(Lcom/google/common/collect/n2;)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-",
            "Lcom/google/common/collect/a<",
            "TC;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/k2;->natural()Lcom/google/common/collect/k2;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/u3$try;->new(Ljava/lang/Object;)Lcom/google/common/collect/n2;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public do()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lcom/google/common/collect/a<",
            "TC;>;",
            "Lcom/google/common/collect/n2<",
            "TC;>;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/u3$try;->if:Lcom/google/common/collect/n2;

    invoke-virtual {v0}, Lcom/google/common/collect/n2;->hasLowerBound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/u3$try;->do:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/u3$try;->do:Ljava/util/NavigableMap;

    iget-object v1, p0, Lcom/google/common/collect/u3$try;->if:Lcom/google/common/collect/n2;

    .line 4
    invoke-virtual {v1}, Lcom/google/common/collect/n2;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/google/common/collect/u3$try;->do:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/u3$try;->if:Lcom/google/common/collect/n2;

    iget-object v1, v1, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/n2;

    iget-object v2, v2, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/a;->isLessThan(Ljava/lang/Comparable;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/google/common/collect/u3$try;->do:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/u3$try;->do:Ljava/util/NavigableMap;

    iget-object v1, p0, Lcom/google/common/collect/u3$try;->if:Lcom/google/common/collect/n2;

    .line 9
    invoke-virtual {v1}, Lcom/google/common/collect/n2;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 12
    :goto_0
    new-instance v1, Lcom/google/common/collect/u3$try$do;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/u3$try$do;-><init>(Lcom/google/common/collect/u3$try;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/u3$try;->new(Ljava/lang/Object;)Lcom/google/common/collect/n2;

    move-result-object p1

    return-object p1
.end method

.method public goto(Lcom/google/common/collect/a;Z)Ljava/util/NavigableMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/a<",
            "TC;>;Z)",
            "Ljava/util/NavigableMap<",
            "Lcom/google/common/collect/a<",
            "TC;>;",
            "Lcom/google/common/collect/n2<",
            "TC;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/common/collect/static;->forBoolean(Z)Lcom/google/common/collect/static;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/common/collect/n2;->downTo(Ljava/lang/Comparable;Lcom/google/common/collect/static;)Lcom/google/common/collect/n2;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/u3$try;->else(Lcom/google/common/collect/n2;)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/collect/a;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/u3$try;->try(Lcom/google/common/collect/a;Z)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public if()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lcom/google/common/collect/a<",
            "TC;>;",
            "Lcom/google/common/collect/n2<",
            "TC;>;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/u3$try;->if:Lcom/google/common/collect/n2;

    invoke-virtual {v0}, Lcom/google/common/collect/n2;->hasUpperBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/u3$try;->do:Ljava/util/NavigableMap;

    iget-object v1, p0, Lcom/google/common/collect/u3$try;->if:Lcom/google/common/collect/n2;

    .line 3
    invoke-virtual {v1}, Lcom/google/common/collect/n2;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/u3$try;->do:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/s1;->g(Ljava/util/Iterator;)Lcom/google/common/collect/PeekingIterator;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/common/collect/u3$try;->if:Lcom/google/common/collect/n2;

    iget-object v1, v1, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    .line 9
    invoke-interface {v0}, Lcom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/n2;

    iget-object v2, v2, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/a;->isLessThan(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    invoke-interface {v0}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    .line 11
    :cond_1
    new-instance v1, Lcom/google/common/collect/u3$try$if;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/u3$try$if;-><init>(Lcom/google/common/collect/u3$try;Lcom/google/common/collect/PeekingIterator;)V

    return-object v1
.end method

.method public isEmpty()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/u3$try;->if:Lcom/google/common/collect/n2;

    invoke-static {}, Lcom/google/common/collect/n2;->all()Lcom/google/common/collect/n2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/n2;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/u3$try;->do:Ljava/util/NavigableMap;

    .line 2
    invoke-interface {v0}, Ljava/util/NavigableMap;->isEmpty()Z

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/u3$try;->do()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public new(Ljava/lang/Object;)Lcom/google/common/collect/n2;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/n2<",
            "TC;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/google/common/collect/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    check-cast p1, Lcom/google/common/collect/a;

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/u3$try;->if:Lcom/google/common/collect/n2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/n2;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/u3$try;->do:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/n2;

    iget-object v2, v2, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/n2;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_1
    return-object v1
.end method

.method public size()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/u3$try;->if:Lcom/google/common/collect/n2;

    invoke-static {}, Lcom/google/common/collect/n2;->all()Lcom/google/common/collect/n2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/n2;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/u3$try;->do:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->size()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/u3$try;->do()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/s1;->m(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/collect/a;

    check-cast p3, Lcom/google/common/collect/a;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/u3$try;->case(Lcom/google/common/collect/a;ZLcom/google/common/collect/a;Z)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/collect/a;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/u3$try;->goto(Lcom/google/common/collect/a;Z)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public try(Lcom/google/common/collect/a;Z)Ljava/util/NavigableMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/a<",
            "TC;>;Z)",
            "Ljava/util/NavigableMap<",
            "Lcom/google/common/collect/a<",
            "TC;>;",
            "Lcom/google/common/collect/n2<",
            "TC;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/common/collect/static;->forBoolean(Z)Lcom/google/common/collect/static;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/common/collect/n2;->upTo(Ljava/lang/Comparable;Lcom/google/common/collect/static;)Lcom/google/common/collect/n2;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/u3$try;->else(Lcom/google/common/collect/n2;)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method
