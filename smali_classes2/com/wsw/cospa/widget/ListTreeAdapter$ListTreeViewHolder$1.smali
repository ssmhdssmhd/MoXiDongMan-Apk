.class Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder$1;->this$1:Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder$1;->this$1:Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder$1;->this$1:Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder;

    iget-object v0, v0, Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder;->this$0:Lcom/wsw/cospa/widget/ListTreeAdapter;

    iget-object v0, v0, Lcom/wsw/cospa/widget/ListTreeAdapter;->tree:Lcom/wsw/cospa/widget/ListTree;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/widget/ListTree;->getNodeByPlaneIndex(I)Lcom/wsw/cospa/widget/ListTree$TreeNode;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->isShowExpandIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder$1;->this$1:Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder;

    iget-object v0, v0, Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder;->this$0:Lcom/wsw/cospa/widget/ListTreeAdapter;

    iget-object v0, v0, Lcom/wsw/cospa/widget/ListTreeAdapter;->tree:Lcom/wsw/cospa/widget/ListTree;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/widget/ListTree;->getNodePlaneIndex(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I

    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->isExpand()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder$1;->this$1:Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder;

    iget-object p1, p1, Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder;->this$0:Lcom/wsw/cospa/widget/ListTreeAdapter;

    iget-object p1, p1, Lcom/wsw/cospa/widget/ListTreeAdapter;->tree:Lcom/wsw/cospa/widget/ListTree;

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/widget/ListTree;->collapseNode(I)I

    move-result p1

    .line 7
    iget-object v1, p0, Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder$1;->this$1:Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder;

    iget-object v1, v1, Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder;->this$0:Lcom/wsw/cospa/widget/ListTreeAdapter;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 8
    iget-object v1, p0, Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder$1;->this$1:Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder;

    iget-object v1, v1, Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder;->this$0:Lcom/wsw/cospa/widget/ListTreeAdapter;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder$1;->this$1:Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder;

    iget-object p1, p1, Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder;->this$0:Lcom/wsw/cospa/widget/ListTreeAdapter;

    iget-object p1, p1, Lcom/wsw/cospa/widget/ListTreeAdapter;->tree:Lcom/wsw/cospa/widget/ListTree;

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/widget/ListTree;->expandNode(I)I

    move-result p1

    .line 10
    iget-object v1, p0, Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder$1;->this$1:Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder;

    iget-object v1, v1, Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder;->this$0:Lcom/wsw/cospa/widget/ListTreeAdapter;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 11
    iget-object v1, p0, Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder$1;->this$1:Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder;

    iget-object v1, v1, Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder;->this$0:Lcom/wsw/cospa/widget/ListTreeAdapter;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    :cond_1
    :goto_0
    return-void
.end method
