.class public Lcom/wsw/cospa/adapter/LocalComicAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/adapter/LocalComicAdapter$LocalFileViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/wsw/cospa/adapter/LocalComicAdapter$LocalFileViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private do:Landroid/content/Context;

.field private for:Landroid/view/LayoutInflater;

.field private if:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/RipeFile;",
            ">;"
        }
    .end annotation
.end field

.field private new:Lcom/wsw/cospa/listener/OnItemClickListener;

.field private try:Lcom/wsw/cospa/listener/OnLongItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/adapter/LocalComicAdapter;->if:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/adapter/LocalComicAdapter;->do:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/wsw/cospa/adapter/LocalComicAdapter;->for:Landroid/view/LayoutInflater;

    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/adapter/LocalComicAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/adapter/LocalComicAdapter;->lambda$onBindViewHolder$0(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic if(Lcom/wsw/cospa/adapter/LocalComicAdapter;ILandroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/adapter/LocalComicAdapter;->new(ILandroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onBindViewHolder$0(ILandroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/wsw/cospa/adapter/LocalComicAdapter;->new:Lcom/wsw/cospa/listener/OnItemClickListener;

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2, p1}, Lcom/wsw/cospa/listener/OnItemClickListener;->onItemClick(I)V

    :cond_0
    return-void
.end method

.method private synthetic new(ILandroid/view/View;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/LocalComicAdapter;->try:Lcom/wsw/cospa/listener/OnLongItemClickListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p2, p1}, Lcom/wsw/cospa/listener/OnLongItemClickListener;->onLongClick(Landroid/view/View;I)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public case(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/adapter/LocalComicAdapter$LocalFileViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/wsw/cospa/adapter/LocalComicAdapter;->for:Landroid/view/LayoutInflater;

    const v0, 0x7f0c00ac

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/wsw/cospa/adapter/LocalComicAdapter$LocalFileViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/wsw/cospa/adapter/LocalComicAdapter$LocalFileViewHolder;-><init>(Lcom/wsw/cospa/adapter/LocalComicAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public for(I)Lcom/wsw/cospa/bean/RipeFile;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/LocalComicAdapter;->if:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/RipeFile;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/LocalComicAdapter;->if:Ljava/util/List;

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
    check-cast p1, Lcom/wsw/cospa/adapter/LocalComicAdapter$LocalFileViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/adapter/LocalComicAdapter;->try(Lcom/wsw/cospa/adapter/LocalComicAdapter$LocalFileViewHolder;I)V

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
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/adapter/LocalComicAdapter;->case(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/adapter/LocalComicAdapter$LocalFileViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized refresh(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/RipeFile;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/LocalComicAdapter;->if:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/adapter/LocalComicAdapter;->if:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/adapter/LocalComicAdapter;->if:Ljava/util/List;

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
    iput-object p1, p0, Lcom/wsw/cospa/adapter/LocalComicAdapter;->new:Lcom/wsw/cospa/listener/OnItemClickListener;

    return-void
.end method

.method public setOnLongItemClickListener(Lcom/wsw/cospa/listener/OnLongItemClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/adapter/LocalComicAdapter;->try:Lcom/wsw/cospa/listener/OnLongItemClickListener;

    return-void
.end method

.method public try(Lcom/wsw/cospa/adapter/LocalComicAdapter$LocalFileViewHolder;I)V
    .locals 3
    .param p1    # Lcom/wsw/cospa/adapter/LocalComicAdapter$LocalFileViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/LocalComicAdapter;->if:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/RipeFile;

    .line 2
    iget-object v1, p1, Lcom/wsw/cospa/adapter/LocalComicAdapter$LocalFileViewHolder;->tvFileName:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/RipeFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v1, p1, Lcom/wsw/cospa/adapter/LocalComicAdapter$LocalFileViewHolder;->tvFilePath:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/RipeFile;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Landroid/support/v4/ot0;

    invoke-direct {v1, p0, p2}, Landroid/support/v4/ot0;-><init>(Lcom/wsw/cospa/adapter/LocalComicAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Landroid/support/v4/pt0;

    invoke-direct {v0, p0, p2}, Landroid/support/v4/pt0;-><init>(Lcom/wsw/cospa/adapter/LocalComicAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method
