.class Lcom/google/common/collect/try$class;
.super Lcom/google/common/collect/try$catch;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "class"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/try$class$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/try<",
        "TK;TV;>.catch;",
        "Ljava/util/List<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic case:Lcom/google/common/collect/try;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/try;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/try$catch;)V
    .locals 0
    .param p1    # Lcom/google/common/collect/try;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/List<",
            "TV;>;",
            "Lcom/google/common/collect/try<",
            "TK;TV;>.catch;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/try$class;->case:Lcom/google/common/collect/try;

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/try$catch;-><init>(Lcom/google/common/collect/try;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/try$catch;)V

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/try$catch;->try()V

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/try$catch;->for()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/try$class;->else()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/google/common/collect/try$class;->case:Lcom/google/common/collect/try;

    invoke-static {p1}, Lcom/google/common/collect/try;->access$208(Lcom/google/common/collect/try;)I

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/common/collect/try$catch;->do()V

    :cond_0
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/try$catch;->size()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/try$class;->else()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/common/collect/try$catch;->for()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    .line 5
    iget-object v1, p0, Lcom/google/common/collect/try$class;->case:Lcom/google/common/collect/try;

    invoke-static {v1}, Lcom/google/common/collect/try;->access$200(Lcom/google/common/collect/try;)I

    move-result v2

    sub-int/2addr p2, v0

    add-int/2addr v2, p2

    invoke-static {v1, v2}, Lcom/google/common/collect/try;->access$202(Lcom/google/common/collect/try;I)I

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/google/common/collect/try$catch;->do()V

    :cond_1
    return p1
.end method

.method public else()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/try$catch;->for()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/try$catch;->try()V

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/try$class;->else()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/try$catch;->try()V

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/try$class;->else()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/try$catch;->try()V

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/try$class;->else()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/try$catch;->try()V

    .line 2
    new-instance v0, Lcom/google/common/collect/try$class$do;

    invoke-direct {v0, p0}, Lcom/google/common/collect/try$class$do;-><init>(Lcom/google/common/collect/try$class;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TV;>;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/try$catch;->try()V

    .line 4
    new-instance v0, Lcom/google/common/collect/try$class$do;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/try$class$do;-><init>(Lcom/google/common/collect/try$class;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/try$catch;->try()V

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/try$class;->else()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/try$class;->case:Lcom/google/common/collect/try;

    invoke-static {v0}, Lcom/google/common/collect/try;->access$210(Lcom/google/common/collect/try;)I

    .line 4
    invoke-virtual {p0}, Lcom/google/common/collect/try$catch;->case()V

    return-object p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/try$catch;->try()V

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/try$class;->else()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public subList(II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/try$catch;->try()V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/try$class;->case:Lcom/google/common/collect/try;

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/try$catch;->new()Ljava/lang/Object;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/google/common/collect/try$class;->else()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lcom/google/common/collect/try$catch;->if()Lcom/google/common/collect/try$catch;

    move-result-object p2

    if-nez p2, :cond_0

    move-object p2, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/try$catch;->if()Lcom/google/common/collect/try$catch;

    move-result-object p2

    .line 6
    :goto_0
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/common/collect/try;->wrapList(Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/try$catch;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
