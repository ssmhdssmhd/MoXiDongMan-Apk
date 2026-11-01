.class public Lcom/wsw/cospa/fragment/ComicFindFragment;
.super Lcom/wsw/cospa/base/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/event/RefreshBookGroupMessageObserver;


# instance fields
.field private break:Lcom/wsw/cospa/adapter/FindComicAdaprter;

.field public catch:Landroid/support/v4/cq;

.field public error_view:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09016a
    .end annotation
.end field

.field private goto:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902a4
    .end annotation
.end field

.field public refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09035e
    .end annotation
.end field

.field public scrollLayout:Lcom/gaoneng/library/AutoScrollBackLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090384
    .end annotation
.end field

.field public searchView:Landroidx/appcompat/widget/SearchView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090389
    .end annotation
.end field

.field private this:Z

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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/base/BaseFragment;-><init>()V

    .line 2
    new-instance v0, Landroid/support/v4/cq;

    invoke-direct {v0}, Landroid/support/v4/cq;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/fragment/ComicFindFragment;->catch:Landroid/support/v4/cq;

    return-void
.end method

.method private catch()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/fragment/ComicFindFragment;->scrollLayout:Lcom/gaoneng/library/AutoScrollBackLayout;

    invoke-virtual {v0}, Lcom/gaoneng/library/AutoScrollBackLayout;->this()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/fragment/ComicFindFragment;->searchView:Landroidx/appcompat/widget/SearchView;

    const-string v1, "\u641c\u7d22\u56fe\u6e90\u540d"

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/try;->const(Landroidx/appcompat/widget/SearchView;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/fragment/ComicFindFragment;->searchView:Landroidx/appcompat/widget/SearchView;

    const v1, 0x7f090394

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iput-object v0, p0, Lcom/wsw/cospa/fragment/ComicFindFragment;->goto:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060384

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setHintTextColor(I)V

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/fragment/ComicFindFragment;->goto:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setTextSize(F)V

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/fragment/ComicFindFragment;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->onActionViewExpanded()V

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/fragment/ComicFindFragment;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/fragment/ComicFindFragment;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-static {v0}, Landroid/support/v4/j10;->do(Landroid/view/View;)V

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/fragment/ComicFindFragment;->searchView:Landroidx/appcompat/widget/SearchView;

    new-instance v1, Lcom/wsw/cospa/fragment/ComicFindFragment$do;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/fragment/ComicFindFragment$do;-><init>(Lcom/wsw/cospa/fragment/ComicFindFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 10
    new-instance v0, Lcom/wsw/cospa/adapter/FindComicAdaprter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/wsw/cospa/adapter/FindComicAdaprter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wsw/cospa/fragment/ComicFindFragment;->break:Lcom/wsw/cospa/adapter/FindComicAdaprter;

    .line 11
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 12
    iget-object v1, p0, Lcom/wsw/cospa/fragment/ComicFindFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 13
    iget-object v0, p0, Lcom/wsw/cospa/fragment/ComicFindFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 14
    iget-object v0, p0, Lcom/wsw/cospa/fragment/ComicFindFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 15
    iget-object v0, p0, Lcom/wsw/cospa/fragment/ComicFindFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/wsw/cospa/fragment/ComicFindFragment;->break:Lcom/wsw/cospa/adapter/FindComicAdaprter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private synthetic class(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/fragment/ComicFindFragment;->const()V

    return-void
.end method

.method private const()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/fragment/ComicFindFragment;->break()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "pref_find_letter_sort"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v1

    const-string v2, "pref_show_all_find"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/wsw/cospa/dao/DatabaseHelper;->super(Z)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/wsw/cospa/dao/DatabaseHelper;->const(Z)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    :goto_0
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/bean/ComicSourceBean;

    .line 8
    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleFindUrl()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 10
    new-instance v3, Lcom/wsw/cospa/vo/FindParentVo;

    invoke-direct {v3}, Lcom/wsw/cospa/vo/FindParentVo;-><init>()V

    .line 11
    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wsw/cospa/vo/FindParentVo;->setParentName(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/wsw/cospa/vo/FindParentVo;->setParentTag(Ljava/lang/String;)V

    .line 13
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/wsw/cospa/fragment/ComicFindFragment;->break:Lcom/wsw/cospa/adapter/FindComicAdaprter;

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/adapter/FindComicAdaprter;->refresh(Ljava/util/List;)V

    .line 15
    iget-object v0, p0, Lcom/wsw/cospa/fragment/ComicFindFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public static synthetic else(Lcom/wsw/cospa/fragment/ComicFindFragment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/fragment/ComicFindFragment;->class(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    return-void
.end method

.method public static final()Lcom/wsw/cospa/fragment/ComicFindFragment;
    .locals 1

    .line 1
    new-instance v0, Lcom/wsw/cospa/fragment/ComicFindFragment;

    invoke-direct {v0}, Lcom/wsw/cospa/fragment/ComicFindFragment;-><init>()V

    return-object v0
.end method

.method public static synthetic goto(Lcom/wsw/cospa/fragment/ComicFindFragment;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/fragment/ComicFindFragment;->this:Z

    return p1
.end method


# virtual methods
.method public break()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/fragment/ComicFindFragment;->error_view:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/fragment/ComicFindFragment;->scrollLayout:Lcom/gaoneng/library/AutoScrollBackLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public case()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/fragment/ComicFindFragment;->catch()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/fragment/ComicFindFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableRefresh(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/fragment/ComicFindFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableAutoLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/fragment/ComicFindFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableOverScrollDrag(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/fragment/ComicFindFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v1, Landroid/support/v4/ln;

    invoke-direct {v1, p0}, Landroid/support/v4/ln;-><init>(Lcom/wsw/cospa/fragment/ComicFindFragment;)V

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setOnRefreshListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    return-void
.end method

.method public if()I
    .locals 1

    const v0, 0x7f0c0086

    return v0
.end method

.method public new()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/support/v4/jm1;->case()Landroid/support/v4/jm1;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/vz0;->for(Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/fragment/ComicFindFragment;->const()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/support/v4/jm1;->case()Landroid/support/v4/jm1;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/vz0;->new(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/fragment/ComicFindFragment;->catch:Landroid/support/v4/cq;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/support/v4/cq;->dispose()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/wsw/cospa/fragment/ComicFindFragment;->catch:Landroid/support/v4/cq;

    .line 5
    :cond_0
    invoke-super {p0}, Lcom/wsw/cospa/base/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/fragment/ComicFindFragment;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/fragment/ComicFindFragment;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-static {v0}, Landroid/support/v4/j10;->do(Landroid/view/View;)V

    .line 3
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onRefreshBookGroupMessage()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/fragment/ComicFindFragment;->break()V

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/fragment/ComicFindFragment;->const()V

    return-void
.end method

.method public super()V
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-boolean v2, p0, Lcom/wsw/cospa/fragment/ComicFindFragment;->this:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/wsw/cospa/fragment/ComicFindFragment;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v5}, Landroidx/appcompat/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/hw;->goto()Lcom/wsw/cospa/dao/ComicSourceBeanDao;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    .line 6
    sget-object v5, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->new:Lorg/greenrobot/greendao/Property;

    .line 7
    invoke-virtual {v5}, Lorg/greenrobot/greendao/Property;->isNotNull()Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    sget-object v7, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->try:Lorg/greenrobot/greendao/Property;

    .line 8
    invoke-virtual {v7, v0}, Lorg/greenrobot/greendao/Property;->like(Ljava/lang/String;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    sget-object v8, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->case:Lorg/greenrobot/greendao/Property;

    .line 9
    invoke-virtual {v8, v0}, Lorg/greenrobot/greendao/Property;->like(Ljava/lang/String;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    new-array v9, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    .line 10
    invoke-virtual {v5, v0}, Lorg/greenrobot/greendao/Property;->like(Ljava/lang/String;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    aput-object v0, v9, v4

    .line 11
    invoke-virtual {v2, v7, v8, v9}, Lorg/greenrobot/greendao/query/QueryBuilder;->or(Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    new-array v5, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    .line 12
    invoke-virtual {v2, v6, v0, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->and(Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    new-array v5, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v2, v0, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    new-array v2, v3, [Lorg/greenrobot/greendao/Property;

    sget-object v3, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->break:Lorg/greenrobot/greendao/Property;

    aput-object v3, v2, v4

    .line 13
    invoke-virtual {v0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 14
    invoke-virtual {p0}, Lcom/wsw/cospa/fragment/ComicFindFragment;->this()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderRaw(Ljava/lang/String;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    goto :goto_2

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v2

    const-string v5, "pref_find_letter_sort"

    invoke-virtual {v2, v5, v4}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v2

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v4

    const-string v5, "pref_show_all_find"

    invoke-virtual {v4, v5, v3}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v2, :cond_1

    .line 18
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/wsw/cospa/dao/DatabaseHelper;->super(Z)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 19
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/wsw/cospa/dao/DatabaseHelper;->const(Z)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 20
    :goto_0
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wsw/cospa/bean/ComicSourceBean;

    .line 21
    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleFindUrl()Ljava/lang/String;

    move-result-object v4

    .line 22
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 23
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 24
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    if-eqz v0, :cond_5

    .line 25
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/bean/ComicSourceBean;

    .line 27
    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleFindUrl()Ljava/lang/String;

    move-result-object v3

    .line 28
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 29
    new-instance v3, Lcom/wsw/cospa/vo/FindParentVo;

    invoke-direct {v3}, Lcom/wsw/cospa/vo/FindParentVo;-><init>()V

    .line 30
    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wsw/cospa/vo/FindParentVo;->setParentName(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/wsw/cospa/vo/FindParentVo;->setParentTag(Ljava/lang/String;)V

    .line 32
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 33
    :cond_5
    iget-object v0, p0, Lcom/wsw/cospa/fragment/ComicFindFragment;->break:Lcom/wsw/cospa/adapter/FindComicAdaprter;

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/adapter/FindComicAdaprter;->refresh(Ljava/util/List;)V

    return-void
.end method

.method public this()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "SourceSort"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->this:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ASC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->try:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " COLLATE LOCALIZED ASC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->break:Lorg/greenrobot/greendao/Property;

    iget-object v1, v1, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public throw(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/fragment/ComicFindFragment;->error_view:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/fragment/ComicFindFragment;->scrollLayout:Lcom/gaoneng/library/AutoScrollBackLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/fragment/ComicFindFragment;->tvErrorView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/fragment/ComicFindFragment;->tvRetry:Landroid/widget/TextView;

    const-string v0, "\u70b9\u51fb\u5237\u65b0"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public try()Landroid/support/v4/m7;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
