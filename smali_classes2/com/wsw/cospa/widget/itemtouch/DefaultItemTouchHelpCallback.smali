.class public Lcom/wsw/cospa/widget/itemtouch/DefaultItemTouchHelpCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/widget/itemtouch/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;
    }
.end annotation


# instance fields
.field private isCanDrag:Z

.field private isCanSwipe:Z

.field private onItemTouchCallbackListener:Lcom/wsw/cospa/widget/itemtouch/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/widget/itemtouch/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/wsw/cospa/widget/itemtouch/DefaultItemTouchHelpCallback;->isCanDrag:Z

    .line 3
    iput-boolean v0, p0, Lcom/wsw/cospa/widget/itemtouch/DefaultItemTouchHelpCallback;->isCanSwipe:Z

    .line 4
    iput-object p1, p0, Lcom/wsw/cospa/widget/itemtouch/DefaultItemTouchHelpCallback;->onItemTouchCallbackListener:Lcom/wsw/cospa/widget/itemtouch/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;

    return-void
.end method


# virtual methods
.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 3

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
    iget-boolean v0, p0, Lcom/wsw/cospa/widget/itemtouch/DefaultItemTouchHelpCallback;->isCanSwipe:Z

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/widget/itemtouch/DefaultItemTouchHelpCallback;->isCanDrag:Z

    return v0
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/widget/itemtouch/DefaultItemTouchHelpCallback;->onItemTouchCallbackListener:Lcom/wsw/cospa/widget/itemtouch/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p3

    invoke-interface {p1, p2, p3}, Lcom/wsw/cospa/widget/itemtouch/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;->onMove(II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/itemtouch/DefaultItemTouchHelpCallback;->onItemTouchCallbackListener:Lcom/wsw/cospa/widget/itemtouch/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/wsw/cospa/widget/itemtouch/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;->onSwiped(I)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/widget/itemtouch/DefaultItemTouchHelpCallback;->onItemTouchCallbackListener:Lcom/wsw/cospa/widget/itemtouch/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;

    invoke-interface {v0, p1, p2}, Lcom/wsw/cospa/widget/itemtouch/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;->onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_0
    return-void
.end method

.method public setDragEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/widget/itemtouch/DefaultItemTouchHelpCallback;->isCanDrag:Z

    return-void
.end method

.method public setOnItemTouchCallbackListener(Lcom/wsw/cospa/widget/itemtouch/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/itemtouch/DefaultItemTouchHelpCallback;->onItemTouchCallbackListener:Lcom/wsw/cospa/widget/itemtouch/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;

    return-void
.end method

.method public setSwipeEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/widget/itemtouch/DefaultItemTouchHelpCallback;->isCanSwipe:Z

    return-void
.end method
