.class Lcom/wsw/cospa/fragment/HistoryRecordFragment$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/listener/OnLongItemClickListener;


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
    iput-object p1, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$do;->do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;I)V
    .locals 2

    .line 1
    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object p2, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$do;->do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    iget-object p2, p2, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->goto:Lcom/wsw/cospa/adapter/HistoryComicAdapter;

    invoke-virtual {p2}, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->else()Ljava/util/List;

    move-result-object p2

    .line 3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/HistoryComicBean;

    .line 4
    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/HistoryComicBean;->setChecked(Z)V

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$do;->do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    iget-object p2, p2, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->goto:Lcom/wsw/cospa/adapter/HistoryComicAdapter;

    invoke-virtual {p2, p1}, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->refresh(Ljava/util/List;)V

    .line 7
    iget-object p1, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$do;->do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    iget-object p1, p1, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->goto:Lcom/wsw/cospa/adapter/HistoryComicAdapter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->throw(Z)V

    .line 8
    iget-object p1, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$do;->do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    invoke-static {p1}, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->catch(Lcom/wsw/cospa/fragment/HistoryRecordFragment;)Lcom/wsw/cospa/widget/itemtouch/ItemTouchHelperCallback;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/wsw/cospa/widget/itemtouch/ItemTouchHelperCallback;->setSwipeEnable(Z)V

    .line 9
    iget-object p1, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$do;->do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    iget-object p1, p1, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 10
    iget-object p2, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$do;->do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    iget-object p2, p2, Lcom/wsw/cospa/base/BaseFragment;->new:Landroid/content/Context;

    const/high16 v0, 0x42340000    # 45.0f

    invoke-static {p2, v0}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 11
    iget-object p2, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$do;->do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    iget-object p2, p2, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    iget-object p1, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$do;->do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    iget-object p1, p1, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->mShadowLayout:Lcom/wsw/cospa/widget/view/ShadowLayout;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
