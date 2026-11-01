.class final Lcom/google/common/collect/d;
.super Lcom/google/common/collect/m1;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/li0;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/m1<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final forward:Lcom/google/common/collect/m1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/m1<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/m1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/m1<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/common/collect/m1;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/k2;->from(Ljava/util/Comparator;)Lcom/google/common/collect/k2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/k2;->reverse()Lcom/google/common/collect/k2;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/m1;-><init>(Ljava/util/Comparator;)V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/d;->forward:Lcom/google/common/collect/m1;

    return-void
.end method


# virtual methods
.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/d;->forward:Lcom/google/common/collect/m1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/m1;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/d;->forward:Lcom/google/common/collect/m1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/r0;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public createDescendingSet()Lcom/google/common/collect/m1;
    .locals 2
    .annotation build Landroid/support/v4/li0;
        value = "NavigableSet"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/m1<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public descendingIterator()Landroid/support/v4/ac2;
    .locals 1
    .annotation build Landroid/support/v4/li0;
        value = "NavigableSet"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/ac2<",
            "TE;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/d;->forward:Lcom/google/common/collect/m1;

    invoke-virtual {v0}, Lcom/google/common/collect/m1;->iterator()Landroid/support/v4/ac2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic descendingIterator()Ljava/util/Iterator;
    .locals 1
    .annotation build Landroid/support/v4/li0;
        value = "NavigableSet"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/d;->descendingIterator()Landroid/support/v4/ac2;

    move-result-object v0

    return-object v0
.end method

.method public descendingSet()Lcom/google/common/collect/m1;
    .locals 1
    .annotation build Landroid/support/v4/li0;
        value = "NavigableSet"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/m1<",
            "TE;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/d;->forward:Lcom/google/common/collect/m1;

    return-object v0
.end method

.method public bridge synthetic descendingSet()Ljava/util/NavigableSet;
    .locals 1
    .annotation build Landroid/support/v4/li0;
        value = "NavigableSet"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/d;->descendingSet()Lcom/google/common/collect/m1;

    move-result-object v0

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/d;->forward:Lcom/google/common/collect/m1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/m1;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public headSetImpl(Ljava/lang/Object;Z)Lcom/google/common/collect/m1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lcom/google/common/collect/m1<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/d;->forward:Lcom/google/common/collect/m1;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/m1;->tailSet(Ljava/lang/Object;Z)Lcom/google/common/collect/m1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/m1;->descendingSet()Lcom/google/common/collect/m1;

    move-result-object p1

    return-object p1
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/d;->forward:Lcom/google/common/collect/m1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/m1;->lower(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/d;->forward:Lcom/google/common/collect/m1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/m1;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/d;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0
.end method

.method public isPartialView()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/d;->forward:Lcom/google/common/collect/m1;

    invoke-virtual {v0}, Lcom/google/common/collect/r0;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public iterator()Landroid/support/v4/ac2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/ac2<",
            "TE;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/d;->forward:Lcom/google/common/collect/m1;

    invoke-virtual {v0}, Lcom/google/common/collect/m1;->descendingIterator()Landroid/support/v4/ac2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/d;->iterator()Landroid/support/v4/ac2;

    move-result-object v0

    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/d;->forward:Lcom/google/common/collect/m1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/m1;->higher(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/d;->forward:Lcom/google/common/collect/m1;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method

.method public subSetImpl(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/m1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Lcom/google/common/collect/m1<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/d;->forward:Lcom/google/common/collect/m1;

    invoke-virtual {v0, p3, p4, p1, p2}, Lcom/google/common/collect/m1;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/m1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/m1;->descendingSet()Lcom/google/common/collect/m1;

    move-result-object p1

    return-object p1
.end method

.method public tailSetImpl(Ljava/lang/Object;Z)Lcom/google/common/collect/m1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lcom/google/common/collect/m1<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/d;->forward:Lcom/google/common/collect/m1;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/m1;->headSet(Ljava/lang/Object;Z)Lcom/google/common/collect/m1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/m1;->descendingSet()Lcom/google/common/collect/m1;

    move-result-object p1

    return-object p1
.end method
