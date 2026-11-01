.class public Lcom/google/common/collect/e1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/RangeMap;
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroid/support/v4/li0;
.end annotation

.annotation build Landroid/support/v4/o8;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/e1$new;,
        Lcom/google/common/collect/e1$for;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable<",
        "*>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/RangeMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final for:Lcom/google/common/collect/e1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/e1<",
            "Ljava/lang/Comparable<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private final transient do:Lcom/google/common/collect/v0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/v0<",
            "Lcom/google/common/collect/n2<",
            "TK;>;>;"
        }
    .end annotation
.end field

.field private final transient if:Lcom/google/common/collect/v0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/v0<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/collect/e1;

    .line 2
    invoke-static {}, Lcom/google/common/collect/v0;->of()Lcom/google/common/collect/v0;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/v0;->of()Lcom/google/common/collect/v0;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/e1;-><init>(Lcom/google/common/collect/v0;Lcom/google/common/collect/v0;)V

    sput-object v0, Lcom/google/common/collect/e1;->for:Lcom/google/common/collect/e1;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/v0;Lcom/google/common/collect/v0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/v0<",
            "Lcom/google/common/collect/n2<",
            "TK;>;>;",
            "Lcom/google/common/collect/v0<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/e1;->do:Lcom/google/common/collect/v0;

    .line 3
    iput-object p2, p0, Lcom/google/common/collect/e1;->if:Lcom/google/common/collect/v0;

    return-void
.end method

.method public static synthetic access$000(Lcom/google/common/collect/e1;)Lcom/google/common/collect/v0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/collect/e1;->do:Lcom/google/common/collect/v0;

    return-object p0
.end method

.method public static builder()Lcom/google/common/collect/e1$for;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "*>;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/e1$for<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/e1$for;

    invoke-direct {v0}, Lcom/google/common/collect/e1$for;-><init>()V

    return-object v0
.end method

.method public static copyOf(Lcom/google/common/collect/RangeMap;)Lcom/google/common/collect/e1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "*>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/RangeMap<",
            "TK;+TV;>;)",
            "Lcom/google/common/collect/e1<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/google/common/collect/e1;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/google/common/collect/e1;

    return-object p0

    .line 3
    :cond_0
    invoke-interface {p0}, Lcom/google/common/collect/RangeMap;->asMapOfRanges()Ljava/util/Map;

    move-result-object p0

    .line 4
    new-instance v0, Lcom/google/common/collect/v0$do;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/v0$do;-><init>(I)V

    .line 5
    new-instance v1, Lcom/google/common/collect/v0$do;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/google/common/collect/v0$do;-><init>(I)V

    .line 6
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/collect/v0$do;->this(Ljava/lang/Object;)Lcom/google/common/collect/v0$do;

    .line 8
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/v0$do;->this(Ljava/lang/Object;)Lcom/google/common/collect/v0$do;

    goto :goto_0

    .line 9
    :cond_1
    new-instance p0, Lcom/google/common/collect/e1;

    invoke-virtual {v0}, Lcom/google/common/collect/v0$do;->const()Lcom/google/common/collect/v0;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/common/collect/v0$do;->const()Lcom/google/common/collect/v0;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/e1;-><init>(Lcom/google/common/collect/v0;Lcom/google/common/collect/v0;)V

    return-object p0
.end method

.method public static of()Lcom/google/common/collect/e1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "*>;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/e1<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/collect/e1;->for:Lcom/google/common/collect/e1;

    return-object v0
.end method

.method public static of(Lcom/google/common/collect/n2;Ljava/lang/Object;)Lcom/google/common/collect/e1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "*>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/n2<",
            "TK;>;TV;)",
            "Lcom/google/common/collect/e1<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/common/collect/e1;

    invoke-static {p0}, Lcom/google/common/collect/v0;->of(Ljava/lang/Object;)Lcom/google/common/collect/v0;

    move-result-object p0

    invoke-static {p1}, Lcom/google/common/collect/v0;->of(Ljava/lang/Object;)Lcom/google/common/collect/v0;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/e1;-><init>(Lcom/google/common/collect/v0;Lcom/google/common/collect/v0;)V

    return-object v0
.end method


# virtual methods
.method public asDescendingMapOfRanges()Lcom/google/common/collect/x0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/x0<",
            "Lcom/google/common/collect/n2<",
            "TK;>;TV;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/e1;->do:Lcom/google/common/collect/v0;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/google/common/collect/x0;->of()Lcom/google/common/collect/x0;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Lcom/google/common/collect/x2;

    iget-object v1, p0, Lcom/google/common/collect/e1;->do:Lcom/google/common/collect/v0;

    .line 5
    invoke-virtual {v1}, Lcom/google/common/collect/v0;->reverse()Lcom/google/common/collect/v0;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/n2;->rangeLexOrdering()Lcom/google/common/collect/k2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/k2;->reverse()Lcom/google/common/collect/k2;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/x2;-><init>(Lcom/google/common/collect/v0;Ljava/util/Comparator;)V

    .line 6
    new-instance v1, Lcom/google/common/collect/i1;

    iget-object v2, p0, Lcom/google/common/collect/e1;->if:Lcom/google/common/collect/v0;

    invoke-virtual {v2}, Lcom/google/common/collect/v0;->reverse()Lcom/google/common/collect/v0;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/common/collect/i1;-><init>(Lcom/google/common/collect/x2;Lcom/google/common/collect/v0;)V

    return-object v1
.end method

.method public bridge synthetic asDescendingMapOfRanges()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/e1;->asDescendingMapOfRanges()Lcom/google/common/collect/x0;

    move-result-object v0

    return-object v0
.end method

.method public asMapOfRanges()Lcom/google/common/collect/x0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/x0<",
            "Lcom/google/common/collect/n2<",
            "TK;>;TV;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/e1;->do:Lcom/google/common/collect/v0;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/google/common/collect/x0;->of()Lcom/google/common/collect/x0;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Lcom/google/common/collect/x2;

    iget-object v1, p0, Lcom/google/common/collect/e1;->do:Lcom/google/common/collect/v0;

    .line 5
    invoke-static {}, Lcom/google/common/collect/n2;->rangeLexOrdering()Lcom/google/common/collect/k2;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/x2;-><init>(Lcom/google/common/collect/v0;Ljava/util/Comparator;)V

    .line 6
    new-instance v1, Lcom/google/common/collect/i1;

    iget-object v2, p0, Lcom/google/common/collect/e1;->if:Lcom/google/common/collect/v0;

    invoke-direct {v1, v0, v2}, Lcom/google/common/collect/i1;-><init>(Lcom/google/common/collect/x2;Lcom/google/common/collect/v0;)V

    return-object v1
.end method

.method public bridge synthetic asMapOfRanges()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/e1;->asMapOfRanges()Lcom/google/common/collect/x0;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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
    invoke-virtual {p0}, Lcom/google/common/collect/e1;->asMapOfRanges()Lcom/google/common/collect/x0;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/RangeMap;->asMapOfRanges()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/x0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public get(Ljava/lang/Comparable;)Ljava/lang/Object;
    .locals 5
    .annotation runtime Landroid/support/v4/b51;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/e1;->do:Lcom/google/common/collect/v0;

    .line 2
    invoke-static {}, Lcom/google/common/collect/n2;->lowerBoundFn()Lcom/google/common/base/Function;

    move-result-object v1

    .line 3
    invoke-static {p1}, Lcom/google/common/collect/a;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/a;

    move-result-object v2

    sget-object v3, Lcom/google/common/collect/g3$for;->ANY_PRESENT:Lcom/google/common/collect/g3$for;

    sget-object v4, Lcom/google/common/collect/g3$if;->NEXT_LOWER:Lcom/google/common/collect/g3$if;

    .line 4
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/collect/g3;->do(Ljava/util/List;Lcom/google/common/base/Function;Ljava/lang/Comparable;Lcom/google/common/collect/g3$for;Lcom/google/common/collect/g3$if;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-object v1

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/e1;->do:Lcom/google/common/collect/v0;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/n2;

    .line 6
    invoke-virtual {v2, p1}, Lcom/google/common/collect/n2;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/common/collect/e1;->if:Lcom/google/common/collect/v0;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getEntry(Ljava/lang/Comparable;)Ljava/util/Map$Entry;
    .locals 5
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
    iget-object v0, p0, Lcom/google/common/collect/e1;->do:Lcom/google/common/collect/v0;

    .line 2
    invoke-static {}, Lcom/google/common/collect/n2;->lowerBoundFn()Lcom/google/common/base/Function;

    move-result-object v1

    .line 3
    invoke-static {p1}, Lcom/google/common/collect/a;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/a;

    move-result-object v2

    sget-object v3, Lcom/google/common/collect/g3$for;->ANY_PRESENT:Lcom/google/common/collect/g3$for;

    sget-object v4, Lcom/google/common/collect/g3$if;->NEXT_LOWER:Lcom/google/common/collect/g3$if;

    .line 4
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/collect/g3;->do(Ljava/util/List;Lcom/google/common/base/Function;Ljava/lang/Comparable;Lcom/google/common/collect/g3$for;Lcom/google/common/collect/g3$if;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-object v1

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/e1;->do:Lcom/google/common/collect/v0;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/n2;

    .line 6
    invoke-virtual {v2, p1}, Lcom/google/common/collect/n2;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/common/collect/e1;->if:Lcom/google/common/collect/v0;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/google/common/collect/Maps;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/e1;->asMapOfRanges()Lcom/google/common/collect/x0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/x0;->hashCode()I

    move-result v0

    return v0
.end method

.method public put(Lcom/google/common/collect/n2;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/n2<",
            "TK;>;TV;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public putAll(Lcom/google/common/collect/RangeMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public putCoalescing(Lcom/google/common/collect/n2;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/n2<",
            "TK;>;TV;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Lcom/google/common/collect/n2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/n2<",
            "TK;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public span()Lcom/google/common/collect/n2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/n2<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/e1;->do:Lcom/google/common/collect/v0;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/e1;->do:Lcom/google/common/collect/v0;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/n2;

    .line 3
    iget-object v1, p0, Lcom/google/common/collect/e1;->do:Lcom/google/common/collect/v0;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/n2;

    .line 4
    iget-object v0, v0, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    iget-object v1, v1, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    invoke-static {v0, v1}, Lcom/google/common/collect/n2;->create(Lcom/google/common/collect/a;Lcom/google/common/collect/a;)Lcom/google/common/collect/n2;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic subRangeMap(Lcom/google/common/collect/n2;)Lcom/google/common/collect/RangeMap;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/e1;->subRangeMap(Lcom/google/common/collect/n2;)Lcom/google/common/collect/e1;

    move-result-object p1

    return-object p1
.end method

.method public subRangeMap(Lcom/google/common/collect/n2;)Lcom/google/common/collect/e1;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/n2<",
            "TK;>;)",
            "Lcom/google/common/collect/e1<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/n2;

    invoke-virtual {v0}, Lcom/google/common/collect/n2;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/google/common/collect/e1;->of()Lcom/google/common/collect/e1;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/e1;->do:Lcom/google/common/collect/v0;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/common/collect/e1;->span()Lcom/google/common/collect/n2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/n2;->encloses(Lcom/google/common/collect/n2;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/e1;->do:Lcom/google/common/collect/v0;

    .line 6
    invoke-static {}, Lcom/google/common/collect/n2;->upperBoundFn()Lcom/google/common/base/Function;

    move-result-object v1

    iget-object v2, p1, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    sget-object v3, Lcom/google/common/collect/g3$for;->FIRST_AFTER:Lcom/google/common/collect/g3$for;

    sget-object v4, Lcom/google/common/collect/g3$if;->NEXT_HIGHER:Lcom/google/common/collect/g3$if;

    .line 7
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/collect/g3;->do(Ljava/util/List;Lcom/google/common/base/Function;Ljava/lang/Comparable;Lcom/google/common/collect/g3$for;Lcom/google/common/collect/g3$if;)I

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/google/common/collect/e1;->do:Lcom/google/common/collect/v0;

    .line 9
    invoke-static {}, Lcom/google/common/collect/n2;->lowerBoundFn()Lcom/google/common/base/Function;

    move-result-object v2

    iget-object v3, p1, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    sget-object v5, Lcom/google/common/collect/g3$for;->ANY_PRESENT:Lcom/google/common/collect/g3$for;

    .line 10
    invoke-static {v1, v2, v3, v5, v4}, Lcom/google/common/collect/g3;->do(Ljava/util/List;Lcom/google/common/base/Function;Ljava/lang/Comparable;Lcom/google/common/collect/g3$for;Lcom/google/common/collect/g3$if;)I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 11
    invoke-static {}, Lcom/google/common/collect/e1;->of()Lcom/google/common/collect/e1;

    move-result-object p1

    return-object p1

    :cond_2
    sub-int v2, v1, v0

    .line 12
    new-instance v5, Lcom/google/common/collect/e1$do;

    invoke-direct {v5, p0, v2, v0, p1}, Lcom/google/common/collect/e1$do;-><init>(Lcom/google/common/collect/e1;IILcom/google/common/collect/n2;)V

    .line 13
    new-instance v2, Lcom/google/common/collect/e1$if;

    iget-object v3, p0, Lcom/google/common/collect/e1;->if:Lcom/google/common/collect/v0;

    invoke-virtual {v3, v0, v1}, Lcom/google/common/collect/v0;->subList(II)Lcom/google/common/collect/v0;

    move-result-object v6

    move-object v3, v2

    move-object v4, p0

    move-object v7, p1

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/google/common/collect/e1$if;-><init>(Lcom/google/common/collect/e1;Lcom/google/common/collect/v0;Lcom/google/common/collect/v0;Lcom/google/common/collect/n2;Lcom/google/common/collect/e1;)V

    return-object v2

    :cond_3
    :goto_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/e1;->asMapOfRanges()Lcom/google/common/collect/x0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/x0;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/collect/e1$new;

    invoke-virtual {p0}, Lcom/google/common/collect/e1;->asMapOfRanges()Lcom/google/common/collect/x0;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/e1$new;-><init>(Lcom/google/common/collect/x0;)V

    return-object v0
.end method
