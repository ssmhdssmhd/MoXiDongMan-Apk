.class Lcom/wsw/cospa/fragment/HistoryRecordFragment$try;
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
    iput-object p1, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$try;->do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$try;->do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    iget-object v1, v1, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->goto:Lcom/wsw/cospa/adapter/HistoryComicAdapter;

    invoke-virtual {v1}, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->else()Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/bean/HistoryComicBean;

    .line 5
    invoke-virtual {v2}, Lcom/wsw/cospa/bean/HistoryComicBean;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/wsw/cospa/dao/DatabaseHelper;->implements(Ljava/util/List;)V

    .line 9
    iget-object p1, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$try;->do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    iget-object p1, p1, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->goto:Lcom/wsw/cospa/adapter/HistoryComicAdapter;

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->refresh(Ljava/util/List;)V

    .line 10
    iget-object p1, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$try;->do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    iget-object p1, p1, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->goto:Lcom/wsw/cospa/adapter/HistoryComicAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->throw(Z)V

    .line 11
    iget-object p1, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$try;->do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    invoke-static {p1}, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->catch(Lcom/wsw/cospa/fragment/HistoryRecordFragment;)Lcom/wsw/cospa/widget/itemtouch/ItemTouchHelperCallback;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/widget/itemtouch/ItemTouchHelperCallback;->setSwipeEnable(Z)V

    .line 12
    iget-object p1, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$try;->do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    iget-object p1, p1, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 13
    iget-object v0, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$try;->do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    iget-object v0, v0, Lcom/wsw/cospa/base/BaseFragment;->new:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 14
    iget-object v0, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$try;->do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    iget-object v0, v0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    iget-object p1, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment$try;->do:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    iget-object p1, p1, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->mShadowLayout:Lcom/wsw/cospa/widget/view/ShadowLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
