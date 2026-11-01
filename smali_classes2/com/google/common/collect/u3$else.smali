.class final Lcom/google/common/collect/u3$else;
.super Lcom/google/common/collect/break;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/u3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "else"
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
.field private final do:Lcom/google/common/collect/n2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/n2<",
            "Lcom/google/common/collect/a<",
            "TC;>;>;"
        }
    .end annotation
.end field

.field private final for:Ljava/util/NavigableMap;
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
            "TC;>;"
        }
    .end annotation
.end field

.field private final new:Ljava/util/NavigableMap;
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
.method private constructor <init>(Lcom/google/common/collect/n2;Lcom/google/common/collect/n2;Ljava/util/NavigableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/n2<",
            "Lcom/google/common/collect/a<",
            "TC;>;>;",
            "Lcom/google/common/collect/n2<",
            "TC;>;",
            "Ljava/util/NavigableMap<",
            "Lcom/google/common/collect/a<",
            "TC;>;",
            "Lcom/google/common/collect/n2<",
            "TC;>;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/common/collect/break;-><init>()V

    .line 3
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/n2;

    iput-object p1, p0, Lcom/google/common/collect/u3$else;->do:Lcom/google/common/collect/n2;

    .line 4
    invoke-static {p2}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/n2;

    iput-object p1, p0, Lcom/google/common/collect/u3$else;->if:Lcom/google/common/collect/n2;

    .line 5
    invoke-static {p3}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/NavigableMap;

    iput-object p1, p0, Lcom/google/common/collect/u3$else;->for:Ljava/util/NavigableMap;

    .line 6
    new-instance p1, Lcom/google/common/collect/u3$try;

    invoke-direct {p1, p3}, Lcom/google/common/collect/u3$try;-><init>(Ljava/util/NavigableMap;)V

    iput-object p1, p0, Lcom/google/common/collect/u3$else;->new:Ljava/util/NavigableMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/n2;Lcom/google/common/collect/n2;Ljava/util/NavigableMap;Lcom/google/common/collect/u3$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/u3$else;-><init>(Lcom/google/common/collect/n2;Lcom/google/common/collect/n2;Ljava/util/NavigableMap;)V

    return-void
.end method

.method public static synthetic for(Lcom/google/common/collect/u3$else;)Lcom/google/common/collect/n2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/collect/u3$else;->if:Lcom/google/common/collect/n2;

    return-object p0
.end method

.method private goto(Lcom/google/common/collect/n2;)Ljava/util/NavigableMap;
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
    iget-object v0, p0, Lcom/google/common/collect/u3$else;->do:Lcom/google/common/collect/n2;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/n2;->isConnected(Lcom/google/common/collect/n2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/common/collect/i1;->of()Lcom/google/common/collect/i1;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lcom/google/common/collect/u3$else;

    iget-object v1, p0, Lcom/google/common/collect/u3$else;->do:Lcom/google/common/collect/n2;

    .line 4
    invoke-virtual {v1, p1}, Lcom/google/common/collect/n2;->intersection(Lcom/google/common/collect/n2;)Lcom/google/common/collect/n2;

    move-result-object p1

    iget-object v1, p0, Lcom/google/common/collect/u3$else;->if:Lcom/google/common/collect/n2;

    iget-object v2, p0, Lcom/google/common/collect/u3$else;->for:Ljava/util/NavigableMap;

    invoke-direct {v0, p1, v1, v2}, Lcom/google/common/collect/u3$else;-><init>(Lcom/google/common/collect/n2;Lcom/google/common/collect/n2;Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method public static synthetic new(Lcom/google/common/collect/u3$else;)Lcom/google/common/collect/n2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/collect/u3$else;->do:Lcom/google/common/collect/n2;

    return-object p0
.end method


# virtual methods
.method public case(Lcom/google/common/collect/a;Z)Ljava/util/NavigableMap;
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

    invoke-direct {p0, p1}, Lcom/google/common/collect/u3$else;->goto(Lcom/google/common/collect/n2;)Ljava/util/NavigableMap;

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
    invoke-virtual {p0, p1}, Lcom/google/common/collect/u3$else;->try(Ljava/lang/Object;)Lcom/google/common/collect/n2;

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
    .locals 5
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
    iget-object v0, p0, Lcom/google/common/collect/u3$else;->if:Lcom/google/common/collect/n2;

    invoke-virtual {v0}, Lcom/google/common/collect/n2;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/common/collect/s1;->return()Landroid/support/v4/ac2;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/u3$else;->do:Lcom/google/common/collect/n2;

    iget-object v0, v0, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    iget-object v1, p0, Lcom/google/common/collect/u3$else;->if:Lcom/google/common/collect/n2;

    iget-object v1, v1, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/a;->isLessThan(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/google/common/collect/s1;->return()Landroid/support/v4/ac2;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/u3$else;->do:Lcom/google/common/collect/n2;

    iget-object v0, v0, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    iget-object v1, p0, Lcom/google/common/collect/u3$else;->if:Lcom/google/common/collect/n2;

    iget-object v1, v1, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/a;->isLessThan(Ljava/lang/Comparable;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/google/common/collect/u3$else;->new:Ljava/util/NavigableMap;

    iget-object v2, p0, Lcom/google/common/collect/u3$else;->if:Lcom/google/common/collect/n2;

    iget-object v2, v2, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    .line 7
    invoke-interface {v0, v2, v1}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/u3$else;->for:Ljava/util/NavigableMap;

    iget-object v2, p0, Lcom/google/common/collect/u3$else;->do:Lcom/google/common/collect/n2;

    iget-object v2, v2, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    .line 9
    invoke-virtual {v2}, Lcom/google/common/collect/a;->endpoint()Ljava/lang/Comparable;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/u3$else;->do:Lcom/google/common/collect/n2;

    .line 10
    invoke-virtual {v3}, Lcom/google/common/collect/n2;->lowerBoundType()Lcom/google/common/collect/static;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/static;->CLOSED:Lcom/google/common/collect/static;

    if-ne v3, v4, :cond_3

    const/4 v1, 0x1

    .line 11
    :cond_3
    invoke-interface {v0, v2, v1}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 14
    :goto_0
    invoke-static {}, Lcom/google/common/collect/k2;->natural()Lcom/google/common/collect/k2;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/u3$else;->do:Lcom/google/common/collect/n2;

    iget-object v2, v2, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    iget-object v3, p0, Lcom/google/common/collect/u3$else;->if:Lcom/google/common/collect/n2;

    iget-object v3, v3, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    .line 15
    invoke-static {v3}, Lcom/google/common/collect/a;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/a;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/k2;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/a;

    .line 16
    new-instance v2, Lcom/google/common/collect/u3$else$do;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/common/collect/u3$else$do;-><init>(Lcom/google/common/collect/u3$else;Ljava/util/Iterator;Lcom/google/common/collect/a;)V

    return-object v2
.end method

.method public else(Lcom/google/common/collect/a;ZLcom/google/common/collect/a;Z)Ljava/util/NavigableMap;
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
    invoke-direct {p0, p1}, Lcom/google/common/collect/u3$else;->goto(Lcom/google/common/collect/n2;)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .annotation runtime Landroid/support/v4/b51;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/u3$else;->try(Ljava/lang/Object;)Lcom/google/common/collect/n2;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/collect/a;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/u3$else;->case(Lcom/google/common/collect/a;Z)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public if()Ljava/util/Iterator;
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
    iget-object v0, p0, Lcom/google/common/collect/u3$else;->if:Lcom/google/common/collect/n2;

    invoke-virtual {v0}, Lcom/google/common/collect/n2;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/common/collect/s1;->return()Landroid/support/v4/ac2;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/common/collect/k2;->natural()Lcom/google/common/collect/k2;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/u3$else;->do:Lcom/google/common/collect/n2;

    iget-object v1, v1, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    iget-object v2, p0, Lcom/google/common/collect/u3$else;->if:Lcom/google/common/collect/n2;

    iget-object v2, v2, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    .line 4
    invoke-static {v2}, Lcom/google/common/collect/a;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/k2;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/a;

    .line 5
    iget-object v1, p0, Lcom/google/common/collect/u3$else;->for:Ljava/util/NavigableMap;

    .line 6
    invoke-virtual {v0}, Lcom/google/common/collect/a;->endpoint()Ljava/lang/Comparable;

    move-result-object v2

    .line 7
    invoke-virtual {v0}, Lcom/google/common/collect/a;->typeAsUpperBound()Lcom/google/common/collect/static;

    move-result-object v0

    sget-object v3, Lcom/google/common/collect/static;->CLOSED:Lcom/google/common/collect/static;

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 12
    new-instance v1, Lcom/google/common/collect/u3$else$if;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/u3$else$if;-><init>(Lcom/google/common/collect/u3$else;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public size()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/u3$else;->do()Ljava/util/Iterator;

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

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/u3$else;->else(Lcom/google/common/collect/a;ZLcom/google/common/collect/a;Z)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/collect/a;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/u3$else;->this(Lcom/google/common/collect/a;Z)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public this(Lcom/google/common/collect/a;Z)Ljava/util/NavigableMap;
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

    invoke-direct {p0, p1}, Lcom/google/common/collect/u3$else;->goto(Lcom/google/common/collect/n2;)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public try(Ljava/lang/Object;)Lcom/google/common/collect/n2;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
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

    if-eqz v0, :cond_2

    .line 2
    :try_start_0
    check-cast p1, Lcom/google/common/collect/a;

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/u3$else;->do:Lcom/google/common/collect/n2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/n2;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/common/collect/u3$else;->if:Lcom/google/common/collect/n2;

    iget-object v0, v0, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/common/collect/a;->compareTo(Lcom/google/common/collect/a;)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/google/common/collect/u3$else;->if:Lcom/google/common/collect/n2;

    iget-object v0, v0, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/common/collect/a;->compareTo(Lcom/google/common/collect/a;)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/u3$else;->if:Lcom/google/common/collect/n2;

    iget-object v0, v0, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/google/common/collect/u3$else;->for:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Maps;->c0(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/n2;

    if-eqz p1, :cond_2

    .line 8
    iget-object v0, p1, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    iget-object v2, p0, Lcom/google/common/collect/u3$else;->if:Lcom/google/common/collect/n2;

    iget-object v2, v2, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/a;->compareTo(Lcom/google/common/collect/a;)I

    move-result v0

    if-lez v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/google/common/collect/u3$else;->if:Lcom/google/common/collect/n2;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/n2;->intersection(Lcom/google/common/collect/n2;)Lcom/google/common/collect/n2;

    move-result-object p1

    return-object p1

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/u3$else;->for:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/n2;

    if-eqz p1, :cond_2

    .line 11
    iget-object v0, p0, Lcom/google/common/collect/u3$else;->if:Lcom/google/common/collect/n2;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/n2;->intersection(Lcom/google/common/collect/n2;)Lcom/google/common/collect/n2;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_2
    :goto_0
    return-object v1
.end method
