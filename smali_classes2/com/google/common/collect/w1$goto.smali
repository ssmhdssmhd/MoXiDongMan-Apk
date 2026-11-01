.class Lcom/google/common/collect/w1$goto;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/w1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "goto"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic case:Lcom/google/common/collect/w1;

.field public do:I

.field public for:Lcom/google/common/collect/w1$else;
    .annotation runtime Landroid/support/v4/b51;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/w1$else<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public if:Lcom/google/common/collect/w1$else;
    .annotation runtime Landroid/support/v4/b51;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/w1$else<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public new:Lcom/google/common/collect/w1$else;
    .annotation runtime Landroid/support/v4/b51;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/w1$else<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public try:I


# direct methods
.method public constructor <init>(Lcom/google/common/collect/w1;I)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/w1$goto;->case:Lcom/google/common/collect/w1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/w1;->access$000(Lcom/google/common/collect/w1;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/w1$goto;->try:I

    .line 3
    invoke-virtual {p1}, Lcom/google/common/collect/w1;->size()I

    move-result v0

    .line 4
    invoke-static {p2, v0}, Landroid/support/v4/af1;->q(II)I

    .line 5
    div-int/lit8 v1, v0, 0x2

    if-lt p2, v1, :cond_0

    .line 6
    invoke-static {p1}, Lcom/google/common/collect/w1;->access$100(Lcom/google/common/collect/w1;)Lcom/google/common/collect/w1$else;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/w1$goto;->new:Lcom/google/common/collect/w1$else;

    .line 7
    iput v0, p0, Lcom/google/common/collect/w1$goto;->do:I

    :goto_0
    add-int/lit8 p1, p2, 0x1

    if-ge p2, v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/google/common/collect/w1$goto;->new()Lcom/google/common/collect/w1$else;

    move p2, p1

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/w1;->access$200(Lcom/google/common/collect/w1;)Lcom/google/common/collect/w1$else;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/w1$goto;->if:Lcom/google/common/collect/w1$else;

    :goto_1
    add-int/lit8 p1, p2, -0x1

    if-lez p2, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/google/common/collect/w1$goto;->for()Lcom/google/common/collect/w1$else;

    move p2, p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/google/common/collect/w1$goto;->for:Lcom/google/common/collect/w1$else;

    return-void
.end method

.method private if()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/w1$goto;->case:Lcom/google/common/collect/w1;

    invoke-static {v0}, Lcom/google/common/collect/w1;->access$000(Lcom/google/common/collect/w1;)I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/w1$goto;->try:I

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/w1$goto;->do(Ljava/util/Map$Entry;)V

    return-void
.end method

.method public case(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/w1$goto;->for:Lcom/google/common/collect/w1$else;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/support/v4/af1;->t(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/w1$goto;->for:Lcom/google/common/collect/w1$else;

    iput-object p1, v0, Lcom/google/common/collect/w1$else;->if:Ljava/lang/Object;

    return-void
.end method

.method public do(Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public for()Lcom/google/common/collect/w1$else;
    .locals 2
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/w1$else<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/w1$goto;->if()V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/w1$goto;->if:Lcom/google/common/collect/w1$else;

    invoke-static {v0}, Lcom/google/common/collect/w1;->access$300(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/w1$goto;->if:Lcom/google/common/collect/w1$else;

    iput-object v0, p0, Lcom/google/common/collect/w1$goto;->for:Lcom/google/common/collect/w1$else;

    iput-object v0, p0, Lcom/google/common/collect/w1$goto;->new:Lcom/google/common/collect/w1$else;

    .line 4
    iget-object v1, v0, Lcom/google/common/collect/w1$else;->for:Lcom/google/common/collect/w1$else;

    iput-object v1, p0, Lcom/google/common/collect/w1$goto;->if:Lcom/google/common/collect/w1$else;

    .line 5
    iget v1, p0, Lcom/google/common/collect/w1$goto;->do:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/w1$goto;->do:I

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/w1$goto;->if()V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/w1$goto;->if:Lcom/google/common/collect/w1$else;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/w1$goto;->if()V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/w1$goto;->new:Lcom/google/common/collect/w1$else;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public new()Lcom/google/common/collect/w1$else;
    .locals 2
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/w1$else<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/w1$goto;->if()V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/w1$goto;->new:Lcom/google/common/collect/w1$else;

    invoke-static {v0}, Lcom/google/common/collect/w1;->access$300(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/w1$goto;->new:Lcom/google/common/collect/w1$else;

    iput-object v0, p0, Lcom/google/common/collect/w1$goto;->for:Lcom/google/common/collect/w1$else;

    iput-object v0, p0, Lcom/google/common/collect/w1$goto;->if:Lcom/google/common/collect/w1$else;

    .line 4
    iget-object v1, v0, Lcom/google/common/collect/w1$else;->new:Lcom/google/common/collect/w1$else;

    iput-object v1, p0, Lcom/google/common/collect/w1$goto;->new:Lcom/google/common/collect/w1$else;

    .line 5
    iget v1, p0, Lcom/google/common/collect/w1$goto;->do:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/common/collect/w1$goto;->do:I

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/w1$goto;->for()Lcom/google/common/collect/w1$else;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/w1$goto;->do:I

    return v0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/w1$goto;->new()Lcom/google/common/collect/w1$else;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/w1$goto;->do:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/w1$goto;->if()V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/w1$goto;->for:Lcom/google/common/collect/w1$else;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/default;->try(Z)V

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/w1$goto;->for:Lcom/google/common/collect/w1$else;

    iget-object v2, p0, Lcom/google/common/collect/w1$goto;->if:Lcom/google/common/collect/w1$else;

    if-eq v0, v2, :cond_1

    .line 4
    iget-object v2, v0, Lcom/google/common/collect/w1$else;->new:Lcom/google/common/collect/w1$else;

    iput-object v2, p0, Lcom/google/common/collect/w1$goto;->new:Lcom/google/common/collect/w1$else;

    .line 5
    iget v2, p0, Lcom/google/common/collect/w1$goto;->do:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/google/common/collect/w1$goto;->do:I

    goto :goto_1

    .line 6
    :cond_1
    iget-object v1, v0, Lcom/google/common/collect/w1$else;->for:Lcom/google/common/collect/w1$else;

    iput-object v1, p0, Lcom/google/common/collect/w1$goto;->if:Lcom/google/common/collect/w1$else;

    .line 7
    :goto_1
    iget-object v1, p0, Lcom/google/common/collect/w1$goto;->case:Lcom/google/common/collect/w1;

    invoke-static {v1, v0}, Lcom/google/common/collect/w1;->access$400(Lcom/google/common/collect/w1;Lcom/google/common/collect/w1$else;)V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/google/common/collect/w1$goto;->for:Lcom/google/common/collect/w1$else;

    .line 9
    iget-object v0, p0, Lcom/google/common/collect/w1$goto;->case:Lcom/google/common/collect/w1;

    invoke-static {v0}, Lcom/google/common/collect/w1;->access$000(Lcom/google/common/collect/w1;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/w1$goto;->try:I

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/w1$goto;->try(Ljava/util/Map$Entry;)V

    return-void
.end method

.method public try(Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
