.class public Lcom/wsw/cospa/widget/ListTree;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/widget/ListTree$Couple;,
        Lcom/wsw/cospa/widget/ListTree$EnumOptionFunc;,
        Lcom/wsw/cospa/widget/ListTree$EnumPos;,
        Lcom/wsw/cospa/widget/ListTree$TreeNode;
    }
.end annotation


# instance fields
.field private nodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/widget/ListTree$TreeNode;",
            ">;"
        }
    .end annotation
.end field

.field private rootNodesCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/widget/ListTree;->nodes:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$000(Lcom/wsw/cospa/widget/ListTree;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/ListTree;->nodes:Ljava/util/List;

    return-object p0
.end method

.method private getFirstChild(Ljava/util/List;Lcom/wsw/cospa/widget/ListTree$TreeNode;)Lcom/wsw/cospa/widget/ListTree$TreeNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/widget/ListTree$TreeNode;",
            ">;",
            "Lcom/wsw/cospa/widget/ListTree$TreeNode;",
            ")",
            "Lcom/wsw/cospa/widget/ListTree$TreeNode;"
        }
    .end annotation

    .line 4
    invoke-static {p2}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$500(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->isExpand()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    .line 7
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/widget/ListTree$TreeNode;

    return-object p1

    .line 8
    :cond_1
    invoke-static {p2}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$400(Lcom/wsw/cospa/widget/ListTree$TreeNode;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/widget/ListTree$TreeNode;

    return-object p1
.end method

.method private getNextSibling(Ljava/util/List;Lcom/wsw/cospa/widget/ListTree$TreeNode;)Lcom/wsw/cospa/widget/ListTree$TreeNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/widget/ListTree$TreeNode;",
            ">;",
            "Lcom/wsw/cospa/widget/ListTree$TreeNode;",
            ")",
            "Lcom/wsw/cospa/widget/ListTree$TreeNode;"
        }
    .end annotation

    .line 6
    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 7
    invoke-static {p2}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$200(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/widget/ListTree$TreeNode;

    .line 8
    invoke-virtual {p1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->getParent()Lcom/wsw/cospa/widget/ListTree$TreeNode;

    move-result-object v0

    invoke-virtual {p2}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->getParent()Lcom/wsw/cospa/widget/ListTree$TreeNode;

    move-result-object p2

    if-ne v0, p2, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getNodeContainer(Lcom/wsw/cospa/widget/ListTree$TreeNode;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wsw/cospa/widget/ListTree$TreeNode;",
            ")",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/widget/ListTree$TreeNode;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->getParent()Lcom/wsw/cospa/widget/ListTree$TreeNode;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-static {p1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$200(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$400(Lcom/wsw/cospa/widget/ListTree$TreeNode;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/wsw/cospa/widget/ListTree;->nodes:Ljava/util/List;

    return-object p1
.end method

.method private getNodePlaneIndexByIndex(Lcom/wsw/cospa/widget/ListTree$TreeNode;I)I
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->isExpand()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    invoke-static {p1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$500(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    if-ne v1, p2, :cond_0

    return v2

    .line 3
    :cond_0
    iget-object v3, p0, Lcom/wsw/cospa/widget/ListTree;->nodes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wsw/cospa/widget/ListTree$TreeNode;

    .line 4
    invoke-virtual {v3}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->isExpand()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$200(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1

    .line 5
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Only invoke when parent is expand"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private insertNoRootNode(Ljava/util/List;Lcom/wsw/cospa/widget/ListTree$TreeNode;ILcom/wsw/cospa/widget/ListTree$TreeNode;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/widget/ListTree$TreeNode;",
            ">;",
            "Lcom/wsw/cospa/widget/ListTree$TreeNode;",
            "I",
            "Lcom/wsw/cospa/widget/ListTree$TreeNode;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->isExpand()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/widget/ListTree$TreeNode;

    const/4 v2, 0x0

    :goto_0
    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    if-ge v2, p3, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lcom/wsw/cospa/widget/ListTree;->getNextSibling(Lcom/wsw/cospa/widget/ListTree$TreeNode;)Lcom/wsw/cospa/widget/ListTree$TreeNode;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p3

    .line 5
    invoke-interface {p1, p3, p4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p3

    .line 7
    invoke-static {v1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$200(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I

    move-result v0

    add-int/2addr p3, v0

    add-int/lit8 p3, p3, 0x1

    invoke-interface {p1, p3, p4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_1
    if-eqz p2, :cond_4

    .line 8
    invoke-static {p2}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$208(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I

    .line 9
    invoke-static {p2}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$300(Lcom/wsw/cospa/widget/ListTree$TreeNode;)Lcom/wsw/cospa/widget/ListTree$TreeNode;

    move-result-object p2

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {p2}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$400(Lcom/wsw/cospa/widget/ListTree$TreeNode;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_3

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2, p1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$402(Lcom/wsw/cospa/widget/ListTree$TreeNode;Ljava/util/List;)Ljava/util/List;

    .line 12
    :cond_3
    invoke-static {p2}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$400(Lcom/wsw/cospa/widget/ListTree$TreeNode;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p3, p4}, Lcom/wsw/cospa/widget/ListTree;->insertRootNode(Ljava/util/List;ILcom/wsw/cospa/widget/ListTree$TreeNode;)V

    :cond_4
    return-void
.end method

.method private insertRootNode(Ljava/util/List;ILcom/wsw/cospa/widget/ListTree$TreeNode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/widget/ListTree$TreeNode;",
            ">;I",
            "Lcom/wsw/cospa/widget/ListTree$TreeNode;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/widget/ListTree$TreeNode;

    :goto_0
    if-ge v0, p2, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Lcom/wsw/cospa/widget/ListTree;->getNextSibling(Lcom/wsw/cospa/widget/ListTree$TreeNode;)Lcom/wsw/cospa/widget/ListTree$TreeNode;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 4
    invoke-interface {p1, p2, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method


# virtual methods
.method public addNode(Lcom/wsw/cospa/widget/ListTree$TreeNode;Ljava/lang/Object;I)Lcom/wsw/cospa/widget/ListTree$TreeNode;
    .locals 7

    .line 1
    new-instance v6, Lcom/wsw/cospa/widget/ListTree$TreeNode;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/wsw/cospa/widget/ListTree$TreeNode;-><init>(Lcom/wsw/cospa/widget/ListTree;Lcom/wsw/cospa/widget/ListTree$TreeNode;Ljava/lang/Object;ILcom/wsw/cospa/widget/ListTree$1;)V

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/widget/ListTree;->nodes:Ljava/util/List;

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget p1, p0, Lcom/wsw/cospa/widget/ListTree;->rootNodesCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/wsw/cospa/widget/ListTree;->rootNodesCount:I

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->isExpand()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    iget-object p2, p0, Lcom/wsw/cospa/widget/ListTree;->nodes:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 6
    invoke-static {p1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$200(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I

    move-result p3

    add-int/2addr p2, p3

    .line 7
    iget-object p3, p0, Lcom/wsw/cospa/widget/ListTree;->nodes:Ljava/util/List;

    add-int/lit8 p2, p2, 0x1

    invoke-interface {p3, p2, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object p2, p1

    :goto_0
    if-eqz p2, :cond_3

    .line 8
    invoke-static {p2}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$208(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I

    .line 9
    invoke-static {p2}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$300(Lcom/wsw/cospa/widget/ListTree$TreeNode;)Lcom/wsw/cospa/widget/ListTree$TreeNode;

    move-result-object p2

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {p1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$400(Lcom/wsw/cospa/widget/ListTree$TreeNode;)Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_2

    .line 11
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, p2}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$402(Lcom/wsw/cospa/widget/ListTree$TreeNode;Ljava/util/List;)Ljava/util/List;

    .line 12
    :cond_2
    invoke-static {p1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$400(Lcom/wsw/cospa/widget/ListTree$TreeNode;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_3
    invoke-static {p1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$508(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I

    :goto_1
    return-object v6
.end method

.method public clearDescendant(Lcom/wsw/cospa/widget/ListTree$TreeNode;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wsw/cospa/widget/ListTree$TreeNode;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$500(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/widget/ListTree;->nodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 3
    new-instance v2, Landroid/util/Pair;

    add-int/lit8 v0, v0, 0x1

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$200(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v3, p0, Lcom/wsw/cospa/widget/ListTree;->nodes:Ljava/util/List;

    .line 6
    invoke-static {p1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$200(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I

    move-result v4

    add-int/2addr v4, v0

    .line 7
    invoke-interface {v3, v0, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 9
    invoke-static {p1, v0}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$502(Lcom/wsw/cospa/widget/ListTree$TreeNode;I)I

    .line 10
    invoke-static {p1, v0}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$202(Lcom/wsw/cospa/widget/ListTree$TreeNode;I)I

    .line 11
    invoke-static {p1, v1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$402(Lcom/wsw/cospa/widget/ListTree$TreeNode;Ljava/util/List;)Ljava/util/List;

    return-object v2
.end method

.method public collapseAllNodes()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/wsw/cospa/widget/ListTree;->nodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/widget/ListTree;->nodes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/widget/ListTree$TreeNode;

    .line 3
    invoke-virtual {p0, v1}, Lcom/wsw/cospa/widget/ListTree;->collapseNode(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public collapseNode(I)I
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/wsw/cospa/widget/ListTree;->nodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/widget/ListTree$TreeNode;

    .line 16
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/widget/ListTree;->collapseNode(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I

    move-result p1

    return p1
.end method

.method public collapseNode(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/ListTree;->nodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->isExpand()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 3
    :cond_0
    invoke-virtual {p1, v2}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->setExpand(Z)V

    .line 4
    invoke-static {p1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$500(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I

    move-result v1

    if-nez v1, :cond_1

    return v2

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/wsw/cospa/widget/ListTree;->nodes:Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    .line 6
    invoke-static {p1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$200(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I

    move-result v3

    add-int/2addr v3, v0

    .line 7
    invoke-interface {v1, v0, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 8
    invoke-virtual {p1, v0}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->retractDescendant(Ljava/util/List;)V

    .line 9
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 10
    invoke-static {p1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$300(Lcom/wsw/cospa/widget/ListTree$TreeNode;)Lcom/wsw/cospa/widget/ListTree$TreeNode;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 11
    invoke-static {p1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$200(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$220(Lcom/wsw/cospa/widget/ListTree$TreeNode;I)I

    .line 12
    invoke-static {v0}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$300(Lcom/wsw/cospa/widget/ListTree$TreeNode;)Lcom/wsw/cospa/widget/ListTree$TreeNode;

    move-result-object v0

    goto :goto_0

    .line 13
    :cond_2
    invoke-static {p1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$200(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I

    move-result v0

    .line 14
    invoke-static {p1, v2}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$202(Lcom/wsw/cospa/widget/ListTree$TreeNode;I)I

    return v0
.end method

.method public enumCheckedNodes(Lcom/wsw/cospa/widget/ListTree$EnumOptionFunc;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/wsw/cospa/widget/ListTree;->nodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/widget/ListTree;->nodes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/widget/ListTree$TreeNode;

    .line 3
    invoke-virtual {v1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {p1, v1}, Lcom/wsw/cospa/widget/ListTree$EnumOptionFunc;->option(Lcom/wsw/cospa/widget/ListTree$TreeNode;)V

    .line 5
    invoke-virtual {v1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->isExpand()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    invoke-virtual {v1, p1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->enumCheckedNodes(Lcom/wsw/cospa/widget/ListTree$EnumOptionFunc;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public enumNext(Lcom/wsw/cospa/widget/ListTree$EnumPos;)Lcom/wsw/cospa/widget/ListTree$EnumPos;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/wsw/cospa/widget/ListTree$EnumPos;->access$700(Lcom/wsw/cospa/widget/ListTree$EnumPos;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/ListTree$EnumPos$TreeEnumInfo;

    .line 2
    invoke-static {v0}, Lcom/wsw/cospa/widget/ListTree$EnumPos$TreeEnumInfo;->access$900(Lcom/wsw/cospa/widget/ListTree$EnumPos$TreeEnumInfo;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Lcom/wsw/cospa/widget/ListTree$EnumPos$TreeEnumInfo;->access$800(Lcom/wsw/cospa/widget/ListTree$EnumPos$TreeEnumInfo;)I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/ListTree$TreeNode;

    .line 3
    invoke-virtual {v0}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->getChildrenCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->isExpand()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-static {p1}, Lcom/wsw/cospa/widget/ListTree$EnumPos;->access$700(Lcom/wsw/cospa/widget/ListTree$EnumPos;)Ljava/util/Stack;

    move-result-object v1

    new-instance v2, Lcom/wsw/cospa/widget/ListTree$EnumPos$TreeEnumInfo;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$400(Lcom/wsw/cospa/widget/ListTree$TreeNode;)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v2, p1, v0, v3}, Lcom/wsw/cospa/widget/ListTree$EnumPos$TreeEnumInfo;-><init>(Lcom/wsw/cospa/widget/ListTree$EnumPos;Ljava/util/List;I)V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    .line 5
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/wsw/cospa/widget/ListTree$EnumPos;->access$700(Lcom/wsw/cospa/widget/ListTree$EnumPos;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    invoke-static {p1}, Lcom/wsw/cospa/widget/ListTree$EnumPos;->access$700(Lcom/wsw/cospa/widget/ListTree$EnumPos;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/ListTree$EnumPos$TreeEnumInfo;

    invoke-static {v0}, Lcom/wsw/cospa/widget/ListTree$EnumPos$TreeEnumInfo;->access$808(Lcom/wsw/cospa/widget/ListTree$EnumPos$TreeEnumInfo;)I

    .line 7
    invoke-static {p1}, Lcom/wsw/cospa/widget/ListTree$EnumPos;->access$700(Lcom/wsw/cospa/widget/ListTree$EnumPos;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/ListTree$EnumPos$TreeEnumInfo;

    invoke-static {v0}, Lcom/wsw/cospa/widget/ListTree$EnumPos$TreeEnumInfo;->access$800(Lcom/wsw/cospa/widget/ListTree$EnumPos$TreeEnumInfo;)I

    move-result v0

    invoke-static {p1}, Lcom/wsw/cospa/widget/ListTree$EnumPos;->access$700(Lcom/wsw/cospa/widget/ListTree$EnumPos;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/widget/ListTree$EnumPos$TreeEnumInfo;

    invoke-static {v1}, Lcom/wsw/cospa/widget/ListTree$EnumPos$TreeEnumInfo;->access$900(Lcom/wsw/cospa/widget/ListTree$EnumPos$TreeEnumInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 8
    invoke-static {p1}, Lcom/wsw/cospa/widget/ListTree$EnumPos;->access$700(Lcom/wsw/cospa/widget/ListTree$EnumPos;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public expandAllNodes()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/wsw/cospa/widget/ListTree;->nodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/widget/ListTree;->nodes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/widget/ListTree$TreeNode;

    .line 3
    invoke-virtual {p0, v1}, Lcom/wsw/cospa/widget/ListTree;->expandNode(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public expandNode(I)I
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/wsw/cospa/widget/ListTree;->nodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/widget/ListTree$TreeNode;

    .line 13
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/widget/ListTree;->expandNode(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I

    move-result p1

    return p1
.end method

.method public expandNode(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/ListTree;->nodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->isExpand()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p1, v1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->setExpand(Z)V

    .line 4
    invoke-static {p1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$500(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I

    move-result v3

    if-nez v3, :cond_1

    return v2

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->extractDescendant()Ljava/util/List;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lcom/wsw/cospa/widget/ListTree;->nodes:Ljava/util/List;

    add-int/2addr v0, v1

    invoke-interface {v3, v0, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$202(Lcom/wsw/cospa/widget/ListTree$TreeNode;I)I

    .line 8
    invoke-static {p1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$300(Lcom/wsw/cospa/widget/ListTree$TreeNode;)Lcom/wsw/cospa/widget/ListTree$TreeNode;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 9
    invoke-static {p1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$200(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$212(Lcom/wsw/cospa/widget/ListTree$TreeNode;I)I

    .line 10
    invoke-static {v0}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$300(Lcom/wsw/cospa/widget/ListTree$TreeNode;)Lcom/wsw/cospa/widget/ListTree$TreeNode;

    move-result-object v0

    goto :goto_0

    .line 11
    :cond_2
    invoke-static {p1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$200(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I

    move-result p1

    return p1
.end method

.method public forEach(Lcom/wsw/cospa/widget/ListTree$EnumOptionFunc;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 2
    new-instance v1, Lcom/wsw/cospa/widget/ListTree$Couple;

    iget-object v2, p0, Lcom/wsw/cospa/widget/ListTree;->nodes:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/wsw/cospa/widget/ListTree$Couple;-><init>(Lcom/wsw/cospa/widget/ListTree;Ljava/util/List;I)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/widget/ListTree$Couple;

    iget-object v1, v1, Lcom/wsw/cospa/widget/ListTree$Couple;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/widget/ListTree$Couple;

    iget v2, v2, Lcom/wsw/cospa/widget/ListTree$Couple;->curListPos:I

    if-le v1, v2, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/widget/ListTree$Couple;

    iget-object v1, v1, Lcom/wsw/cospa/widget/ListTree$Couple;->list:Ljava/util/List;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/widget/ListTree$Couple;

    iget v2, v2, Lcom/wsw/cospa/widget/ListTree$Couple;->curListPos:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/widget/ListTree$TreeNode;

    .line 5
    invoke-interface {p1, v1}, Lcom/wsw/cospa/widget/ListTree$EnumOptionFunc;->option(Lcom/wsw/cospa/widget/ListTree$TreeNode;)V

    .line 6
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/widget/ListTree$Couple;

    iget v4, v2, Lcom/wsw/cospa/widget/ListTree$Couple;->curListPos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Lcom/wsw/cospa/widget/ListTree$Couple;->curListPos:I

    .line 7
    invoke-static {v1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$400(Lcom/wsw/cospa/widget/ListTree$TreeNode;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$400(Lcom/wsw/cospa/widget/ListTree$TreeNode;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 8
    new-instance v2, Lcom/wsw/cospa/widget/ListTree$Couple;

    invoke-static {v1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$400(Lcom/wsw/cospa/widget/ListTree$TreeNode;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, p0, v1, v3}, Lcom/wsw/cospa/widget/ListTree$Couple;-><init>(Lcom/wsw/cospa/widget/ListTree;Ljava/util/List;I)V

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 10
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void
.end method

.method public getFirstChild(Lcom/wsw/cospa/widget/ListTree$TreeNode;)Lcom/wsw/cospa/widget/ListTree$TreeNode;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$500(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/wsw/cospa/widget/ListTree;->getNodeContainer(Lcom/wsw/cospa/widget/ListTree$TreeNode;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/wsw/cospa/widget/ListTree;->getFirstChild(Ljava/util/List;Lcom/wsw/cospa/widget/ListTree$TreeNode;)Lcom/wsw/cospa/widget/ListTree$TreeNode;

    move-result-object p1

    return-object p1
.end method

.method public getFirstNode()Lcom/wsw/cospa/widget/ListTree$TreeNode;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/ListTree;->nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/widget/ListTree;->nodes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/ListTree$TreeNode;

    return-object v0
.end method

.method public getLastChild(Lcom/wsw/cospa/widget/ListTree$TreeNode;)Lcom/wsw/cospa/widget/ListTree$TreeNode;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$500(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/wsw/cospa/widget/ListTree;->getNodeContainer(Lcom/wsw/cospa/widget/ListTree$TreeNode;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/wsw/cospa/widget/ListTree;->getFirstChild(Ljava/util/List;Lcom/wsw/cospa/widget/ListTree$TreeNode;)Lcom/wsw/cospa/widget/ListTree$TreeNode;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 4
    invoke-direct {p0, v0, p1}, Lcom/wsw/cospa/widget/ListTree;->getNextSibling(Ljava/util/List;Lcom/wsw/cospa/widget/ListTree$TreeNode;)Lcom/wsw/cospa/widget/ListTree$TreeNode;

    move-result-object p1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public getNextSibling(Lcom/wsw/cospa/widget/ListTree$TreeNode;)Lcom/wsw/cospa/widget/ListTree$TreeNode;
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/widget/ListTree;->getNodeContainer(Lcom/wsw/cospa/widget/ListTree$TreeNode;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_0

    return-object v3

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$200(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/ListTree$TreeNode;

    .line 5
    invoke-virtual {v0}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->getParent()Lcom/wsw/cospa/widget/ListTree$TreeNode;

    move-result-object v1

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->getParent()Lcom/wsw/cospa/widget/ListTree$TreeNode;

    move-result-object p1

    if-ne v1, p1, :cond_1

    return-object v0

    :cond_1
    return-object v3
.end method

.method public getNodeByEnumPos(Lcom/wsw/cospa/widget/ListTree$EnumPos;)Lcom/wsw/cospa/widget/ListTree$TreeNode;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/wsw/cospa/widget/ListTree$EnumPos;->access$700(Lcom/wsw/cospa/widget/ListTree$EnumPos;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/ListTree$EnumPos$TreeEnumInfo;

    invoke-static {v0}, Lcom/wsw/cospa/widget/ListTree$EnumPos$TreeEnumInfo;->access$900(Lcom/wsw/cospa/widget/ListTree$EnumPos$TreeEnumInfo;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/wsw/cospa/widget/ListTree$EnumPos;->access$700(Lcom/wsw/cospa/widget/ListTree$EnumPos;)Ljava/util/Stack;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/widget/ListTree$EnumPos$TreeEnumInfo;

    invoke-static {p1}, Lcom/wsw/cospa/widget/ListTree$EnumPos$TreeEnumInfo;->access$800(Lcom/wsw/cospa/widget/ListTree$EnumPos$TreeEnumInfo;)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/widget/ListTree$TreeNode;

    return-object p1
.end method

.method public getNodeByPlaneIndex(I)Lcom/wsw/cospa/widget/ListTree$TreeNode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/ListTree;->nodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/widget/ListTree$TreeNode;

    return-object p1
.end method

.method public getNodeByRank(Lcom/wsw/cospa/widget/ListTree$TreeNode;I)Lcom/wsw/cospa/widget/ListTree$TreeNode;
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$500(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I

    move-result v0

    const/4 v1, 0x0

    if-lt p2, v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/wsw/cospa/widget/ListTree;->getNodeContainer(Lcom/wsw/cospa/widget/ListTree$TreeNode;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0, p1}, Lcom/wsw/cospa/widget/ListTree;->getFirstChild(Ljava/util/List;Lcom/wsw/cospa/widget/ListTree$TreeNode;)Lcom/wsw/cospa/widget/ListTree$TreeNode;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    if-eqz p1, :cond_2

    if-ne v2, p2, :cond_1

    return-object p1

    .line 4
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/wsw/cospa/widget/ListTree;->getNextSibling(Ljava/util/List;Lcom/wsw/cospa/widget/ListTree$TreeNode;)Lcom/wsw/cospa/widget/ListTree$TreeNode;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getNodeLayerLevel(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$300(Lcom/wsw/cospa/widget/ListTree$TreeNode;)Lcom/wsw/cospa/widget/ListTree$TreeNode;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 2
    invoke-static {p1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$300(Lcom/wsw/cospa/widget/ListTree$TreeNode;)Lcom/wsw/cospa/widget/ListTree$TreeNode;

    move-result-object p1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getNodePlaneIndex(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/ListTree;->nodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getNodeRank(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/widget/ListTree;->getNodeContainer(Lcom/wsw/cospa/widget/ListTree$TreeNode;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->getParent()Lcom/wsw/cospa/widget/ListTree$TreeNode;

    move-result-object v1

    const-string v2, "Can`t find node in tree"

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/widget/ListTree$TreeNode;

    :goto_0
    if-eqz v1, :cond_0

    if-eq v1, p1, :cond_0

    .line 5
    invoke-direct {p0, v0, v1}, Lcom/wsw/cospa/widget/ListTree;->getNextSibling(Ljava/util/List;Lcom/wsw/cospa/widget/ListTree$TreeNode;)Lcom/wsw/cospa/widget/ListTree$TreeNode;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    return v3

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/widget/ListTree$TreeNode;

    :goto_1
    if-eqz v1, :cond_3

    if-eq v1, p1, :cond_3

    .line 8
    invoke-direct {p0, v0, v1}, Lcom/wsw/cospa/widget/ListTree;->getNextSibling(Ljava/util/List;Lcom/wsw/cospa/widget/ListTree$TreeNode;)Lcom/wsw/cospa/widget/ListTree$TreeNode;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    return v3

    .line 9
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public getPrevSibling(Lcom/wsw/cospa/widget/ListTree$TreeNode;)Lcom/wsw/cospa/widget/ListTree$TreeNode;
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/widget/ListTree;->getNodeContainer(Lcom/wsw/cospa/widget/ListTree$TreeNode;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/ListTree$TreeNode;

    :goto_0
    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->getParent()Lcom/wsw/cospa/widget/ListTree$TreeNode;

    move-result-object v1

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->getParent()Lcom/wsw/cospa/widget/ListTree$TreeNode;

    move-result-object v3

    if-ne v1, v3, :cond_1

    return-object v0

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->getParent()Lcom/wsw/cospa/widget/ListTree$TreeNode;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public insertNode(Lcom/wsw/cospa/widget/ListTree$TreeNode;ILjava/lang/Object;I)Lcom/wsw/cospa/widget/ListTree$TreeNode;
    .locals 7

    .line 1
    new-instance v6, Lcom/wsw/cospa/widget/ListTree$TreeNode;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/wsw/cospa/widget/ListTree$TreeNode;-><init>(Lcom/wsw/cospa/widget/ListTree;Lcom/wsw/cospa/widget/ListTree$TreeNode;Ljava/lang/Object;ILcom/wsw/cospa/widget/ListTree$1;)V

    const/4 p3, 0x0

    if-nez p1, :cond_1

    .line 2
    iget p1, p0, Lcom/wsw/cospa/widget/ListTree;->rootNodesCount:I

    if-le p2, p1, :cond_0

    return-object p3

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/widget/ListTree;->nodes:Ljava/util/List;

    invoke-direct {p0, p1, p2, v6}, Lcom/wsw/cospa/widget/ListTree;->insertRootNode(Ljava/util/List;ILcom/wsw/cospa/widget/ListTree$TreeNode;)V

    .line 4
    iget p1, p0, Lcom/wsw/cospa/widget/ListTree;->rootNodesCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/wsw/cospa/widget/ListTree;->rootNodesCount:I

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$500(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I

    move-result p4

    if-le p2, p4, :cond_2

    return-object p3

    .line 6
    :cond_2
    iget-object p3, p0, Lcom/wsw/cospa/widget/ListTree;->nodes:Ljava/util/List;

    invoke-direct {p0, p3, p1, p2, v6}, Lcom/wsw/cospa/widget/ListTree;->insertNoRootNode(Ljava/util/List;Lcom/wsw/cospa/widget/ListTree$TreeNode;ILcom/wsw/cospa/widget/ListTree$TreeNode;)V

    .line 7
    invoke-static {p1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$508(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I

    :goto_0
    return-object v6
.end method

.method public printList()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/ListTree;->nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/widget/ListTree$TreeNode;

    .line 2
    invoke-virtual {p0, v1}, Lcom/wsw/cospa/widget/ListTree;->getNodeLayerLevel(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I

    move-result v2

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_0

    const/16 v5, 0x9

    .line 4
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 5
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeCheckedNodes()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/wsw/cospa/widget/ListTree;->nodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/widget/ListTree;->nodes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/widget/ListTree$TreeNode;

    .line 4
    invoke-virtual {v1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    iget-object v2, p0, Lcom/wsw/cospa/widget/ListTree;->nodes:Ljava/util/List;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$200(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-interface {v2, v0, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lcom/wsw/cospa/widget/ListTree;->nodes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 7
    invoke-static {v1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$300(Lcom/wsw/cospa/widget/ListTree$TreeNode;)Lcom/wsw/cospa/widget/ListTree$TreeNode;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8
    invoke-static {v2}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$510(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I

    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 9
    invoke-static {v1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$200(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$220(Lcom/wsw/cospa/widget/ListTree$TreeNode;I)I

    .line 10
    invoke-static {v2}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$300(Lcom/wsw/cospa/widget/ListTree$TreeNode;)Lcom/wsw/cospa/widget/ListTree$TreeNode;

    move-result-object v2

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 11
    :cond_2
    invoke-virtual {v1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->removeCheckedChildren()V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public removeNode(Lcom/wsw/cospa/widget/ListTree$TreeNode;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$300(Lcom/wsw/cospa/widget/ListTree$TreeNode;)Lcom/wsw/cospa/widget/ListTree$TreeNode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->isExpand()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$508(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I

    .line 4
    invoke-static {v0}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$210(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/widget/ListTree;->nodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 6
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$200(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I

    move-result v1

    .line 7
    iget-object v2, p0, Lcom/wsw/cospa/widget/ListTree;->nodes:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 8
    iget-object v2, p0, Lcom/wsw/cospa/widget/ListTree;->nodes:Ljava/util/List;

    add-int v3, p1, v1

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v2, p1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 9
    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-eqz v0, :cond_2

    .line 10
    invoke-static {v0}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$508(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I

    :goto_1
    if-eqz v0, :cond_3

    .line 11
    invoke-static {v0, v1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$220(Lcom/wsw/cospa/widget/ListTree$TreeNode;I)I

    .line 12
    invoke-static {v0}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$300(Lcom/wsw/cospa/widget/ListTree$TreeNode;)Lcom/wsw/cospa/widget/ListTree$TreeNode;

    move-result-object v0

    goto :goto_1

    .line 13
    :cond_2
    iget p1, p0, Lcom/wsw/cospa/widget/ListTree;->rootNodesCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/wsw/cospa/widget/ListTree;->rootNodesCount:I

    :cond_3
    :goto_2
    return-void
.end method

.method public setDescendantChecked(IZ)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/ListTree;->nodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/ListTree$TreeNode;

    .line 2
    invoke-virtual {v0}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->isExpand()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 3
    invoke-static {v0}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$200(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I

    move-result v1

    move v2, p1

    :goto_0
    add-int v3, p1, v1

    if-ge v2, v3, :cond_0

    .line 4
    iget-object v3, p0, Lcom/wsw/cospa/widget/ListTree;->nodes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wsw/cospa/widget/ListTree$TreeNode;

    invoke-virtual {v3, p2}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->setChecked(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->access$200(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I

    move-result p1

    return p1

    .line 6
    :cond_1
    invoke-virtual {v0, p2}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->setDescendantChecked(Z)V

    const/4 p1, 0x0

    return p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/ListTree;->nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public startEnumNode()Lcom/wsw/cospa/widget/ListTree$EnumPos;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/ListTree;->nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v0, Lcom/wsw/cospa/widget/ListTree$EnumPos;

    invoke-direct {v0, p0, v1}, Lcom/wsw/cospa/widget/ListTree$EnumPos;-><init>(Lcom/wsw/cospa/widget/ListTree;Lcom/wsw/cospa/widget/ListTree$1;)V

    return-object v0
.end method
