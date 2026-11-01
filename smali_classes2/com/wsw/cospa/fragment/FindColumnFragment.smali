.class public Lcom/wsw/cospa/fragment/FindColumnFragment;
.super Lcom/wsw/cospa/base/BaseFragment;
.source "SourceFile"


# instance fields
.field private break:Landroidx/recyclerview/widget/GridLayoutManager;

.field private catch:Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;

.field private class:Lcom/wsw/cospa/vo/FindParentVo;

.field private const:Lcom/wsw/cospa/vo/FindChildVo;

.field public error_view:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09016a
    .end annotation
.end field

.field private final:Z

.field private goto:Lcom/wsw/cospa/adapter/FindComicDetailAdapter;

.field private import:Ljava/lang/String;

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
        value = 0x7f09035a
    .end annotation
.end field

.field private native:Z

.field private public:I

.field public refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09035c
    .end annotation
.end field

.field private return:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private super:I

.field private this:Lcom/wsw/cospa/adapter/FindComicGridAdapter;

.field private throw:Ljava/lang/String;

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

.field private while:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/base/BaseFragment;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->final:Z

    .line 3
    iput v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->super:I

    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->return:Ljava/util/Map;

    return-void
.end method

.method public static synthetic break(Lcom/wsw/cospa/fragment/FindColumnFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/fragment/FindColumnFragment;->throws(I)V

    return-void
.end method

.method public static synthetic catch(Lcom/wsw/cospa/fragment/FindColumnFragment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/fragment/FindColumnFragment;->default(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    return-void
.end method

.method public static synthetic class(Lcom/wsw/cospa/fragment/FindColumnFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/fragment/FindColumnFragment;->finally(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic const(Lcom/wsw/cospa/fragment/FindColumnFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->super:I

    return p0
.end method

.method private synthetic default(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput p1, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->super:I

    .line 2
    invoke-direct {p0, p1}, Lcom/wsw/cospa/fragment/FindColumnFragment;->interface(Z)V

    return-void
.end method

.method public static synthetic else(Lcom/wsw/cospa/fragment/FindColumnFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/fragment/FindColumnFragment;->static(I)V

    return-void
.end method

.method private synthetic extends(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/fragment/FindColumnFragment;->interface(Z)V

    return-void
.end method

.method public static synthetic final(Lcom/wsw/cospa/fragment/FindColumnFragment;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->super:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->super:I

    return v0
.end method

.method private synthetic finally(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/fragment/FindColumnFragment;->interface(Z)V

    return-void
.end method

.method public static synthetic goto(Lcom/wsw/cospa/fragment/FindColumnFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/fragment/FindColumnFragment;->switch(I)V

    return-void
.end method

.method public static synthetic import(Lcom/wsw/cospa/fragment/FindColumnFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->throw:Ljava/lang/String;

    return-object p1
.end method

.method private interface(Z)V
    .locals 6

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/fragment/FindColumnFragment;->strictfp()V

    .line 2
    :cond_0
    invoke-static {}, Lcom/wsw/cospa/model/while;->catch()Lcom/wsw/cospa/model/while;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->while:Ljava/lang/String;

    iget v2, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->super:I

    iget-object v3, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->import:Ljava/lang/String;

    iget-object v4, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->return:Ljava/util/Map;

    iget-object v5, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->throw:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/wsw/cospa/model/while;->case(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lio/reactivex/new;

    move-result-object p1

    sget-object v0, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 3
    invoke-virtual {p1, v0}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object p1

    new-instance v0, Lcom/wsw/cospa/fragment/FindColumnFragment$do;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/fragment/FindColumnFragment$do;-><init>(Lcom/wsw/cospa/fragment/FindColumnFragment;)V

    .line 4
    invoke-virtual {p1, v0}, Lio/reactivex/new;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static synthetic native(Lcom/wsw/cospa/fragment/FindColumnFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->while:Ljava/lang/String;

    return-object p0
.end method

.method public static package(Lcom/wsw/cospa/vo/FindParentVo;Lcom/wsw/cospa/vo/FindChildVo;)Lcom/wsw/cospa/fragment/FindColumnFragment;
    .locals 1

    .line 1
    new-instance v0, Lcom/wsw/cospa/fragment/FindColumnFragment;

    invoke-direct {v0}, Lcom/wsw/cospa/fragment/FindColumnFragment;-><init>()V

    .line 2
    iput-object p0, v0, Lcom/wsw/cospa/fragment/FindColumnFragment;->class:Lcom/wsw/cospa/vo/FindParentVo;

    .line 3
    iput-object p1, v0, Lcom/wsw/cospa/fragment/FindColumnFragment;->const:Lcom/wsw/cospa/vo/FindChildVo;

    return-object v0
.end method

.method public static private(Lcom/wsw/cospa/vo/FindParentVo;Lcom/wsw/cospa/vo/FindChildVo;Z)Lcom/wsw/cospa/fragment/FindColumnFragment;
    .locals 1

    .line 1
    new-instance v0, Lcom/wsw/cospa/fragment/FindColumnFragment;

    invoke-direct {v0}, Lcom/wsw/cospa/fragment/FindColumnFragment;-><init>()V

    .line 2
    iput-object p0, v0, Lcom/wsw/cospa/fragment/FindColumnFragment;->class:Lcom/wsw/cospa/vo/FindParentVo;

    .line 3
    iput-object p1, v0, Lcom/wsw/cospa/fragment/FindColumnFragment;->const:Lcom/wsw/cospa/vo/FindChildVo;

    .line 4
    iput-boolean p2, v0, Lcom/wsw/cospa/fragment/FindColumnFragment;->final:Z

    return-object v0
.end method

.method private public(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Lcom/wsw/cospa/fragment/FindColumnFragment$if;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/fragment/FindColumnFragment$if;-><init>(Lcom/wsw/cospa/fragment/FindColumnFragment;)V

    .line 3
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 4
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->return:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private synthetic static(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->this:Lcom/wsw/cospa/adapter/FindComicGridAdapter;

    invoke-virtual {v0}, Lcom/wsw/cospa/adapter/FindComicGridAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/SearchComicBean;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->R(Landroid/content/Context;ZLcom/wsw/cospa/bean/SearchComicBean;)V

    return-void
.end method

.method public static synthetic super(Lcom/wsw/cospa/fragment/FindColumnFragment;)Lcom/wsw/cospa/adapter/FindComicGridAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->this:Lcom/wsw/cospa/adapter/FindComicGridAdapter;

    return-object p0
.end method

.method private synthetic switch(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->goto:Lcom/wsw/cospa/adapter/FindComicDetailAdapter;

    invoke-virtual {v0}, Lcom/wsw/cospa/adapter/FindComicDetailAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/SearchComicBean;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->R(Landroid/content/Context;ZLcom/wsw/cospa/bean/SearchComicBean;)V

    return-void
.end method

.method public static synthetic this(Lcom/wsw/cospa/fragment/FindColumnFragment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/fragment/FindColumnFragment;->extends(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    return-void
.end method

.method public static synthetic throw(Lcom/wsw/cospa/fragment/FindColumnFragment;)Lcom/wsw/cospa/adapter/FindComicDetailAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->goto:Lcom/wsw/cospa/adapter/FindComicDetailAdapter;

    return-object p0
.end method

.method private synthetic throws(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->goto:Lcom/wsw/cospa/adapter/FindComicDetailAdapter;

    invoke-virtual {v0}, Lcom/wsw/cospa/adapter/FindComicDetailAdapter;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/SearchComicBean;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/SearchComicBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/wsw/cospa/activity/SearchComicActivity;->g(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic while(Lcom/wsw/cospa/fragment/FindColumnFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/fragment/FindColumnFragment;->public(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->error_view:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->mIndicatorView:Lcom/wang/avi/AVLoadingIndicatorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/wang/avi/AVLoadingIndicatorView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->tvErrorView:Landroid/widget/TextView;

    const-string v1, "\u6f2b\u753b\u5df2\u4e0b\u67b6\u6216\u662f\u4ed8\u8d39\u7ae0\u8282\uff01"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public case()V
    .locals 0

    return-void
.end method

.method public continue(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->error_view:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->mIndicatorView:Lcom/wang/avi/AVLoadingIndicatorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/wang/avi/AVLoadingIndicatorView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->tvErrorView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public if()I
    .locals 1

    const v0, 0x7f0c0089

    return v0
.end method

.method public new()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->const:Lcom/wsw/cospa/vo/FindChildVo;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/wsw/cospa/vo/FindChildVo;->getKindUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->while:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->const:Lcom/wsw/cospa/vo/FindChildVo;

    invoke-virtual {v0}, Lcom/wsw/cospa/vo/FindChildVo;->getParentTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->import:Ljava/lang/String;

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "find_comic_view_mode_key"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/j10;->super(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->native:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    .line 6
    iput v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->public:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    .line 7
    iput v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->public:I

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->this:Lcom/wsw/cospa/adapter/FindComicGridAdapter;

    if-nez v0, :cond_2

    .line 9
    new-instance v0, Lcom/wsw/cospa/adapter/FindComicGridAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/wsw/cospa/adapter/FindComicGridAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->this:Lcom/wsw/cospa/adapter/FindComicGridAdapter;

    .line 10
    new-instance v0, Lcom/wsw/cospa/widget/view/WrapContentGridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget v3, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->public:I

    invoke-direct {v0, v2, v3}, Lcom/wsw/cospa/widget/view/WrapContentGridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->break:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 11
    iget-object v2, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 12
    new-instance v0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;

    const/16 v2, 0x14

    invoke-direct {v0, v2}, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;-><init>(I)V

    iput-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->catch:Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;

    .line 13
    iget-object v2, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 14
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->catch:Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 15
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->this:Lcom/wsw/cospa/adapter/FindComicGridAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_1

    .line 16
    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 17
    :goto_1
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->this:Lcom/wsw/cospa/adapter/FindComicGridAdapter;

    new-instance v2, Landroid/support/v4/pb0;

    invoke-direct {v2, p0}, Landroid/support/v4/pb0;-><init>(Lcom/wsw/cospa/fragment/FindColumnFragment;)V

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/adapter/FindComicGridAdapter;->setOnItemClickListener(Lcom/wsw/cospa/listener/OnItemClickListener;)V

    goto :goto_3

    .line 18
    :cond_3
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->goto:Lcom/wsw/cospa/adapter/FindComicDetailAdapter;

    if-nez v0, :cond_5

    .line 19
    new-instance v0, Lcom/wsw/cospa/adapter/FindComicDetailAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/wsw/cospa/adapter/FindComicDetailAdapter;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->goto:Lcom/wsw/cospa/adapter/FindComicDetailAdapter;

    .line 20
    new-instance v0, Lcom/wsw/cospa/widget/view/WrapContentLinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/wsw/cospa/widget/view/WrapContentLinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 22
    iget-object v2, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 23
    iget-object v2, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->catch:Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 24
    :cond_4
    iget-object v2, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 25
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->goto:Lcom/wsw/cospa/adapter/FindComicDetailAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_2

    .line 26
    :cond_5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 27
    :goto_2
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->goto:Lcom/wsw/cospa/adapter/FindComicDetailAdapter;

    new-instance v2, Landroid/support/v4/qb0;

    invoke-direct {v2, p0}, Landroid/support/v4/qb0;-><init>(Lcom/wsw/cospa/fragment/FindColumnFragment;)V

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/adapter/FindComicDetailAdapter;->setOnItemClickListener(Lcom/wsw/cospa/listener/OnItemClickListener;)V

    .line 28
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->goto:Lcom/wsw/cospa/adapter/FindComicDetailAdapter;

    new-instance v2, Landroid/support/v4/ob0;

    invoke-direct {v2, p0}, Landroid/support/v4/ob0;-><init>(Lcom/wsw/cospa/fragment/FindColumnFragment;)V

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/adapter/FindComicDetailAdapter;->setItemSearchListener(Lcom/wsw/cospa/adapter/FindComicDetailAdapter$OnItemSearchClickListener;)V

    .line 29
    :goto_3
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 30
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableAutoLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 31
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableRefresh(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 32
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableOverScrollDrag(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 33
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v2, Landroid/support/v4/nb0;

    invoke-direct {v2, p0}, Landroid/support/v4/nb0;-><init>(Lcom/wsw/cospa/fragment/FindColumnFragment;)V

    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setOnRefreshListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 34
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v2, Landroid/support/v4/mb0;

    invoke-direct {v2, p0}, Landroid/support/v4/mb0;-><init>(Lcom/wsw/cospa/fragment/FindColumnFragment;)V

    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setOnLoadMoreListener(Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 35
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->tvRetry:Landroid/widget/TextView;

    new-instance v2, Landroid/support/v4/lb0;

    invoke-direct {v2, p0}, Landroid/support/v4/lb0;-><init>(Lcom/wsw/cospa/fragment/FindColumnFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-boolean v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->final:Z

    if-eqz v0, :cond_6

    .line 37
    invoke-direct {p0, v1}, Lcom/wsw/cospa/fragment/FindColumnFragment;->interface(Z)V

    :cond_6
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/base/BaseFragment;->new:Landroid/content/Context;

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/wsw/cospa/base/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 4
    iput-object p1, p0, Lcom/wsw/cospa/base/BaseFragment;->new:Landroid/content/Context;

    return-void
.end method

.method public return()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->error_view:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->mIndicatorView:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {v0, v1}, Lcom/wang/avi/AVLoadingIndicatorView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public strictfp()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->mIndicatorView:Lcom/wang/avi/AVLoadingIndicatorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wang/avi/AVLoadingIndicatorView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->error_view:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public try()Landroid/support/v4/m7;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public volatile()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->final:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/wsw/cospa/fragment/FindColumnFragment;->interface(Z)V

    .line 3
    iput-boolean v0, p0, Lcom/wsw/cospa/fragment/FindColumnFragment;->final:Z

    :cond_0
    return-void
.end method
