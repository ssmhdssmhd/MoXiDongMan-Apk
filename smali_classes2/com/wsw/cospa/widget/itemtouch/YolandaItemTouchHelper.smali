.class public Lcom/wsw/cospa/widget/itemtouch/YolandaItemTouchHelper;
.super Landroidx/recyclerview/widget/ItemTouchHelper;
.source "SourceFile"


# instance fields
.field public mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/widget/itemtouch/YolandaItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    return-void
.end method


# virtual methods
.method public getCallback()Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/itemtouch/YolandaItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    return-object v0
.end method
