.class public Lcom/wsw/cospa/adapter/FindComicLeftAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/adapter/FindComicLeftAdapter$ChapterViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/wsw/cospa/adapter/FindComicLeftAdapter$ChapterViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private case:I

.field private do:Lcom/wsw/cospa/listener/OnItemClickListener;

.field private for:Landroid/content/Context;

.field private if:I

.field private new:Landroid/view/LayoutInflater;

.field private try:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/vo/FindParentVo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/wsw/cospa/adapter/FindComicLeftAdapter;->if:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/adapter/FindComicLeftAdapter;->try:Ljava/util/List;

    .line 4
    iput-object p1, p0, Lcom/wsw/cospa/adapter/FindComicLeftAdapter;->for:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/wsw/cospa/adapter/FindComicLeftAdapter;->new:Landroid/view/LayoutInflater;

    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/adapter/FindComicLeftAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/adapter/FindComicLeftAdapter;->lambda$onBindViewHolder$0(ILandroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(ILandroid/view/View;)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/wsw/cospa/adapter/FindComicLeftAdapter;->if:I

    .line 2
    iput p1, p0, Lcom/wsw/cospa/adapter/FindComicLeftAdapter;->if:I

    .line 3
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 4
    iget p1, p0, Lcom/wsw/cospa/adapter/FindComicLeftAdapter;->if:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/adapter/FindComicLeftAdapter;->do:Lcom/wsw/cospa/listener/OnItemClickListener;

    if-eqz p1, :cond_0

    .line 6
    iget p2, p0, Lcom/wsw/cospa/adapter/FindComicLeftAdapter;->if:I

    invoke-interface {p1, p2}, Lcom/wsw/cospa/listener/OnItemClickListener;->onItemClick(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public for(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/adapter/FindComicLeftAdapter$ChapterViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/wsw/cospa/adapter/FindComicLeftAdapter;->new:Landroid/view/LayoutInflater;

    const v0, 0x7f0c0097

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/wsw/cospa/adapter/FindComicLeftAdapter$ChapterViewHolder;

    invoke-direct {p2, p1}, Lcom/wsw/cospa/adapter/FindComicLeftAdapter$ChapterViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/FindComicLeftAdapter;->try:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/vo/FindParentVo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/FindComicLeftAdapter;->try:Ljava/util/List;

    return-object v0
.end method

.method public if(Lcom/wsw/cospa/adapter/FindComicLeftAdapter$ChapterViewHolder;I)V
    .locals 3
    .param p1    # Lcom/wsw/cospa/adapter/FindComicLeftAdapter$ChapterViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/wsw/cospa/adapter/FindComicLeftAdapter;->if:I

    if-ne v0, p2, :cond_0

    .line 2
    iget-object v0, p1, Lcom/wsw/cospa/adapter/FindComicLeftAdapter$ChapterViewHolder;->selectLine:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p1, Lcom/wsw/cospa/adapter/FindComicLeftAdapter$ChapterViewHolder;->findLeft:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/wsw/cospa/adapter/FindComicLeftAdapter;->for:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060110

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/wsw/cospa/adapter/FindComicLeftAdapter$ChapterViewHolder;->selectLine:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p1, Lcom/wsw/cospa/adapter/FindComicLeftAdapter$ChapterViewHolder;->findLeft:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/wsw/cospa/adapter/FindComicLeftAdapter;->for:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060111

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 6
    :goto_0
    iget-object v0, p1, Lcom/wsw/cospa/adapter/FindComicLeftAdapter$ChapterViewHolder;->parentName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wsw/cospa/adapter/FindComicLeftAdapter;->try:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/vo/FindParentVo;

    invoke-virtual {v1}, Lcom/wsw/cospa/vo/FindParentVo;->getParentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p1, p1, Lcom/wsw/cospa/adapter/FindComicLeftAdapter$ChapterViewHolder;->findLeft:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/support/v4/zb0;

    invoke-direct {v0, p0, p2}, Landroid/support/v4/zb0;-><init>(Lcom/wsw/cospa/adapter/FindComicLeftAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public declared-synchronized new(I)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/wsw/cospa/adapter/FindComicLeftAdapter;->if:I

    if-eq p1, v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 3
    iput p1, p0, Lcom/wsw/cospa/adapter/FindComicLeftAdapter;->if:I

    .line 4
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/wsw/cospa/adapter/FindComicLeftAdapter$ChapterViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/adapter/FindComicLeftAdapter;->if(Lcom/wsw/cospa/adapter/FindComicLeftAdapter$ChapterViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/adapter/FindComicLeftAdapter;->for(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/adapter/FindComicLeftAdapter$ChapterViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized refresh(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/vo/FindParentVo;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/FindComicLeftAdapter;->try:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/adapter/FindComicLeftAdapter;->try:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/adapter/FindComicLeftAdapter;->try:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setOnItemClickListener(Lcom/wsw/cospa/listener/OnItemClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/FindComicLeftAdapter;->do:Lcom/wsw/cospa/listener/OnItemClickListener;

    return-void
.end method
