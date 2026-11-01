.class public abstract Lcom/google/common/collect/instanceof;
.super Lcom/google/common/collect/m1;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/ki0;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Lcom/google/common/collect/m1<",
        "TC;>;"
    }
.end annotation


# instance fields
.field public final domain:Lcom/google/common/collect/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/f<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/f<",
            "TC;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/k2;->natural()Lcom/google/common/collect/k2;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/m1;-><init>(Ljava/util/Comparator;)V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/instanceof;->domain:Lcom/google/common/collect/f;

    return-void
.end method

.method public static builder()Lcom/google/common/collect/m1$do;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/m1$do<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static closed(II)Lcom/google/common/collect/instanceof;
    .locals 0
    .annotation build Landroid/support/v4/o8;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/instanceof<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/n2;->closed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/n2;

    move-result-object p0

    invoke-static {}, Lcom/google/common/collect/f;->integers()Lcom/google/common/collect/f;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/instanceof;->create(Lcom/google/common/collect/n2;Lcom/google/common/collect/f;)Lcom/google/common/collect/instanceof;

    move-result-object p0

    return-object p0
.end method

.method public static closed(JJ)Lcom/google/common/collect/instanceof;
    .locals 0
    .annotation build Landroid/support/v4/o8;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lcom/google/common/collect/instanceof<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/n2;->closed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/n2;

    move-result-object p0

    invoke-static {}, Lcom/google/common/collect/f;->longs()Lcom/google/common/collect/f;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/instanceof;->create(Lcom/google/common/collect/n2;Lcom/google/common/collect/f;)Lcom/google/common/collect/instanceof;

    move-result-object p0

    return-object p0
.end method

.method public static closedOpen(II)Lcom/google/common/collect/instanceof;
    .locals 0
    .annotation build Landroid/support/v4/o8;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/instanceof<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/n2;->closedOpen(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/n2;

    move-result-object p0

    invoke-static {}, Lcom/google/common/collect/f;->integers()Lcom/google/common/collect/f;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/instanceof;->create(Lcom/google/common/collect/n2;Lcom/google/common/collect/f;)Lcom/google/common/collect/instanceof;

    move-result-object p0

    return-object p0
.end method

.method public static closedOpen(JJ)Lcom/google/common/collect/instanceof;
    .locals 0
    .annotation build Landroid/support/v4/o8;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lcom/google/common/collect/instanceof<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/n2;->closedOpen(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/n2;

    move-result-object p0

    invoke-static {}, Lcom/google/common/collect/f;->longs()Lcom/google/common/collect/f;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/instanceof;->create(Lcom/google/common/collect/n2;Lcom/google/common/collect/f;)Lcom/google/common/collect/instanceof;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lcom/google/common/collect/n2;Lcom/google/common/collect/f;)Lcom/google/common/collect/instanceof;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(",
            "Lcom/google/common/collect/n2<",
            "TC;>;",
            "Lcom/google/common/collect/f<",
            "TC;>;)",
            "Lcom/google/common/collect/instanceof<",
            "TC;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/n2;->hasLowerBound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/google/common/collect/f;->minValue()Ljava/lang/Comparable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/n2;->atLeast(Ljava/lang/Comparable;)Lcom/google/common/collect/n2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/n2;->intersection(Lcom/google/common/collect/n2;)Lcom/google/common/collect/n2;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/google/common/collect/n2;->hasUpperBound()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/google/common/collect/f;->maxValue()Ljava/lang/Comparable;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/n2;->atMost(Ljava/lang/Comparable;)Lcom/google/common/collect/n2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/n2;->intersection(Lcom/google/common/collect/n2;)Lcom/google/common/collect/n2;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/n2;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/common/collect/n2;->lowerBound:Lcom/google/common/collect/a;

    .line 8
    invoke-virtual {v1, p1}, Lcom/google/common/collect/a;->leastValueAbove(Lcom/google/common/collect/f;)Ljava/lang/Comparable;

    move-result-object v1

    iget-object p0, p0, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/common/collect/a;->greatestValueBelow(Lcom/google/common/collect/f;)Ljava/lang/Comparable;

    move-result-object p0

    .line 10
    invoke-static {v1, p0}, Lcom/google/common/collect/n2;->compareOrThrow(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    if-lez p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p0, 0x1

    :goto_2
    if-eqz p0, :cond_4

    .line 11
    new-instance p0, Lcom/google/common/collect/g;

    invoke-direct {p0, p1}, Lcom/google/common/collect/g;-><init>(Lcom/google/common/collect/f;)V

    goto :goto_3

    :cond_4
    new-instance p0, Lcom/google/common/collect/p2;

    invoke-direct {p0, v0, p1}, Lcom/google/common/collect/p2;-><init>(Lcom/google/common/collect/n2;Lcom/google/common/collect/f;)V

    :goto_3
    return-object p0

    :catch_0
    move-exception p0

    .line 12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public createDescendingSet()Lcom/google/common/collect/m1;
    .locals 1
    .annotation build Landroid/support/v4/li0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/m1<",
            "TC;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/d;

    invoke-direct {v0, p0}, Lcom/google/common/collect/d;-><init>(Lcom/google/common/collect/m1;)V

    return-object v0
.end method

.method public headSet(Ljava/lang/Comparable;)Lcom/google/common/collect/instanceof;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lcom/google/common/collect/instanceof<",
            "TC;>;"
        }
    .end annotation

    .line 5
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/instanceof;->headSetImpl(Ljava/lang/Comparable;Z)Lcom/google/common/collect/instanceof;

    move-result-object p1

    return-object p1
.end method

.method public headSet(Ljava/lang/Comparable;Z)Lcom/google/common/collect/instanceof;
    .locals 0
    .annotation build Landroid/support/v4/li0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;Z)",
            "Lcom/google/common/collect/instanceof<",
            "TC;>;"
        }
    .end annotation

    .line 6
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/instanceof;->headSetImpl(Ljava/lang/Comparable;Z)Lcom/google/common/collect/instanceof;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;)Lcom/google/common/collect/m1;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/instanceof;->headSet(Ljava/lang/Comparable;)Lcom/google/common/collect/instanceof;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;Z)Lcom/google/common/collect/m1;
    .locals 0
    .annotation build Landroid/support/v4/li0;
    .end annotation

    .line 2
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/instanceof;->headSet(Ljava/lang/Comparable;Z)Lcom/google/common/collect/instanceof;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0
    .annotation build Landroid/support/v4/li0;
    .end annotation

    .line 3
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/instanceof;->headSet(Ljava/lang/Comparable;Z)Lcom/google/common/collect/instanceof;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 4
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/instanceof;->headSet(Ljava/lang/Comparable;)Lcom/google/common/collect/instanceof;

    move-result-object p1

    return-object p1
.end method

.method public abstract headSetImpl(Ljava/lang/Comparable;Z)Lcom/google/common/collect/instanceof;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;Z)",
            "Lcom/google/common/collect/instanceof<",
            "TC;>;"
        }
    .end annotation
.end method

.method public bridge synthetic headSetImpl(Ljava/lang/Object;Z)Lcom/google/common/collect/m1;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/instanceof;->headSetImpl(Ljava/lang/Comparable;Z)Lcom/google/common/collect/instanceof;

    move-result-object p1

    return-object p1
.end method

.method public abstract intersection(Lcom/google/common/collect/instanceof;)Lcom/google/common/collect/instanceof;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/instanceof<",
            "TC;>;)",
            "Lcom/google/common/collect/instanceof<",
            "TC;>;"
        }
    .end annotation
.end method

.method public abstract range()Lcom/google/common/collect/n2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/n2<",
            "TC;>;"
        }
    .end annotation
.end method

.method public abstract range(Lcom/google/common/collect/static;Lcom/google/common/collect/static;)Lcom/google/common/collect/n2;
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
.end method

.method public subSet(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/instanceof;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TC;)",
            "Lcom/google/common/collect/instanceof<",
            "TC;>;"
        }
    .end annotation

    .line 5
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p2}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Lcom/google/common/collect/m1;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/support/v4/af1;->new(Z)V

    .line 8
    invoke-virtual {p0, p1, v1, p2, v2}, Lcom/google/common/collect/instanceof;->subSetImpl(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lcom/google/common/collect/instanceof;

    move-result-object p1

    return-object p1
.end method

.method public subSet(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lcom/google/common/collect/instanceof;
    .locals 1
    .annotation build Landroid/support/v4/li0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;ZTC;Z)",
            "Lcom/google/common/collect/instanceof<",
            "TC;>;"
        }
    .end annotation

    .line 9
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {p3}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p0}, Lcom/google/common/collect/m1;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/support/v4/af1;->new(Z)V

    .line 12
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/instanceof;->subSetImpl(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lcom/google/common/collect/instanceof;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/m1;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/instanceof;->subSet(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/instanceof;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/m1;
    .locals 0
    .annotation build Landroid/support/v4/li0;
    .end annotation

    .line 2
    check-cast p1, Ljava/lang/Comparable;

    check-cast p3, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/instanceof;->subSet(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lcom/google/common/collect/instanceof;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0
    .annotation build Landroid/support/v4/li0;
    .end annotation

    .line 3
    check-cast p1, Ljava/lang/Comparable;

    check-cast p3, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/instanceof;->subSet(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lcom/google/common/collect/instanceof;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 4
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/instanceof;->subSet(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/instanceof;

    move-result-object p1

    return-object p1
.end method

.method public abstract subSetImpl(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lcom/google/common/collect/instanceof;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;ZTC;Z)",
            "Lcom/google/common/collect/instanceof<",
            "TC;>;"
        }
    .end annotation
.end method

.method public bridge synthetic subSetImpl(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/m1;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Comparable;

    check-cast p3, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/instanceof;->subSetImpl(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lcom/google/common/collect/instanceof;

    move-result-object p1

    return-object p1
.end method

.method public tailSet(Ljava/lang/Comparable;)Lcom/google/common/collect/instanceof;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lcom/google/common/collect/instanceof<",
            "TC;>;"
        }
    .end annotation

    .line 5
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/instanceof;->tailSetImpl(Ljava/lang/Comparable;Z)Lcom/google/common/collect/instanceof;

    move-result-object p1

    return-object p1
.end method

.method public tailSet(Ljava/lang/Comparable;Z)Lcom/google/common/collect/instanceof;
    .locals 0
    .annotation build Landroid/support/v4/li0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;Z)",
            "Lcom/google/common/collect/instanceof<",
            "TC;>;"
        }
    .end annotation

    .line 6
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/instanceof;->tailSetImpl(Ljava/lang/Comparable;Z)Lcom/google/common/collect/instanceof;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;)Lcom/google/common/collect/m1;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/instanceof;->tailSet(Ljava/lang/Comparable;)Lcom/google/common/collect/instanceof;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;Z)Lcom/google/common/collect/m1;
    .locals 0
    .annotation build Landroid/support/v4/li0;
    .end annotation

    .line 2
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/instanceof;->tailSet(Ljava/lang/Comparable;Z)Lcom/google/common/collect/instanceof;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0
    .annotation build Landroid/support/v4/li0;
    .end annotation

    .line 3
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/instanceof;->tailSet(Ljava/lang/Comparable;Z)Lcom/google/common/collect/instanceof;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 4
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/instanceof;->tailSet(Ljava/lang/Comparable;)Lcom/google/common/collect/instanceof;

    move-result-object p1

    return-object p1
.end method

.method public abstract tailSetImpl(Ljava/lang/Comparable;Z)Lcom/google/common/collect/instanceof;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;Z)",
            "Lcom/google/common/collect/instanceof<",
            "TC;>;"
        }
    .end annotation
.end method

.method public bridge synthetic tailSetImpl(Ljava/lang/Object;Z)Lcom/google/common/collect/m1;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/instanceof;->tailSetImpl(Ljava/lang/Comparable;Z)Lcom/google/common/collect/instanceof;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/instanceof;->range()Lcom/google/common/collect/n2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/n2;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
