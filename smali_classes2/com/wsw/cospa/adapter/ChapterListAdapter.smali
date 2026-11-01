.class public Lcom/wsw/cospa/adapter/ChapterListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/adapter/ChapterListAdapter$ChapterViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/wsw/cospa/adapter/ChapterListAdapter$ChapterViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private case:I

.field private do:Lcom/wsw/cospa/listener/OnItemClickListener;

.field private for:Landroid/view/LayoutInflater;

.field private if:Landroid/content/Context;

.field private new:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ">;"
        }
    .end annotation
.end field

.field private try:Lcom/wsw/cospa/bean/ChapterListBean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/adapter/ChapterListAdapter;->new:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/adapter/ChapterListAdapter;->if:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/wsw/cospa/adapter/ChapterListAdapter;->for:Landroid/view/LayoutInflater;

    return-void
.end method

.method public static synthetic do(ILcom/wsw/cospa/bean/ChapterListBean;Lcom/wsw/cospa/bean/ChapterListBean;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/wsw/cospa/adapter/ChapterListAdapter;->new(ILcom/wsw/cospa/bean/ChapterListBean;Lcom/wsw/cospa/bean/ChapterListBean;)I

    move-result p0

    return p0
.end method

.method private synthetic for(Lcom/wsw/cospa/bean/ChapterListBean;ILandroid/view/View;)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/wsw/cospa/adapter/ChapterListAdapter;->do:Lcom/wsw/cospa/listener/OnItemClickListener;

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterIndex()I

    move-result p1

    iput p1, p0, Lcom/wsw/cospa/adapter/ChapterListAdapter;->case:I

    .line 3
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/adapter/ChapterListAdapter;->this(I)V

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/adapter/ChapterListAdapter;->do:Lcom/wsw/cospa/listener/OnItemClickListener;

    invoke-interface {p1, p2}, Lcom/wsw/cospa/listener/OnItemClickListener;->onItemClick(I)V

    :cond_0
    return-void
.end method

.method public static synthetic if(Lcom/wsw/cospa/adapter/ChapterListAdapter;Lcom/wsw/cospa/bean/ChapterListBean;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/wsw/cospa/adapter/ChapterListAdapter;->for(Lcom/wsw/cospa/bean/ChapterListBean;ILandroid/view/View;)V

    return-void
.end method

.method private static synthetic new(ILcom/wsw/cospa/bean/ChapterListBean;Lcom/wsw/cospa/bean/ChapterListBean;)I
    .locals 1

    const v0, 0x186a1

    if-ne p0, v0, :cond_0

    .line 1
    new-instance p0, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterIndex()I

    move-result p1

    invoke-direct {p0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterIndex()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p0

    return p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/Integer;

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterIndex()I

    move-result p2

    invoke-direct {p0, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterIndex()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public case(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/adapter/ChapterListAdapter$ChapterViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/wsw/cospa/adapter/ChapterListAdapter;->for:Landroid/view/LayoutInflater;

    const v0, 0x7f0c005c

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/wsw/cospa/adapter/ChapterListAdapter$ChapterViewHolder;

    invoke-direct {p2, p1}, Lcom/wsw/cospa/adapter/ChapterListAdapter$ChapterViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public declared-synchronized else(I)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterListAdapter;->new:Ljava/util/List;

    new-instance v1, Landroid/support/v4/ik;

    invoke-direct {v1, p1}, Landroid/support/v4/ik;-><init>(I)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterListAdapter;->new:Ljava/util/List;

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
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterListAdapter;->new:Ljava/util/List;

    return-object v0
.end method

.method public goto(Lcom/wsw/cospa/bean/ChapterListBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/ChapterListAdapter;->try:Lcom/wsw/cospa/bean/ChapterListBean;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/wsw/cospa/adapter/ChapterListAdapter$ChapterViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/adapter/ChapterListAdapter;->try(Lcom/wsw/cospa/adapter/ChapterListAdapter$ChapterViewHolder;I)V

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
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/adapter/ChapterListAdapter;->case(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/adapter/ChapterListAdapter$ChapterViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized refresh(Ljava/util/List;)V
    .locals 2
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
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterListAdapter;->new:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/adapter/ChapterListAdapter;->new:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterListAdapter;->new:Ljava/util/List;

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
    iput-object p1, p0, Lcom/wsw/cospa/adapter/ChapterListAdapter;->do:Lcom/wsw/cospa/listener/OnItemClickListener;

    return-void
.end method

.method public this(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/adapter/ChapterListAdapter;->case:I

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public try(Lcom/wsw/cospa/adapter/ChapterListAdapter$ChapterViewHolder;I)V
    .locals 5
    .param p1    # Lcom/wsw/cospa/adapter/ChapterListAdapter$ChapterViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterListAdapter;->new:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ChapterListBean;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p1, Lcom/wsw/cospa/adapter/ChapterListAdapter$ChapterViewHolder;->tvChapter:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/wsw/cospa/adapter/ChapterListAdapter;->try:Lcom/wsw/cospa/bean/ChapterListBean;

    const v2, 0x7f06008d

    const v3, 0x7f060007

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v1, v0}, Lcom/wsw/cospa/bean/ChapterListBean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p1, Lcom/wsw/cospa/adapter/ChapterListAdapter$ChapterViewHolder;->tvChapter:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/wsw/cospa/adapter/ChapterListAdapter;->if:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p1, Lcom/wsw/cospa/adapter/ChapterListAdapter$ChapterViewHolder;->tvChapter:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/wsw/cospa/adapter/ChapterListAdapter;->if:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 7
    :cond_2
    iget v1, p0, Lcom/wsw/cospa/adapter/ChapterListAdapter;->case:I

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterIndex()I

    move-result v4

    if-ne v1, v4, :cond_3

    .line 8
    iget-object v1, p1, Lcom/wsw/cospa/adapter/ChapterListAdapter$ChapterViewHolder;->tvChapter:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/wsw/cospa/adapter/ChapterListAdapter;->if:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 9
    :cond_3
    iget-object v1, p1, Lcom/wsw/cospa/adapter/ChapterListAdapter$ChapterViewHolder;->tvChapter:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/wsw/cospa/adapter/ChapterListAdapter;->if:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    :goto_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Landroid/support/v4/hk;

    invoke-direct {v1, p0, v0, p2}, Landroid/support/v4/hk;-><init>(Lcom/wsw/cospa/adapter/ChapterListAdapter;Lcom/wsw/cospa/bean/ChapterListBean;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
