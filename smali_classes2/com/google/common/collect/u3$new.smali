.class final Lcom/google/common/collect/u3$new;
.super Lcom/google/common/collect/break;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/u3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "new"
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

.field private final for:Lcom/google/common/collect/n2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/n2<",
            "Lcom/google/common/collect/a<",
            "TC;>;>;"
        }
    .end annotation
.end field

.field private final if:Ljava/util/NavigableMap;
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


# direct methods
.method public constructor <init>(Ljava/util/NavigableMap;)V
    .locals 1
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
    invoke-static {}, Lcom/google/common/collect/n2;->all()Lcom/google/common/collect/n2;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/u3$new;-><init>(Ljava/util/NavigableMap;Lcom/google/common/collect/n2;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/NavigableMap;Lcom/google/common/collect/n2;)V
    .locals 1
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

    .line 2
    invoke-direct {p0}, Lcom/google/common/collect/break;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/common/collect/u3$new;->do:Ljava/util/NavigableMap;

    .line 4
    new-instance v0, Lcom/google/common/collect/u3$try;

    invoke-direct {v0, p1}, Lcom/google/common/collect/u3$try;-><init>(Ljava/util/NavigableMap;)V

    iput-object v0, p0, Lcom/google/common/collect/u3$new;->if:Ljava/util/NavigableMap;

    .line 5
    iput-object p2, p0, Lcom/google/common/collect/u3$new;->for:Lcom/google/common/collect/n2;

    return-void
.end method

.method private else(Lcom/google/common/collect/n2;)Ljava/util/NavigableMap;
    .locals 2
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
    iget-object v0, p0, Lcom/google/common/collect/u3$new;->for:Lcom/google/common/collect/n2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/n2;->isConnected(Lcom/google/common/collect/n2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/common/collect/i1;->of()Lcom/google/common/collect/i1;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/u3$new;->for:Lcom/google/common/collect/n2;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/n2;->intersection(Lcom/google/common/collect/n2;)Lcom/google/common/collect/n2;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/google/common/collect/u3$new;

    iget-object v1, p0, Lcom/google/common/collect/u3$new;->do:Ljava/util/NavigableMap;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/u3$new;-><init>(Ljava/util/NavigableMap;Lcom/google/common/collect/n2;)V

    return-object v0
.end method

.method public static synthetic for(Lcom/google/common/collect/u3$new;)Lcom/google/common/collect/n2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/collect/u3$new;->for:Lcom/google/common/collect/n2;

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
    invoke-direct {p0, p1}, Lcom/google/common/collect/u3$new;->else(Lcom/google/common/collect/n2;)Ljava/util/NavigableMap;

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

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/u3$new;->new(Ljava/lang/Object;)Lcom/google/common/collect/n2;

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
    .locals 4
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
    iget-object v0, p0, Lcom/google/common/collect/u3$new;->for:Lcom/google/common/collect/n2;

    invoke-virtual {v0}, Lcom/google/common/collect/n2;->hasLowerBound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/u3$new;->if:Ljava/util/NavigableMap;

    iget-object v1, p0, Lcom/google/common/collect/u3$new;->for:Lcom/google/common/collect/n2;

    .line 3
    invoke-virtual {v1}, Lcom/google/common/collect/n2;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/u3$new;->for:Lcom/google/common/collect/n2;

    .line 4
    invoke-virtual {v2}, Lcom/google/common/collect/n2;->lowerBoundType()Lcom/google/common/collect/static;

    move-result-object v2

    sget-object v3, Lcom/google/common/collect/static;->CLOSED:Lcom/google/common/collect/static;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 5
    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/u3$new;->if:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 8
    :goto_1
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/s1;->g(Ljava/util/Iterator;)Lcom/google/common/collect/PeekingIterator;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/google/common/collect/u3$new;->for:Lcom/google/common/collect/n2;

    invoke-static {}, Lcom/google/common/collect/a;->belowAll()Lcom/google/common/collect/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/n2;->contains(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lcom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/n2;

    iget-object v1, v1, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    invoke-static {}, Lcom/google/common/collect/a;->belowAll()Lcom/google/common/collect/a;

    move-result-object v2

    if-eq v1, v2, :cond_3

    .line 11
    :cond_2
    invoke-static {}, Lcom/google/common/collect/a;->belowAll()Lcom/google/common/collect/a;

    move-result-object v1

    goto :goto_2

    .line 12
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 13
    invoke-interface {v0}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/n2;

    iget-object v1, v1, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    .line 14
    :goto_2
    new-instance v2, Lcom/google/common/collect/u3$new$do;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/common/collect/u3$new$do;-><init>(Lcom/google/common/collect/u3$new;Lcom/google/common/collect/a;Lcom/google/common/collect/PeekingIterator;)V

    return-object v2

    .line 15
    :cond_4
    invoke-static {}, Lcom/google/common/collect/s1;->return()Landroid/support/v4/ac2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Landroid/support/v4/b51;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/u3$new;->new(Ljava/lang/Object;)Lcom/google/common/collect/n2;

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

    invoke-direct {p0, p1}, Lcom/google/common/collect/u3$new;->else(Lcom/google/common/collect/n2;)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/collect/a;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/u3$new;->try(Lcom/google/common/collect/a;Z)Ljava/util/NavigableMap;

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
    iget-object v0, p0, Lcom/google/common/collect/u3$new;->for:Lcom/google/common/collect/n2;

    .line 2
    invoke-virtual {v0}, Lcom/google/common/collect/n2;->hasUpperBound()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/u3$new;->for:Lcom/google/common/collect/n2;

    .line 3
    invoke-virtual {v0}, Lcom/google/common/collect/n2;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/a;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/google/common/collect/a;->aboveAll()Lcom/google/common/collect/a;

    move-result-object v0

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/u3$new;->for:Lcom/google/common/collect/n2;

    .line 6
    invoke-virtual {v1}, Lcom/google/common/collect/n2;->hasUpperBound()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/common/collect/u3$new;->for:Lcom/google/common/collect/n2;

    .line 7
    invoke-virtual {v1}, Lcom/google/common/collect/n2;->upperBoundType()Lcom/google/common/collect/static;

    move-result-object v1

    sget-object v2, Lcom/google/common/collect/static;->CLOSED:Lcom/google/common/collect/static;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 8
    :goto_1
    iget-object v2, p0, Lcom/google/common/collect/u3$new;->if:Ljava/util/NavigableMap;

    .line 9
    invoke-interface {v2, v0, v1}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/google/common/collect/s1;->g(Ljava/util/Iterator;)Lcom/google/common/collect/PeekingIterator;

    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 15
    invoke-interface {v0}, Lcom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/n2;

    iget-object v1, v1, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    invoke-static {}, Lcom/google/common/collect/a;->aboveAll()Lcom/google/common/collect/a;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 16
    invoke-interface {v0}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/n2;

    iget-object v1, v1, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/google/common/collect/u3$new;->do:Ljava/util/NavigableMap;

    .line 17
    invoke-interface {v0}, Lcom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/n2;

    iget-object v2, v2, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    invoke-interface {v1, v2}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/a;

    goto :goto_2

    .line 18
    :cond_3
    iget-object v1, p0, Lcom/google/common/collect/u3$new;->for:Lcom/google/common/collect/n2;

    invoke-static {}, Lcom/google/common/collect/a;->belowAll()Lcom/google/common/collect/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/n2;->contains(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/common/collect/u3$new;->do:Ljava/util/NavigableMap;

    .line 19
    invoke-static {}, Lcom/google/common/collect/a;->belowAll()Lcom/google/common/collect/a;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/NavigableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    .line 20
    :cond_4
    iget-object v1, p0, Lcom/google/common/collect/u3$new;->do:Ljava/util/NavigableMap;

    invoke-static {}, Lcom/google/common/collect/a;->belowAll()Lcom/google/common/collect/a;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/a;

    .line 21
    :goto_2
    invoke-static {}, Lcom/google/common/collect/a;->aboveAll()Lcom/google/common/collect/a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/super;->do(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/a;

    .line 22
    new-instance v2, Lcom/google/common/collect/u3$new$if;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/common/collect/u3$new$if;-><init>(Lcom/google/common/collect/u3$new;Lcom/google/common/collect/a;Lcom/google/common/collect/PeekingIterator;)V

    return-object v2

    .line 23
    :cond_5
    :goto_3
    invoke-static {}, Lcom/google/common/collect/s1;->return()Landroid/support/v4/ac2;

    move-result-object v0

    return-object v0
.end method

.method public new(Ljava/lang/Object;)Lcom/google/common/collect/n2;
    .locals 3
    .annotation runtime Landroid/support/v4/b51;
    .end annotation

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

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    check-cast p1, Lcom/google/common/collect/a;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/u3$new;->goto(Lcom/google/common/collect/a;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/a;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/n2;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    return-object v1
.end method

.method public size()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/u3$new;->do()Ljava/util/Iterator;

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

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/u3$new;->case(Lcom/google/common/collect/a;ZLcom/google/common/collect/a;Z)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/collect/a;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/u3$new;->goto(Lcom/google/common/collect/a;Z)Ljava/util/NavigableMap;

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

    invoke-direct {p0, p1}, Lcom/google/common/collect/u3$new;->else(Lcom/google/common/collect/n2;)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method
