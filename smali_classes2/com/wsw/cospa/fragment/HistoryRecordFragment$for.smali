.class Lcom/wsw/cospa/fragment/HistoryRecordFragment$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/fragment/HistoryRecordFragment;->case()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/fragment/HistoryRecordFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$for;->do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$for;->do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    iget-object p1, p1, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->goto:Lcom/wsw/cospa/adapter/HistoryComicAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->throw(Z)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$for;->do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    invoke-static {p1}, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->catch(Lcom/wsw/cospa/fragment/HistoryRecordFragment;)Lcom/wsw/cospa/widget/itemtouch/ItemTouchHelperCallback;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/widget/itemtouch/ItemTouchHelperCallback;->setSwipeEnable(Z)V

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$for;->do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    iget-object p1, p1, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$for;->do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    iget-object v0, v0, Lcom/wsw/cospa/base/BaseFragment;->new:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$for;->do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    iget-object v0, v0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$for;->do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    iget-object p1, p1, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->mShadowLayout:Lcom/wsw/cospa/widget/view/ShadowLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
