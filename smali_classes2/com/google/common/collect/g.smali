.class final Lcom/google/common/collect/g;
.super Lcom/google/common/collect/instanceof;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/ki0;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/g$if;
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


# direct methods
.method public constructor <init>(Lcom/google/common/collect/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/f<",
            "TC;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/collect/instanceof;-><init>(Lcom/google/common/collect/f;)V

    return-void
.end method


# virtual methods
.method public asList()Lcom/google/common/collect/v0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/v0<",
            "TC;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/common/collect/v0;->of()Lcom/google/common/collect/v0;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

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
    invoke-static {}, Lcom/google/common/collect/k2;->natural()Lcom/google/common/collect/k2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/k2;->reverse()Lcom/google/common/collect/k2;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/m1;->emptySet(Ljava/util/Comparator;)Lcom/google/common/collect/x2;

    move-result-object v0

    return-object v0
.end method

.method public descendingIterator()Landroid/support/v4/ac2;
    .locals 1
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
    invoke-static {}, Lcom/google/common/collect/s1;->return()Landroid/support/v4/ac2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic descendingIterator()Ljava/util/Iterator;
    .locals 1
    .annotation build Landroid/support/v4/li0;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/g;->descendingIterator()Landroid/support/v4/ac2;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/util/Set;

    .line 3
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public first()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic first()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/g;->first()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

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

    return-object p0
.end method

.method public bridge synthetic headSetImpl(Ljava/lang/Object;Z)Lcom/google/common/collect/m1;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/g;->headSetImpl(Ljava/lang/Comparable;Z)Lcom/google/common/collect/instanceof;

    move-result-object p1

    return-object p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 0
    .annotation build Landroid/support/v4/li0;
    .end annotation

    const/4 p1, -0x1

    return p1
.end method

.method public intersection(Lcom/google/common/collect/instanceof;)Lcom/google/common/collect/instanceof;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/instanceof<",
            "TC;>;)",
            "Lcom/google/common/collect/instanceof<",
            "TC;>;"
        }
    .end annotation

    return-object p0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isHashCodeFast()Z
    .locals 1
    .annotation build Landroid/support/v4/li0;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public isPartialView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Landroid/support/v4/ac2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/ac2<",
            "TC;>;"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/google/common/collect/s1;->return()Landroid/support/v4/ac2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/g;->iterator()Landroid/support/v4/ac2;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic last()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/g;->last()Ljava/lang/Comparable;

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
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public range(Lcom/google/common/collect/static;Lcom/google/common/collect/static;)Lcom/google/common/collect/n2;
    .locals 0
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
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public subSetImpl(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lcom/google/common/collect/instanceof;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;ZTC;Z)",
            "Lcom/google/common/collect/instanceof<",
            "TC;>;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic subSetImpl(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/m1;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Comparable;

    check-cast p3, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/g;->subSetImpl(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lcom/google/common/collect/instanceof;

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

    return-object p0
.end method

.method public bridge synthetic tailSetImpl(Ljava/lang/Object;Z)Lcom/google/common/collect/m1;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/g;->tailSetImpl(Ljava/lang/Comparable;Z)Lcom/google/common/collect/instanceof;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[]"

    return-object v0
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 3
    .annotation build Landroid/support/v4/li0;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/g$if;

    iget-object v1, p0, Lcom/google/common/collect/instanceof;->domain:Lcom/google/common/collect/f;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/g$if;-><init>(Lcom/google/common/collect/f;Lcom/google/common/collect/g$do;)V

    return-object v0
.end method
