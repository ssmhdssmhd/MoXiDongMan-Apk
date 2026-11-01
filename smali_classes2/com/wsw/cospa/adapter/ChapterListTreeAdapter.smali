.class public Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;
.super Lcom/wsw/cospa/widget/ListTreeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$onClickCallBack;,
        Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$for;,
        Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$new;,
        Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$do;,
        Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wsw/cospa/widget/ListTreeAdapter<",
        "Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$do;",
        ">;"
    }
.end annotation


# instance fields
.field private case:Lcom/wsw/cospa/utils/super;

.field private do:Lcom/wsw/cospa/widget/ListTree$TreeNode;

.field private for:Landroid/content/Context;

.field private if:Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$onClickCallBack;

.field private new:Lcom/wsw/cospa/widget/ListTree;

.field private try:Lcom/wsw/cospa/bean/ChapterListBean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/wsw/cospa/widget/ListTree;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/wsw/cospa/widget/ListTreeAdapter;-><init>(Lcom/wsw/cospa/widget/ListTree;)V

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;->for:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;->new:Lcom/wsw/cospa/widget/ListTree;

    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;)Lcom/wsw/cospa/widget/ListTree$TreeNode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;->do:Lcom/wsw/cospa/widget/ListTree$TreeNode;

    return-object p0
.end method

.method public static synthetic for(Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;)Lcom/wsw/cospa/widget/ListTree;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;->new:Lcom/wsw/cospa/widget/ListTree;

    return-object p0
.end method

.method public static synthetic if(Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;Lcom/wsw/cospa/widget/ListTree$TreeNode;)Lcom/wsw/cospa/widget/ListTree$TreeNode;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;->do:Lcom/wsw/cospa/widget/ListTree$TreeNode;

    return-object p1
.end method

.method public static synthetic new(Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;)Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$onClickCallBack;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;->if:Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$onClickCallBack;

    return-object p0
.end method


# virtual methods
.method public break(Lcom/wsw/cospa/bean/ChapterListBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;->try:Lcom/wsw/cospa/bean/ChapterListBean;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public case()Lcom/wsw/cospa/widget/ListTree$TreeNode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;->do:Lcom/wsw/cospa/widget/ListTree$TreeNode;

    return-object v0
.end method

.method public else(Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$do;I)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;->new:Lcom/wsw/cospa/widget/ListTree;

    invoke-virtual {v0, p2}, Lcom/wsw/cospa/widget/ListTree;->getNodeByPlaneIndex(I)Lcom/wsw/cospa/widget/ListTree$TreeNode;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->getLayoutResId()I

    move-result v0

    const v1, 0x7f0c0059

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p2}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 5
    check-cast p1, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$new;

    .line 6
    iget-object p1, p1, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$new;->if:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->getLayoutResId()I

    move-result v0

    const v1, 0x7f0c0058

    if-ne v0, v1, :cond_2

    .line 8
    invoke-virtual {p2}, Lcom/wsw/cospa/widget/ListTree$TreeNode;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$if;

    .line 9
    check-cast p1, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$for;

    .line 10
    iget-object v0, p1, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$for;->if:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$if;->for()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;->try:Lcom/wsw/cospa/bean/ChapterListBean;

    if-eqz v0, :cond_2

    .line 12
    invoke-static {p2}, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$if;->do(Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$if;)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/wsw/cospa/bean/ChapterListBean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 13
    iget-object p2, p1, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$for;->if:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;->for:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 14
    iget-object p1, p1, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$for;->if:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;->for:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060380

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 15
    :cond_1
    iget-object p2, p1, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$for;->if:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;->for:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 16
    iget-object p1, p1, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$for;->if:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;->for:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060117

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public goto(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$do;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    const v2, 0x7f0c0059

    if-ne p2, v2, :cond_0

    .line 2
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$new;

    invoke-direct {p2, p0, p1}, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$new;-><init>(Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;Landroid/view/View;)V

    return-object p2

    :cond_0
    const v2, 0x7f0c0058

    if-ne p2, v2, :cond_1

    .line 4
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 5
    new-instance p2, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$for;

    invoke-direct {p2, p0, p1}, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$for;-><init>(Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;Landroid/view/View;)V

    return-object p2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic onBindNodeViewHolder(Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$do;

    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;->else(Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$do;I)V

    return-void
.end method

.method public bridge synthetic onCreateNodeView(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/widget/ListTreeAdapter$ListTreeViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;->goto(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$do;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized refresh(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/wsw/cospa/utils/super;

    invoke-direct {v0, p1}, Lcom/wsw/cospa/utils/super;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;->case:Lcom/wsw/cospa/utils/super;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :try_start_1
    invoke-virtual {v0}, Lcom/wsw/cospa/utils/super;->new()Lcom/wsw/cospa/widget/ListTree;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;->new:Lcom/wsw/cospa/widget/ListTree;

    .line 3
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/widget/ListTreeAdapter;->refresh(Lcom/wsw/cospa/widget/ListTree;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    :try_start_2
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public this(Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$onClickCallBack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;->if:Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$onClickCallBack;

    return-void
.end method

.method public try()Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$onClickCallBack;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterListTreeAdapter;->if:Lcom/wsw/cospa/adapter/ChapterListTreeAdapter$onClickCallBack;

    return-object v0
.end method
