.class public final Lcom/google/common/collect/t3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/RangeMap;


# annotations
.annotation build Landroid/support/v4/li0;
.end annotation

.annotation build Landroid/support/v4/o8;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/t3$new;,
        Lcom/google/common/collect/t3$if;,
        Lcom/google/common/collect/t3$for;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/RangeMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final if:Lcom/google/common/collect/RangeMap;


# instance fields
.field private final do:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Lcom/google/common/collect/a<",
            "TK;>;",
            "Lcom/google/common/collect/t3$for<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/collect/t3$do;

    invoke-direct {v0}, Lcom/google/common/collect/t3$do;-><init>()V

    sput-object v0, Lcom/google/common/collect/t3;->if:Lcom/google/common/collect/RangeMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/common/collect/Maps;->s()Ljava/util/TreeMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/t3;->do:Ljava/util/NavigableMap;

    return-void
.end method

.method public static case()Lcom/google/common/collect/t3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/t3<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/t3;

    invoke-direct {v0}, Lcom/google/common/collect/t3;-><init>()V

    return-object v0
.end method

.method public static synthetic do(Lcom/google/common/collect/t3;)Ljava/util/NavigableMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/collect/t3;->do:Ljava/util/NavigableMap;

    return-object p0
.end method

.method private else()Lcom/google/common/collect/RangeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/RangeMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/collect/t3;->if:Lcom/google/common/collect/RangeMap;

    return-object v0
.end method

.method public static synthetic for(Lcom/google/common/collect/t3;)Lcom/google/common/collect/RangeMap;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/t3;->else()Lcom/google/common/collect/RangeMap;

    move-result-object p0

    return-object p0
.end method

.method private goto(Lcom/google/common/collect/a;Lcom/google/common/collect/a;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/a<",
            "TK;>;",
            "Lcom/google/common/collect/a<",
            "TK;>;TV;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/t3;->do:Ljava/util/NavigableMap;

    new-instance v1, Lcom/google/common/collect/t3$for;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/common/collect/t3$for;-><init>(Lcom/google/common/collect/a;Lcom/google/common/collect/a;Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic if(Lcom/google/common/collect/t3;Lcom/google/common/collect/n2;Ljava/lang/Object;)Lcom/google/common/collect/n2;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/t3;->try(Lcom/google/common/collect/n2;Ljava/lang/Object;)Lcom/google/common/collect/n2;

    move-result-object p0

    return-object p0
.end method

.method private static new(Lcom/google/common/collect/n2;Ljava/lang/Object;Ljava/util/Map$Entry;)Lcom/google/common/collect/n2;
    .locals 1
    .param p2    # Ljava/util/Map$Entry;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/n2<",
            "TK;>;TV;",
            "Ljava/util/Map$Entry<",
            "Lcom/google/common/collect/a<",
            "TK;>;",
            "Lcom/google/common/collect/t3$for<",
            "TK;TV;>;>;)",
            "Lcom/google/common/collect/n2<",
            "TK;>;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/t3$for;

    invoke-virtual {v0}, Lcom/google/common/collect/t3$for;->if()Lcom/google/common/collect/n2;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/collect/n2;->isConnected(Lcom/google/common/collect/n2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/t3$for;

    invoke-virtual {v0}, Lcom/google/common/collect/t3$for;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/t3$for;

    invoke-virtual {p1}, Lcom/google/common/collect/t3$for;->if()Lcom/google/common/collect/n2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/n2;->span(Lcom/google/common/collect/n2;)Lcom/google/common/collect/n2;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private try(Lcom/google/common/collect/n2;Ljava/lang/Object;)Lcom/google/common/collect/n2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/n2<",
            "TK;>;TV;)",
            "Lcom/google/common/collect/n2<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/t3;->do:Ljava/util/NavigableMap;

    iget-object v1, p1, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    .line 2
    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 3
    invoke-static {p1, p2, v0}, Lcom/google/common/collect/t3;->new(Lcom/google/common/collect/n2;Ljava/lang/Object;Ljava/util/Map$Entry;)Lcom/google/common/collect/n2;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/google/common/collect/t3;->do:Ljava/util/NavigableMap;

    iget-object p1, p1, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    .line 5
    invoke-interface {v1, p1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    .line 6
    invoke-static {v0, p2, p1}, Lcom/google/common/collect/t3;->new(Lcom/google/common/collect/n2;Ljava/lang/Object;Ljava/util/Map$Entry;)Lcom/google/common/collect/n2;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public asDescendingMapOfRanges()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/common/collect/n2<",
            "TK;>;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/t3$if;

    iget-object v1, p0, Lcom/google/common/collect/t3;->do:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/t3$if;-><init>(Lcom/google/common/collect/t3;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public asMapOfRanges()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/common/collect/n2<",
            "TK;>;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/t3$if;

    iget-object v1, p0, Lcom/google/common/collect/t3;->do:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/t3$if;-><init>(Lcom/google/common/collect/t3;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/t3;->do:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->clear()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/google/common/collect/RangeMap;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/common/collect/RangeMap;

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/t3;->asMapOfRanges()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/RangeMap;->asMapOfRanges()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public get(Ljava/lang/Comparable;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Landroid/support/v4/b51;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/t3;->getEntry(Ljava/lang/Comparable;)Ljava/util/Map$Entry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getEntry(Ljava/lang/Comparable;)Ljava/util/Map$Entry;
    .locals 2
    .annotation runtime Landroid/support/v4/b51;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "Lcom/google/common/collect/n2<",
            "TK;>;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/t3;->do:Ljava/util/NavigableMap;

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/a;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/t3$for;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/t3$for;->do(Ljava/lang/Comparable;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/t3;->asMapOfRanges()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public put(Lcom/google/common/collect/n2;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/n2<",
            "TK;>;TV;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/common/collect/n2;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p2}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/common/collect/t3;->remove(Lcom/google/common/collect/n2;)V

    .line 4
    iget-object v0, p0, Lcom/google/common/collect/t3;->do:Ljava/util/NavigableMap;

    iget-object v1, p1, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    new-instance v2, Lcom/google/common/collect/t3$for;

    invoke-direct {v2, p1, p2}, Lcom/google/common/collect/t3$for;-><init>(Lcom/google/common/collect/n2;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public putAll(Lcom/google/common/collect/RangeMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeMap<",
            "TK;TV;>;)V"
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

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/t3;->put(Lcom/google/common/collect/n2;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public putCoalescing(Lcom/google/common/collect/n2;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/n2<",
            "TK;>;TV;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/t3;->do:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/t3;->put(Lcom/google/common/collect/n2;Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    invoke-static {p2}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/t3;->try(Lcom/google/common/collect/n2;Ljava/lang/Object;)Lcom/google/common/collect/n2;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/t3;->put(Lcom/google/common/collect/n2;Ljava/lang/Object;)V

    return-void
.end method

.method public remove(Lcom/google/common/collect/n2;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/n2<",
            "TK;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/common/collect/n2;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/t3;->do:Ljava/util/NavigableMap;

    iget-object v1, p1, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    .line 3
    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/t3$for;

    .line 5
    invoke-virtual {v1}, Lcom/google/common/collect/t3$for;->new()Lcom/google/common/collect/a;

    move-result-object v2

    iget-object v3, p1, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/a;->compareTo(Lcom/google/common/collect/a;)I

    move-result v2

    if-lez v2, :cond_2

    .line 6
    invoke-virtual {v1}, Lcom/google/common/collect/t3$for;->new()Lcom/google/common/collect/a;

    move-result-object v2

    iget-object v3, p1, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/a;->compareTo(Lcom/google/common/collect/a;)I

    move-result v2

    if-lez v2, :cond_1

    .line 7
    iget-object v2, p1, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    .line 8
    invoke-virtual {v1}, Lcom/google/common/collect/t3$for;->new()Lcom/google/common/collect/a;

    move-result-object v3

    .line 9
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/collect/t3$for;

    invoke-virtual {v4}, Lcom/google/common/collect/t3$for;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 10
    invoke-direct {p0, v2, v3, v4}, Lcom/google/common/collect/t3;->goto(Lcom/google/common/collect/a;Lcom/google/common/collect/a;Ljava/lang/Object;)V

    .line 11
    :cond_1
    invoke-virtual {v1}, Lcom/google/common/collect/t3$for;->for()Lcom/google/common/collect/a;

    move-result-object v1

    iget-object v2, p1, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    .line 12
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/t3$for;

    invoke-virtual {v0}, Lcom/google/common/collect/t3$for;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 13
    invoke-direct {p0, v1, v2, v0}, Lcom/google/common/collect/t3;->goto(Lcom/google/common/collect/a;Lcom/google/common/collect/a;Ljava/lang/Object;)V

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/t3;->do:Ljava/util/NavigableMap;

    iget-object v1, p1, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    .line 15
    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 16
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/t3$for;

    .line 17
    invoke-virtual {v1}, Lcom/google/common/collect/t3$for;->new()Lcom/google/common/collect/a;

    move-result-object v2

    iget-object v3, p1, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/a;->compareTo(Lcom/google/common/collect/a;)I

    move-result v2

    if-lez v2, :cond_3

    .line 18
    iget-object v2, p1, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    .line 19
    invoke-virtual {v1}, Lcom/google/common/collect/t3$for;->new()Lcom/google/common/collect/a;

    move-result-object v1

    .line 20
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/t3$for;

    invoke-virtual {v0}, Lcom/google/common/collect/t3$for;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 21
    invoke-direct {p0, v2, v1, v0}, Lcom/google/common/collect/t3;->goto(Lcom/google/common/collect/a;Lcom/google/common/collect/a;Ljava/lang/Object;)V

    .line 22
    :cond_3
    iget-object v0, p0, Lcom/google/common/collect/t3;->do:Ljava/util/NavigableMap;

    iget-object v1, p1, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    iget-object p1, p1, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    invoke-interface {v0, v1, p1}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/SortedMap;->clear()V

    return-void
.end method

.method public span()Lcom/google/common/collect/n2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/n2<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/t3;->do:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/common/collect/t3;->do:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/NavigableMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/t3$for;

    invoke-virtual {v0}, Lcom/google/common/collect/t3$for;->if()Lcom/google/common/collect/n2;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/t3$for;

    invoke-virtual {v1}, Lcom/google/common/collect/t3$for;->if()Lcom/google/common/collect/n2;

    move-result-object v1

    iget-object v1, v1, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    .line 4
    invoke-static {v0, v1}, Lcom/google/common/collect/n2;->create(Lcom/google/common/collect/a;Lcom/google/common/collect/a;)Lcom/google/common/collect/n2;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public subRangeMap(Lcom/google/common/collect/n2;)Lcom/google/common/collect/RangeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/n2<",
            "TK;>;)",
            "Lcom/google/common/collect/RangeMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/n2;->all()Lcom/google/common/collect/n2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/n2;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/google/common/collect/t3$new;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/t3$new;-><init>(Lcom/google/common/collect/t3;Lcom/google/common/collect/n2;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/t3;->do:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
