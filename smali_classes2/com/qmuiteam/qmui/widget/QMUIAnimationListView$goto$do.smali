.class Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto$do;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto;


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto$do;->do:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto$do;->do:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto;->do(Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto$do;->do:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto$do;->do:Lcom/qmuiteam/qmui/widget/QMUIAnimationListView$goto;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void
.end method
