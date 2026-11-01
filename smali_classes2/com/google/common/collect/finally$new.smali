.class Lcom/google/common/collect/finally$new;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/finally;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "new"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/common/collect/finally;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/finally;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/finally$new;->do:Lcom/google/common/collect/finally;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/finally$new;->do:Lcom/google/common/collect/finally;

    invoke-virtual {v0}, Lcom/google/common/collect/finally;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/finally$new;->do:Lcom/google/common/collect/finally;

    invoke-virtual {v0}, Lcom/google/common/collect/finally;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Ljava/util/Map$Entry;

    .line 5
    iget-object v0, p0, Lcom/google/common/collect/finally$new;->do:Lcom/google/common/collect/finally;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/collect/finally;->access$400(Lcom/google/common/collect/finally;Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 6
    iget-object v2, p0, Lcom/google/common/collect/finally$new;->do:Lcom/google/common/collect/finally;

    iget-object v2, v2, Lcom/google/common/collect/finally;->values:[Ljava/lang/Object;

    aget-object v0, v2, v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/base/throw;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/finally$new;->do:Lcom/google/common/collect/finally;

    invoke-virtual {v0}, Lcom/google/common/collect/finally;->entrySetIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/finally$new;->do:Lcom/google/common/collect/finally;

    invoke-virtual {v0}, Lcom/google/common/collect/finally;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 4
    check-cast p1, Ljava/util/Map$Entry;

    .line 5
    iget-object v0, p0, Lcom/google/common/collect/finally$new;->do:Lcom/google/common/collect/finally;

    invoke-virtual {v0}, Lcom/google/common/collect/finally;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/finally$new;->do:Lcom/google/common/collect/finally;

    invoke-static {v0}, Lcom/google/common/collect/finally;->access$500(Lcom/google/common/collect/finally;)I

    move-result v0

    .line 7
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    iget-object p1, p0, Lcom/google/common/collect/finally$new;->do:Lcom/google/common/collect/finally;

    invoke-static {p1}, Lcom/google/common/collect/finally;->access$600(Lcom/google/common/collect/finally;)Ljava/lang/Object;

    move-result-object v5

    iget-object p1, p0, Lcom/google/common/collect/finally$new;->do:Lcom/google/common/collect/finally;

    iget-object v6, p1, Lcom/google/common/collect/finally;->entries:[I

    iget-object v7, p1, Lcom/google/common/collect/finally;->keys:[Ljava/lang/Object;

    iget-object v8, p1, Lcom/google/common/collect/finally;->values:[Ljava/lang/Object;

    move v4, v0

    .line 8
    invoke-static/range {v2 .. v8}, Lcom/google/common/collect/private;->case(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    return v1

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/google/common/collect/finally$new;->do:Lcom/google/common/collect/finally;

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/finally;->moveLastEntry(II)V

    .line 10
    iget-object p1, p0, Lcom/google/common/collect/finally$new;->do:Lcom/google/common/collect/finally;

    invoke-static {p1}, Lcom/google/common/collect/finally;->access$710(Lcom/google/common/collect/finally;)I

    .line 11
    iget-object p1, p0, Lcom/google/common/collect/finally$new;->do:Lcom/google/common/collect/finally;

    invoke-virtual {p1}, Lcom/google/common/collect/finally;->incrementModCount()V

    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/finally$new;->do:Lcom/google/common/collect/finally;

    invoke-virtual {v0}, Lcom/google/common/collect/finally;->size()I

    move-result v0

    return v0
.end method
