.class public Lcom/wsw/cospa/activity/DownloadComicActivity;
.super Lcom/wsw/cospa/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/event/RefreshDownloadListObserver;


# instance fields
.field private break:Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;

.field private catch:Z

.field private class:Z

.field private const:I

.field public error_view:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09016a
    .end annotation
.end field

.field private goto:Lcom/wsw/cospa/adapter/DownloadListAdapter;

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

.field private this:Landroidx/recyclerview/widget/GridLayoutManager;

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

.field public tvStorageSpace:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904b7
    .end annotation
.end field

.field public tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904be
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/base/BaseActivity;-><init>()V

    return-void
.end method

.method private static synthetic abstract(Lio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/DatabaseHelper;->interface()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {p0, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 3
    invoke-interface {p0}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method private synthetic extends(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadComicActivity;->goto:Lcom/wsw/cospa/adapter/DownloadListAdapter;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/adapter/DownloadListAdapter;->try(I)Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getNoteUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/wsw/cospa/activity/DownloadTaskActivity;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic finally(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public static synthetic import(Lcom/wsw/cospa/activity/DownloadComicActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/DownloadComicActivity;->extends(I)V

    return-void
.end method

.method public static synthetic native(Lcom/wsw/cospa/activity/DownloadComicActivity;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/DownloadComicActivity;->package(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    return-void
.end method

.method private synthetic package(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/DownloadComicActivity;->continue()V

    return-void
.end method

.method private synthetic private(Landroid/support/v4/gp1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/gp1;->for()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-ne v0, v2, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/support/v4/gp1;->do()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/ComicInfoBean;

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadComicActivity;->goto:Lcom/wsw/cospa/adapter/DownloadListAdapter;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/adapter/DownloadListAdapter;->new(Lcom/wsw/cospa/bean/ComicInfoBean;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadComicActivity;->goto:Lcom/wsw/cospa/adapter/DownloadListAdapter;

    invoke-virtual {v0, v1, p1}, Lcom/wsw/cospa/adapter/DownloadListAdapter;->for(ILcom/wsw/cospa/bean/ComicInfoBean;)V

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/gp1;->for()I

    move-result v0

    const/16 v2, 0x29

    if-ne v0, v2, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/support/v4/gp1;->do()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadComicActivity;->goto:Lcom/wsw/cospa/adapter/DownloadListAdapter;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/adapter/DownloadListAdapter;->catch(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/wsw/cospa/activity/DownloadComicActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->autoRefresh()Z

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/gp1;->for()I

    move-result v0

    const/16 v2, 0x2c

    if-ne v0, v2, :cond_2

    .line 10
    invoke-virtual {p1}, Landroid/support/v4/gp1;->do()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 11
    iget-object v1, p0, Lcom/wsw/cospa/activity/DownloadComicActivity;->goto:Lcom/wsw/cospa/adapter/DownloadListAdapter;

    invoke-virtual {v1, v0}, Lcom/wsw/cospa/adapter/DownloadListAdapter;->catch(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p1}, Landroid/support/v4/gp1;->for()I

    move-result v0

    const/16 v2, 0x2a

    if-ne v0, v2, :cond_3

    .line 13
    iget-boolean p1, p0, Lcom/wsw/cospa/activity/DownloadComicActivity;->catch:Z

    if-nez p1, :cond_4

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/wsw/cospa/activity/DownloadComicActivity;->catch:Z

    goto :goto_1

    .line 15
    :cond_3
    invoke-virtual {p1}, Landroid/support/v4/gp1;->for()I

    move-result p1

    const/16 v0, 0x2b

    if-ne p1, v0, :cond_4

    .line 16
    iget-boolean p1, p0, Lcom/wsw/cospa/activity/DownloadComicActivity;->catch:Z

    if-eqz p1, :cond_4

    .line 17
    iput-boolean v1, p0, Lcom/wsw/cospa/activity/DownloadComicActivity;->catch:Z

    :cond_4
    :goto_1
    return-void
.end method

.method public static synthetic public(Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0}, Lcom/wsw/cospa/activity/DownloadComicActivity;->abstract(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic return(Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/wsw/cospa/activity/DownloadComicActivity;->finally(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic static(Lcom/wsw/cospa/activity/DownloadComicActivity;Landroid/support/v4/gp1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/DownloadComicActivity;->private(Landroid/support/v4/gp1;)V

    return-void
.end method

.method public static synthetic switch(Lcom/wsw/cospa/activity/DownloadComicActivity;)Lcom/wsw/cospa/adapter/DownloadListAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/DownloadComicActivity;->goto:Lcom/wsw/cospa/adapter/DownloadListAdapter;

    return-object p0
.end method

.method public static volatile(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/activity/DownloadComicActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public case()V
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/support/v4/j10;->super(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wsw/cospa/activity/DownloadComicActivity;->class:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lcom/wsw/cospa/activity/DownloadComicActivity;->const:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 3
    iput v0, p0, Lcom/wsw/cospa/activity/DownloadComicActivity;->const:I

    .line 4
    :goto_0
    new-instance v0, Lcom/wsw/cospa/adapter/DownloadListAdapter;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/adapter/DownloadListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/DownloadComicActivity;->goto:Lcom/wsw/cospa/adapter/DownloadListAdapter;

    .line 5
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget v1, p0, Lcom/wsw/cospa/activity/DownloadComicActivity;->const:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v3, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/DownloadComicActivity;->this:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 6
    iget-object v1, p0, Lcom/wsw/cospa/activity/DownloadComicActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 7
    new-instance v0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;-><init>(I)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/DownloadComicActivity;->break:Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;

    .line 8
    iget-object v1, p0, Lcom/wsw/cospa/activity/DownloadComicActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadComicActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadComicActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 11
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadComicActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 12
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadComicActivity;->goto:Lcom/wsw/cospa/adapter/DownloadListAdapter;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 13
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadComicActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/wsw/cospa/activity/DownloadComicActivity;->goto:Lcom/wsw/cospa/adapter/DownloadListAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 14
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadComicActivity;->goto:Lcom/wsw/cospa/adapter/DownloadListAdapter;

    new-instance v1, Landroid/support/v4/n20;

    invoke-direct {v1, p0}, Landroid/support/v4/n20;-><init>(Lcom/wsw/cospa/activity/DownloadComicActivity;)V

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/adapter/DownloadListAdapter;->setOnItemClickListener(Lcom/wsw/cospa/listener/OnItemClickListener;)V

    .line 15
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadComicActivity;->goto:Lcom/wsw/cospa/adapter/DownloadListAdapter;

    sget-object v1, Landroid/support/v4/o20;->do:Landroid/support/v4/o20;

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/adapter/DownloadListAdapter;->setOnLongItemClickListener(Lcom/wsw/cospa/listener/OnLongItemClickListener;)V

    .line 16
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadComicActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->autoRefresh()Z

    .line 17
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadComicActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v3}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableOverScrollDrag(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 18
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadComicActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v1, Landroid/support/v4/m20;

    invoke-direct {v1, p0}, Landroid/support/v4/m20;-><init>(Lcom/wsw/cospa/activity/DownloadComicActivity;)V

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setOnRefreshListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    return-void
.end method

.method public continue()V
    .locals 2

    .line 1
    sget-object v0, Landroid/support/v4/p20;->do:Landroid/support/v4/p20;

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

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

    new-instance v1, Lcom/wsw/cospa/activity/DownloadComicActivity$do;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/activity/DownloadComicActivity$do;-><init>(Lcom/wsw/cospa/activity/DownloadComicActivity;)V

    .line 4
    invoke-interface {v0, v1}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public default()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/base/BaseActivity;->do:Landroid/support/v4/cq;

    invoke-static {}, Landroid/support/v4/ep1;->do()Landroid/support/v4/ep1;

    move-result-object v1

    const-class v2, Landroid/support/v4/gp1;

    invoke-virtual {v1, v2}, Landroid/support/v4/ep1;->try(Ljava/lang/Class;)Lio/reactivex/new;

    move-result-object v1

    sget-object v2, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    invoke-virtual {v1, v2}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object v1

    .line 2
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v2, Landroid/support/v4/q20;

    invoke-direct {v2, p0}, Landroid/support/v4/q20;-><init>(Lcom/wsw/cospa/activity/DownloadComicActivity;)V

    .line 3
    invoke-interface {v1, v2}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public goto()Landroid/support/v4/m7;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public new()I
    .locals 1

    const v0, 0x7f0c002e

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/base/BaseActivity;->do:Landroid/support/v4/cq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/cq;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/base/BaseActivity;->do:Landroid/support/v4/cq;

    invoke-virtual {v0}, Landroid/support/v4/cq;->dispose()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/base/BaseActivity;->do:Landroid/support/v4/cq;

    invoke-virtual {v0}, Landroid/support/v4/cq;->if()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/wsw/cospa/base/BaseActivity;->do:Landroid/support/v4/cq;

    .line 5
    :cond_0
    invoke-static {}, Landroid/support/v4/ep1;->do()Landroid/support/v4/ep1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/ep1;->new()V

    .line 6
    invoke-static {}, Landroid/support/v4/lm1;->case()Landroid/support/v4/lm1;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/vz0;->new(Ljava/lang/Object;)V

    .line 7
    invoke-super {p0}, Lcom/wsw/cospa/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onRefreshDownloadListMessage()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/DownloadComicActivity;->continue()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/DownloadComicActivity;->continue()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/DownloadComicActivity;->default()V

    return-void
.end method

.method public strictfp()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadComicActivity;->error_view:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadComicActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadComicActivity;->tvRetry:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadComicActivity;->tvErrorView:Landroid/widget/TextView;

    const-string v1, "\u6682\u65e0\u4e0b\u8f7d\u4efb\u52a1\uff01"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public this()V
    .locals 5

    .line 1
    invoke-static {p0}, Landroid/support/v4/p12;->case(Landroid/app/Activity;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadComicActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-static {p0, v0}, Lcom/wsw/cospa/utils/synchronized;->for(Landroidx/appcompat/app/AppCompatActivity;Landroidx/appcompat/widget/Toolbar;)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadComicActivity;->tvStorageSpace:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1100f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/wsw/cospa/utils/default;->else()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {}, Lcom/wsw/cospa/utils/default;->native()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    const-class v0, Lcom/wsw/cospa/service/DownloadService;

    invoke-static {p0, v0}, Landroid/support/v4/ix1;->do(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wsw/cospa/activity/DownloadComicActivity;->catch:Z

    .line 5
    invoke-static {}, Landroid/support/v4/lm1;->case()Landroid/support/v4/lm1;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/vz0;->for(Ljava/lang/Object;)V

    return-void
.end method

.method public throws()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadComicActivity;->error_view:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadComicActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadComicActivity;->tvRetry:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadComicActivity;->tvErrorView:Landroid/widget/TextView;

    const-string v1, "\u6682\u65e0\u4e0b\u8f7d\u4efb\u52a1\uff01"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
