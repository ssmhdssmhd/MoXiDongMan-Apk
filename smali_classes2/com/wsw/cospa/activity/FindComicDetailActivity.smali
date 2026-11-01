.class public Lcom/wsw/cospa/activity/FindComicDetailActivity;
.super Lcom/wsw/cospa/base/BaseActivity;
.source "SourceFile"


# instance fields
.field private break:Ljava/lang/String;

.field private catch:Ljava/lang/String;

.field private class:Ljava/lang/String;

.field private const:Ljava/lang/String;

.field private final:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private goto:Lcom/wsw/cospa/adapter/FindComicDetailAdapter;

.field public mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090299
    .end annotation
.end field

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902a4
    .end annotation
.end field

.field public mToolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902ab
    .end annotation
.end field

.field public refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09035c
    .end annotation
.end field

.field public scrollLayout:Lcom/gaoneng/library/AutoScrollBackLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090384
    .end annotation
.end field

.field private this:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/base/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity;->this:I

    .line 3
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity;->final:Ljava/util/Map;

    return-void
.end method

.method private synthetic abstract(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity;->goto:Lcom/wsw/cospa/adapter/FindComicDetailAdapter;

    invoke-virtual {v0}, Lcom/wsw/cospa/adapter/FindComicDetailAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/SearchComicBean;

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->R(Landroid/content/Context;ZLcom/wsw/cospa/bean/SearchComicBean;)V

    return-void
.end method

.method private synthetic continue(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity;->goto:Lcom/wsw/cospa/adapter/FindComicDetailAdapter;

    invoke-virtual {v0}, Lcom/wsw/cospa/adapter/FindComicDetailAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/SearchComicBean;

    .line 2
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/SearchComicBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/wsw/cospa/activity/SearchComicActivity;->g(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic default(Lcom/wsw/cospa/activity/FindComicDetailActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/FindComicDetailActivity;->finally(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic extends(Lcom/wsw/cospa/activity/FindComicDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity;->break:Ljava/lang/String;

    return-object p1
.end method

.method private finally(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Lcom/wsw/cospa/activity/FindComicDetailActivity$if;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/activity/FindComicDetailActivity$if;-><init>(Lcom/wsw/cospa/activity/FindComicDetailActivity;)V

    .line 3
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 4
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity;->final:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static synthetic import(Lcom/wsw/cospa/activity/FindComicDetailActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/FindComicDetailActivity;->continue(I)V

    return-void
.end method

.method public static synthetic native(Lcom/wsw/cospa/activity/FindComicDetailActivity;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/FindComicDetailActivity;->private(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    return-void
.end method

.method private synthetic package(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput p1, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity;->this:I

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/activity/FindComicDetailActivity;->strictfp()V

    return-void
.end method

.method private synthetic private(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/activity/FindComicDetailActivity;->strictfp()V

    return-void
.end method

.method public static synthetic public(Lcom/wsw/cospa/activity/FindComicDetailActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/FindComicDetailActivity;->abstract(I)V

    return-void
.end method

.method public static synthetic return(Lcom/wsw/cospa/activity/FindComicDetailActivity;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/FindComicDetailActivity;->package(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    return-void
.end method

.method public static synthetic static(Lcom/wsw/cospa/activity/FindComicDetailActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity;->this:I

    return p0
.end method

.method private strictfp()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/wsw/cospa/model/while;->catch()Lcom/wsw/cospa/model/while;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity;->catch:Ljava/lang/String;

    iget v2, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity;->this:I

    iget-object v3, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity;->class:Ljava/lang/String;

    iget-object v4, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity;->final:Ljava/util/Map;

    iget-object v5, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity;->break:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/wsw/cospa/model/while;->case(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lio/reactivex/new;

    move-result-object v0

    sget-object v1, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 2
    invoke-virtual {v0, v1}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object v0

    .line 3
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v1, Lcom/wsw/cospa/activity/FindComicDetailActivity$do;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/activity/FindComicDetailActivity$do;-><init>(Lcom/wsw/cospa/activity/FindComicDetailActivity;)V

    .line 4
    invoke-interface {v0, v1}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static synthetic switch(Lcom/wsw/cospa/activity/FindComicDetailActivity;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity;->this:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity;->this:I

    return v0
.end method

.method public static synthetic throws(Lcom/wsw/cospa/activity/FindComicDetailActivity;)Lcom/wsw/cospa/adapter/FindComicDetailAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity;->goto:Lcom/wsw/cospa/adapter/FindComicDetailAdapter;

    return-object p0
.end method


# virtual methods
.method public case()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->autoRefresh()Z

    return-void
.end method

.method public goto()Landroid/support/v4/m7;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public new()I
    .locals 1

    const v0, 0x7f0c0034

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public this()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity;->scrollLayout:Lcom/gaoneng/library/AutoScrollBackLayout;

    invoke-virtual {v0}, Lcom/gaoneng/library/AutoScrollBackLayout;->this()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity;->catch:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity;->const:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tag"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity;->class:Ljava/lang/String;

    .line 5
    invoke-static {p0}, Landroid/support/v4/p12;->case(Landroid/app/Activity;)V

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity;->const:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/wsw/cospa/utils/synchronized;->new(Landroidx/appcompat/app/AppCompatActivity;Landroidx/appcompat/widget/Toolbar;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/wsw/cospa/adapter/FindComicDetailAdapter;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/wsw/cospa/adapter/FindComicDetailAdapter;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity;->goto:Lcom/wsw/cospa/adapter/FindComicDetailAdapter;

    .line 8
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 9
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 10
    iget-object v2, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 11
    iget-object v0, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity;->goto:Lcom/wsw/cospa/adapter/FindComicDetailAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 12
    iget-object v0, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 13
    iget-object v0, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableAutoLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 14
    iget-object v0, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableRefresh(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 15
    iget-object v0, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableOverScrollDrag(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 16
    iget-object v0, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v1, Landroid/support/v4/sb0;

    invoke-direct {v1, p0}, Landroid/support/v4/sb0;-><init>(Lcom/wsw/cospa/activity/FindComicDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setOnRefreshListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 17
    iget-object v0, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v1, Landroid/support/v4/rb0;

    invoke-direct {v1, p0}, Landroid/support/v4/rb0;-><init>(Lcom/wsw/cospa/activity/FindComicDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setOnLoadMoreListener(Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 18
    iget-object v0, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity;->goto:Lcom/wsw/cospa/adapter/FindComicDetailAdapter;

    new-instance v1, Landroid/support/v4/ub0;

    invoke-direct {v1, p0}, Landroid/support/v4/ub0;-><init>(Lcom/wsw/cospa/activity/FindComicDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/adapter/FindComicDetailAdapter;->setOnItemClickListener(Lcom/wsw/cospa/listener/OnItemClickListener;)V

    .line 19
    iget-object v0, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity;->goto:Lcom/wsw/cospa/adapter/FindComicDetailAdapter;

    new-instance v1, Landroid/support/v4/tb0;

    invoke-direct {v1, p0}, Landroid/support/v4/tb0;-><init>(Lcom/wsw/cospa/activity/FindComicDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/adapter/FindComicDetailAdapter;->setItemSearchListener(Lcom/wsw/cospa/adapter/FindComicDetailAdapter$OnItemSearchClickListener;)V

    return-void
.end method
