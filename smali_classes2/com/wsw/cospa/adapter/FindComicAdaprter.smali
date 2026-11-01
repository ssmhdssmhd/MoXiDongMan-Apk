.class public Lcom/wsw/cospa/adapter/FindComicAdaprter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/adapter/FindComicAdaprter$FindViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/wsw/cospa/adapter/FindComicAdaprter$FindViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private do:Landroid/content/Context;

.field private for:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/vo/FindParentVo;",
            ">;"
        }
    .end annotation
.end field

.field private if:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/adapter/FindComicAdaprter;->for:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/adapter/FindComicAdaprter;->do:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/wsw/cospa/adapter/FindComicAdaprter;->if:Landroid/view/LayoutInflater;

    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/adapter/FindComicAdaprter;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/adapter/FindComicAdaprter;->do:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public for(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/adapter/FindComicAdaprter$FindViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/wsw/cospa/adapter/FindComicAdaprter;->if:Landroid/view/LayoutInflater;

    const v0, 0x7f0c007e

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/wsw/cospa/adapter/FindComicAdaprter$FindViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/wsw/cospa/adapter/FindComicAdaprter$FindViewHolder;-><init>(Lcom/wsw/cospa/adapter/FindComicAdaprter;Landroid/view/View;)V

    return-object p2
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/adapter/FindComicAdaprter;->for:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public if(Lcom/wsw/cospa/adapter/FindComicAdaprter$FindViewHolder;I)V
    .locals 2
    .param p1    # Lcom/wsw/cospa/adapter/FindComicAdaprter$FindViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/adapter/FindComicAdaprter;->for:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/wsw/cospa/vo/FindParentVo;

    .line 2
    iget-object v0, p1, Lcom/wsw/cospa/adapter/FindComicAdaprter$FindViewHolder;->tvSourceName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/wsw/cospa/vo/FindParentVo;->getParentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/wsw/cospa/adapter/FindComicAdaprter$do;

    invoke-direct {v0, p0, p2}, Lcom/wsw/cospa/adapter/FindComicAdaprter$do;-><init>(Lcom/wsw/cospa/adapter/FindComicAdaprter;Lcom/wsw/cospa/vo/FindParentVo;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/wsw/cospa/adapter/FindComicAdaprter$FindViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/adapter/FindComicAdaprter;->if(Lcom/wsw/cospa/adapter/FindComicAdaprter$FindViewHolder;I)V

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
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/adapter/FindComicAdaprter;->for(Landroid/view/ViewGroup;I)Lcom/wsw/cospa/adapter/FindComicAdaprter$FindViewHolder;

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
    iget-object v0, p0, Lcom/wsw/cospa/adapter/FindComicAdaprter;->for:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/adapter/FindComicAdaprter;->for:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/adapter/FindComicAdaprter;->for:Ljava/util/List;

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
