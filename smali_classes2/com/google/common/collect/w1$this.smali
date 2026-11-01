.class Lcom/google/common/collect/w1$this;
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
    name = "this"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic case:Lcom/google/common/collect/w1;

.field public final do:Ljava/lang/Object;
    .annotation runtime Landroid/support/v4/b51;
    .end annotation
.end field

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

.field public if:I

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

.field public try:Lcom/google/common/collect/w1$else;
    .annotation runtime Landroid/support/v4/b51;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/w1$else<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/w1;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/google/common/collect/w1;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/w1$this;->case:Lcom/google/common/collect/w1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/common/collect/w1$this;->do:Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Lcom/google/common/collect/w1;->access$600(Lcom/google/common/collect/w1;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/w1$case;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p1, Lcom/google/common/collect/w1$case;->do:Lcom/google/common/collect/w1$else;

    :goto_0
    iput-object p1, p0, Lcom/google/common/collect/w1$this;->for:Lcom/google/common/collect/w1$else;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/w1;Ljava/lang/Object;I)V
    .locals 3
    .param p1    # Lcom/google/common/collect/w1;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    .line 5
    iput-object p1, p0, Lcom/google/common/collect/w1$this;->case:Lcom/google/common/collect/w1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {p1}, Lcom/google/common/collect/w1;->access$600(Lcom/google/common/collect/w1;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/w1$case;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 7
    :cond_0
    iget v0, p1, Lcom/google/common/collect/w1$case;->for:I

    .line 8
    :goto_0
    invoke-static {p3, v0}, Landroid/support/v4/af1;->q(II)I

    .line 9
    div-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-lt p3, v1, :cond_2

    if-nez p1, :cond_1

    move-object p1, v2

    goto :goto_1

    .line 10
    :cond_1
    iget-object p1, p1, Lcom/google/common/collect/w1$case;->if:Lcom/google/common/collect/w1$else;

    :goto_1
    iput-object p1, p0, Lcom/google/common/collect/w1$this;->try:Lcom/google/common/collect/w1$else;

    .line 11
    iput v0, p0, Lcom/google/common/collect/w1$this;->if:I

    :goto_2
    add-int/lit8 p1, p3, 0x1

    if-ge p3, v0, :cond_4

    .line 12
    invoke-virtual {p0}, Lcom/google/common/collect/w1$this;->previous()Ljava/lang/Object;

    move p3, p1

    goto :goto_2

    :cond_2
    if-nez p1, :cond_3

    move-object p1, v2

    goto :goto_3

    .line 13
    :cond_3
    iget-object p1, p1, Lcom/google/common/collect/w1$case;->do:Lcom/google/common/collect/w1$else;

    :goto_3
    iput-object p1, p0, Lcom/google/common/collect/w1$this;->for:Lcom/google/common/collect/w1$else;

    :goto_4
    add-int/lit8 p1, p3, -0x1

    if-lez p3, :cond_4

    .line 14
    invoke-virtual {p0}, Lcom/google/common/collect/w1$this;->next()Ljava/lang/Object;

    move p3, p1

    goto :goto_4

    .line 15
    :cond_4
    iput-object p2, p0, Lcom/google/common/collect/w1$this;->do:Ljava/lang/Object;

    .line 16
    iput-object v2, p0, Lcom/google/common/collect/w1$this;->new:Lcom/google/common/collect/w1$else;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/w1$this;->case:Lcom/google/common/collect/w1;

    iget-object v1, p0, Lcom/google/common/collect/w1$this;->do:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/w1$this;->for:Lcom/google/common/collect/w1$else;

    invoke-static {v0, v1, p1, v2}, Lcom/google/common/collect/w1;->access$700(Lcom/google/common/collect/w1;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/w1$else;)Lcom/google/common/collect/w1$else;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/w1$this;->try:Lcom/google/common/collect/w1$else;

    .line 2
    iget p1, p0, Lcom/google/common/collect/w1$this;->if:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/w1$this;->if:I

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/google/common/collect/w1$this;->new:Lcom/google/common/collect/w1$else;

    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/w1$this;->for:Lcom/google/common/collect/w1$else;

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
    iget-object v0, p0, Lcom/google/common/collect/w1$this;->try:Lcom/google/common/collect/w1$else;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/w1$this;->for:Lcom/google/common/collect/w1$else;

    invoke-static {v0}, Lcom/google/common/collect/w1;->access$300(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/w1$this;->for:Lcom/google/common/collect/w1$else;

    iput-object v0, p0, Lcom/google/common/collect/w1$this;->new:Lcom/google/common/collect/w1$else;

    iput-object v0, p0, Lcom/google/common/collect/w1$this;->try:Lcom/google/common/collect/w1$else;

    .line 3
    iget-object v1, v0, Lcom/google/common/collect/w1$else;->try:Lcom/google/common/collect/w1$else;

    iput-object v1, p0, Lcom/google/common/collect/w1$this;->for:Lcom/google/common/collect/w1$else;

    .line 4
    iget v1, p0, Lcom/google/common/collect/w1$this;->if:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/w1$this;->if:I

    .line 5
    iget-object v0, v0, Lcom/google/common/collect/w1$else;->if:Ljava/lang/Object;

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/w1$this;->if:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/w1$this;->try:Lcom/google/common/collect/w1$else;

    invoke-static {v0}, Lcom/google/common/collect/w1;->access$300(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/w1$this;->try:Lcom/google/common/collect/w1$else;

    iput-object v0, p0, Lcom/google/common/collect/w1$this;->new:Lcom/google/common/collect/w1$else;

    iput-object v0, p0, Lcom/google/common/collect/w1$this;->for:Lcom/google/common/collect/w1$else;

    .line 3
    iget-object v1, v0, Lcom/google/common/collect/w1$else;->case:Lcom/google/common/collect/w1$else;

    iput-object v1, p0, Lcom/google/common/collect/w1$this;->try:Lcom/google/common/collect/w1$else;

    .line 4
    iget v1, p0, Lcom/google/common/collect/w1$this;->if:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/common/collect/w1$this;->if:I

    .line 5
    iget-object v0, v0, Lcom/google/common/collect/w1$else;->if:Ljava/lang/Object;

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/collect/w1$this;->if:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/w1$this;->new:Lcom/google/common/collect/w1$else;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/default;->try(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/w1$this;->new:Lcom/google/common/collect/w1$else;

    iget-object v2, p0, Lcom/google/common/collect/w1$this;->for:Lcom/google/common/collect/w1$else;

    if-eq v0, v2, :cond_1

    .line 3
    iget-object v2, v0, Lcom/google/common/collect/w1$else;->case:Lcom/google/common/collect/w1$else;

    iput-object v2, p0, Lcom/google/common/collect/w1$this;->try:Lcom/google/common/collect/w1$else;

    .line 4
    iget v2, p0, Lcom/google/common/collect/w1$this;->if:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/google/common/collect/w1$this;->if:I

    goto :goto_1

    .line 5
    :cond_1
    iget-object v1, v0, Lcom/google/common/collect/w1$else;->try:Lcom/google/common/collect/w1$else;

    iput-object v1, p0, Lcom/google/common/collect/w1$this;->for:Lcom/google/common/collect/w1$else;

    .line 6
    :goto_1
    iget-object v1, p0, Lcom/google/common/collect/w1$this;->case:Lcom/google/common/collect/w1;

    invoke-static {v1, v0}, Lcom/google/common/collect/w1;->access$400(Lcom/google/common/collect/w1;Lcom/google/common/collect/w1$else;)V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/google/common/collect/w1$this;->new:Lcom/google/common/collect/w1$else;

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/w1$this;->new:Lcom/google/common/collect/w1$else;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/support/v4/af1;->t(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/w1$this;->new:Lcom/google/common/collect/w1$else;

    iput-object p1, v0, Lcom/google/common/collect/w1$else;->if:Ljava/lang/Object;

    return-void
.end method
