.class Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$new;
.super Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$do;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "new"
.end annotation


# instance fields
.field public final synthetic for:Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;

.field public if:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$new;->for:Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$do;-><init>(Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;Landroid/view/View;)V

    const p1, 0x7f090469

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$new;->if:Landroid/widget/TextView;

    .line 4
    new-instance p2, Lcom/wsw/cospa/adapter/new;

    invoke-direct {p2, p0}, Lcom/wsw/cospa/adapter/new;-><init>(Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$new;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$new;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$new;->if(Landroid/view/View;)V

    return-void
.end method

.method private synthetic if(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$new;->for:Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;

    invoke-static {v0}, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;->for(Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;)Lcom/wsw/cospa/widget/ListTree;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/wsw/cospa/widget/ListTree;->getNodeByPlaneIndex(I)Lcom/wsw/cospa/widget/ListTree$TreeNode;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;->if(Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;Lcom/wsw/cospa/widget/ListTree$TreeNode;)Lcom/wsw/cospa/widget/ListTree$TreeNode;

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$new;->for:Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;

    invoke-static {p1}, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;->for(Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;)Lcom/wsw/cospa/widget/ListTree;

    move-result-object p1

    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$new;->for:Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;

    invoke-static {v0}, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;->do(Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;)Lcom/wsw/cospa/widget/ListTree$TreeNode;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/widget/ListTree;->getNodePlaneIndex(Lcom/wsw/cospa/widget/ListTree$TreeNode;)I

    move-result p1

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$new;->for:Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;

    invoke-static {v0}, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;->do(Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;)Lcom/wsw/cospa/widget/ListTree$TreeNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->isExpand()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$new;->for:Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;

    invoke-static {v0}, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;->for(Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;)Lcom/wsw/cospa/widget/ListTree;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/widget/ListTree;->collapseNode(I)I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$new;->for:Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 7
    iget-object v1, p0, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$new;->for:Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$new;->for:Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;

    invoke-static {v0}, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;->for(Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;)Lcom/wsw/cospa/widget/ListTree;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/widget/ListTree;->expandNode(I)I

    move-result v0

    .line 9
    iget-object v1, p0, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$new;->for:Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 10
    iget-object v1, p0, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$new;->for:Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    :goto_0
    return-void
.end method
