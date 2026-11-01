.class public Lcom/wsw/cospa/adapter/DownloadChapterAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/adapter/DownloadChapterAdapter$ChapterViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/wsw/cospa/adapter/DownloadChapterAdapter$ChapterViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private do:Lcom/wsw/cospa/listener/OnItemClickListener;

.field private for:Landroid/view/LayoutInflater;

.field private if:Landroid/content/Context;

.field private new:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/Switcher<",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private try:Lcom/wsw/cospa/bean/ComicInfoBean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/wsw/cospa/bean/ComicInfoBean;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/wsw/cospa/bean/ComicInfoBean;",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/Switcher<",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/adapter/DownloadChapterAdapter;->new:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/adapter/DownloadChapterAdapter;->if:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/wsw/cospa/adapter/DownloadChapterAdapter;->try:Lcom/wsw/cospa/bean/ComicInfoBean;

    .line 5
    iput-object p3, p0, Lcom/wsw/cospa/adapter/DownloadChapterAdapter;->new:Ljava/util/List;

    const-string p2, "layout_inflater"

    .line 6
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/wsw/cospa/adapter/DownloadChapterAdapter;->for:Landroid/view/LayoutInflater;

    return-void
.end method

.method public static synthetic do(ILcom/wsw/cospa/bean/Switcher;Lcom/wsw/cospa/bean/Switcher;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/wsw/cospa/adapter/DownloadChapterAdapter;->try(ILcom/wsw/cospa/bean/Switcher;Lcom/wsw/cospa/bean/Switcher;)I

    move-result p0

    return p0
.end method

.method private static synthetic try(ILcom/wsw/cospa/bean/Switcher;Lcom/wsw/cospa/bean/Switcher;)I
    .locals 1

    const v0, 0x186a1

    if-ne p0, v0, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/Switcher;->getElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/bean/ChapterListBean;

    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterIndex()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/Switcher;->getElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/ChapterListBean;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterIndex()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/Switcher;->getElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/bean/ChapterListBean;

    invoke-virtual {p0}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterIndex()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/Switcher;->getElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/ChapterListBean;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterIndex()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public case(Lcom/wsw/cospa/adapter/DownloadChapterAdapter$ChapterViewHolder;I)V
    .locals 2
    .param p1    # Lcom/wsw/cospa/adapter/DownloadChapterAdapter$ChapterViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p2, p0, Lcom/wsw/cospa/adapter/DownloadChapterAdapter;->new:Ljava/util/List;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/wsw/cospa/bean/Switcher;

    if-eqz p2, :cond_0

    .line 2
    iget-object v0, p1, Lcom/wsw/cospa/adapter/DownloadChapterAdapter$ChapterViewHolder;->tvChapter:Lcom/wsw/cospa/widget/view/ChapterButton;

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/Switcher;->getElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/ChapterListBean;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/Switcher;->getElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ChapterListBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ChapterListBean;->isDownload()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    iget-object p2, p1, Lcom/wsw/cospa/adapter/DownloadChapterAdapter$ChapterViewHolder;->tvChapter:Lcom/wsw/cospa/widget/view/ChapterButton;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/wsw/cospa/widget/view/ChapterButton;->setDownload(Z)V

    .line 5
    iget-object p1, p1, Lcom/wsw/cospa/adapter/DownloadChapterAdapter$ChapterViewHolder;->tvChapter:Lcom/wsw/cospa/widget/view/ChapterButton;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p1, Lcom/wsw/cospa/adapter/DownloadChapterAdapter$ChapterViewHolder;->tvChapter:Lcom/wsw/cospa/widget/view/ChapterButton;

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/view/ChapterButton;->setDownload(Z)V

    .line 7
    iget-object p1, p1, Lcom/wsw/cospa/adapter/DownloadChapterAdapter$ChapterViewHolder;->tvChapter:Lcom/wsw/cospa/widget/view/ChapterButton;

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/Switcher;->isEnable()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_0
    return-void
.end method

.method public else(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/adapter/DownloadChapterAdapter$ChapterViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/adapter/DownloadChapterAdapter;->for:Landroid/view/LayoutInflater;

    const p2, 0x7f0c0077

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/wsw/cospa/adapter/DownloadChapterAdapter$ChapterViewHolder;

    invoke-direct {p2, p1}, Lcom/wsw/cospa/adapter/DownloadChapterAdapter$ChapterViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public for()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/Switcher<",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/DownloadChapterAdapter;->new:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/DownloadChapterAdapter;->new:Ljava/util/List;

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

.method public declared-synchronized goto(I)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/DownloadChapterAdapter;->new:Ljava/util/List;

    new-instance v1, Landroid/support/v4/l20;

    invoke-direct {v1, p1}, Landroid/support/v4/l20;-><init>(I)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p1, 0x0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/adapter/DownloadChapterAdapter;->new:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V
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

.method public if(Lcom/wsw/cospa/bean/ChapterListBean;)Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/wsw/cospa/model/throw;->else()Lcom/wsw/cospa/model/throw;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/adapter/DownloadChapterAdapter;->try:Lcom/wsw/cospa/bean/ComicInfoBean;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/model/throw;->case(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wsw/cospa/bean/Task;

    invoke-virtual {v3}, Lcom/wsw/cospa/bean/Task;->getDurChapterUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public new(I)Lcom/wsw/cospa/bean/Switcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/wsw/cospa/bean/Switcher<",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/DownloadChapterAdapter;->new:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/Switcher;

    return-object p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/wsw/cospa/adapter/DownloadChapterAdapter$ChapterViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/adapter/DownloadChapterAdapter;->case(Lcom/wsw/cospa/adapter/DownloadChapterAdapter$ChapterViewHolder;I)V

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
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/adapter/DownloadChapterAdapter;->else(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/adapter/DownloadChapterAdapter$ChapterViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized refresh(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/Switcher<",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ">;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/DownloadChapterAdapter;->new:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/adapter/DownloadChapterAdapter;->new:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/adapter/DownloadChapterAdapter;->new:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/adapter/DownloadChapterAdapter;->new:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V
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
    iput-object p1, p0, Lcom/wsw/cospa/adapter/DownloadChapterAdapter;->do:Lcom/wsw/cospa/listener/OnItemClickListener;

    return-void
.end method

.method public this()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/DownloadChapterAdapter;->new:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/adapter/DownloadChapterAdapter;->new:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method
