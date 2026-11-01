.class public Lcom/wsw/cospa/widget/itemtouch/DefaultItemTouchHelper;
.super Lcom/wsw/cospa/widget/itemtouch/YolandaItemTouchHelper;
.source "SourceFile"


# instance fields
.field private itemTouchHelpCallback:Lcom/wsw/cospa/widget/itemtouch/DefaultItemTouchHelpCallback;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/widget/itemtouch/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/wsw/cospa/widget/itemtouch/DefaultItemTouchHelpCallback;

    invoke-direct {v0, p1}, Lcom/wsw/cospa/widget/itemtouch/DefaultItemTouchHelpCallback;-><init>(Lcom/wsw/cospa/widget/itemtouch/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;)V

    invoke-direct {p0, v0}, Lcom/wsw/cospa/widget/itemtouch/YolandaItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/itemtouch/YolandaItemTouchHelper;->getCallback()Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/widget/itemtouch/DefaultItemTouchHelpCallback;

    iput-object p1, p0, Lcom/wsw/cospa/widget/itemtouch/DefaultItemTouchHelper;->itemTouchHelpCallback:Lcom/wsw/cospa/widget/itemtouch/DefaultItemTouchHelpCallback;

    return-void
.end method


# virtual methods
.method public setDragEnable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/itemtouch/DefaultItemTouchHelper;->itemTouchHelpCallback:Lcom/wsw/cospa/widget/itemtouch/DefaultItemTouchHelpCallback;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/widget/itemtouch/DefaultItemTouchHelpCallback;->setDragEnable(Z)V

    return-void
.end method

.method public setSwipeEnable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/itemtouch/DefaultItemTouchHelper;->itemTouchHelpCallback:Lcom/wsw/cospa/widget/itemtouch/DefaultItemTouchHelpCallback;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/widget/itemtouch/DefaultItemTouchHelpCallback;->setSwipeEnable(Z)V

    return-void
.end method
