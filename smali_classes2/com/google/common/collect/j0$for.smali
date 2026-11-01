.class final Lcom/google/common/collect/j0$for;
.super Lcom/google/common/collect/j0$goto;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/j0$goto<",
        "TK;TV;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic if:Lcom/google/common/collect/j0;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/j0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/j0$for;->if:Lcom/google/common/collect/j0;

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/j0$goto;-><init>(Lcom/google/common/collect/j0;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 5
    iget-object v2, p0, Lcom/google/common/collect/j0$for;->if:Lcom/google/common/collect/j0;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/j0;->findEntryByKey(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 6
    iget-object v2, p0, Lcom/google/common/collect/j0$for;->if:Lcom/google/common/collect/j0;

    iget-object v2, v2, Lcom/google/common/collect/j0;->values:[Ljava/lang/Object;

    aget-object v0, v2, v0

    invoke-static {p1, v0}, Lcom/google/common/base/throw;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public bridge synthetic do(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/j0$for;->if(I)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public if(I)Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/j0$do;

    iget-object v1, p0, Lcom/google/common/collect/j0$for;->if:Lcom/google/common/collect/j0;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/j0$do;-><init>(Lcom/google/common/collect/j0;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 5
    invoke-static {v0}, Lcom/google/common/collect/n0;->new(Ljava/lang/Object;)I

    move-result v1

    .line 6
    iget-object v2, p0, Lcom/google/common/collect/j0$for;->if:Lcom/google/common/collect/j0;

    invoke-virtual {v2, v0, v1}, Lcom/google/common/collect/j0;->findEntryByKey(Ljava/lang/Object;I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 7
    iget-object v2, p0, Lcom/google/common/collect/j0$for;->if:Lcom/google/common/collect/j0;

    iget-object v2, v2, Lcom/google/common/collect/j0;->values:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {p1, v2}, Lcom/google/common/base/throw;->do(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/google/common/collect/j0$for;->if:Lcom/google/common/collect/j0;

    invoke-virtual {p1, v0, v1}, Lcom/google/common/collect/j0;->removeEntryKeyHashKnown(II)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
