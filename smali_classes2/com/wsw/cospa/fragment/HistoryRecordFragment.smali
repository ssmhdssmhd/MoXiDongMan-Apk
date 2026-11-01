.class public Lcom/wsw/cospa/fragment/HistoryRecordFragment;
.super Lcom/wsw/cospa/base/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/event/RefreshHistoryMessageObserver;


# instance fields
.field private break:Lrx/Subscription;

.field private catch:Lcom/wsw/cospa/widget/itemtouch/ItemTouchHelperCallback;

.field public error_view:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09016a
    .end annotation
.end field

.field public goto:Lcom/wsw/cospa/adapter/HistoryComicAdapter;

.field public mIndicatorView:Lcom/wang/avi/AVLoadingIndicatorView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902a2
    .end annotation
.end field

.field public mLoadingRootView:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902a1
    .end annotation
.end field

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902a4
    .end annotation
.end field

.field public mShadowLayout:Lcom/wsw/cospa/widget/view/ShadowLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902a9
    .end annotation
.end field

.field public refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09035c
    .end annotation
.end field

.field private this:Landroidx/recyclerview/widget/ItemTouchHelper;

.field public tvErrorView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09016b
    .end annotation
.end field

.field public tvRetry:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904a7
    .end annotation
.end field

.field public tv_cancel:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090465
    .end annotation
.end field

.field public tv_delete:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090476
    .end annotation
.end field

.field public tv_select_all:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904ad
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/base/BaseFragment;-><init>()V

    return-void
.end method

.method public static synthetic break(Lcom/wsw/cospa/fragment/HistoryRecordFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->super()V

    return-void
.end method

.method public static synthetic catch(Lcom/wsw/cospa/fragment/HistoryRecordFragment;)Lcom/wsw/cospa/widget/itemtouch/ItemTouchHelperCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->catch:Lcom/wsw/cospa/widget/itemtouch/ItemTouchHelperCallback;

    return-object p0
.end method

.method private synthetic class(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->while()V

    .line 2
    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    return-void
.end method

.method private synthetic const(I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->goto:Lcom/wsw/cospa/adapter/HistoryComicAdapter;

    invoke-virtual {v0}, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->else()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/HistoryComicBean;

    .line 2
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/HistoryComicBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/dao/DatabaseHelper;->return(Ljava/lang/String;)Lcom/wsw/cospa/bean/SearchComicBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->R(Landroid/content/Context;ZLcom/wsw/cospa/bean/SearchComicBean;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/HistoryComicBean;->getNoteUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->S(Landroid/content/Context;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static synthetic else(Lcom/wsw/cospa/fragment/HistoryRecordFragment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->class(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    return-void
.end method

.method private synthetic final(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->goto:Lcom/wsw/cospa/adapter/HistoryComicAdapter;

    invoke-virtual {v0}, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->else()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/HistoryComicBean;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/HistoryComicBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/wsw/cospa/activity/SearchComicActivity;->g(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static synthetic goto(Lcom/wsw/cospa/fragment/HistoryRecordFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->const(I)V

    return-void
.end method

.method private synthetic super()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->while()V

    return-void
.end method

.method public static synthetic this(Lcom/wsw/cospa/fragment/HistoryRecordFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->final(I)V

    return-void
.end method

.method public static throw()Lcom/wsw/cospa/fragment/HistoryRecordFragment;
    .locals 1

    .line 1
    new-instance v0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    invoke-direct {v0}, Lcom/wsw/cospa/fragment/HistoryRecordFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public case()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/support/v4/mm1;->case()Landroid/support/v4/mm1;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/vz0;->for(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v2, Landroid/support/v4/mj0;

    invoke-direct {v2, p0}, Landroid/support/v4/mj0;-><init>(Lcom/wsw/cospa/fragment/HistoryRecordFragment;)V

    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setOnRefreshListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 4
    new-instance v0, Lcom/wsw/cospa/adapter/HistoryComicAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/wsw/cospa/adapter/HistoryComicAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->goto:Lcom/wsw/cospa/adapter/HistoryComicAdapter;

    .line 5
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 6
    iget-object v2, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->goto:Lcom/wsw/cospa/adapter/HistoryComicAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/base/BaseFragment;->new:Landroid/content/Context;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v0, v2}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    .line 9
    iget-object v2, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->mShadowLayout:Lcom/wsw/cospa/widget/view/ShadowLayout;

    const-string v3, "#333C3C5A"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/wsw/cospa/widget/view/ShadowLayout;->setShadowColor(I)V

    .line 10
    iget-object v2, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->mShadowLayout:Lcom/wsw/cospa/widget/view/ShadowLayout;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Lcom/wsw/cospa/widget/view/ShadowLayout;->setShadowRadius(F)V

    .line 11
    iget-object v2, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->mShadowLayout:Lcom/wsw/cospa/widget/view/ShadowLayout;

    invoke-virtual {v2, v1, v0, v1, v1}, Lcom/wsw/cospa/widget/view/ShadowLayout;->setShadowMargin(IIII)V

    .line 12
    iget-object v0, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->goto:Lcom/wsw/cospa/adapter/HistoryComicAdapter;

    new-instance v2, Landroid/support/v4/pj0;

    invoke-direct {v2, p0}, Landroid/support/v4/pj0;-><init>(Lcom/wsw/cospa/fragment/HistoryRecordFragment;)V

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->setOnItemClickListener(Lcom/wsw/cospa/listener/OnItemClickListener;)V

    .line 13
    iget-object v0, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->goto:Lcom/wsw/cospa/adapter/HistoryComicAdapter;

    new-instance v2, Lcom/wsw/cospa/fragment/HistoryRecordFragment$do;

    invoke-direct {v2, p0}, Lcom/wsw/cospa/fragment/HistoryRecordFragment$do;-><init>(Lcom/wsw/cospa/fragment/HistoryRecordFragment;)V

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->setOnLongItemClickListener(Lcom/wsw/cospa/listener/OnLongItemClickListener;)V

    .line 14
    iget-object v0, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->goto:Lcom/wsw/cospa/adapter/HistoryComicAdapter;

    new-instance v2, Landroid/support/v4/nj0;

    invoke-direct {v2, p0}, Landroid/support/v4/nj0;-><init>(Lcom/wsw/cospa/fragment/HistoryRecordFragment;)V

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->setItemSearchListener(Lcom/wsw/cospa/adapter/HistoryComicAdapter$OnItemSearchClickListener;)V

    .line 15
    iget-object v0, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->goto:Lcom/wsw/cospa/adapter/HistoryComicAdapter;

    new-instance v2, Lcom/wsw/cospa/fragment/HistoryRecordFragment$if;

    invoke-direct {v2, p0}, Lcom/wsw/cospa/fragment/HistoryRecordFragment$if;-><init>(Lcom/wsw/cospa/fragment/HistoryRecordFragment;)V

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->setOnCheckedChangeListener(Lcom/wsw/cospa/adapter/HistoryComicAdapter$OnCheckedChangeListener;)V

    .line 16
    iget-object v0, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->goto:Lcom/wsw/cospa/adapter/HistoryComicAdapter;

    new-instance v2, Landroid/support/v4/oj0;

    invoke-direct {v2, p0}, Landroid/support/v4/oj0;-><init>(Lcom/wsw/cospa/fragment/HistoryRecordFragment;)V

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/adapter/HistoryComicAdapter;->setOnSlideRemoveListener(Lcom/wsw/cospa/adapter/HistoryComicAdapter$OnSlideRemoveListener;)V

    .line 17
    iget-object v0, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->tv_cancel:Landroid/widget/TextView;

    new-instance v2, Lcom/wsw/cospa/fragment/HistoryRecordFragment$for;

    invoke-direct {v2, p0}, Lcom/wsw/cospa/fragment/HistoryRecordFragment$for;-><init>(Lcom/wsw/cospa/fragment/HistoryRecordFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object v0, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->tv_select_all:Landroid/widget/TextView;

    new-instance v2, Lcom/wsw/cospa/fragment/HistoryRecordFragment$new;

    invoke-direct {v2, p0}, Lcom/wsw/cospa/fragment/HistoryRecordFragment$new;-><init>(Lcom/wsw/cospa/fragment/HistoryRecordFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object v0, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->tv_delete:Landroid/widget/TextView;

    new-instance v2, Lcom/wsw/cospa/fragment/HistoryRecordFragment$try;

    invoke-direct {v2, p0}, Lcom/wsw/cospa/fragment/HistoryRecordFragment$try;-><init>(Lcom/wsw/cospa/fragment/HistoryRecordFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    new-instance v0, Lcom/wsw/cospa/widget/itemtouch/ItemTouchHelperCallback;

    iget-object v2, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->goto:Lcom/wsw/cospa/adapter/HistoryComicAdapter;

    invoke-direct {v0, v2}, Lcom/wsw/cospa/widget/itemtouch/ItemTouchHelperCallback;-><init>(Lcom/wsw/cospa/widget/itemtouch/ItemTouchHelperAdapter;)V

    iput-object v0, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->catch:Lcom/wsw/cospa/widget/itemtouch/ItemTouchHelperCallback;

    .line 21
    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/itemtouch/ItemTouchHelperCallback;->setDragEnable(Z)V

    .line 22
    iget-object v0, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->catch:Lcom/wsw/cospa/widget/itemtouch/ItemTouchHelperCallback;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/itemtouch/ItemTouchHelperCallback;->setSwipeEnable(Z)V

    .line 23
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v1, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->catch:Lcom/wsw/cospa/widget/itemtouch/ItemTouchHelperCallback;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object v0, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->this:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 24
    iget-object v1, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public if()I
    .locals 1

    const v0, 0x7f0c008a

    return v0
.end method

.method public import()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->mLoadingRootView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public native()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->tvRetry:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->error_view:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->mIndicatorView:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {v0, v1}, Lcom/wang/avi/AVLoadingIndicatorView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->mLoadingRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->tvErrorView:Landroid/widget/TextView;

    const-string v1, "\u6682\u65e0\u9605\u8bfb\u8bb0\u5f55\uff0c\u8d76\u7d27\u53bb\u641c\u7d22\u5427"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public new()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->while()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/support/v4/mm1;->case()Landroid/support/v4/mm1;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/vz0;->new(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->break:Lrx/Subscription;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->break:Lrx/Subscription;

    .line 5
    :cond_0
    invoke-super {p0}, Lcom/wsw/cospa/base/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onRefreshHistoryMessage()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->while()V

    return-void
.end method

.method public try()Landroid/support/v4/m7;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public while()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/DatabaseHelper;->static()Lrx/Observable;

    move-result-object v0

    invoke-static {}, Landroid/support/v4/ds1;->try()Lrx/if;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->e4(Lrx/if;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/wsw/cospa/fragment/HistoryRecordFragment$case;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/fragment/HistoryRecordFragment$case;-><init>(Lcom/wsw/cospa/fragment/HistoryRecordFragment;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->b4(Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->break:Lrx/Subscription;

    return-void
.end method
