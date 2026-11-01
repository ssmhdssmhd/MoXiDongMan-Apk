.class final Lcom/google/common/collect/p2;
.super Lcom/google/common/collect/instanceof;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/ki0;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/p2$new;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Lcom/google/common/collect/instanceof<",
        "TC;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final range:Lcom/google/common/collect/n2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/n2<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/n2;Lcom/google/common/collect/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/n2<",
            "TC;>;",
            "Lcom/google/common/collect/f<",
            "TC;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/google/common/collect/instanceof;-><init>(Lcom/google/common/collect/f;)V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/p2;->range:Lcom/google/common/collect/n2;

    return-void
.end method

.method public static synthetic access$000(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/common/collect/p2;->for(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method private static for(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .locals 0
    .param p1    # Ljava/lang/Comparable;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable<",
            "*>;",
            "Ljava/lang/Comparable<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p0, p1}, Lcom/google/common/collect/n2;->compareOrThrow(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private new(Lcom/google/common/collect/n2;)Lcom/google/common/collect/instanceof;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/n2<",
            "TC;>;)",
            "Lcom/google/common/collect/instanceof<",
            "TC;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/p2;->range:Lcom/google/common/collect/n2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/n2;->isConnected(Lcom/google/common/collect/n2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/p2;->range:Lcom/google/common/collect/n2;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/common/collect/n2;->intersection(Lcom/google/common/collect/n2;)Lcom/google/common/collect/n2;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/collect/instanceof;->domain:Lcom/google/common/collect/f;

    invoke-static {p1, v0}, Lcom/google/common/collect/instanceof;->create(Lcom/google/common/collect/n2;Lcom/google/common/collect/f;)Lcom/google/common/collect/instanceof;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/common/collect/g;

    iget-object v0, p0, Lcom/google/common/collect/instanceof;->domain:Lcom/google/common/collect/f;

    invoke-direct {p1, v0}, Lcom/google/common/collect/g;-><init>(Lcom/google/common/collect/f;)V

    :goto_0
    return-object p1
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/p2;->range:Lcom/google/common/collect/n2;

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/n2;->contains(Ljava/lang/Comparable;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/google/common/collect/extends;->for(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public createAsList()Lcom/google/common/collect/v0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/v0<",
            "TC;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/instanceof;->domain:Lcom/google/common/collect/f;

    iget-boolean v0, v0, Lcom/google/common/collect/f;->supportsFastOffset:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/common/collect/p2$for;

    invoke-direct {v0, p0}, Lcom/google/common/collect/p2$for;-><init>(Lcom/google/common/collect/p2;)V

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/google/common/collect/g1;->createAsList()Lcom/google/common/collect/v0;

    move-result-object v0

    return-object v0
.end method

.method public descendingIterator()Landroid/support/v4/ac2;
    .locals 2
    .annotation build Landroid/support/v4/li0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/ac2<",
            "TC;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/common/collect/p2$if;

    invoke-virtual {p0}, Lcom/google/common/collect/p2;->last()Ljava/lang/Comparable;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/p2$if;-><init>(Lcom/google/common/collect/p2;Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public bridge synthetic descendingIterator()Ljava/util/Iterator;
    .locals 1
    .annotation build Landroid/support/v4/li0;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/p2;->descendingIterator()Landroid/support/v4/ac2;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/common/collect/p2;

    if-eqz v1, :cond_2

    .line 2
    move-object v1, p1

    check-cast v1, Lcom/google/common/collect/p2;

    .line 3
    iget-object v2, p0, Lcom/google/common/collect/instanceof;->domain:Lcom/google/common/collect/f;

    iget-object v3, v1, Lcom/google/common/collect/instanceof;->domain:Lcom/google/common/collect/f;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/google/common/collect/p2;->first()Ljava/lang/Comparable;

    move-result-object p1

    invoke-virtual {v1}, Lcom/google/common/collect/p2;->first()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/p2;->last()Ljava/lang/Comparable;

    move-result-object p1

    invoke-virtual {v1}, Lcom/google/common/collect/p2;->last()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 5
    :cond_2
    invoke-super {p0, p1}, Lcom/google/common/collect/g1;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public first()Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/p2;->range:Lcom/google/common/collect/n2;

    iget-object v0, v0, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    iget-object v1, p0, Lcom/google/common/collect/instanceof;->domain:Lcom/google/common/collect/f;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/a;->leastValueAbove(Lcom/google/common/collect/f;)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic first()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/p2;->first()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/common/collect/c3;->catch(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public headSetImpl(Ljava/lang/Comparable;Z)Lcom/google/common/collect/instanceof;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;Z)",
            "Lcom/google/common/collect/instanceof<",
            "TC;>;"
        }
    .end annotation

    .line 2
    invoke-static {p2}, Lcom/google/common/collect/static;->forBoolean(Z)Lcom/google/common/collect/static;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/common/collect/n2;->upTo(Ljava/lang/Comparable;Lcom/google/common/collect/static;)Lcom/google/common/collect/n2;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/p2;->new(Lcom/google/common/collect/n2;)Lcom/google/common/collect/instanceof;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headSetImpl(Ljava/lang/Object;Z)Lcom/google/common/collect/m1;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/p2;->headSetImpl(Ljava/lang/Comparable;Z)Lcom/google/common/collect/instanceof;

    move-result-object p1

    return-object p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2
    .annotation build Landroid/support/v4/li0;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/p2;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/instanceof;->domain:Lcom/google/common/collect/f;

    invoke-virtual {p0}, Lcom/google/common/collect/p2;->first()Ljava/lang/Comparable;

    move-result-object v1

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/f;->distance(Ljava/lang/Comparable;Ljava/lang/Comparable;)J

    move-result-wide v0

    long-to-int p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public intersection(Lcom/google/common/collect/instanceof;)Lcom/google/common/collect/instanceof;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/instanceof<",
            "TC;>;)",
            "Lcom/google/common/collect/instanceof<",
            "TC;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/instanceof;->domain:Lcom/google/common/collect/f;

    iget-object v1, p1, Lcom/google/common/collect/instanceof;->domain:Lcom/google/common/collect/f;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Landroid/support/v4/af1;->new(Z)V

    .line 3
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 4
    :cond_0
    invoke-static {}, Lcom/google/common/collect/k2;->natural()Lcom/google/common/collect/k2;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/p2;->first()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/common/collect/m1;->first()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/k2;->max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    .line 5
    invoke-static {}, Lcom/google/common/collect/k2;->natural()Lcom/google/common/collect/k2;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/collect/p2;->last()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/common/collect/m1;->last()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/google/common/collect/k2;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    .line 6
    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_1

    .line 7
    invoke-static {v0, p1}, Lcom/google/common/collect/n2;->closed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/n2;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/collect/instanceof;->domain:Lcom/google/common/collect/f;

    invoke-static {p1, v0}, Lcom/google/common/collect/instanceof;->create(Lcom/google/common/collect/n2;Lcom/google/common/collect/f;)Lcom/google/common/collect/instanceof;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/google/common/collect/g;

    iget-object v0, p0, Lcom/google/common/collect/instanceof;->domain:Lcom/google/common/collect/f;

    invoke-direct {p1, v0}, Lcom/google/common/collect/g;-><init>(Lcom/google/common/collect/f;)V

    :goto_0
    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPartialView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Landroid/support/v4/ac2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/ac2<",
            "TC;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/common/collect/p2$do;

    invoke-virtual {p0}, Lcom/google/common/collect/p2;->first()Ljava/lang/Comparable;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/p2$do;-><init>(Lcom/google/common/collect/p2;Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/p2;->iterator()Landroid/support/v4/ac2;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/p2;->range:Lcom/google/common/collect/n2;

    iget-object v0, v0, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    iget-object v1, p0, Lcom/google/common/collect/instanceof;->domain:Lcom/google/common/collect/f;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/a;->greatestValueBelow(Lcom/google/common/collect/f;)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic last()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/p2;->last()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public range()Lcom/google/common/collect/n2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/n2<",
            "TC;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/collect/static;->CLOSED:Lcom/google/common/collect/static;

    invoke-virtual {p0, v0, v0}, Lcom/google/common/collect/p2;->range(Lcom/google/common/collect/static;Lcom/google/common/collect/static;)Lcom/google/common/collect/n2;

    move-result-object v0

    return-object v0
.end method

.method public range(Lcom/google/common/collect/static;Lcom/google/common/collect/static;)Lcom/google/common/collect/n2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/static;",
            "Lcom/google/common/collect/static;",
            ")",
            "Lcom/google/common/collect/n2<",
            "TC;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/p2;->range:Lcom/google/common/collect/n2;

    iget-object v0, v0, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    iget-object v1, p0, Lcom/google/common/collect/instanceof;->domain:Lcom/google/common/collect/f;

    .line 3
    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/a;->withLowerBoundType(Lcom/google/common/collect/static;Lcom/google/common/collect/f;)Lcom/google/common/collect/a;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/collect/p2;->range:Lcom/google/common/collect/n2;

    iget-object v0, v0, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    iget-object v1, p0, Lcom/google/common/collect/instanceof;->domain:Lcom/google/common/collect/f;

    .line 4
    invoke-virtual {v0, p2, v1}, Lcom/google/common/collect/a;->withUpperBoundType(Lcom/google/common/collect/static;Lcom/google/common/collect/f;)Lcom/google/common/collect/a;

    move-result-object p2

    .line 5
    invoke-static {p1, p2}, Lcom/google/common/collect/n2;->create(Lcom/google/common/collect/a;Lcom/google/common/collect/a;)Lcom/google/common/collect/n2;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/instanceof;->domain:Lcom/google/common/collect/f;

    invoke-virtual {p0}, Lcom/google/common/collect/p2;->first()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/collect/p2;->last()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/f;->distance(Ljava/lang/Comparable;Ljava/lang/Comparable;)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    long-to-int v1, v0

    add-int/lit8 v0, v1, 0x1

    :goto_0
    return v0
.end method

.method public subSetImpl(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lcom/google/common/collect/instanceof;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;ZTC;Z)",
            "Lcom/google/common/collect/instanceof<",
            "TC;>;"
        }
    .end annotation

    .line 2
    invoke-interface {p1, p3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    if-nez p4, :cond_0

    .line 3
    new-instance p1, Lcom/google/common/collect/g;

    iget-object p2, p0, Lcom/google/common/collect/instanceof;->domain:Lcom/google/common/collect/f;

    invoke-direct {p1, p2}, Lcom/google/common/collect/g;-><init>(Lcom/google/common/collect/f;)V

    return-object p1

    .line 4
    :cond_0
    invoke-static {p2}, Lcom/google/common/collect/static;->forBoolean(Z)Lcom/google/common/collect/static;

    move-result-object p2

    .line 5
    invoke-static {p4}, Lcom/google/common/collect/static;->forBoolean(Z)Lcom/google/common/collect/static;

    move-result-object p4

    .line 6
    invoke-static {p1, p2, p3, p4}, Lcom/google/common/collect/n2;->range(Ljava/lang/Comparable;Lcom/google/common/collect/static;Ljava/lang/Comparable;Lcom/google/common/collect/static;)Lcom/google/common/collect/n2;

    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Lcom/google/common/collect/p2;->new(Lcom/google/common/collect/n2;)Lcom/google/common/collect/instanceof;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subSetImpl(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/m1;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Comparable;

    check-cast p3, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/p2;->subSetImpl(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lcom/google/common/collect/instanceof;

    move-result-object p1

    return-object p1
.end method

.method public tailSetImpl(Ljava/lang/Comparable;Z)Lcom/google/common/collect/instanceof;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;Z)",
            "Lcom/google/common/collect/instanceof<",
            "TC;>;"
        }
    .end annotation

    .line 2
    invoke-static {p2}, Lcom/google/common/collect/static;->forBoolean(Z)Lcom/google/common/collect/static;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/common/collect/n2;->downTo(Ljava/lang/Comparable;Lcom/google/common/collect/static;)Lcom/google/common/collect/n2;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/p2;->new(Lcom/google/common/collect/n2;)Lcom/google/common/collect/instanceof;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailSetImpl(Ljava/lang/Object;Z)Lcom/google/common/collect/m1;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/p2;->tailSetImpl(Ljava/lang/Comparable;Z)Lcom/google/common/collect/instanceof;

    move-result-object p1

    return-object p1
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 4
    .annotation build Landroid/support/v4/li0;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/p2$new;

    iget-object v1, p0, Lcom/google/common/collect/p2;->range:Lcom/google/common/collect/n2;

    iget-object v2, p0, Lcom/google/common/collect/instanceof;->domain:Lcom/google/common/collect/f;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/collect/p2$new;-><init>(Lcom/google/common/collect/n2;Lcom/google/common/collect/f;Lcom/google/common/collect/p2$do;)V

    return-object v0
.end method
