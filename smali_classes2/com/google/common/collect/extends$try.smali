.class Lcom/google/common/collect/extends$try;
.super Lcom/google/common/collect/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/extends;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "try"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/for<",
        "Ljava/util/List<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field public case:I

.field public final for:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final new:[I

.field public final try:[I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/for;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/common/collect/extends$try;->for:Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 4
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/common/collect/extends$try;->new:[I

    .line 5
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/common/collect/extends$try;->try:[I

    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    const/4 v0, 0x1

    .line 7
    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([II)V

    const p1, 0x7fffffff

    .line 8
    iput p1, p0, Lcom/google/common/collect/extends$try;->case:I

    return-void
.end method


# virtual methods
.method public case()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/extends$try;->try:[I

    iget v1, p0, Lcom/google/common/collect/extends$try;->case:I

    aget v2, v0, v1

    neg-int v2, v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, -0x1

    .line 2
    iput v1, p0, Lcom/google/common/collect/extends$try;->case:I

    return-void
.end method

.method public bridge synthetic do()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/extends$try;->try()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public new()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/extends$try;->for:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/extends$try;->case:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/extends$try;->new:[I

    iget v2, p0, Lcom/google/common/collect/extends$try;->case:I

    aget v3, v1, v2

    iget-object v4, p0, Lcom/google/common/collect/extends$try;->try:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    if-gez v3, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/extends$try;->case()V

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v2, 0x1

    if-ne v3, v4, :cond_3

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 4
    invoke-virtual {p0}, Lcom/google/common/collect/extends$try;->case()V

    goto :goto_0

    .line 5
    :cond_3
    iget-object v4, p0, Lcom/google/common/collect/extends$try;->for:Ljava/util/List;

    aget v1, v1, v2

    sub-int v1, v2, v1

    add-int/2addr v1, v0

    sub-int/2addr v2, v3

    add-int/2addr v2, v0

    invoke-static {v4, v1, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 6
    iget-object v0, p0, Lcom/google/common/collect/extends$try;->new:[I

    iget v1, p0, Lcom/google/common/collect/extends$try;->case:I

    aput v3, v0, v1

    :goto_1
    return-void
.end method

.method public try()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/collect/extends$try;->case:I

    if-gtz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/for;->if()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/extends$try;->for:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/v0;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/v0;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/google/common/collect/extends$try;->new()V

    return-object v0
.end method
