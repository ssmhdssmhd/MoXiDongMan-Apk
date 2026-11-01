.class public Lcom/wsw/cospa/adapter/ComicShelfListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private case:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private do:Lcom/wsw/cospa/listener/OnItemClickListener;

.field private for:Landroid/content/Context;

.field private if:Lcom/wsw/cospa/listener/OnLongItemClickListener;

.field private new:Landroid/view/LayoutInflater;

.field private try:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicShelfBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/adapter/ComicShelfListAdapter;->try:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/wsw/cospa/adapter/ComicShelfListAdapter;->case:Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/wsw/cospa/adapter/ComicShelfListAdapter;->for:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/wsw/cospa/adapter/ComicShelfListAdapter;->new:Landroid/view/LayoutInflater;

    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/adapter/ComicShelfListAdapter;ILandroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/adapter/ComicShelfListAdapter;->else(ILandroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private synthetic else(ILandroid/view/View;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ComicShelfListAdapter;->if:Lcom/wsw/cospa/listener/OnLongItemClickListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p2, p1}, Lcom/wsw/cospa/listener/OnLongItemClickListener;->onLongClick(Landroid/view/View;I)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic for(Lcom/wsw/cospa/adapter/ComicShelfListAdapter;ILandroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/adapter/ComicShelfListAdapter;->this(ILandroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private synthetic goto(ILandroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/wsw/cospa/adapter/ComicShelfListAdapter;->do:Lcom/wsw/cospa/listener/OnItemClickListener;

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2, p1}, Lcom/wsw/cospa/listener/OnItemClickListener;->onItemClick(I)V

    :cond_0
    return-void
.end method

.method public static synthetic if(Lcom/wsw/cospa/adapter/ComicShelfListAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/adapter/ComicShelfListAdapter;->lambda$onBindViewHolder$0(ILandroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(ILandroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/wsw/cospa/adapter/ComicShelfListAdapter;->do:Lcom/wsw/cospa/listener/OnItemClickListener;

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2, p1}, Lcom/wsw/cospa/listener/OnItemClickListener;->onItemClick(I)V

    :cond_0
    return-void
.end method

.method public static synthetic new(Lcom/wsw/cospa/adapter/ComicShelfListAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/adapter/ComicShelfListAdapter;->goto(ILandroid/view/View;)V

    return-void
.end method

.method private synthetic this(ILandroid/view/View;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ComicShelfListAdapter;->if:Lcom/wsw/cospa/listener/OnLongItemClickListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p2, p1}, Lcom/wsw/cospa/listener/OnLongItemClickListener;->onLongClick(Landroid/view/View;I)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public break(Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;I)V
    .locals 13
    .param p1    # Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ComicShelfListAdapter;->try:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ComicShelfBean;

    .line 2
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v1

    .line 3
    iget-object v2, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->ivCover:Lcom/wsw/cospa/widget/view/RoundImageView;

    const v3, 0x7f09010d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getCoverUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    :cond_0
    iget-object v2, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->ivCover:Lcom/wsw/cospa/widget/view/RoundImageView;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 6
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wsw/cospa/model/do;->abstract(Ljava/lang/String;)Lcom/wsw/cospa/bean/ComicSourceBean;

    move-result-object v2

    .line 7
    iget-object v4, p0, Lcom/wsw/cospa/adapter/ComicShelfListAdapter;->for:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getCoverUrl()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->ivCover:Lcom/wsw/cospa/widget/view/RoundImageView;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getCoverHeader()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeHeaders;->getDefaultUserAgent(Lcom/wsw/cospa/bean/ComicSourceBean;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v6, v7, v2}, Lcom/wsw/cospa/utils/finally;->class(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v2, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->ivCover:Lcom/wsw/cospa/widget/view/RoundImageView;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getCoverUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 9
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Cover url : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getCoverUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " shelfBean.isLoading() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->isLoading()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ComicShelfListAdapter"

    invoke-static {v3, v2}, Landroid/support/v4/vv0;->if(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v2, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->tvComicName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v2, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->tvOrigin:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getOrigin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->isLoading()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_2

    .line 13
    iget-object v1, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->loadingView:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {v1}, Lcom/wang/avi/AVLoadingIndicatorView;->show()V

    .line 14
    iget-object v1, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->loadingView:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {v1, v2}, Lcom/wang/avi/AVLoadingIndicatorView;->setVisibility(I)V

    .line 15
    iget-object v1, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->unRead:Lcom/wsw/cospa/widget/BadgeView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 16
    :cond_2
    iget-object v1, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->loadingView:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {v1}, Lcom/wang/avi/AVLoadingIndicatorView;->hide()V

    .line 17
    iget-object v1, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->loadingView:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {v1, v3}, Lcom/wang/avi/AVLoadingIndicatorView;->setVisibility(I)V

    .line 18
    iget-object v1, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->unRead:Lcom/wsw/cospa/widget/BadgeView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    iget-object v1, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->unRead:Lcom/wsw/cospa/widget/BadgeView;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getHasUpdate()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/wsw/cospa/widget/BadgeView;->setHighlight(Z)V

    .line 20
    iget-object v1, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->unRead:Lcom/wsw/cospa/widget/BadgeView;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getUnreadChapterNum()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/wsw/cospa/widget/BadgeView;->setBadgeCount(I)V

    .line 21
    :goto_0
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getLastChapterName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v4, "\u5c40"

    const-string v5, "\u7ae0"

    const-string v6, "\u5377"

    const-string v7, "\u4e0b"

    const-string v8, "\u4e0a"

    const-string v9, "-"

    const-string v10, "\u8bdd"

    if-nez v1, :cond_7

    .line 22
    iget-object v1, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->tvLastChapter:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getLastChapterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v11, "\u66f4\u65b0\u81f3"

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getLastChapterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 24
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getLastChapterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getLastChapterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 25
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getLastChapterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getLastChapterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 26
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getLastChapterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    .line 27
    :cond_3
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getLastChapterName()Ljava/lang/String;

    move-result-object v1

    const-string v12, "\u8fde\u8f7d\u4e2d"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getLastChapterName()Ljava/lang/String;

    move-result-object v1

    const-string v12, "\u5df2\u5b8c\u7ed3"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 28
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getLastChapterName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    .line 29
    :cond_4
    iget-object v1, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->tvLastChapter:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getLastChapterName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 30
    :cond_5
    :goto_1
    iget-object v1, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->tvLastChapter:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getLastChapterName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 31
    :cond_6
    :goto_2
    iget-object v1, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->tvLastChapter:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getLastChapterName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 32
    :cond_7
    iget-object v1, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->tvLastChapter:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 33
    :goto_3
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getDurChapterName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 34
    iget-object v1, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->tvReadChapter:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 35
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getDurChapterName()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "\u9605\u8bfb\u81f3"

    if-nez v1, :cond_a

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 37
    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 38
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 39
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    .line 40
    :cond_8
    invoke-static {v0}, Landroid/support/v4/tm1;->case(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 41
    iget-object v1, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->tvReadChapter:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 42
    :cond_9
    iget-object v1, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->tvReadChapter:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 43
    :cond_a
    :goto_4
    iget-object v1, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->tvReadChapter:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 44
    :cond_b
    iget-object v0, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->tvReadChapter:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    :goto_5
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Landroid/support/v4/no;

    invoke-direct {v1, p0, p2}, Landroid/support/v4/no;-><init>(Lcom/wsw/cospa/adapter/ComicShelfListAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Landroid/support/v4/po;

    invoke-direct {v0, p0, p2}, Landroid/support/v4/po;-><init>(Lcom/wsw/cospa/adapter/ComicShelfListAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public declared-synchronized case(I)Lcom/wsw/cospa/bean/ComicShelfBean;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ComicShelfListAdapter;->try:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/ComicShelfBean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public catch(Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;ILjava/util/List;)V
    .locals 12
    .param p1    # Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/wsw/cospa/adapter/ComicShelfListAdapter;->try:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/wsw/cospa/bean/ComicShelfBean;

    .line 2
    invoke-virtual {p3}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v0

    .line 3
    iget-object v1, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->ivCover:Lcom/wsw/cospa/widget/view/RoundImageView;

    const v2, 0x7f09010d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicInfoBean;->getCoverUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    :cond_0
    iget-object v1, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->ivCover:Lcom/wsw/cospa/widget/view/RoundImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 6
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicInfoBean;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wsw/cospa/model/do;->abstract(Ljava/lang/String;)Lcom/wsw/cospa/bean/ComicSourceBean;

    move-result-object v1

    .line 7
    iget-object v3, p0, Lcom/wsw/cospa/adapter/ComicShelfListAdapter;->for:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicInfoBean;->getCoverUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->ivCover:Lcom/wsw/cospa/widget/view/RoundImageView;

    invoke-virtual {p3}, Lcom/wsw/cospa/bean/ComicShelfBean;->getCoverHeader()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeHeaders;->getDefaultUserAgent(Lcom/wsw/cospa/bean/ComicSourceBean;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v5, v6, v1}, Lcom/wsw/cospa/utils/finally;->class(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v1, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->ivCover:Lcom/wsw/cospa/widget/view/RoundImageView;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicInfoBean;->getCoverUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 9
    :cond_1
    iget-object v1, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->tvComicName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicInfoBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v1, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->tvOrigin:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicInfoBean;->getOrigin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p3}, Lcom/wsw/cospa/bean/ComicShelfBean;->isLoading()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->loadingView:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {v0, v1}, Lcom/wang/avi/AVLoadingIndicatorView;->setVisibility(I)V

    .line 13
    iget-object v0, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->unRead:Lcom/wsw/cospa/widget/BadgeView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object v0, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->loadingView:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {v0}, Lcom/wang/avi/AVLoadingIndicatorView;->show()V

    goto :goto_0

    .line 15
    :cond_2
    iget-object v0, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->loadingView:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {v0}, Lcom/wang/avi/AVLoadingIndicatorView;->hide()V

    .line 16
    iget-object v0, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->loadingView:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {v0, v2}, Lcom/wang/avi/AVLoadingIndicatorView;->setVisibility(I)V

    .line 17
    iget-object v0, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->unRead:Lcom/wsw/cospa/widget/BadgeView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    iget-object v0, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->unRead:Lcom/wsw/cospa/widget/BadgeView;

    invoke-virtual {p3}, Lcom/wsw/cospa/bean/ComicShelfBean;->getHasUpdate()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/wsw/cospa/widget/BadgeView;->setHighlight(Z)V

    .line 19
    iget-object v0, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->unRead:Lcom/wsw/cospa/widget/BadgeView;

    invoke-virtual {p3}, Lcom/wsw/cospa/bean/ComicShelfBean;->getUnreadChapterNum()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/wsw/cospa/widget/BadgeView;->setBadgeCount(I)V

    .line 20
    :goto_0
    invoke-virtual {p3}, Lcom/wsw/cospa/bean/ComicShelfBean;->getLastChapterName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, "\u5c40"

    const-string v4, "\u7ae0"

    const-string v5, "\u5377"

    const-string v6, "\u4e0b"

    const-string v7, "\u4e0a"

    const-string v8, "-"

    const-string v9, "\u8bdd"

    if-nez v0, :cond_7

    .line 21
    iget-object v0, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->tvLastChapter:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 22
    invoke-virtual {p3}, Lcom/wsw/cospa/bean/ComicShelfBean;->getLastChapterName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v10, "\u66f4\u65b0\u81f3"

    if-nez v0, :cond_6

    invoke-virtual {p3}, Lcom/wsw/cospa/bean/ComicShelfBean;->getLastChapterName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 23
    invoke-virtual {p3}, Lcom/wsw/cospa/bean/ComicShelfBean;->getLastChapterName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p3}, Lcom/wsw/cospa/bean/ComicShelfBean;->getLastChapterName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 24
    invoke-virtual {p3}, Lcom/wsw/cospa/bean/ComicShelfBean;->getLastChapterName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p3}, Lcom/wsw/cospa/bean/ComicShelfBean;->getLastChapterName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 25
    invoke-virtual {p3}, Lcom/wsw/cospa/bean/ComicShelfBean;->getLastChapterName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 26
    :cond_3
    invoke-virtual {p3}, Lcom/wsw/cospa/bean/ComicShelfBean;->getLastChapterName()Ljava/lang/String;

    move-result-object v0

    const-string v11, "\u8fde\u8f7d\u4e2d"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p3}, Lcom/wsw/cospa/bean/ComicShelfBean;->getLastChapterName()Ljava/lang/String;

    move-result-object v0

    const-string v11, "\u5df2\u5b8c\u7ed3"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 27
    invoke-virtual {p3}, Lcom/wsw/cospa/bean/ComicShelfBean;->getLastChapterName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 28
    :cond_4
    iget-object v0, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->tvLastChapter:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/wsw/cospa/bean/ComicShelfBean;->getLastChapterName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 29
    :cond_5
    :goto_1
    iget-object v0, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->tvLastChapter:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/wsw/cospa/bean/ComicShelfBean;->getLastChapterName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 30
    :cond_6
    :goto_2
    iget-object v0, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->tvLastChapter:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/wsw/cospa/bean/ComicShelfBean;->getLastChapterName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 31
    :cond_7
    iget-object v0, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->tvLastChapter:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 32
    :goto_3
    invoke-virtual {p3}, Lcom/wsw/cospa/bean/ComicShelfBean;->getDurChapterName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 33
    iget-object v0, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->tvReadChapter:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 34
    invoke-virtual {p3}, Lcom/wsw/cospa/bean/ComicShelfBean;->getDurChapterName()Ljava/lang/String;

    move-result-object p3

    .line 35
    invoke-virtual {p3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "\u9605\u8bfb\u81f3"

    if-nez v0, :cond_a

    invoke-virtual {p3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 36
    invoke-virtual {p3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 37
    invoke-virtual {p3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 38
    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    .line 39
    :cond_8
    invoke-static {p3}, Landroid/support/v4/tm1;->case(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 40
    iget-object v0, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->tvReadChapter:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 41
    :cond_9
    iget-object v0, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->tvReadChapter:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 42
    :cond_a
    :goto_4
    iget-object v0, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->tvReadChapter:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 43
    :cond_b
    iget-object p3, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;->tvReadChapter:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44
    :goto_5
    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Landroid/support/v4/oo;

    invoke-direct {v0, p0, p2}, Landroid/support/v4/oo;-><init>(Lcom/wsw/cospa/adapter/ComicShelfListAdapter;I)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p3, Landroid/support/v4/qo;

    invoke-direct {p3, p0, p2}, Landroid/support/v4/qo;-><init>(Lcom/wsw/cospa/adapter/ComicShelfListAdapter;I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public class(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/adapter/ComicShelfListAdapter;->new:Landroid/view/LayoutInflater;

    const p2, 0x7f0c0091

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;

    invoke-direct {p2, p1}, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public declared-synchronized const(Lcom/wsw/cospa/bean/ComicShelfBean;)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/wsw/cospa/adapter/ComicShelfListAdapter;->try:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/adapter/ComicShelfListAdapter;->try:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/adapter/ComicShelfListAdapter;->try:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ComicShelfListAdapter;->try:Ljava/util/List;

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

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/adapter/ComicShelfListAdapter;->break(Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    check-cast p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wsw/cospa/adapter/ComicShelfListAdapter;->catch(Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;ILjava/util/List;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/adapter/ComicShelfListAdapter;->class(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized refresh(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicShelfBean;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ComicShelfListAdapter;->try:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/adapter/ComicShelfListAdapter;->try:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ComicShelfListAdapter;->try:Ljava/util/List;

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
    iput-object p1, p0, Lcom/wsw/cospa/adapter/ComicShelfListAdapter;->do:Lcom/wsw/cospa/listener/OnItemClickListener;

    return-void
.end method

.method public setOnLongItemClickListener(Lcom/wsw/cospa/listener/OnLongItemClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/ComicShelfListAdapter;->if:Lcom/wsw/cospa/listener/OnLongItemClickListener;

    return-void
.end method

.method public declared-synchronized try()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ComicShelfListAdapter;->try:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
