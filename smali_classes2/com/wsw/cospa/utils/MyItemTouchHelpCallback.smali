.class public Lcom/wsw/cospa/utils/MyItemTouchHelpCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/utils/MyItemTouchHelpCallback$OnItemTouchCallbackListener;
    }
.end annotation


# instance fields
.field private do:Lcom/wsw/cospa/utils/MyItemTouchHelpCallback$OnItemTouchCallbackListener;

.field private for:Z

.field private if:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/wsw/cospa/utils/MyItemTouchHelpCallback;->if:Z

    .line 3
    iput-boolean v0, p0, Lcom/wsw/cospa/utils/MyItemTouchHelpCallback;->for:Z

    return-void
.end method


# virtual methods
.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2
    instance-of p1, p2, Lcom/wsw/cospa/adapter/ComicShelfGridAdapter$ComicViewHolder;

    const v0, 0x7f060362

    if-eqz p1, :cond_0

    .line 3
    check-cast p2, Lcom/wsw/cospa/adapter/ComicShelfGridAdapter$ComicViewHolder;

    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 4
    :cond_0
    instance-of p1, p2, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;

    if-eqz p1, :cond_1

    .line 5
    check-cast p2, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;

    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/wsw/cospa/utils/MyItemTouchHelpCallback;->do:Lcom/wsw/cospa/utils/MyItemTouchHelpCallback$OnItemTouchCallbackListener;

    if-eqz p1, :cond_2

    .line 8
    invoke-interface {p1}, Lcom/wsw/cospa/utils/MyItemTouchHelpCallback$OnItemTouchCallbackListener;->onRelease()V

    :cond_2
    return-void
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 2
    instance-of p2, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/16 p1, 0xf

    .line 3
    invoke-static {p1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1

    .line 4
    :cond_0
    instance-of p2, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p2, :cond_3

    .line 5
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p1

    const/16 p2, 0xc

    const/4 v1, 0x3

    if-nez p1, :cond_1

    const/4 p2, 0x3

    const/16 v0, 0xc

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 7
    :goto_0
    invoke-static {v0, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1

    :cond_3
    return v0
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/utils/MyItemTouchHelpCallback;->for:Z

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/utils/MyItemTouchHelpCallback;->if:Z

    return v0
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/utils/MyItemTouchHelpCallback;->do:Lcom/wsw/cospa/utils/MyItemTouchHelpCallback$OnItemTouchCallbackListener;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p3

    invoke-interface {p1, p2, p3}, Lcom/wsw/cospa/utils/MyItemTouchHelpCallback$OnItemTouchCallbackListener;->onMove(II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 2
    instance-of p2, p1, Lcom/wsw/cospa/adapter/ComicShelfGridAdapter$ComicViewHolder;

    const v0, 0x7f060362

    if-eqz p2, :cond_0

    .line 3
    check-cast p1, Lcom/wsw/cospa/adapter/ComicShelfGridAdapter$ComicViewHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 4
    :cond_0
    instance-of p2, p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;

    if-eqz p2, :cond_1

    .line 5
    check-cast p1, Lcom/wsw/cospa/adapter/ComicShelfListAdapter$ComicViewHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p2, p0, Lcom/wsw/cospa/utils/MyItemTouchHelpCallback;->do:Lcom/wsw/cospa/utils/MyItemTouchHelpCallback$OnItemTouchCallbackListener;

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/wsw/cospa/utils/MyItemTouchHelpCallback$OnItemTouchCallbackListener;->onSwiped(I)V

    :cond_0
    return-void
.end method

.method public setDragEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/utils/MyItemTouchHelpCallback;->if:Z

    return-void
.end method

.method public setOnItemTouchCallbackListener(Lcom/wsw/cospa/utils/MyItemTouchHelpCallback$OnItemTouchCallbackListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/MyItemTouchHelpCallback;->do:Lcom/wsw/cospa/utils/MyItemTouchHelpCallback$OnItemTouchCallbackListener;

    return-void
.end method

.method public setSwipeEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/utils/MyItemTouchHelpCallback;->for:Z

    return-void
.end method
