.class public Lcom/wsw/cospa/adapter/HistoryComicAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/widget/itemtouch/ItemTouchHelperAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/adapter/HistoryComicAdapter$OnCheckedChangeListener;,
        Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;,
        Lcom/wsw/cospa/adapter/HistoryComicAdapter$OnSlideRemoveListener;,
        Lcom/wsw/cospa/adapter/HistoryComicAdapter$OnItemSearchClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;",
        ">;",
        "Lcom/wsw/cospa/widget/itemtouch/ItemTouchHelperAdapter;"
    }
.end annotation


# instance fields
.field private break:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private case:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/HistoryComicBean;",
            ">;"
        }
    .end annotation
.end field

.field private catch:Lcom/wsw/cospa/widget/itemtouch/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;

.field private do:Lcom/wsw/cospa/listener/OnItemClickListener;

.field private else:Lcom/wsw/cospa/listener/OnLongItemClickListener;

.field private for:Lcom/wsw/cospa/adapter/HistoryComicAdapter$OnSlideRemoveListener;

.field private goto:Lcom/wsw/cospa/adapter/HistoryComicAdapter$OnCheckedChangeListener;

.field private if:Lcom/wsw/cospa/adapter/HistoryComicAdapter$OnItemSearchClickListener;

.field private new:Landroid/content/Context;

.field private this:Z

.field private try:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->case:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/wsw/cospa/adapter/HistoryComicAdapter$new;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/adapter/HistoryComicAdapter$new;-><init>(Lcom/wsw/cospa/adapter/HistoryComicAdapter;)V

    iput-object v0, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->catch:Lcom/wsw/cospa/widget/itemtouch/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;

    .line 4
    iput-object p1, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->new:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->try:Landroid/view/LayoutInflater;

    return-void
.end method

.method private synthetic break(Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->do:Lcom/wsw/cospa/listener/OnItemClickListener;

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/wsw/cospa/listener/OnItemClickListener;->onItemClick(I)V

    :cond_0
    return-void
.end method

.method private synthetic catch(Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->if:Lcom/wsw/cospa/adapter/HistoryComicAdapter$OnItemSearchClickListener;

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/wsw/cospa/adapter/HistoryComicAdapter$OnItemSearchClickListener;->onItemSearchClick(I)V

    :cond_0
    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/adapter/HistoryComicAdapter;Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->catch(Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;Landroid/view/View;)V

    return-void
.end method

.method private declared-synchronized final(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/HistoryComicBean;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/wsw/cospa/utils/case;->this()Lcom/wsw/cospa/utils/case;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/case;->else()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/wsw/cospa/adapter/HistoryComicAdapter$do;

    invoke-direct {v1, p0, p1}, Lcom/wsw/cospa/adapter/HistoryComicAdapter$do;-><init>(Lcom/wsw/cospa/adapter/HistoryComicAdapter;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static synthetic for(Lcom/wsw/cospa/adapter/HistoryComicAdapter;)Lcom/wsw/cospa/listener/OnLongItemClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->else:Lcom/wsw/cospa/listener/OnLongItemClickListener;

    return-object p0
.end method

.method public static synthetic if(Lcom/wsw/cospa/adapter/HistoryComicAdapter;Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->break(Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic new(Lcom/wsw/cospa/adapter/HistoryComicAdapter;)Lcom/wsw/cospa/adapter/HistoryComicAdapter$OnCheckedChangeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->goto:Lcom/wsw/cospa/adapter/HistoryComicAdapter$OnCheckedChangeListener;

    return-object p0
.end method

.method public static synthetic try(Lcom/wsw/cospa/adapter/HistoryComicAdapter;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->case:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized case(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/HistoryComicBean;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->final(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->case:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public class(Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;I)V
    .locals 7
    .param p1    # Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p2, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->case:Ljava/util/List;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/wsw/cospa/bean/HistoryComicBean;

    .line 2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/HistoryComicBean;->getCoverUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3
    iget-object v0, p1, Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;->ivCover:Lcom/wsw/cospa/widget/view/RoundImageView;

    const v1, 0x7f090391

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/HistoryComicBean;->getCoverUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    :cond_0
    iget-object v0, p1, Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;->ivCover:Lcom/wsw/cospa/widget/view/RoundImageView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 6
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/HistoryComicBean;->getCoverUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/HistoryComicBean;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wsw/cospa/model/do;->abstract(Ljava/lang/String;)Lcom/wsw/cospa/bean/ComicSourceBean;

    move-result-object v0

    .line 8
    iget-object v3, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->new:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/HistoryComicBean;->getCoverUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;->ivCover:Lcom/wsw/cospa/widget/view/RoundImageView;

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/HistoryComicBean;->getCoverHeader()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeHeaders;->getDefaultUserAgent(Lcom/wsw/cospa/bean/ComicSourceBean;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v5, v6, v0}, Lcom/wsw/cospa/utils/finally;->class(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_1
    iget-object v0, p1, Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;->ivCover:Lcom/wsw/cospa/widget/view/RoundImageView;

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/HistoryComicBean;->getCoverUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 10
    :cond_2
    iget-object v0, p1, Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;->tvComicName:Lcom/wsw/cospa/widget/view/MarqueTextView;

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/HistoryComicBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p1, Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;->tvOrigin:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/HistoryComicBean;->getOrigin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/HistoryComicBean;->getLastChapter()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v3, 0x0

    if-nez v0, :cond_8

    .line 13
    iget-object v0, p1, Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;->tvLastChapter:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/HistoryComicBean;->getLastChapter()Ljava/lang/String;

    move-result-object v0

    const-string v4, "\u8bdd"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v4, "\u66f4\u65b0\u81f3"

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/HistoryComicBean;->getLastChapter()Ljava/lang/String;

    move-result-object v0

    const-string v5, "-"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 15
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/HistoryComicBean;->getLastChapter()Ljava/lang/String;

    move-result-object v0

    const-string v5, "\u4e0a"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/HistoryComicBean;->getLastChapter()Ljava/lang/String;

    move-result-object v0

    const-string v5, "\u4e0b"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 16
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/HistoryComicBean;->getLastChapter()Ljava/lang/String;

    move-result-object v0

    const-string v5, "\u5377"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/HistoryComicBean;->getLastChapter()Ljava/lang/String;

    move-result-object v0

    const-string v5, "\u7ae0"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 17
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/HistoryComicBean;->getLastChapter()Ljava/lang/String;

    move-result-object v0

    const-string v5, "\u5c40"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/HistoryComicBean;->getLastChapter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 18
    iget-object v0, p1, Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;->tvLastChapter:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/HistoryComicBean;->getLastChapter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 19
    :cond_4
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/HistoryComicBean;->getLastChapter()Ljava/lang/String;

    move-result-object v0

    const-string v5, "\u8fde\u8f7d\u4e2d"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/HistoryComicBean;->getLastChapter()Ljava/lang/String;

    move-result-object v0

    const-string v5, "\u5df2\u5b8c\u7ed3"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 20
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/HistoryComicBean;->getLastChapter()Ljava/lang/String;

    move-result-object v0

    const-string v5, "\u66f4"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/HistoryComicBean;->getLastChapter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 21
    :cond_5
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/HistoryComicBean;->getLastChapter()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/tm1;->case(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22
    iget-object v0, p1, Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;->tvLastChapter:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/HistoryComicBean;->getLastChapter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 23
    :cond_6
    iget-object v0, p1, Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;->tvLastChapter:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/HistoryComicBean;->getLastChapter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 24
    :cond_7
    :goto_0
    iget-object v0, p1, Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;->tvLastChapter:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/HistoryComicBean;->getLastChapter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 25
    :cond_8
    iget-object v0, p1, Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;->tvLastChapter:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 26
    :goto_1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v4, Lcom/wsw/cospa/adapter/const;

    invoke-direct {v4, p0, p1}, Lcom/wsw/cospa/adapter/const;-><init>(Lcom/wsw/cospa/adapter/HistoryComicAdapter;Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v4, Lcom/wsw/cospa/adapter/HistoryComicAdapter$if;

    invoke-direct {v4, p0, p1}, Lcom/wsw/cospa/adapter/HistoryComicAdapter$if;-><init>(Lcom/wsw/cospa/adapter/HistoryComicAdapter;Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 28
    iget-object v0, p1, Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;->tvSearch:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 29
    iget-object v0, p1, Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;->tvSearch:Landroid/widget/TextView;

    new-instance v4, Lcom/wsw/cospa/adapter/class;

    invoke-direct {v4, p0, p1}, Lcom/wsw/cospa/adapter/class;-><init>(Lcom/wsw/cospa/adapter/HistoryComicAdapter;Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object v0, p1, Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 31
    iget-boolean v0, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->this:Z

    if-eqz v0, :cond_9

    .line 32
    iget-object v0, p1, Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_2

    .line 33
    :cond_9
    iget-object v0, p1, Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 34
    :goto_2
    iget-object v0, p1, Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/HistoryComicBean;->isChecked()Z

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 35
    iget-object p2, p1, Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;->checkbox:Landroid/widget/CheckBox;

    new-instance v0, Lcom/wsw/cospa/adapter/HistoryComicAdapter$for;

    invoke-direct {v0, p0, p1}, Lcom/wsw/cospa/adapter/HistoryComicAdapter$for;-><init>(Lcom/wsw/cospa/adapter/HistoryComicAdapter;Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public const(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->try:Landroid/view/LayoutInflater;

    const v0, 0x7f0c009d

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;

    invoke-direct {p2, p1}, Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public declared-synchronized else()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/HistoryComicBean;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->case:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->case:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public goto(I)Lcom/wsw/cospa/bean/HistoryComicBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->case:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/HistoryComicBean;

    return-object p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->class(Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;I)V

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
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->const(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/adapter/HistoryComicAdapter$ComicViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onItemDismiss(I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->case:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/HistoryComicBean;

    .line 2
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v1

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/HistoryComicBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/wsw/cospa/dao/DatabaseHelper;->transient(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->case:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->case:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->for:Lcom/wsw/cospa/adapter/HistoryComicAdapter$OnSlideRemoveListener;

    if-eqz p1, :cond_0

    .line 7
    invoke-interface {p1}, Lcom/wsw/cospa/adapter/HistoryComicAdapter$OnSlideRemoveListener;->onSlideRemove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onItemMove(II)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public declared-synchronized refresh(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/HistoryComicBean;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->case:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->case:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 4
    invoke-direct {p0, p1}, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->final(Ljava/util/List;)V

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->case:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setItemSearchListener(Lcom/wsw/cospa/adapter/HistoryComicAdapter$OnItemSearchClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->if:Lcom/wsw/cospa/adapter/HistoryComicAdapter$OnItemSearchClickListener;

    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/wsw/cospa/adapter/HistoryComicAdapter$OnCheckedChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->goto:Lcom/wsw/cospa/adapter/HistoryComicAdapter$OnCheckedChangeListener;

    return-void
.end method

.method public setOnItemClickListener(Lcom/wsw/cospa/listener/OnItemClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->do:Lcom/wsw/cospa/listener/OnItemClickListener;

    return-void
.end method

.method public setOnLongItemClickListener(Lcom/wsw/cospa/listener/OnLongItemClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->else:Lcom/wsw/cospa/listener/OnLongItemClickListener;

    return-void
.end method

.method public setOnSlideRemoveListener(Lcom/wsw/cospa/adapter/HistoryComicAdapter$OnSlideRemoveListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->for:Lcom/wsw/cospa/adapter/HistoryComicAdapter$OnSlideRemoveListener;

    return-void
.end method

.method public super(Landroidx/recyclerview/widget/ItemTouchHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->break:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-void
.end method

.method public this()Lcom/wsw/cospa/widget/itemtouch/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->catch:Lcom/wsw/cospa/widget/itemtouch/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;

    return-object v0
.end method

.method public declared-synchronized throw(Z)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iput-boolean p1, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->this:Z

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->case:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
