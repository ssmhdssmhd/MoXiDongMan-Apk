.class public Lcom/wsw/cospa/adapter/ChapterGridAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/adapter/ChapterGridAdapter$ChapterViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/wsw/cospa/adapter/ChapterGridAdapter$ChapterViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final goto:I = 0x1

.field private static final this:I


# instance fields
.field private case:I

.field private do:Lcom/wsw/cospa/listener/OnItemClickListener;

.field private else:Lcom/wsw/cospa/bean/ChapterListBean;

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

.field private try:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->new:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->case:I

    .line 4
    iput-object p1, p0, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->if:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->for:Landroid/view/LayoutInflater;

    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/adapter/ChapterGridAdapter;Lcom/wsw/cospa/bean/ChapterListBean;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->for(Lcom/wsw/cospa/bean/ChapterListBean;ILandroid/view/View;)V

    return-void
.end method

.method private synthetic for(Lcom/wsw/cospa/bean/ChapterListBean;ILandroid/view/View;)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->do:Lcom/wsw/cospa/listener/OnItemClickListener;

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterIndex()I

    move-result p1

    iput p1, p0, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->try:I

    .line 3
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->break(I)V

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->do:Lcom/wsw/cospa/listener/OnItemClickListener;

    invoke-interface {p1, p2}, Lcom/wsw/cospa/listener/OnItemClickListener;->onItemClick(I)V

    :cond_0
    return-void
.end method

.method public static synthetic if(ILcom/wsw/cospa/bean/ChapterListBean;Lcom/wsw/cospa/bean/ChapterListBean;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->new(ILcom/wsw/cospa/bean/ChapterListBean;Lcom/wsw/cospa/bean/ChapterListBean;)I

    move-result p0

    return p0
.end method

.method private static synthetic new(ILcom/wsw/cospa/bean/ChapterListBean;Lcom/wsw/cospa/bean/ChapterListBean;)I
    .locals 1

    const v0, 0x186a1

    if-ne p0, v0, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterIndex()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterIndex()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterIndex()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterIndex()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public declared-synchronized break(I)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput p1, p0, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->try:I

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

.method public case(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/adapter/ChapterGridAdapter$ChapterViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->for:Landroid/view/LayoutInflater;

    const v0, 0x7f0c005b

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/wsw/cospa/adapter/ChapterGridAdapter$ChapterViewHolder;

    invoke-direct {p2, p1}, Lcom/wsw/cospa/adapter/ChapterGridAdapter$ChapterViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public declared-synchronized else(I)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->new:Ljava/util/List;

    new-instance v1, Landroid/support/v4/gk;

    invoke-direct {v1, p1}, Landroid/support/v4/gk;-><init>(I)V

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
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->new:Ljava/util/List;

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

.method public declared-synchronized getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ChapterListBean;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->new:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public goto(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->case:I

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/wsw/cospa/adapter/ChapterGridAdapter$ChapterViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->try(Lcom/wsw/cospa/adapter/ChapterGridAdapter$ChapterViewHolder;I)V

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
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->case(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/adapter/ChapterGridAdapter$ChapterViewHolder;

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
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->new:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->new:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->new:Ljava/util/List;

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
    iput-object p1, p0, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->do:Lcom/wsw/cospa/listener/OnItemClickListener;

    return-void
.end method

.method public this(Lcom/wsw/cospa/bean/ChapterListBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->else:Lcom/wsw/cospa/bean/ChapterListBean;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public try(Lcom/wsw/cospa/adapter/ChapterGridAdapter$ChapterViewHolder;I)V
    .locals 7
    .param p1    # Lcom/wsw/cospa/adapter/ChapterGridAdapter$ChapterViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->new:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ChapterListBean;

    if-eqz v0, :cond_1

    .line 2
    iget v1, p0, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->case:I

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p1, Lcom/wsw/cospa/adapter/ChapterGridAdapter$ChapterViewHolder;->tvChapter:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 4
    iget-object v1, p1, Lcom/wsw/cospa/adapter/ChapterGridAdapter$ChapterViewHolder;->tvChapter:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p1, Lcom/wsw/cospa/adapter/ChapterGridAdapter$ChapterViewHolder;->tvChapter:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 6
    iget-object v1, p1, Lcom/wsw/cospa/adapter/ChapterGridAdapter$ChapterViewHolder;->tvChapter:Landroid/widget/TextView;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 7
    :goto_0
    iget-object v1, p1, Lcom/wsw/cospa/adapter/ChapterGridAdapter$ChapterViewHolder;->tvChapter:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->else:Lcom/wsw/cospa/bean/ChapterListBean;

    const v2, 0x7f060380

    const v3, 0x7f080073

    const v4, 0x7f060117

    const v5, 0x7f08006b

    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {v1, v0}, Lcom/wsw/cospa/bean/ChapterListBean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    iget-object v1, p1, Lcom/wsw/cospa/adapter/ChapterGridAdapter$ChapterViewHolder;->tvChapter:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->if:Landroid/content/Context;

    invoke-static {v4, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 11
    iget-object v1, p1, Lcom/wsw/cospa/adapter/ChapterGridAdapter$ChapterViewHolder;->tvChapter:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->if:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 12
    :cond_2
    iget-object v1, p1, Lcom/wsw/cospa/adapter/ChapterGridAdapter$ChapterViewHolder;->tvChapter:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->if:Landroid/content/Context;

    invoke-static {v2, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 13
    iget-object v1, p1, Lcom/wsw/cospa/adapter/ChapterGridAdapter$ChapterViewHolder;->tvChapter:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->if:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 14
    :cond_3
    iget v1, p0, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->try:I

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterIndex()I

    move-result v6

    if-ne v1, v6, :cond_4

    .line 15
    iget-object v1, p1, Lcom/wsw/cospa/adapter/ChapterGridAdapter$ChapterViewHolder;->tvChapter:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->if:Landroid/content/Context;

    invoke-static {v4, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 16
    iget-object v1, p1, Lcom/wsw/cospa/adapter/ChapterGridAdapter$ChapterViewHolder;->tvChapter:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->if:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 17
    :cond_4
    iget-object v1, p1, Lcom/wsw/cospa/adapter/ChapterGridAdapter$ChapterViewHolder;->tvChapter:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->if:Landroid/content/Context;

    invoke-static {v2, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 18
    iget-object v1, p1, Lcom/wsw/cospa/adapter/ChapterGridAdapter$ChapterViewHolder;->tvChapter:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/wsw/cospa/adapter/ChapterGridAdapter;->if:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 19
    :goto_1
    iget-object p1, p1, Lcom/wsw/cospa/adapter/ChapterGridAdapter$ChapterViewHolder;->mRootView:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/support/v4/fk;

    invoke-direct {v1, p0, v0, p2}, Landroid/support/v4/fk;-><init>(Lcom/wsw/cospa/adapter/ChapterGridAdapter;Lcom/wsw/cospa/bean/ChapterListBean;I)V

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
