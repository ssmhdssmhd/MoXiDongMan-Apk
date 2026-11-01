.class public abstract Lcom/wsw/cospa/widget/ListTreeAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "TVH;>;"
    }
.end annotation


# instance fields
.field private collapseIcon:Landroid/graphics/drawable/Drawable;

.field private expandIcon:Landroid/graphics/drawable/Drawable;

.field public tree:Lcom/wsw/cospa/widget/ListTree;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/widget/ListTree;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/wsw/cospa/widget/ListTreeAdapter;->expandIcon:Landroid/graphics/drawable/Drawable;

    .line 3
    iput-object v0, p0, Lcom/wsw/cospa/widget/ListTreeAdapter;->collapseIcon:Landroid/graphics/drawable/Drawable;

    .line 4
    iput-object p1, p0, Lcom/wsw/cospa/widget/ListTreeAdapter;->tree:Lcom/wsw/cospa/widget/ListTree;

    return-void
.end method

.method public constructor <init>(Lcom/wsw/cospa/widget/ListTree;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/wsw/cospa/widget/ListTreeAdapter;->expandIcon:Landroid/graphics/drawable/Drawable;

    .line 7
    iput-object v0, p0, Lcom/wsw/cospa/widget/ListTreeAdapter;->collapseIcon:Landroid/graphics/drawable/Drawable;

    .line 8
    iput-object p1, p0, Lcom/wsw/cospa/widget/ListTreeAdapter;->tree:Lcom/wsw/cospa/widget/ListTree;

    .line 9
    iput-object p2, p0, Lcom/wsw/cospa/widget/ListTreeAdapter;->expandIcon:Landroid/graphics/drawable/Drawable;

    .line 10
    iput-object p3, p0, Lcom/wsw/cospa/widget/ListTreeAdapter;->collapseIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/ListTreeAdapter;->tree:Lcom/wsw/cospa/widget/ListTree;

    invoke-virtual {v0}, Lcom/wsw/cospa/widget/ListTree;->size()I

    move-result v0

    return v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/ListTreeAdapter;->tree:Lcom/wsw/cospa/widget/ListTree;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/widget/ListTree;->getNodeByPlaneIndex(I)Lcom/wsw/cospa/widget/ListTree$TreeNode;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->getLayoutResId()I

    move-result p1

    return p1
.end method

.method public notifyTreeItemInserted(Lcom/wsw/cospa/widget/ListTree$TreeNode;Lcom/wsw/cospa/widget/ListTree$TreeNode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/ListTreeAdapter;->tree:Lcom/wsw/cospa/widget/ListTree;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/widget/ListTree;->getNodePlaneIndex(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->isExpand()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/widget/ListTreeAdapter;->tree:Lcom/wsw/cospa/widget/ListTree;

    invoke-virtual {p1, p2}, Lcom/wsw/cospa/widget/ListTree;->getNodePlaneIndex(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I

    move-result p1

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/wsw/cospa/widget/ListTreeAdapter;->tree:Lcom/wsw/cospa/widget/ListTree;

    invoke-virtual {p2, v0}, Lcom/wsw/cospa/widget/ListTree;->expandNode(I)I

    .line 5
    invoke-super {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    add-int/lit8 v0, v0, 0x1

    .line 6
    invoke-virtual {p1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->getExpandDescendantCount()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    :goto_0
    return-void
.end method

.method public abstract onBindNodeViewHolder(Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/widget/ListTreeAdapter;->onBindViewHolder(Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder;I)V

    return-void
.end method

.method public final onBindViewHolder(Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/ListTreeAdapter;->tree:Lcom/wsw/cospa/widget/ListTree;

    invoke-virtual {v0, p2}, Lcom/wsw/cospa/widget/ListTree;->getNodeByPlaneIndex(I)Lcom/wsw/cospa/widget/ListTree$TreeNode;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->isShowExpandIcon()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->isExpand()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p1, Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder;->arrowIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/wsw/cospa/widget/ListTreeAdapter;->collapseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p1, Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder;->arrowIcon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/wsw/cospa/widget/ListTreeAdapter;->expandIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p1, Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder;->arrowIcon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/wsw/cospa/widget/ListTreeAdapter;->tree:Lcom/wsw/cospa/widget/ListTree;

    invoke-virtual {v1, v0}, Lcom/wsw/cospa/widget/ListTree;->getNodeLayerLevel(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I

    move-result v0

    .line 9
    iget-object v1, p1, Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder;->headSpace:Landroid/widget/Space;

    invoke-virtual {v1}, Landroid/widget/Space;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    mul-int/lit8 v0, v0, 0x19

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/widget/ListTreeAdapter;->onBindNodeViewHolder(Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder;I)V

    return-void
.end method

.method public abstract onCreateNodeView(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/widget/ListTreeAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/ListTreeAdapter;->expandIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/widget/ListTreeAdapter;->expandIcon:Landroid/graphics/drawable/Drawable;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/widget/ListTreeAdapter;->collapseIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/widget/ListTreeAdapter;->collapseIcon:Landroid/graphics/drawable/Drawable;

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c010a

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f090267

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 9
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    .line 10
    invoke-virtual {p0, v0, p2}, Lcom/wsw/cospa/widget/ListTreeAdapter;->onCreateNodeView(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 11
    :cond_2
    iput-object v0, p1, Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder;->containerView:Landroid/view/ViewGroup;

    .line 12
    iput-object v1, p1, Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder;->arrowIcon:Landroid/widget/ImageView;

    const p2, 0x7f090268

    .line 13
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Space;

    iput-object p2, p1, Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder;->headSpace:Landroid/widget/Space;

    .line 14
    invoke-virtual {p1}, Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder;->initView()V

    return-object p1
.end method

.method public refresh(Lcom/wsw/cospa/widget/ListTree;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/ListTreeAdapter;->tree:Lcom/wsw/cospa/widget/ListTree;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
