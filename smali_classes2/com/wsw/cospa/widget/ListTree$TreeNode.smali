.class public Lcom/wsw/cospa/widget/ListTree$TreeNode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/widget/ListTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TreeNode"
.end annotation


# instance fields
.field private checked:Z

.field private childrenCount:I

.field private collapseDescendant:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/widget/ListTree$TreeNode;",
            ">;"
        }
    .end annotation
.end field

.field private data:Ljava/lang/Object;

.field private expand:Z

.field private expandDescendantCount:I

.field private layoutResId:I

.field private parent:Lcom/wsw/cospa/widget/ListTree$TreeNode;

.field private showExpandIcon:Z

.field public final synthetic this$0:Lcom/wsw/cospa/widget/ListTree;


# direct methods
.method private constructor <init>(Lcom/wsw/cospa/widget/ListTree;Lcom/wsw/cospa/widget/ListTree$TreeNode;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->this$0:Lcom/wsw/cospa/widget/ListTree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->childrenCount:I

    .line 4
    iput p1, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->expandDescendantCount:I

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->parent:Lcom/wsw/cospa/widget/ListTree$TreeNode;

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->showExpandIcon:Z

    .line 7
    iput-object p2, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->parent:Lcom/wsw/cospa/widget/ListTree$TreeNode;

    .line 8
    iput-object p3, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->data:Ljava/lang/Object;

    .line 9
    iput p4, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->layoutResId:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wsw/cospa/widget/ListTree;Lcom/wsw/cospa/widget/ListTree$TreeNode;Ljava/lang/Object;ILcom/wsw/cospa/widget/ListTree$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/wsw/cospa/widget/ListTree$TreeNode;-><init>(Lcom/wsw/cospa/widget/ListTree;Lcom/wsw/cospa/widget/ListTree$TreeNode;Ljava/lang/Object;I)V

    return-void
.end method

.method public static synthetic access$200(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->expandDescendantCount:I

    return p0
.end method

.method public static synthetic access$202(Lcom/wsw/cospa/widget/ListTree$TreeNode;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->expandDescendantCount:I

    return p1
.end method

.method public static synthetic access$208(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->expandDescendantCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->expandDescendantCount:I

    return v0
.end method

.method public static synthetic access$210(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->expandDescendantCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->expandDescendantCount:I

    return v0
.end method

.method public static synthetic access$212(Lcom/wsw/cospa/widget/ListTree$TreeNode;I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->expandDescendantCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->expandDescendantCount:I

    return v0
.end method

.method public static synthetic access$220(Lcom/wsw/cospa/widget/ListTree$TreeNode;I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->expandDescendantCount:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->expandDescendantCount:I

    return v0
.end method

.method public static synthetic access$300(Lcom/wsw/cospa/widget/ListTree$TreeNode;)Lcom/wsw/cospa/widget/ListTree$TreeNode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->parent:Lcom/wsw/cospa/widget/ListTree$TreeNode;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/wsw/cospa/widget/ListTree$TreeNode;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->collapseDescendant:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/wsw/cospa/widget/ListTree$TreeNode;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->collapseDescendant:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$500(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->childrenCount:I

    return p0
.end method

.method public static synthetic access$502(Lcom/wsw/cospa/widget/ListTree$TreeNode;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->childrenCount:I

    return p1
.end method

.method public static synthetic access$508(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->childrenCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->childrenCount:I

    return v0
.end method

.method public static synthetic access$510(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->childrenCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->childrenCount:I

    return v0
.end method


# virtual methods
.method public enumCheckedNodes(Lcom/wsw/cospa/widget/ListTree$EnumOptionFunc;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->expand:Z

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->collapseDescendant:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/widget/ListTree$TreeNode;

    .line 4
    invoke-interface {p1, v1}, Lcom/wsw/cospa/widget/ListTree$EnumOptionFunc;->option(Lcom/wsw/cospa/widget/ListTree$TreeNode;)V

    .line 5
    invoke-virtual {v1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->isExpand()Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    invoke-virtual {v1, p1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->enumCheckedNodes(Lcom/wsw/cospa/widget/ListTree$EnumOptionFunc;)V

    goto :goto_0

    :cond_2
    return-void

    .line 7
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Only can be invoked when node is collapsed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public extractDescendant()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/widget/ListTree$TreeNode;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->collapseDescendant:Ljava/util/List;

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->collapseDescendant:Ljava/util/List;

    return-object v0
.end method

.method public getChildrenCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->childrenCount:I

    return v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getExpandDescendantCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->expandDescendantCount:I

    return v0
.end method

.method public getLayoutResId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->layoutResId:I

    return v0
.end method

.method public getParent()Lcom/wsw/cospa/widget/ListTree$TreeNode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->parent:Lcom/wsw/cospa/widget/ListTree$TreeNode;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->checked:Z

    return v0
.end method

.method public isExpand()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->expand:Z

    return v0
.end method

.method public isShowExpandIcon()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->showExpandIcon:Z

    return v0
.end method

.method public removeCheckedChildren()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->collapseDescendant:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->collapseDescendant:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->collapseDescendant:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/widget/ListTree$TreeNode;

    iget-boolean v1, v1, Lcom/wsw/cospa/widget/ListTree$TreeNode;->checked:Z

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->collapseDescendant:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->collapseDescendant:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/widget/ListTree$TreeNode;

    invoke-virtual {v1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->removeCheckedChildren()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public retractDescendant(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/widget/ListTree$TreeNode;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->collapseDescendant:Ljava/util/List;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/ListTree$TreeNode;

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->collapseDescendant:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->checked:Z

    return-void
.end method

.method public setDescendantChecked(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->collapseDescendant:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v1, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->expand:Z

    if-nez v1, :cond_2

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/widget/ListTree$TreeNode;

    .line 4
    invoke-virtual {v1, p1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->setChecked(Z)V

    goto :goto_0

    :cond_1
    return-void

    .line 5
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Only can be invoked when node is collapsed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public setExpand(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->expand:Z

    return-void
.end method

.method public setShowExpandIcon(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/widget/ListTree$TreeNode;->showExpandIcon:Z

    return-void
.end method
