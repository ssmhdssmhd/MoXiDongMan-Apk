.class public Lcom/wsw/cospa/adapter/SearchBookshelfAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/adapter/SearchBookshelfAdapter$OnSearchComicListener;,
        Lcom/wsw/cospa/adapter/SearchBookshelfAdapter$SearchBookshelfViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/wsw/cospa/adapter/SearchBookshelfAdapter$SearchBookshelfViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private do:Landroid/content/Context;

.field private for:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private if:Lcom/wsw/cospa/adapter/SearchBookshelfAdapter$OnSearchComicListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/adapter/SearchBookshelfAdapter;->for:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/adapter/SearchBookshelfAdapter;->do:Landroid/content/Context;

    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/adapter/SearchBookshelfAdapter;)Lcom/wsw/cospa/adapter/SearchBookshelfAdapter$OnSearchComicListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/adapter/SearchBookshelfAdapter;->if:Lcom/wsw/cospa/adapter/SearchBookshelfAdapter$OnSearchComicListener;

    return-object p0
.end method


# virtual methods
.method public for(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/adapter/SearchBookshelfAdapter$SearchBookshelfViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c009e

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/wsw/cospa/adapter/SearchBookshelfAdapter$SearchBookshelfViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/wsw/cospa/adapter/SearchBookshelfAdapter$SearchBookshelfViewHolder;-><init>(Lcom/wsw/cospa/adapter/SearchBookshelfAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/SearchBookshelfAdapter;->for:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public if(Lcom/wsw/cospa/adapter/SearchBookshelfAdapter$SearchBookshelfViewHolder;I)V
    .locals 6
    .param p1    # Lcom/wsw/cospa/adapter/SearchBookshelfAdapter$SearchBookshelfViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/SearchBookshelfAdapter;->for:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/wsw/cospa/bean/ComicInfoBean;

    .line 2
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hw;->case()Lcom/wsw/cospa/dao/ComicShelfBeanDao;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/wsw/cospa/dao/ComicShelfBeanDao$Properties;->do:Lorg/greenrobot/greendao/Property;

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicInfoBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, v1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ComicShelfBean;

    .line 3
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicInfoBean;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wsw/cospa/model/do;->abstract(Ljava/lang/String;)Lcom/wsw/cospa/bean/ComicSourceBean;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/wsw/cospa/adapter/SearchBookshelfAdapter;->do:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicInfoBean;->getCoverUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/wsw/cospa/adapter/SearchBookshelfAdapter$SearchBookshelfViewHolder;->ivCover:Lcom/wsw/cospa/widget/view/RoundImageView;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getCoverHeader()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeHeaders;->getDefaultUserAgent(Lcom/wsw/cospa/bean/ComicSourceBean;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v4, v5, v1}, Lcom/wsw/cospa/utils/finally;->class(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p1, Lcom/wsw/cospa/adapter/SearchBookshelfAdapter$SearchBookshelfViewHolder;->tvComicName:Lcom/wsw/cospa/widget/view/MarqueTextView;

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicInfoBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v1, p1, Lcom/wsw/cospa/adapter/SearchBookshelfAdapter$SearchBookshelfViewHolder;->tvOrigin:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicInfoBean;->getOrigin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getGroupId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v3, v1

    if-eqz v5, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getGroupId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/wsw/cospa/dao/do;->public(Ljava/lang/Long;)Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    move-result-object v0

    .line 9
    iget-object v1, p1, Lcom/wsw/cospa/adapter/SearchBookshelfAdapter$SearchBookshelfViewHolder;->tvLastChapter:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e66\u67b6\u540d\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->getGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p1, Lcom/wsw/cospa/adapter/SearchBookshelfAdapter$SearchBookshelfViewHolder;->tvLastChapter:Landroid/widget/TextView;

    const-string v1, "\u4e66\u67b6\u540d\uff1a\u5168\u90e8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :goto_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/wsw/cospa/adapter/SearchBookshelfAdapter$do;

    invoke-direct {v0, p0, p2}, Lcom/wsw/cospa/adapter/SearchBookshelfAdapter$do;-><init>(Lcom/wsw/cospa/adapter/SearchBookshelfAdapter;Lcom/wsw/cospa/bean/ComicInfoBean;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public new(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/SearchBookshelfAdapter;->for:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/adapter/SearchBookshelfAdapter;->for:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
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
    check-cast p1, Lcom/wsw/cospa/adapter/SearchBookshelfAdapter$SearchBookshelfViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/adapter/SearchBookshelfAdapter;->if(Lcom/wsw/cospa/adapter/SearchBookshelfAdapter$SearchBookshelfViewHolder;I)V

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
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/adapter/SearchBookshelfAdapter;->for(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/adapter/SearchBookshelfAdapter$SearchBookshelfViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized refresh(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicInfoBean;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/SearchBookshelfAdapter;->for:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/adapter/SearchBookshelfAdapter;->for:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/adapter/SearchBookshelfAdapter;->for:Ljava/util/List;

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

.method public setOnSearchComicListener(Lcom/wsw/cospa/adapter/SearchBookshelfAdapter$OnSearchComicListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/SearchBookshelfAdapter;->if:Lcom/wsw/cospa/adapter/SearchBookshelfAdapter$OnSearchComicListener;

    return-void
.end method
