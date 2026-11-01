.class public Lcom/wsw/cospa/fragment/BookShelfFragment;
.super Lcom/wsw/cospa/base/LazyFragment;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/event/RefreshAllBookMessageObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/fragment/BookShelfFragment$case;
    }
.end annotation


# instance fields
.field private abstract:Z

.field private break:Landroid/view/View;

.field private catch:Lcom/youth/banner/Banner;

.field private class:Lcom/wsw/cospa/adapter/ComicShelfGridAdapter;

.field private const:Lcom/wsw/cospa/adapter/ComicShelfListAdapter;

.field private default:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

.field public error_view:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09016a
    .end annotation
.end field

.field private extends:J

.field private final:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private finally:Z

.field private goto:Landroid/view/LayoutInflater;

.field private import:I

.field public mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902a4
    .end annotation
.end field

.field private native:Z

.field private package:I

.field private private:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/BannerInfo$BannerBean;",
            ">;"
        }
    .end annotation
.end field

.field private public:Z

.field public refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09035c
    .end annotation
.end field

.field public return:Landroid/support/v4/cq;

.field private static:I

.field private super:Landroidx/recyclerview/widget/GridLayoutManager;

.field private switch:Ljava/util/concurrent/ExecutorService;

.field private this:Landroid/view/View;

.field private throw:Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;

.field private throws:Lio/reactivex/try;

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

.field private while:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicShelfBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/base/LazyFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->native:Z

    .line 3
    iput-boolean v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->public:Z

    .line 4
    new-instance v0, Landroid/support/v4/cq;

    invoke-direct {v0}, Landroid/support/v4/cq;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->return:Landroid/support/v4/cq;

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/fragment/BookShelfFragment;->implements()V

    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p1}, Lcom/wsw/cospa/fragment/BookShelfFragment;->protected(Z)V

    return-void
.end method

.method public static synthetic abstract(Lcom/wsw/cospa/fragment/BookShelfFragment;)Lcom/wsw/cospa/adapter/ComicShelfGridAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->class:Lcom/wsw/cospa/adapter/ComicShelfGridAdapter;

    return-object p0
.end method

.method private synthetic b(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->abstract:Z

    .line 2
    invoke-direct {p0, p1}, Lcom/wsw/cospa/fragment/BookShelfFragment;->protected(Z)V

    return-void
.end method

.method public static synthetic break(Lcom/wsw/cospa/fragment/BookShelfFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/fragment/BookShelfFragment;->k(I)V

    return-void
.end method

.method private static synthetic c(Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/wsw/cospa/bean/BannerInfo;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/bean/BannerInfo;

    .line 2
    invoke-interface {p1, p0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 3
    invoke-interface {p1}, Lio/reactivex/Emitter;->onComplete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-interface {p1, p0}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    .line 5
    invoke-interface {p1}, Lio/reactivex/Emitter;->onComplete()V

    :goto_0
    return-void
.end method

.method public static synthetic catch(Lcom/wsw/cospa/fragment/BookShelfFragment;Lcom/wsw/cospa/bean/ComicShelfBean;Lcom/wsw/cospa/bean/ComicShelfBean;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/fragment/BookShelfFragment;->e(Lcom/wsw/cospa/bean/ComicShelfBean;Lcom/wsw/cospa/bean/ComicShelfBean;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic class(Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/wsw/cospa/fragment/BookShelfFragment;->c(Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic const(Lcom/wsw/cospa/fragment/BookShelfFragment;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/fragment/BookShelfFragment;->l(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic continue(Lcom/wsw/cospa/fragment/BookShelfFragment;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->native:Z

    return p1
.end method

.method private synthetic d(Lcom/wsw/cospa/bean/ComicShelfBean;Lcom/wsw/cospa/bean/ComicShelfBean;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/fragment/BookShelfFragment;->r(Lcom/wsw/cospa/bean/ComicShelfBean;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic default(Lcom/wsw/cospa/fragment/BookShelfFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->while:Ljava/util/List;

    return-object p1
.end method

.method private synthetic e(Lcom/wsw/cospa/bean/ComicShelfBean;Lcom/wsw/cospa/bean/ComicShelfBean;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/fragment/BookShelfFragment;->r(Lcom/wsw/cospa/bean/ComicShelfBean;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic extends(Lcom/wsw/cospa/fragment/BookShelfFragment;)Lcom/wsw/cospa/bean/ComicShelfGroupBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->default:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    return-object p0
.end method

.method private synthetic f(Lretrofit2/Response;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/wsw/cospa/fragment/BookShelfFragment;->o(Ljava/lang/String;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic final(Lcom/wsw/cospa/fragment/BookShelfFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/fragment/BookShelfFragment;->synchronized(I)V

    return-void
.end method

.method public static synthetic finally(Lcom/wsw/cospa/fragment/BookShelfFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->import:I

    return p0
.end method

.method private synthetic g(Lcom/wsw/cospa/bean/BannerInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    iget-boolean v0, p1, Lcom/wsw/cospa/bean/BannerInfo;->showBanner:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/BannerInfo;->getBanner()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->break:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iput-object p1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->private:Ljava/util/List;

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->catch:Lcom/youth/banner/Banner;

    invoke-virtual {v0}, Lcom/youth/banner/Banner;->startAutoPlay()V

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->catch:Lcom/youth/banner/Banner;

    invoke-virtual {v0, p1}, Lcom/youth/banner/Banner;->setImages(Ljava/util/List;)Lcom/youth/banner/Banner;

    .line 8
    iget-object p1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->catch:Lcom/youth/banner/Banner;

    invoke-virtual {p1}, Lcom/youth/banner/Banner;->start()Lcom/youth/banner/Banner;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/wsw/cospa/fragment/BookShelfFragment;->transient()V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/wsw/cospa/fragment/BookShelfFragment;->transient()V

    :goto_0
    return-void
.end method

.method private static synthetic h(Lcom/wsw/cospa/bean/ComicShelfBean;Lio/reactivex/ObservableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/wsw/cospa/dao/do;->n(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    .line 2
    invoke-interface {p1, p0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 3
    invoke-interface {p1}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method private synthetic i(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "shelf_go_detail_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->class:Lcom/wsw/cospa/adapter/ComicShelfGridAdapter;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/adapter/ComicShelfGridAdapter;->case(I)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getNoteUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->S(Landroid/content/Context;ZLjava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->class:Lcom/wsw/cospa/adapter/ComicShelfGridAdapter;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/adapter/ComicShelfGridAdapter;->case(I)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getNoteUrl()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/wsw/cospa/dao/do;->extends(Ljava/lang/String;)Lio/reactivex/new;

    move-result-object p1

    sget-object v0, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 7
    invoke-virtual {p1, v0}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object p1

    .line 8
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v0, Lcom/wsw/cospa/fragment/BookShelfFragment$do;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/fragment/BookShelfFragment$do;-><init>(Lcom/wsw/cospa/fragment/BookShelfFragment;)V

    .line 9
    invoke-interface {p1, v0}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/Observer;)V

    :goto_0
    return-void
.end method

.method public static synthetic import(Lcom/wsw/cospa/fragment/BookShelfFragment;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/fragment/BookShelfFragment;->b(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    return-void
.end method

.method private synthetic j(Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->class:Lcom/wsw/cospa/adapter/ComicShelfGridAdapter;

    invoke-virtual {p1, p2}, Lcom/wsw/cospa/adapter/ComicShelfGridAdapter;->case(I)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;

    invoke-direct {p2, p0, p1}, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;-><init>(Lcom/wsw/cospa/fragment/BookShelfFragment;Lcom/wsw/cospa/bean/ComicShelfBean;)V

    .line 3
    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private synthetic k(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "shelf_go_detail_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->const:Lcom/wsw/cospa/adapter/ComicShelfListAdapter;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/adapter/ComicShelfListAdapter;->case(I)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getNoteUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->S(Landroid/content/Context;ZLjava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->const:Lcom/wsw/cospa/adapter/ComicShelfListAdapter;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/adapter/ComicShelfListAdapter;->case(I)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getNoteUrl()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/wsw/cospa/dao/do;->extends(Ljava/lang/String;)Lio/reactivex/new;

    move-result-object p1

    sget-object v0, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 7
    invoke-virtual {p1, v0}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object p1

    .line 8
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v0, Lcom/wsw/cospa/fragment/BookShelfFragment$if;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/fragment/BookShelfFragment$if;-><init>(Lcom/wsw/cospa/fragment/BookShelfFragment;)V

    .line 9
    invoke-interface {p1, v0}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/Observer;)V

    :goto_0
    return-void
.end method

.method private synthetic l(Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->const:Lcom/wsw/cospa/adapter/ComicShelfListAdapter;

    invoke-virtual {p1, p2}, Lcom/wsw/cospa/adapter/ComicShelfListAdapter;->case(I)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;

    invoke-direct {p2, p0, p1}, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;-><init>(Lcom/wsw/cospa/fragment/BookShelfFragment;Lcom/wsw/cospa/bean/ComicShelfBean;)V

    .line 3
    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static m()Lcom/wsw/cospa/fragment/BookShelfFragment;
    .locals 1

    .line 1
    new-instance v0, Lcom/wsw/cospa/fragment/BookShelfFragment;

    invoke-direct {v0}, Lcom/wsw/cospa/fragment/BookShelfFragment;-><init>()V

    return-object v0
.end method

.method public static n(J)Lcom/wsw/cospa/fragment/BookShelfFragment;
    .locals 3

    .line 1
    new-instance v0, Lcom/wsw/cospa/fragment/BookShelfFragment;

    invoke-direct {v0}, Lcom/wsw/cospa/fragment/BookShelfFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "groupId"

    .line 3
    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static synthetic native(Lcom/wsw/cospa/bean/ComicShelfBean;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/wsw/cospa/fragment/BookShelfFragment;->h(Lcom/wsw/cospa/bean/ComicShelfBean;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method private o(Ljava/lang/String;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "Lcom/wsw/cospa/bean/BannerInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/hb;

    invoke-direct {v0, p1}, Landroid/support/v4/hb;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized p()V
    .locals 7

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->static:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->static:I

    .line 2
    iget-object v2, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->while:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->while:Ljava/util/List;

    iget v2, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->static:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ComicShelfBean;

    .line 4
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getAllowUpdate()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getGroup()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterListSize()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 6
    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->setLoading(Z)V

    .line 7
    invoke-direct {p0, v0}, Lcom/wsw/cospa/fragment/BookShelfFragment;->x(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    .line 8
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/wsw/cospa/dao/do;->abstract(Ljava/lang/String;)Lcom/wsw/cospa/bean/ComicSourceBean;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getSingleThreadType()Z

    move-result v3

    if-nez v3, :cond_0

    .line 10
    invoke-static {}, Lcom/wsw/cospa/model/while;->catch()Lcom/wsw/cospa/model/while;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wsw/cospa/model/while;->goto(Lcom/wsw/cospa/bean/ComicShelfBean;)Lio/reactivex/new;

    move-result-object v1

    new-instance v3, Landroid/support/v4/za;

    invoke-direct {v3, p0, v0}, Landroid/support/v4/za;-><init>(Lcom/wsw/cospa/fragment/BookShelfFragment;Lcom/wsw/cospa/bean/ComicShelfBean;)V

    .line 11
    invoke-virtual {v1, v3}, Lio/reactivex/new;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/new;

    move-result-object v1

    iget-object v3, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->throws:Lio/reactivex/try;

    .line 12
    invoke-virtual {v1, v3}, Lio/reactivex/new;->subscribeOn(Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object v1

    .line 13
    invoke-static {}, Lio/reactivex/android/schedulers/do;->for()Lio/reactivex/try;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/reactivex/new;->observeOn(Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object v1

    .line 14
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v3, Lcom/wsw/cospa/fragment/BookShelfFragment$for;

    invoke-direct {v3, p0, v0, v2}, Lcom/wsw/cospa/fragment/BookShelfFragment$for;-><init>(Lcom/wsw/cospa/fragment/BookShelfFragment;Lcom/wsw/cospa/bean/ComicShelfBean;I)V

    .line 15
    invoke-interface {v1, v3}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getDelayTime()I

    move-result v3

    if-lez v3, :cond_1

    .line 17
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    .line 18
    new-instance v4, Lcom/wsw/cospa/fragment/BookShelfFragment$new;

    invoke-direct {v4, p0}, Lcom/wsw/cospa/fragment/BookShelfFragment$new;-><init>(Lcom/wsw/cospa/fragment/BookShelfFragment;)V

    .line 19
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getDelayTime()I

    move-result v1

    int-to-long v5, v1

    .line 20
    invoke-virtual {v3, v4, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 21
    :cond_1
    invoke-static {}, Lcom/wsw/cospa/model/while;->catch()Lcom/wsw/cospa/model/while;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wsw/cospa/model/while;->goto(Lcom/wsw/cospa/bean/ComicShelfBean;)Lio/reactivex/new;

    move-result-object v1

    new-instance v3, Landroid/support/v4/ya;

    invoke-direct {v3, p0, v0}, Landroid/support/v4/ya;-><init>(Lcom/wsw/cospa/fragment/BookShelfFragment;Lcom/wsw/cospa/bean/ComicShelfBean;)V

    .line 22
    invoke-virtual {v1, v3}, Lio/reactivex/new;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/new;

    move-result-object v1

    .line 23
    invoke-static {}, Lio/reactivex/schedulers/do;->else()Lio/reactivex/try;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/reactivex/new;->subscribeOn(Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object v1

    .line 24
    invoke-static {}, Lio/reactivex/android/schedulers/do;->for()Lio/reactivex/try;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/reactivex/new;->observeOn(Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object v1

    .line 25
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v3, Lcom/wsw/cospa/fragment/BookShelfFragment$try;

    invoke-direct {v3, p0, v0, v2}, Lcom/wsw/cospa/fragment/BookShelfFragment$try;-><init>(Lcom/wsw/cospa/fragment/BookShelfFragment;Lcom/wsw/cospa/bean/ComicShelfBean;I)V

    .line 26
    invoke-interface {v1, v3}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_0

    .line 27
    :cond_2
    invoke-direct {p0}, Lcom/wsw/cospa/fragment/BookShelfFragment;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic package(Lcom/wsw/cospa/fragment/BookShelfFragment;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->import:I

    return p1
.end method

.method public static synthetic private(Lcom/wsw/cospa/fragment/BookShelfFragment;)Lcom/wsw/cospa/adapter/ComicShelfListAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->const:Lcom/wsw/cospa/adapter/ComicShelfListAdapter;

    return-object p0
.end method

.method private protected(Z)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->extends:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->default:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->getSortId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-wide v1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->extends:J

    invoke-static {v1, v2, v0}, Lcom/wsw/cospa/dao/do;->default(JI)Lio/reactivex/new;

    move-result-object v0

    sget-object v1, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 4
    invoke-virtual {v0, v1}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object v0

    .line 5
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v1, Lcom/wsw/cospa/fragment/BookShelfFragment$case;

    invoke-direct {v1, p0, p1}, Lcom/wsw/cospa/fragment/BookShelfFragment$case;-><init>(Lcom/wsw/cospa/fragment/BookShelfFragment;Z)V

    .line 6
    invoke-interface {v0, v1}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static synthetic public(Lcom/wsw/cospa/fragment/BookShelfFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/fragment/BookShelfFragment;->i(I)V

    return-void
.end method

.method private r(Lcom/wsw/cospa/bean/ComicShelfBean;)Lio/reactivex/new;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wsw/cospa/bean/ComicShelfBean;",
            ")",
            "Lio/reactivex/new<",
            "Lcom/wsw/cospa/bean/ComicShelfBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/gb;

    invoke-direct {v0, p1}, Landroid/support/v4/gb;-><init>(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic return(Lcom/wsw/cospa/fragment/BookShelfFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/fragment/BookShelfFragment;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic static(Lcom/wsw/cospa/fragment/BookShelfFragment;Lcom/wsw/cospa/bean/ComicShelfBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/fragment/BookShelfFragment;->x(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    return-void
.end method

.method public static synthetic strictfp(Lcom/wsw/cospa/fragment/BookShelfFragment;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->public:Z

    return p1
.end method

.method public static synthetic super(Lcom/wsw/cospa/fragment/BookShelfFragment;Lretrofit2/Response;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/fragment/BookShelfFragment;->f(Lretrofit2/Response;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic switch(Lcom/wsw/cospa/fragment/BookShelfFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/fragment/BookShelfFragment;->p()V

    return-void
.end method

.method private synthetic synchronized(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->private:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->private:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/BannerInfo$BannerBean;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p1, Lcom/wsw/cospa/bean/BannerInfo$BannerBean;->title:Ljava/lang/String;

    iget-object p1, p1, Lcom/wsw/cospa/bean/BannerInfo$BannerBean;->goUrl:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/wsw/cospa/activity/WebViewActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static synthetic this(Lcom/wsw/cospa/fragment/BookShelfFragment;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/fragment/BookShelfFragment;->j(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic throw(Lcom/wsw/cospa/fragment/BookShelfFragment;Lcom/wsw/cospa/bean/BannerInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/fragment/BookShelfFragment;->g(Lcom/wsw/cospa/bean/BannerInfo;)V

    return-void
.end method

.method public static synthetic throws(Lcom/wsw/cospa/fragment/BookShelfFragment;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->private:Ljava/util/List;

    return-object p0
.end method

.method private v(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicShelfBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->abstract:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "refresh_thread_num"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v0

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->static:I

    const/4 p1, 0x1

    :goto_0
    if-gt p1, v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/wsw/cospa/fragment/BookShelfFragment;->p()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic volatile(Lcom/wsw/cospa/fragment/BookShelfFragment;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/fragment/BookShelfFragment;->v(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic while(Lcom/wsw/cospa/fragment/BookShelfFragment;Lcom/wsw/cospa/bean/ComicShelfBean;Lcom/wsw/cospa/bean/ComicShelfBean;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/fragment/BookShelfFragment;->d(Lcom/wsw/cospa/bean/ComicShelfBean;Lcom/wsw/cospa/bean/ComicShelfBean;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized x(Lcom/wsw/cospa/bean/ComicShelfBean;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->while:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->while:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->while:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->while:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-virtual {v1, v0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->return(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public for()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/support/v4/hm1;->case()Landroid/support/v4/hm1;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/vz0;->for(Ljava/lang/Object;)V

    .line 2
    iget-boolean v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->abstract:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->autoRefresh()Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lcom/wsw/cospa/fragment/BookShelfFragment;->protected(Z)V

    :goto_0
    return-void
.end method

.method public if()I
    .locals 1

    const v0, 0x7f0c0081

    return v0
.end method

.method public implements()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->error_view:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public instanceof()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->default:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/base/LazyFragment;->case:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->goto:Landroid/view/LayoutInflater;

    const v1, 0x7f0c004b

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->this:Landroid/view/View;

    const v1, 0x7f0900aa

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->break:Landroid/view/View;

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->this:Landroid/view/View;

    const v1, 0x7f0900a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youth/banner/Banner;

    iput-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->catch:Lcom/youth/banner/Banner;

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    iget-object v1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->this:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->class(Landroid/view/View;)V

    .line 7
    iget v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->import:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->break:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-static {v2, v3}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    .line 10
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 11
    iget-object v2, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->break:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->break:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    .line 14
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 15
    iget-object v2, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->break:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    :goto_0
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->catch:Lcom/youth/banner/Banner;

    invoke-virtual {v0, v1}, Lcom/youth/banner/Banner;->setBannerStyle(I)Lcom/youth/banner/Banner;

    .line 17
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->catch:Lcom/youth/banner/Banner;

    new-instance v2, Landroid/support/v4/mh0;

    invoke-direct {v2}, Landroid/support/v4/mh0;-><init>()V

    invoke-virtual {v0, v2}, Lcom/youth/banner/Banner;->setImageLoader(Lcom/youth/banner/loader/ImageLoaderInterface;)Lcom/youth/banner/Banner;

    .line 18
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->catch:Lcom/youth/banner/Banner;

    sget-object v2, Lcom/youth/banner/Transformer;->Stack:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Lcom/youth/banner/Banner;->setBannerAnimation(Ljava/lang/Class;)Lcom/youth/banner/Banner;

    .line 19
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->catch:Lcom/youth/banner/Banner;

    invoke-virtual {v0, v1}, Lcom/youth/banner/Banner;->isAutoPlay(Z)Lcom/youth/banner/Banner;

    .line 20
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->catch:Lcom/youth/banner/Banner;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/youth/banner/Banner;->setDelayTime(I)Lcom/youth/banner/Banner;

    .line 21
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->catch:Lcom/youth/banner/Banner;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/youth/banner/Banner;->setIndicatorGravity(I)Lcom/youth/banner/Banner;

    .line 22
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->catch:Lcom/youth/banner/Banner;

    new-instance v1, Landroid/support/v4/fb;

    invoke-direct {v1, p0}, Landroid/support/v4/fb;-><init>(Lcom/wsw/cospa/fragment/BookShelfFragment;)V

    invoke-virtual {v0, v1}, Lcom/youth/banner/Banner;->setOnBannerListener(Lcom/youth/banner/listener/OnBannerListener;)Lcom/youth/banner/Banner;

    .line 23
    invoke-virtual {p0}, Lcom/wsw/cospa/fragment/BookShelfFragment;->q()V

    :cond_1
    return-void
.end method

.method public interface()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->extends:J

    return-wide v0
.end method

.method public new()Landroid/support/v4/m7;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    const/16 p2, 0x2776

    if-ne p1, p2, :cond_0

    const-string p1, "\u7f16\u8f91\u4e66\u67b6"

    .line 2
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/16 p2, 0x2777

    if-ne p1, p2, :cond_2

    const-wide/16 p1, 0x0

    const-string v0, "groupId"

    .line 3
    invoke-virtual {p3, v0, p1, p2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->extends:J

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lcom/wsw/cospa/dao/do;->public(Ljava/lang/Long;)Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->default:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->getViewId()I

    move-result p1

    iput p1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->import:I

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const/4 p2, 0x1

    const-string p3, "shelf_mode_key"

    invoke-virtual {p1, p3, p2}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->import:I

    :goto_0
    const/4 p1, 0x0

    .line 7
    invoke-direct {p0, p1}, Lcom/wsw/cospa/fragment/BookShelfFragment;->protected(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/support/v4/hm1;->case()Landroid/support/v4/hm1;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/vz0;->new(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->return:Landroid/support/v4/cq;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/support/v4/cq;->dispose()V

    .line 4
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onRefreshAllBookMessage()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "auto_refresh_comic_shelf"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->abstract:Z

    .line 2
    invoke-direct {p0, v0}, Lcom/wsw/cospa/fragment/BookShelfFragment;->protected(Z)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->catch:Lcom/youth/banner/Banner;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/youth/banner/Banner;->stopAutoPlay()V

    :cond_0
    return-void
.end method

.method public q()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/wsw/cospa/model/impl/if;->break()Lcom/wsw/cospa/model/impl/if;

    move-result-object v0

    const-string v1, "https://yiciyuan.coding.net/p/ycy/d/ycy/"

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/model/impl/if;->class(Ljava/lang/String;)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/wsw/cospa/utils/analyzeUrl/impl/IHttpGetApi;

    .line 2
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/utils/analyzeUrl/impl/IHttpGetApi;

    const/4 v1, 0x0

    .line 3
    invoke-static {v1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeHeaders;->getMap(Lcom/wsw/cospa/bean/ComicSourceBean;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "git/raw/master/banner.json"

    invoke-interface {v0, v2, v1}, Lcom/wsw/cospa/utils/analyzeUrl/impl/IHttpGetApi;->getWebContent(Ljava/lang/String;Ljava/util/Map;)Lio/reactivex/new;

    move-result-object v0

    new-instance v1, Landroid/support/v4/xa;

    invoke-direct {v1, p0}, Landroid/support/v4/xa;-><init>(Lcom/wsw/cospa/fragment/BookShelfFragment;)V

    .line 4
    invoke-virtual {v0, v1}, Lio/reactivex/new;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/new;

    move-result-object v0

    sget-object v1, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 5
    invoke-virtual {v0, v1}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object v0

    .line 6
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v1, Landroid/support/v4/ib;

    invoke-direct {v1, p0}, Landroid/support/v4/ib;-><init>(Lcom/wsw/cospa/fragment/BookShelfFragment;)V

    .line 7
    invoke-interface {v0, v1}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->class:Lcom/wsw/cospa/adapter/ComicShelfGridAdapter;

    new-instance v1, Landroid/support/v4/cb;

    invoke-direct {v1, p0}, Landroid/support/v4/cb;-><init>(Lcom/wsw/cospa/fragment/BookShelfFragment;)V

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/adapter/ComicShelfGridAdapter;->setOnItemClickListener(Lcom/wsw/cospa/listener/OnItemClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->class:Lcom/wsw/cospa/adapter/ComicShelfGridAdapter;

    new-instance v1, Landroid/support/v4/db;

    invoke-direct {v1, p0}, Landroid/support/v4/db;-><init>(Lcom/wsw/cospa/fragment/BookShelfFragment;)V

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/adapter/ComicShelfGridAdapter;->setOnLongItemClickListener(Lcom/wsw/cospa/listener/OnLongItemClickListener;)V

    return-void
.end method

.method public t()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->const:Lcom/wsw/cospa/adapter/ComicShelfListAdapter;

    new-instance v1, Landroid/support/v4/bb;

    invoke-direct {v1, p0}, Landroid/support/v4/bb;-><init>(Lcom/wsw/cospa/fragment/BookShelfFragment;)V

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/adapter/ComicShelfListAdapter;->setOnItemClickListener(Lcom/wsw/cospa/listener/OnItemClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->const:Lcom/wsw/cospa/adapter/ComicShelfListAdapter;

    new-instance v1, Landroid/support/v4/eb;

    invoke-direct {v1, p0}, Landroid/support/v4/eb;-><init>(Lcom/wsw/cospa/fragment/BookShelfFragment;)V

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/adapter/ComicShelfListAdapter;->setOnLongItemClickListener(Lcom/wsw/cospa/listener/OnLongItemClickListener;)V

    return-void
.end method

.method public transient()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->import:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/high16 v2, -0x3ec00000    # -12.0f

    invoke-static {v1, v2}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/high16 v2, -0x3ee00000    # -10.0f

    invoke-static {v1, v2}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v2, v3}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    .line 6
    iget-object v3, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-virtual {v3, v2, v1, v2, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 7
    iget-object v1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->break:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public try()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "groupId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->extends:J

    .line 2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/wsw/cospa/dao/do;->public(Ljava/lang/Long;)Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->default:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->extends:J

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->extends:J

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "auto_refresh_comic_shelf"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->abstract:Z

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->default:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->getViewId()I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->import:I

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "shelf_mode_key"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->import:I

    .line 9
    :goto_1
    invoke-virtual {p0}, Lcom/wsw/cospa/fragment/BookShelfFragment;->instanceof()V

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->setPullRefreshEnabled(Z)V

    .line 11
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-virtual {v0, v1}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->setLoadingMoreEnabled(Z)V

    .line 12
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->final:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 13
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/j10;->super(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->finally:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    .line 15
    iput v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->package:I

    goto :goto_2

    :cond_2
    const/4 v0, 0x3

    .line 16
    iput v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->package:I

    .line 17
    :goto_2
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget v4, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->package:I

    invoke-direct {v0, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->super:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 18
    new-instance v0, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;

    const/16 v3, 0x14

    invoke-direct {v0, v3}, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;-><init>(I)V

    iput-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->throw:Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;

    .line 19
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    const/16 v3, 0xa

    .line 20
    invoke-virtual {v0, v1, v3}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 21
    iget-object v4, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    .line 22
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 23
    iget v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->import:I

    const/4 v4, 0x0

    const/high16 v5, 0x40e00000    # 7.0f

    if-ne v0, v2, :cond_3

    .line 24
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v6

    float-to-int v6, v6

    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v5

    float-to-int v5, v5

    .line 27
    iget-object v6, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-virtual {v6, v5, v5, v5, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 28
    iget-object v5, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    new-instance v0, Lcom/wsw/cospa/adapter/ComicShelfListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/wsw/cospa/adapter/ComicShelfListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->const:Lcom/wsw/cospa/adapter/ComicShelfListAdapter;

    .line 30
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->final:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 31
    iget-object v5, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-virtual {v5, v0}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 32
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 33
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 34
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 35
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->const:Lcom/wsw/cospa/adapter/ComicShelfListAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 36
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    iget-object v2, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->const:Lcom/wsw/cospa/adapter/ComicShelfListAdapter;

    invoke-virtual {v0, v2}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 37
    invoke-virtual {p0}, Lcom/wsw/cospa/fragment/BookShelfFragment;->t()V

    goto :goto_3

    .line 38
    :cond_3
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    const/high16 v7, -0x3e800000    # -16.0f

    invoke-static {v6, v7}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v6

    float-to-int v6, v6

    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v5

    float-to-int v5, v5

    .line 41
    iget-object v6, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-virtual {v6, v5, v5, v5, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 42
    iget-object v5, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    new-instance v0, Lcom/wsw/cospa/adapter/ComicShelfGridAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/wsw/cospa/adapter/ComicShelfGridAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->class:Lcom/wsw/cospa/adapter/ComicShelfGridAdapter;

    .line 44
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    iget-object v5, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->throw:Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 45
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    iget-object v5, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->super:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v5}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 46
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 47
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 48
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 49
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->class:Lcom/wsw/cospa/adapter/ComicShelfGridAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 50
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    iget-object v2, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->class:Lcom/wsw/cospa/adapter/ComicShelfGridAdapter;

    invoke-virtual {v0, v2}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 51
    invoke-virtual {p0}, Lcom/wsw/cospa/fragment/BookShelfFragment;->s()V

    .line 52
    :goto_3
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->tvRetry:Landroid/widget/TextView;

    new-instance v2, Landroid/support/v4/wa;

    invoke-direct {v2, p0}, Landroid/support/v4/wa;-><init>(Lcom/wsw/cospa/fragment/BookShelfFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableAutoLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 54
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v1, Landroid/support/v4/ab;

    invoke-direct {v1, p0}, Landroid/support/v4/ab;-><init>(Lcom/wsw/cospa/fragment/BookShelfFragment;)V

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setOnRefreshListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 55
    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "refresh_thread_num"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v0

    .line 56
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->switch:Ljava/util/concurrent/ExecutorService;

    .line 57
    invoke-static {v0}, Lio/reactivex/schedulers/do;->if(Ljava/util/concurrent/Executor;)Lio/reactivex/try;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->throws:Lio/reactivex/try;

    return-void
.end method

.method public u(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->error_view:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->tvErrorView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->tvRetry:Landroid/widget/TextView;

    const-string v0, "\u70b9\u51fb\u5237\u65b0"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public w()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->default:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    const-string v1, "shelf_mode_key"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->getViewId()I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->import:I

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->import:I

    .line 4
    :goto_0
    iget v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->import:I

    const/4 v3, 0x0

    const/16 v4, 0xa

    const/high16 v5, 0x40e00000    # 7.0f

    if-ne v0, v2, :cond_6

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->private:Ljava/util/List;

    const/high16 v6, -0x3ea00000    # -14.0f

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7, v6}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v6

    float-to-int v6, v6

    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v5

    float-to-int v5, v5

    .line 9
    iget-object v6, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-virtual {v6, v5, v5, v5, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 10
    iget-object v5, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 11
    :cond_1
    iget-wide v7, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->extends:J

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-lez v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7, v6}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v6

    float-to-int v6, v6

    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v5

    float-to-int v5, v5

    .line 15
    iget-object v6, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-virtual {v6, v5, v5, v5, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 16
    iget-object v5, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    const/high16 v7, -0x3e100000    # -30.0f

    invoke-static {v6, v7}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v6

    float-to-int v6, v6

    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v5

    float-to-int v5, v5

    .line 20
    iget-object v6, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-virtual {v6, v5, v5, v5, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 21
    iget-object v5, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    :goto_1
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->default:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    if-nez v0, :cond_3

    .line 23
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->break:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const/high16 v6, -0x80000000

    invoke-static {v5, v6}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v5

    float-to-int v5, v5

    .line 25
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 26
    iget-object v5, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->break:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    :cond_3
    new-instance v0, Lcom/wsw/cospa/adapter/ComicShelfGridAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/wsw/cospa/adapter/ComicShelfGridAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->class:Lcom/wsw/cospa/adapter/ComicShelfGridAdapter;

    .line 28
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    if-gtz v0, :cond_4

    .line 29
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    iget-object v5, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->throw:Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 30
    :cond_4
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 31
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    iget-object v4, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->super:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v4}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 32
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 33
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 34
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->class:Lcom/wsw/cospa/adapter/ComicShelfGridAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 35
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    iget-object v3, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->class:Lcom/wsw/cospa/adapter/ComicShelfGridAdapter;

    invoke-virtual {v0, v3}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 36
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->default:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    const/4 v3, 0x2

    if-eqz v0, :cond_5

    .line 37
    invoke-virtual {v0, v3}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->setViewId(I)V

    .line 38
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->default:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->getViewId()I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->import:I

    .line 39
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->default:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    invoke-static {v0}, Lcom/wsw/cospa/dao/do;->r(Lcom/wsw/cospa/bean/ComicShelfGroupBean;)V

    goto :goto_2

    .line 40
    :cond_5
    iget-object v0, p0, Lcom/wsw/cospa/base/LazyFragment;->case:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/v02;->else(Ljava/lang/String;I)V

    .line 41
    iget-object v0, p0, Lcom/wsw/cospa/base/LazyFragment;->case:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->import:I

    .line 42
    :goto_2
    invoke-virtual {p0}, Lcom/wsw/cospa/fragment/BookShelfFragment;->s()V

    .line 43
    iget-boolean v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->public:Z

    xor-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/wsw/cospa/fragment/BookShelfFragment;->protected(Z)V

    goto/16 :goto_4

    .line 44
    :cond_6
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v6

    float-to-int v6, v6

    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v6

    float-to-int v6, v6

    .line 47
    iget-object v7, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-virtual {v7, v6, v6, v6, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 48
    iget-object v6, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->default:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    if-nez v0, :cond_7

    .line 50
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->break:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v5

    float-to-int v5, v5

    .line 52
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 53
    iget-object v5, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->break:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    :cond_7
    new-instance v0, Lcom/wsw/cospa/adapter/ComicShelfListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/wsw/cospa/adapter/ComicShelfListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->const:Lcom/wsw/cospa/adapter/ComicShelfListAdapter;

    .line 55
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    if-lez v0, :cond_8

    .line 56
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    iget-object v5, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->throw:Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 57
    :cond_8
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 58
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 59
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 60
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->const:Lcom/wsw/cospa/adapter/ComicShelfListAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 61
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    iget-object v3, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->final:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v3}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 62
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    iget-object v3, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->const:Lcom/wsw/cospa/adapter/ComicShelfListAdapter;

    invoke-virtual {v0, v3}, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 63
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->default:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    if-eqz v0, :cond_9

    .line 64
    invoke-virtual {v0, v2}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->setViewId(I)V

    .line 65
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->default:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->getViewId()I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->import:I

    .line 66
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->default:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    invoke-static {v0}, Lcom/wsw/cospa/dao/do;->r(Lcom/wsw/cospa/bean/ComicShelfGroupBean;)V

    goto :goto_3

    .line 67
    :cond_9
    iget-object v0, p0, Lcom/wsw/cospa/base/LazyFragment;->case:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->else(Ljava/lang/String;I)V

    .line 68
    iget-object v0, p0, Lcom/wsw/cospa/base/LazyFragment;->case:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->import:I

    .line 69
    :goto_3
    invoke-virtual {p0}, Lcom/wsw/cospa/fragment/BookShelfFragment;->t()V

    .line 70
    iget-boolean v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment;->native:Z

    xor-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/wsw/cospa/fragment/BookShelfFragment;->protected(Z)V

    :goto_4
    return-void
.end method
