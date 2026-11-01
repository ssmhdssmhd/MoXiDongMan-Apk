.class public Lcom/wsw/cospa/activity/HomeActivity;
.super Lcom/wsw/cospa/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/flyco/tablayout/listener/OnTabSelectListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final throws:Ljava/lang/String; = "HomeActivity"


# instance fields
.field public abl_main:Lcom/google/android/material/appbar/AppBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09003d
    .end annotation
.end field

.field private break:Lcom/wsw/cospa/fragment/ComicFindFragment;

.field private catch:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

.field private class:Lcom/wsw/cospa/fragment/LocalComicFragment;

.field private final const:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/flyco/tablayout/listener/CustomTabEntity;",
            ">;"
        }
    .end annotation
.end field

.field public contentView:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090117
    .end annotation
.end field

.field public dlLeftMain:Landroidx/drawerlayout/widget/DrawerLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090143
    .end annotation
.end field

.field private final final:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private goto:Lcom/wsw/cospa/fragment/BookListFragment;

.field private import:Ljava/io/File;

.field public ivArrow:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090232
    .end annotation
.end field

.field public iv_header:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090242
    .end annotation
.end field

.field public ll_version:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090291
    .end annotation
.end field

.field public mCommonTabLayout:Lcom/flyco/tablayout/CommonTabLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09029e
    .end annotation
.end field

.field private native:Landroid/graphics/Bitmap;

.field public nightModelView:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902fc
    .end annotation
.end field

.field private public:J

.field private return:Ljava/lang/reflect/Method;

.field public searchView:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090389
    .end annotation
.end field

.field public sourceNameLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903b6
    .end annotation
.end field

.field private static:Ljava/lang/Object;

.field public statusBarView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903d7
    .end annotation
.end field

.field private super:I

.field public swNightModelText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903e4
    .end annotation
.end field

.field public swNightTheme:Lcom/wsw/cospa/widget/view/SwitchButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903e5
    .end annotation
.end field

.field private switch:[Ljava/lang/String;

.field public tbToolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090427
    .end annotation
.end field

.field private this:Lcom/wsw/cospa/fragment/RecommendFragmant;

.field private throw:Lcom/wsw/cospa/activity/SourceFilterView;

.field public tvAbout:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09045b
    .end annotation
.end field

.field public tvComicManager:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09046e
    .end annotation
.end field

.field public tvDownloadTask:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09047f
    .end annotation
.end field

.field public tvLocalComic:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090496
    .end annotation
.end field

.field public tvSetting:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904b0
    .end annotation
.end field

.field public tvSourceName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904b4
    .end annotation
.end field

.field public tvToolbarTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904c2
    .end annotation
.end field

.field public tvVersion:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904c4
    .end annotation
.end field

.field public tv_donate:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09047b
    .end annotation
.end field

.field public tv_feedback:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090485
    .end annotation
.end field

.field public tv_shop:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904b1
    .end annotation
.end field

.field private while:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/base/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->const:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->final:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->public:J

    const-string v0, "Activity"

    const-string v1, "FragmentActivity"

    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->switch:[Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/view/ViewGroup;II)Landroid/animation/Animator;
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x0

    .line 2
    invoke-static {p1, p2, p3, v1, v0}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object p1

    const-wide/16 p2, 0x258

    .line 3
    invoke-virtual {p1, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 4
    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-object p1
.end method

.method public static synthetic abstract(Lcom/wsw/cospa/activity/HomeActivity;Lcom/wsw/cospa/bean/BlockComic;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/HomeActivity;->r(Lcom/wsw/cospa/bean/BlockComic;)V

    return-void
.end method

.method private b(Lcom/wsw/cospa/bean/ComicShelfBean;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/wsw/cospa/model/while;->catch()Lcom/wsw/cospa/model/while;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/model/while;->else(Lcom/wsw/cospa/bean/ComicShelfBean;)Lio/reactivex/new;

    move-result-object v0

    sget-object v1, Landroid/support/v4/wj0;->do:Landroid/support/v4/wj0;

    .line 2
    invoke-virtual {v0, v1}, Lio/reactivex/new;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/new;

    move-result-object v0

    sget-object v1, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 3
    invoke-virtual {v0, v1}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object v0

    .line 4
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v1, Lcom/wsw/cospa/activity/HomeActivity$goto;

    invoke-direct {v1, p0, p1}, Lcom/wsw/cospa/activity/HomeActivity$goto;-><init>(Lcom/wsw/cospa/activity/HomeActivity;Lcom/wsw/cospa/bean/ComicShelfBean;)V

    .line 5
    invoke-interface {v0, v1}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private varargs c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :goto_0
    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 3
    :catch_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic continue(Lcom/wsw/cospa/activity/HomeActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/HomeActivity;->i(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic default(Lcom/wsw/cospa/activity/HomeActivity;Lretrofit2/Response;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/HomeActivity;->q(Lretrofit2/Response;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method private e()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->return:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/wsw/cospa/activity/HomeActivity;->static:Ljava/lang/Object;

    if-eqz v2, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 4
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 5
    iget-object v2, p0, Lcom/wsw/cospa/activity/HomeActivity;->switch:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/wsw/cospa/activity/HomeActivity;->switch:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    const-string v2, "mFragments"

    .line 7
    invoke-direct {p0, v0, v2}, Lcom/wsw/cospa/activity/HomeActivity;->v(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->static:Ljava/lang/Object;

    const-string v2, "noteStateNotSaved"

    new-array v3, v1, [Ljava/lang/Class;

    .line 9
    invoke-direct {p0, v0, v2, v3}, Lcom/wsw/cospa/activity/HomeActivity;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->return:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    .line 10
    iget-object v2, p0, Lcom/wsw/cospa/activity/HomeActivity;->static:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method public static synthetic extends(Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/wsw/cospa/activity/HomeActivity;->p(Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method private static synthetic f(Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p0}, Landroid/support/v4/fd2;->new(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hw;->try()Lcom/wsw/cospa/dao/ComicInfoBeanDao;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ComicInfoBean;

    if-eqz v0, :cond_1

    .line 3
    new-instance p0, Ljava/lang/Throwable;

    const-string v0, "\u5df2\u5728\u4e66\u67b6\u4e2d"

    invoke-direct {p0, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lio/reactivex/ObservableEmitter;->tryOnError(Ljava/lang/Throwable;)Z

    return-void

    .line 4
    :cond_1
    invoke-static {p0}, Landroid/support/v4/l22;->goto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/hw;->goto()Lcom/wsw/cospa/dao/ComicSourceBeanDao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/ComicSourceBean;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 6
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/hw;->goto()Lcom/wsw/cospa/dao/ComicSourceBeanDao;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v3, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->a:Lorg/greenrobot/greendao/Property;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {v3, v0}, Lorg/greenrobot/greendao/Property;->like(Ljava/lang/String;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    new-array v3, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v0, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->limit(I)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->build()Lorg/greenrobot/greendao/query/Query;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/Query;->unique()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/wsw/cospa/bean/ComicSourceBean;

    :cond_2
    if-eqz v1, :cond_3

    .line 9
    new-instance v0, Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-direct {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;-><init>()V

    .line 10
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->setTag(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->setNoteUrl(Ljava/lang/String;)V

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->setDurChapter(Ljava/lang/Integer;)V

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->setDurChapterPage(Ljava/lang/Integer;)V

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/bean/ComicShelfBean;->setFinalDate(Ljava/lang/Long;)V

    .line 15
    invoke-interface {p1, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 16
    invoke-interface {p1}, Lio/reactivex/Emitter;->onComplete()V

    return-void

    .line 17
    :cond_3
    new-instance p0, Ljava/lang/Throwable;

    const-string v0, "\u672a\u627e\u5230\u5bf9\u5e94\u56fe\u6e90"

    invoke-direct {p0, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lio/reactivex/ObservableEmitter;->tryOnError(Ljava/lang/Throwable;)Z

    return-void

    .line 18
    :cond_4
    :goto_0
    new-instance p0, Ljava/lang/Throwable;

    const-string v0, "\u65e0\u6548\u7f51\u5740\uff01"

    invoke-direct {p0, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lio/reactivex/ObservableEmitter;->tryOnError(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public static synthetic finally(Lcom/wsw/cospa/activity/HomeActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/activity/HomeActivity;->k(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic g(Lcom/wsw/cospa/bean/ComicShelfBean;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/wsw/cospa/model/while;->catch()Lcom/wsw/cospa/model/while;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/model/while;->goto(Lcom/wsw/cospa/bean/ComicShelfBean;)Lio/reactivex/new;

    move-result-object p0

    return-object p0
.end method

.method private synthetic h(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/wsw/cospa/activity/SearchComicActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic i(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/HomeActivity;->throw:Lcom/wsw/cospa/activity/SourceFilterView;

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/wsw/cospa/activity/SourceFilterView;

    new-instance v0, Lcom/wsw/cospa/activity/HomeActivity$do;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/activity/HomeActivity$do;-><init>(Lcom/wsw/cospa/activity/HomeActivity;)V

    invoke-direct {p1, p0, v0}, Lcom/wsw/cospa/activity/SourceFilterView;-><init>(Landroid/app/Activity;Lcom/wsw/cospa/activity/SourceFilterView$onSourceFilterListener;)V

    iput-object p1, p0, Lcom/wsw/cospa/activity/HomeActivity;->throw:Lcom/wsw/cospa/activity/SourceFilterView;

    .line 3
    invoke-virtual {p1}, Lcom/wsw/cospa/activity/SourceFilterView;->catch()Landroid/widget/PopupWindow;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/wsw/cospa/activity/SourceFilterView;->switch()V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/HomeActivity;->throw:Lcom/wsw/cospa/activity/SourceFilterView;

    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->tbToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/activity/SourceFilterView;->throws(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/activity/HomeActivity;->throw:Lcom/wsw/cospa/activity/SourceFilterView;

    invoke-virtual {p1}, Lcom/wsw/cospa/activity/SourceFilterView;->throw()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/HomeActivity;->y(Z)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/HomeActivity;->y(Z)V

    :goto_1
    return-void
.end method

.method public static synthetic import(Lcom/wsw/cospa/activity/HomeActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/HomeActivity;->h(Landroid/view/View;)V

    return-void
.end method

.method private instanceof(Ljava/lang/String;)Lio/reactivex/new;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/new<",
            "Lcom/wsw/cospa/bean/ComicShelfBean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/fk0;

    invoke-direct {v0, p1}, Landroid/support/v4/fk0;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic interface(Lcom/wsw/cospa/activity/HomeActivity;Lcom/wsw/cospa/bean/ComicShelfBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/HomeActivity;->b(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    return-void
.end method

.method private static synthetic j(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    return-void
.end method

.method private synthetic k(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/HomeActivity;->x()V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string p2, "HOME_PAGE_HEADER_PIC"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Landroid/support/v4/v02;->this(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic l(Landroid/view/View;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "HOME_PAGE_HEADER_PIC"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->try(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/activity/HomeActivity;->while:Ljava/lang/String;

    .line 2
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->while:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/wsw/cospa/activity/HomeActivity;->import:Ljava/io/File;

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/activity/HomeActivity;->while:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/wsw/cospa/activity/HomeActivity;->import:Ljava/io/File;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    new-instance p1, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$case;

    invoke-direct {p1, p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$case;-><init>(Landroid/content/Context;)V

    .line 5
    new-instance v0, Landroid/support/v4/ak0;

    invoke-direct {v0, p0}, Landroid/support/v4/ak0;-><init>(Lcom/wsw/cospa/activity/HomeActivity;)V

    const-string v1, "\u6062\u590d\u80cc\u666f\u56fe"

    invoke-virtual {p1, v1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$case;->synchronized(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$case;

    .line 6
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->this()Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;->show()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic m(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/HomeActivity;->native:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "header_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string p2, "yyyy_MM_dd_HH_mm"

    invoke-static {v0, v1, p2}, Landroid/support/v4/l22;->for(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".png"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/wsw/cospa/activity/HomeActivity;->native:Landroid/graphics/Bitmap;

    invoke-static {p0, p2, p1}, Lcom/wsw/cospa/utils/this;->catch(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string p2, "home_header_url_key"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Landroid/support/v4/v02;->try(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 7
    invoke-static {p0}, Landroid/support/v4/jh0;->class(Landroidx/fragment/app/FragmentActivity;)Landroid/support/v4/ph0;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/ph0;->b()Lcom/wsw/cospa/for;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/wsw/cospa/for;->m1(Ljava/lang/String;)Lcom/wsw/cospa/for;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bumptech/glide/else;->C0()Lcom/bumptech/glide/request/FutureTarget;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/wsw/cospa/activity/HomeActivity;->native:Landroid/graphics/Bitmap;

    .line 8
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->volatile(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/goto;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bumptech/glide/goto;->new()Lcom/bumptech/glide/else;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/else;->v0(Ljava/lang/String;)Lcom/bumptech/glide/else;

    move-result-object p1

    new-instance p2, Lcom/wsw/cospa/activity/HomeActivity$new;

    invoke-direct {p2, p0}, Lcom/wsw/cospa/activity/HomeActivity$new;-><init>(Lcom/wsw/cospa/activity/HomeActivity;)V

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/else;->j0(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->volatile(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/goto;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/goto;->new()Lcom/bumptech/glide/else;

    move-result-object p1

    const-string p2, "https://api.blogbig.cn/random/api.php"

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/else;->v0(Ljava/lang/String;)Lcom/bumptech/glide/else;

    move-result-object p1

    new-instance p2, Lcom/wsw/cospa/activity/HomeActivity$try;

    invoke-direct {p2, p0}, Lcom/wsw/cospa/activity/HomeActivity$try;-><init>(Lcom/wsw/cospa/activity/HomeActivity;)V

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/else;->j0(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private synthetic n(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/HomeActivity;->A()V

    return-void
.end method

.method public static synthetic native(Lcom/wsw/cospa/activity/HomeActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/activity/HomeActivity;->m(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic o(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/HomeActivity;->B()V

    return-void
.end method

.method private static synthetic p(Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
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

    const-class v1, Lcom/wsw/cospa/bean/BlockComic;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wsw/cospa/bean/BlockComic;

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

.method public static synthetic package(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcom/wsw/cospa/activity/HomeActivity;->j(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic private(Lcom/wsw/cospa/activity/HomeActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/activity/HomeActivity;->o(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic protected(Lcom/wsw/cospa/activity/HomeActivity;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/HomeActivity;->native:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static synthetic public(Lcom/wsw/cospa/bean/ComicShelfBean;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-static {p0}, Lcom/wsw/cospa/activity/HomeActivity;->g(Lcom/wsw/cospa/bean/ComicShelfBean;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method private synthetic q(Lretrofit2/Response;)Lio/reactivex/ObservableSource;
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

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/HomeActivity;->u(Ljava/lang/String;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method

.method private synthetic r(Lcom/wsw/cospa/bean/BlockComic;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/BlockComic;->isShowMall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->tv_shop:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->tv_shop:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/BlockComic;->isShowComic()Z

    move-result v0

    const-string v1, "block_comic"

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/BlockComic;->getList()Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 7
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/BlockComic;->getList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/wsw/cospa/utils/package;->do(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/v02;->this(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/v02;->this(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic return(Lcom/wsw/cospa/activity/HomeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/wsw/cospa/activity/HomeActivity;->s()V

    return-void
.end method

.method private synthetic s()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->iv_header:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/wsw/cospa/activity/HomeActivity;->native:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static synthetic static(Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/wsw/cospa/activity/HomeActivity;->f(Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic strictfp(Lcom/wsw/cospa/activity/HomeActivity;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/HomeActivity;->l(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic switch(Lcom/wsw/cospa/activity/HomeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/wsw/cospa/activity/HomeActivity;->t()V

    return-void
.end method

.method private synthetic t()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "home_header_url_key"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->try(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {p0}, Landroid/support/v4/jh0;->class(Landroidx/fragment/app/FragmentActivity;)Landroid/support/v4/ph0;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/ph0;->b()Lcom/wsw/cospa/for;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wsw/cospa/for;->m1(Ljava/lang/String;)Lcom/wsw/cospa/for;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/else;->C0()Lcom/bumptech/glide/request/FutureTarget;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->native:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Landroid/support/v4/jh0;->class(Landroidx/fragment/app/FragmentActivity;)Landroid/support/v4/ph0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/ph0;->b()Lcom/wsw/cospa/for;

    move-result-object v0

    const-string v1, "https://api.blogbig.cn/random/api.php"

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/for;->m1(Ljava/lang/String;)Lcom/wsw/cospa/for;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/else;->C0()Lcom/bumptech/glide/request/FutureTarget;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->native:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    :goto_0
    new-instance v0, Landroid/support/v4/xj0;

    invoke-direct {v0, p0}, Landroid/support/v4/xj0;-><init>(Lcom/wsw/cospa/activity/HomeActivity;)V

    invoke-static {v0}, Landroid/support/v4/wi0;->try(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic throws(Lcom/wsw/cospa/activity/HomeActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/activity/HomeActivity;->n(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic transient(Lcom/wsw/cospa/activity/HomeActivity;)Lcom/wsw/cospa/fragment/RecommendFragmant;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/HomeActivity;->this:Lcom/wsw/cospa/fragment/RecommendFragmant;

    return-object p0
.end method

.method private u(Ljava/lang/String;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "Lcom/wsw/cospa/bean/BlockComic;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/gk0;

    invoke-direct {v0, p1}, Landroid/support/v4/gk0;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method private v(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    return-object p2

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 4
    throw p2

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/NoSuchFieldException;

    invoke-direct {p1}, Ljava/lang/NoSuchFieldException;-><init>()V

    throw p1
.end method

.method public static synthetic volatile(Lcom/wsw/cospa/activity/HomeActivity;Ljava/lang/String;)Lio/reactivex/new;
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/HomeActivity;->instanceof(Ljava/lang/String;)Lio/reactivex/new;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A()V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/luck/picture/lib/if;->do(Landroid/app/Activity;)Lcom/luck/picture/lib/if;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/support/v4/rd1;->throw()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/if;->class(I)Lcom/luck/picture/lib/do;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/do;->import(I)Lcom/luck/picture/lib/do;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/do;->native(I)Lcom/luck/picture/lib/do;

    move-result-object v0

    const/4 v2, 0x3

    .line 5
    invoke-virtual {v0, v2}, Lcom/luck/picture/lib/do;->const(I)Lcom/luck/picture/lib/do;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/do;->continue(I)Lcom/luck/picture/lib/do;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/do;->default(Z)Lcom/luck/picture/lib/do;

    move-result-object v0

    .line 8
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/do;->final(Z)Lcom/luck/picture/lib/do;

    move-result-object v0

    const-string v2, ".png"

    .line 9
    invoke-virtual {v0, v2}, Lcom/luck/picture/lib/do;->class(Ljava/lang/String;)Lcom/luck/picture/lib/do;

    move-result-object v0

    .line 10
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/do;->while(Z)Lcom/luck/picture/lib/do;

    move-result-object v0

    const-string v2, "/CustomPath"

    .line 11
    invoke-virtual {v0, v2}, Lcom/luck/picture/lib/do;->strictfp(Ljava/lang/String;)Lcom/luck/picture/lib/do;

    move-result-object v0

    .line 12
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/do;->case(Z)Lcom/luck/picture/lib/do;

    move-result-object v0

    .line 13
    invoke-virtual {v0, v1, v1}, Lcom/luck/picture/lib/do;->b(II)Lcom/luck/picture/lib/do;

    move-result-object v0

    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v2}, Lcom/luck/picture/lib/do;->catch(Z)Lcom/luck/picture/lib/do;

    move-result-object v0

    .line 15
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/do;->throw(Z)Lcom/luck/picture/lib/do;

    move-result-object v0

    .line 16
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/do;->volatile(Z)Lcom/luck/picture/lib/do;

    move-result-object v0

    .line 17
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/do;->interface(Z)Lcom/luck/picture/lib/do;

    move-result-object v0

    .line 18
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/do;->throws(Z)Lcom/luck/picture/lib/do;

    move-result-object v0

    .line 19
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/do;->super(Z)Lcom/luck/picture/lib/do;

    move-result-object v0

    .line 20
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/do;->private(Z)Lcom/luck/picture/lib/do;

    move-result-object v0

    .line 21
    invoke-virtual {v0, v2}, Lcom/luck/picture/lib/do;->if(Z)Lcom/luck/picture/lib/do;

    move-result-object v0

    const/16 v1, 0xbc

    .line 22
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/do;->goto(I)V

    return-void
.end method

.method public B()V
    .locals 7

    .line 1
    new-instance v1, Lcom/wsw/cospa/utils/DialogTool$new;

    const-string v0, "\u8bf7\u8f93\u5165\u5934\u56fe\u5730\u5740"

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Lcom/wsw/cospa/utils/DialogTool$new;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v3, Lcom/wsw/cospa/utils/DialogTool$try;

    const-string v0, "\u786e\u8ba4"

    const-string v4, "\u53d6\u6d88"

    invoke-direct {v3, v0, v4}, Lcom/wsw/cospa/utils/DialogTool$try;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v4, "home_header_url_key"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/v02;->try(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v2

    .line 5
    :goto_0
    new-instance v5, Lcom/wsw/cospa/activity/HomeActivity$case;

    invoke-direct {v5, p0}, Lcom/wsw/cospa/activity/HomeActivity$case;-><init>(Lcom/wsw/cospa/activity/HomeActivity;)V

    const-string v6, "\u8bf7\u8f93\u5165\u5934\u56fe\u5730\u5740"

    move-object v0, p0

    move-object v2, v3

    move-object v3, v6

    invoke-static/range {v0 .. v5}, Lcom/wsw/cospa/utils/DialogTool;->s(Landroid/app/Activity;Lcom/wsw/cospa/utils/DialogTool$new;Lcom/wsw/cospa/utils/DialogTool$try;Ljava/lang/String;Ljava/lang/String;Lcom/wsw/cospa/utils/DialogTool$EditDialogOptcb;)V

    return-void
.end method

.method public C(I)V
    .locals 11

    const/4 v0, 0x5

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/HomeActivity;->tbToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout$for;

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/AppBarLayout$for;->new(I)V

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/activity/HomeActivity;->tbToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/activity/HomeActivity;->tvToolbarTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/activity/HomeActivity;->searchView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/activity/HomeActivity;->sourceNameLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    :cond_0
    const-string v3, "\u53d1\u73b0"

    const-string v4, "pref_hide_local_list"

    const-string v5, "pref_hide_history_list"

    const-string v6, "pref_hide_find_list"

    const-string v7, "pref_hide_recommend_list"

    const/4 v8, 0x1

    const-string v9, "\u5386\u53f2"

    const-string v10, "\u672c\u5730"

    if-ne p1, v8, :cond_4

    .line 7
    iget-object p1, p0, Lcom/wsw/cospa/activity/HomeActivity;->tbToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout$for;

    .line 8
    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/AppBarLayout$for;->new(I)V

    .line 9
    :try_start_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/HomeActivity;->abl_main:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 10
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object p1

    .line 11
    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->getTopAndBottomOffset()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->setTopAndBottomOffset(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/HomeActivity;->tbToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 15
    iget-object p1, p0, Lcom/wsw/cospa/activity/HomeActivity;->searchView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/wsw/cospa/activity/HomeActivity;->tvToolbarTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lcom/wsw/cospa/activity/HomeActivity;->sourceNameLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 18
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    invoke-virtual {p1, v7, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result p1

    .line 19
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    invoke-virtual {v0, v6, v8}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v0

    .line 20
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v1

    invoke-virtual {v1, v5, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v1

    .line 21
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    if-eqz p1, :cond_17

    if-eqz v0, :cond_3

    if-eqz v1, :cond_2

    .line 22
    invoke-virtual {p0, v10}, Lcom/wsw/cospa/activity/HomeActivity;->z(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 23
    :cond_2
    invoke-virtual {p0, v9}, Lcom/wsw/cospa/activity/HomeActivity;->z(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 24
    :cond_3
    invoke-virtual {p0, v3}, Lcom/wsw/cospa/activity/HomeActivity;->z(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 25
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    invoke-virtual {p1, v7, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result p1

    .line 26
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    invoke-virtual {v0, v6, v8}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v0

    .line 27
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v1

    invoke-virtual {v1, v5, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v1

    .line 28
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz p1, :cond_9

    if-eqz v0, :cond_7

    if-eqz v1, :cond_5

    .line 29
    invoke-virtual {p0, v10}, Lcom/wsw/cospa/activity/HomeActivity;->z(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    if-eqz v2, :cond_6

    .line 30
    invoke-virtual {p0, v9}, Lcom/wsw/cospa/activity/HomeActivity;->z(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 31
    :cond_6
    invoke-virtual {p0, v10}, Lcom/wsw/cospa/activity/HomeActivity;->z(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    if-eqz v1, :cond_8

    .line 32
    invoke-virtual {p0, v10}, Lcom/wsw/cospa/activity/HomeActivity;->z(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 33
    :cond_8
    invoke-virtual {p0, v9}, Lcom/wsw/cospa/activity/HomeActivity;->z(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    if-eqz v0, :cond_b

    if-eqz v1, :cond_a

    .line 34
    invoke-virtual {p0, v10}, Lcom/wsw/cospa/activity/HomeActivity;->z(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 35
    :cond_a
    invoke-virtual {p0, v9}, Lcom/wsw/cospa/activity/HomeActivity;->z(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 36
    :cond_b
    invoke-virtual {p0, v3}, Lcom/wsw/cospa/activity/HomeActivity;->z(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    const/4 v0, 0x3

    if-ne p1, v0, :cond_16

    .line 37
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    invoke-virtual {p1, v7, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result p1

    .line 38
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    invoke-virtual {v0, v6, v8}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v0

    .line 39
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v1

    invoke-virtual {v1, v5, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v1

    .line 40
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v3

    invoke-virtual {v3, v4, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz p1, :cond_11

    if-eqz v0, :cond_e

    if-eqz v1, :cond_d

    .line 41
    invoke-virtual {p0, v10}, Lcom/wsw/cospa/activity/HomeActivity;->z(Ljava/lang/String;)V

    goto :goto_1

    .line 42
    :cond_d
    invoke-virtual {p0, v9}, Lcom/wsw/cospa/activity/HomeActivity;->z(Ljava/lang/String;)V

    goto :goto_1

    :cond_e
    if-eqz v1, :cond_f

    .line 43
    invoke-virtual {p0, v10}, Lcom/wsw/cospa/activity/HomeActivity;->z(Ljava/lang/String;)V

    goto :goto_1

    :cond_f
    if-eqz v2, :cond_10

    goto :goto_1

    .line 44
    :cond_10
    invoke-virtual {p0, v10}, Lcom/wsw/cospa/activity/HomeActivity;->z(Ljava/lang/String;)V

    goto :goto_1

    :cond_11
    if-eqz v0, :cond_14

    if-eqz v1, :cond_12

    .line 45
    invoke-virtual {p0, v10}, Lcom/wsw/cospa/activity/HomeActivity;->z(Ljava/lang/String;)V

    goto :goto_1

    :cond_12
    if-eqz v2, :cond_13

    .line 46
    invoke-virtual {p0, v9}, Lcom/wsw/cospa/activity/HomeActivity;->z(Ljava/lang/String;)V

    goto :goto_1

    .line 47
    :cond_13
    invoke-virtual {p0, v10}, Lcom/wsw/cospa/activity/HomeActivity;->z(Ljava/lang/String;)V

    goto :goto_1

    :cond_14
    if-eqz v1, :cond_15

    .line 48
    invoke-virtual {p0, v10}, Lcom/wsw/cospa/activity/HomeActivity;->z(Ljava/lang/String;)V

    goto :goto_1

    .line 49
    :cond_15
    invoke-virtual {p0, v9}, Lcom/wsw/cospa/activity/HomeActivity;->z(Ljava/lang/String;)V

    goto :goto_1

    :cond_16
    const/4 v0, 0x4

    if-ne p1, v0, :cond_17

    .line 50
    invoke-virtual {p0, v10}, Lcom/wsw/cospa/activity/HomeActivity;->z(Ljava/lang/String;)V

    :cond_17
    :goto_1
    return-void
.end method

.method public case()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/support/v4/d72;->else(Landroid/content/Context;)Z

    .line 2
    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "pref_auto_backup_comic"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v0

    .line 3
    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v1

    const-string v2, "IS_NOW_BACKUP_SUCCESS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initData: isNowBackupSuccessed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isAutoBackup : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 5
    invoke-static {}, Lcom/wsw/cospa/utils/import;->const()Lcom/wsw/cospa/utils/import;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/utils/import;->case(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public const(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/wsw/cospa/base/BaseActivity;->const(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "mCurrentTab"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/wsw/cospa/activity/HomeActivity;->super:I

    :cond_0
    return-void
.end method

.method public d()V
    .locals 15

    .line 1
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "pref_hide_recommend_list"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v0

    .line 2
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v1

    const-string v3, "pref_hide_find_list"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v1

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v3

    const-string v5, "pref_hide_history_list"

    invoke-virtual {v3, v5, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v3

    .line 4
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v5

    const-string v6, "pref_hide_local_list"

    invoke-virtual {v5, v6, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v5

    .line 5
    new-instance v12, Ljava/util/ArrayList;

    const-string v6, "\u4e66\u67b6"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v12, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    new-instance v13, Ljava/util/ArrayList;

    new-array v6, v4, [Ljava/lang/Integer;

    const v7, 0x7f0801c6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v13, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 7
    new-instance v14, Ljava/util/ArrayList;

    new-array v4, v4, [Ljava/lang/Integer;

    const v6, 0x7f0801c5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v14, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    iget-object v4, p0, Lcom/wsw/cospa/activity/HomeActivity;->goto:Lcom/wsw/cospa/fragment/BookListFragment;

    if-nez v4, :cond_0

    .line 9
    invoke-static {}, Lcom/wsw/cospa/fragment/BookListFragment;->class()Lcom/wsw/cospa/fragment/BookListFragment;

    move-result-object v4

    iput-object v4, p0, Lcom/wsw/cospa/activity/HomeActivity;->goto:Lcom/wsw/cospa/fragment/BookListFragment;

    .line 10
    :cond_0
    iget-object v4, p0, Lcom/wsw/cospa/activity/HomeActivity;->final:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/wsw/cospa/activity/HomeActivity;->goto:Lcom/wsw/cospa/fragment/BookListFragment;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_2

    const-string v0, "\u63a8\u8350"

    .line 11
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x7f0801c3

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x7f0801c4

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->this:Lcom/wsw/cospa/fragment/RecommendFragmant;

    if-nez v0, :cond_1

    .line 15
    invoke-static {}, Lcom/wsw/cospa/fragment/RecommendFragmant;->switch()Lcom/wsw/cospa/fragment/RecommendFragmant;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->this:Lcom/wsw/cospa/fragment/RecommendFragmant;

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->final:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/wsw/cospa/activity/HomeActivity;->this:Lcom/wsw/cospa/fragment/RecommendFragmant;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-nez v1, :cond_4

    const-string v0, "\u53d1\u73b0"

    .line 17
    invoke-virtual {p0, v0}, Lcom/wsw/cospa/activity/HomeActivity;->z(Ljava/lang/String;)V

    .line 18
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x7f0801c7

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x7f0801c8

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->break:Lcom/wsw/cospa/fragment/ComicFindFragment;

    if-nez v0, :cond_3

    .line 22
    invoke-static {}, Lcom/wsw/cospa/fragment/ComicFindFragment;->final()Lcom/wsw/cospa/fragment/ComicFindFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->break:Lcom/wsw/cospa/fragment/ComicFindFragment;

    .line 23
    :cond_3
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->final:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/wsw/cospa/activity/HomeActivity;->break:Lcom/wsw/cospa/fragment/ComicFindFragment;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    if-nez v3, :cond_6

    const-string v0, "\u5386\u53f2"

    .line 24
    invoke-virtual {p0, v0}, Lcom/wsw/cospa/activity/HomeActivity;->z(Ljava/lang/String;)V

    .line 25
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x7f0801bf

    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x7f0801c0

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->catch:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    if-nez v0, :cond_5

    .line 29
    invoke-static {}, Lcom/wsw/cospa/fragment/HistoryRecordFragment;->throw()Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->catch:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    .line 30
    :cond_5
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->final:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/wsw/cospa/activity/HomeActivity;->catch:Lcom/wsw/cospa/fragment/HistoryRecordFragment;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    if-nez v5, :cond_8

    const-string v0, "\u672c\u5730"

    .line 31
    invoke-virtual {p0, v0}, Lcom/wsw/cospa/activity/HomeActivity;->z(Ljava/lang/String;)V

    .line 32
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x7f0801c1

    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x7f0801c2

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->class:Lcom/wsw/cospa/fragment/LocalComicFragment;

    if-nez v0, :cond_7

    .line 36
    invoke-static {}, Lcom/wsw/cospa/fragment/LocalComicFragment;->class()Lcom/wsw/cospa/fragment/LocalComicFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->class:Lcom/wsw/cospa/fragment/LocalComicFragment;

    .line 37
    :cond_7
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->final:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/wsw/cospa/activity/HomeActivity;->class:Lcom/wsw/cospa/fragment/LocalComicFragment;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_8
    :goto_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_9

    .line 39
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->const:Ljava/util/ArrayList;

    new-instance v1, Lcom/wsw/cospa/activity/HomeActivity$if;

    move-object v6, v1

    move-object v7, p0

    move-object v8, v12

    move v9, v2

    move-object v10, v14

    move-object v11, v13

    invoke-direct/range {v6 .. v11}, Lcom/wsw/cospa/activity/HomeActivity$if;-><init>(Lcom/wsw/cospa/activity/HomeActivity;Ljava/util/List;ILjava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 40
    :cond_9
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->mCommonTabLayout:Lcom/flyco/tablayout/CommonTabLayout;

    iget-object v1, p0, Lcom/wsw/cospa/activity/HomeActivity;->const:Ljava/util/ArrayList;

    const v2, 0x7f090117

    iget-object v3, p0, Lcom/wsw/cospa/activity/HomeActivity;->final:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/flyco/tablayout/CommonTabLayout;->public(Ljava/util/ArrayList;Landroidx/fragment/app/FragmentActivity;ILjava/util/ArrayList;)V

    .line 41
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->mCommonTabLayout:Lcom/flyco/tablayout/CommonTabLayout;

    iget v1, p0, Lcom/wsw/cospa/activity/HomeActivity;->super:I

    invoke-virtual {v0, v1}, Lcom/flyco/tablayout/CommonTabLayout;->setCurrentTab(I)V

    .line 42
    iget v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->super:I

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/activity/HomeActivity;->C(I)V

    .line 43
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->mCommonTabLayout:Lcom/flyco/tablayout/CommonTabLayout;

    invoke-virtual {v0, p0}, Lcom/flyco/tablayout/CommonTabLayout;->setOnTabSelectListener(Lcom/flyco/tablayout/listener/OnTabSelectListener;)V

    return-void
.end method

.method public final(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/wsw/cospa/base/BaseActivity;->final(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 2
    iget v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->super:I

    const-string v1, "mCurrentTab"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public goto()Landroid/support/v4/m7;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public implements(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "\\n"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lio/reactivex/new;->fromArray([Ljava/lang/Object;)Lio/reactivex/new;

    move-result-object p1

    new-instance v0, Landroid/support/v4/uj0;

    invoke-direct {v0, p0}, Landroid/support/v4/uj0;-><init>(Lcom/wsw/cospa/activity/HomeActivity;)V

    .line 5
    invoke-virtual {p1, v0}, Lio/reactivex/new;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/new;

    move-result-object p1

    sget-object v0, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 6
    invoke-virtual {p1, v0}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object p1

    .line 7
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v0, Lcom/wsw/cospa/activity/HomeActivity$else;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/activity/HomeActivity$else;-><init>(Lcom/wsw/cospa/activity/HomeActivity;)V

    .line 8
    invoke-interface {p1, v0}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public new()I
    .locals 1

    const v0, 0x7f0c0037

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/16 p2, 0xbc

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p3}, Lcom/luck/picture/lib/if;->this(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2

    const/4 p2, 0x0

    .line 4
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 5
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->if()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/wsw/cospa/activity/HomeActivity;->iv_header:Landroid/widget/ImageView;

    invoke-static {p0, p2, p3}, Lcom/wsw/cospa/utils/finally;->case(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 6
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p2

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->if()Ljava/lang/String;

    move-result-object p1

    const-string p3, "HOME_PAGE_HEADER_PIC"

    invoke-virtual {p2, p3, p1}, Landroid/support/v4/v02;->this(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 7
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 p3, 0x3

    invoke-virtual {p2, p1, p3}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->throw:Lcom/wsw/cospa/activity/SourceFilterView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wsw/cospa/activity/SourceFilterView;->throw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->throw:Lcom/wsw/cospa/activity/SourceFilterView;

    invoke-virtual {v0}, Lcom/wsw/cospa/activity/SourceFilterView;->class()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 2
    :sswitch_0
    invoke-static {p0}, Lcom/wsw/cospa/activity/ShopMallActivity;->static(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 3
    :sswitch_1
    invoke-static {p0}, Lcom/wsw/cospa/activity/AppSettingActivity;->switch(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 4
    :sswitch_2
    invoke-static {p0}, Lcom/wsw/cospa/activity/LocalComicActivity;->throws(Landroid/content/Context;)V

    goto/16 :goto_0

    :sswitch_3
    :try_start_0
    const-string p1, "https://support.qq.com/products/75833"

    .line 5
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "android.intent.category.BROWSABLE"

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :sswitch_4
    invoke-static {p0}, Lcom/wsw/cospa/activity/DownloadComicActivity;->volatile(Landroid/content/Context;)V

    goto :goto_0

    .line 12
    :sswitch_5
    invoke-static {p0}, Lcom/wsw/cospa/activity/DonateActivity;->package(Landroid/content/Context;)V

    goto :goto_0

    .line 13
    :sswitch_6
    invoke-static {p0}, Lcom/wsw/cospa/activity/ComicManagerActivity;->A(Landroid/content/Context;)V

    goto :goto_0

    .line 14
    :sswitch_7
    invoke-static {p0}, Lcom/wsw/cospa/activity/AboutMeActivity;->public(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_8
    const/4 p1, 0x1

    .line 15
    invoke-static {p0, p1}, Lcom/wsw/cospa/utils/else;->try(Lcom/wsw/cospa/activity/HomeActivity;Z)V

    goto :goto_0

    .line 16
    :sswitch_9
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "HOME_PAGE_HEADER_PIC"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->try(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/activity/HomeActivity;->while:Ljava/lang/String;

    .line 17
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->while:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/wsw/cospa/activity/HomeActivity;->import:Ljava/io/File;

    .line 18
    new-instance p1, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$case;

    invoke-direct {p1, p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$case;-><init>(Landroid/content/Context;)V

    .line 19
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->while:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->import:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 20
    :cond_0
    new-instance v0, Landroid/support/v4/sj0;

    invoke-direct {v0, p0}, Landroid/support/v4/sj0;-><init>(Lcom/wsw/cospa/activity/HomeActivity;)V

    const-string v1, "\u4fdd\u5b58\u56fe\u7247"

    invoke-virtual {p1, v1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$case;->synchronized(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$case;

    .line 21
    :cond_1
    new-instance v0, Landroid/support/v4/zj0;

    invoke-direct {v0, p0}, Landroid/support/v4/zj0;-><init>(Lcom/wsw/cospa/activity/HomeActivity;)V

    const-string v1, "\u9009\u62e9\u76f8\u518c"

    invoke-virtual {p1, v1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$case;->synchronized(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$case;

    .line 22
    new-instance v0, Landroid/support/v4/bk0;

    invoke-direct {v0, p0}, Landroid/support/v4/bk0;-><init>(Lcom/wsw/cospa/activity/HomeActivity;)V

    const-string v1, "\u5934\u56fe\u5730\u5740"

    invoke-virtual {p1, v1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$case;->synchronized(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$case;

    .line 23
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->this()Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;->show()V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090242 -> :sswitch_9
        0x7f090291 -> :sswitch_8
        0x7f09045b -> :sswitch_7
        0x7f09046e -> :sswitch_6
        0x7f09047b -> :sswitch_5
        0x7f09047f -> :sswitch_4
        0x7f090485 -> :sswitch_3
        0x7f090496 -> :sswitch_2
        0x7f0904b0 -> :sswitch_1
        0x7f0904b1 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/HomeActivity;->dlLeftMain:Landroidx/drawerlayout/widget/DrawerLayout;

    const p2, 0x7f09025d

    invoke-virtual {p0, p2}, Lcom/wsw/cospa/widget/swipe/SwipeBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/HomeActivity;->dlLeftMain:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->public:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x7d0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    const p1, 0x7f1100d5

    .line 4
    invoke-static {p1}, Landroid/support/v4/v72;->do(I)V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/wsw/cospa/activity/HomeActivity;->public:J

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->finish()V

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 7
    :cond_2
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 14

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
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09010b

    if-ne v0, v1, :cond_1

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/activity/SearchComicActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090081

    if-ne v0, v1, :cond_3

    .line 6
    iget v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->super:I

    if-nez v0, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/HomeActivity;->synchronized()V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/wsw/cospa/activity/HomeActivity;->class:Lcom/wsw/cospa/fragment/LocalComicFragment;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v6, "png"

    const-string v7, "jpg"

    const-string v8, "jpeg"

    const-string v9, "webp"

    const-string v10, "gif"

    const-string v11, "zip"

    const-string v12, "rar"

    const-string v13, "7z"

    filled-new-array/range {v6 .. v13}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Lcom/wsw/cospa/activity/FileSelectorActivity;->b(Landroidx/fragment/app/Fragment;ZZZZ[Ljava/lang/String;Z)V

    .line 9
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 11

    .line 1
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "pref_hide_recommend_list"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v0

    .line 2
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v1

    const-string v3, "pref_hide_find_list"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v1

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v3

    const-string v5, "pref_hide_history_list"

    invoke-virtual {v3, v5, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v3

    .line 4
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v5

    const-string v6, "pref_hide_local_list"

    invoke-virtual {v5, v6, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v5

    const/4 v6, 0x0

    .line 5
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v7

    if-ge v6, v7, :cond_2c

    .line 6
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    const v8, 0x7f090081

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eq v7, v8, :cond_16

    const v8, 0x7f09010b

    if-eq v7, v8, :cond_0

    goto/16 :goto_d

    :cond_0
    if-eqz v0, :cond_8

    if-eqz v1, :cond_3

    if-eqz v3, :cond_1

    .line 7
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_d

    .line 8
    :cond_1
    iget v7, p0, Lcom/wsw/cospa/activity/HomeActivity;->super:I

    if-ne v7, v4, :cond_2

    .line 9
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_d

    .line 10
    :cond_2
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_d

    :cond_3
    if-eqz v3, :cond_5

    .line 11
    iget v7, p0, Lcom/wsw/cospa/activity/HomeActivity;->super:I

    if-ne v7, v4, :cond_4

    .line 12
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_d

    .line 13
    :cond_4
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_d

    .line 14
    :cond_5
    iget v7, p0, Lcom/wsw/cospa/activity/HomeActivity;->super:I

    if-eq v7, v4, :cond_7

    if-ne v7, v10, :cond_6

    goto :goto_1

    .line 15
    :cond_6
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_d

    .line 16
    :cond_7
    :goto_1
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_d

    :cond_8
    if-eqz v1, :cond_d

    if-eqz v3, :cond_a

    .line 17
    iget v7, p0, Lcom/wsw/cospa/activity/HomeActivity;->super:I

    if-ne v7, v4, :cond_9

    .line 18
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_d

    .line 19
    :cond_9
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_d

    .line 20
    :cond_a
    iget v7, p0, Lcom/wsw/cospa/activity/HomeActivity;->super:I

    if-eq v7, v4, :cond_c

    if-ne v7, v10, :cond_b

    goto :goto_2

    .line 21
    :cond_b
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_d

    .line 22
    :cond_c
    :goto_2
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_d

    :cond_d
    if-eqz v3, :cond_10

    .line 23
    iget v7, p0, Lcom/wsw/cospa/activity/HomeActivity;->super:I

    if-eq v7, v4, :cond_f

    if-ne v7, v10, :cond_e

    goto :goto_3

    .line 24
    :cond_e
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_d

    .line 25
    :cond_f
    :goto_3
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_d

    :cond_10
    if-eqz v5, :cond_13

    .line 26
    iget v7, p0, Lcom/wsw/cospa/activity/HomeActivity;->super:I

    if-eq v7, v4, :cond_12

    if-eq v7, v10, :cond_12

    if-ne v7, v9, :cond_11

    goto :goto_4

    .line 27
    :cond_11
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_d

    .line 28
    :cond_12
    :goto_4
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_d

    .line 29
    :cond_13
    iget v7, p0, Lcom/wsw/cospa/activity/HomeActivity;->super:I

    if-eq v7, v4, :cond_15

    if-eq v7, v10, :cond_15

    if-ne v7, v9, :cond_14

    goto :goto_5

    .line 30
    :cond_14
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_d

    .line 31
    :cond_15
    :goto_5
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_d

    :cond_16
    if-eqz v0, :cond_20

    if-eqz v1, :cond_1a

    if-eqz v3, :cond_17

    .line 32
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_d

    .line 33
    :cond_17
    iget v7, p0, Lcom/wsw/cospa/activity/HomeActivity;->super:I

    if-eqz v7, :cond_19

    if-ne v7, v10, :cond_18

    goto :goto_6

    .line 34
    :cond_18
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_d

    .line 35
    :cond_19
    :goto_6
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_d

    :cond_1a
    if-eqz v3, :cond_1d

    .line 36
    iget v7, p0, Lcom/wsw/cospa/activity/HomeActivity;->super:I

    if-eqz v7, :cond_1c

    if-ne v7, v10, :cond_1b

    goto :goto_7

    .line 37
    :cond_1b
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_d

    .line 38
    :cond_1c
    :goto_7
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_d

    .line 39
    :cond_1d
    iget v7, p0, Lcom/wsw/cospa/activity/HomeActivity;->super:I

    if-eqz v7, :cond_1f

    if-ne v7, v9, :cond_1e

    goto :goto_8

    .line 40
    :cond_1e
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_d

    .line 41
    :cond_1f
    :goto_8
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_d

    :cond_20
    if-eqz v1, :cond_26

    if-eqz v3, :cond_23

    .line 42
    iget v7, p0, Lcom/wsw/cospa/activity/HomeActivity;->super:I

    if-eqz v7, :cond_22

    if-ne v7, v10, :cond_21

    goto :goto_9

    .line 43
    :cond_21
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_d

    .line 44
    :cond_22
    :goto_9
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_d

    .line 45
    :cond_23
    iget v7, p0, Lcom/wsw/cospa/activity/HomeActivity;->super:I

    if-eqz v7, :cond_25

    if-ne v7, v9, :cond_24

    goto :goto_a

    .line 46
    :cond_24
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_d

    .line 47
    :cond_25
    :goto_a
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_d

    :cond_26
    if-eqz v3, :cond_29

    .line 48
    iget v7, p0, Lcom/wsw/cospa/activity/HomeActivity;->super:I

    if-eqz v7, :cond_28

    if-ne v7, v9, :cond_27

    goto :goto_b

    .line 49
    :cond_27
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_d

    .line 50
    :cond_28
    :goto_b
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_d

    .line 51
    :cond_29
    iget v7, p0, Lcom/wsw/cospa/activity/HomeActivity;->super:I

    if-eqz v7, :cond_2b

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2a

    goto :goto_c

    .line 52
    :cond_2a
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_d

    .line 53
    :cond_2b
    :goto_c
    invoke-interface {p1, v6}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_d
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 54
    :cond_2c
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 2
    iget v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->super:I

    const-string v1, "mCurrentTab"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/wsw/cospa/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/activity/HomeActivity;->e()V

    return-void
.end method

.method public onTabReselect(I)V
    .locals 0

    return-void
.end method

.method public onTabSelect(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/activity/HomeActivity;->super:I

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->supportInvalidateOptionsMenu()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/HomeActivity;->C(I)V

    return-void
.end method

.method public onTabSelected(I)V
    .locals 0

    return-void
.end method

.method public synchronized()V
    .locals 6

    .line 1
    new-instance v1, Lcom/wsw/cospa/utils/DialogTool$new;

    const-string v0, "\u8f93\u5165\u6f2b\u753b\u7f51\u5740"

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Lcom/wsw/cospa/utils/DialogTool$new;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v2, Lcom/wsw/cospa/utils/DialogTool$try;

    const-string v0, "\u786e\u8ba4"

    const-string v3, "\u53d6\u6d88"

    invoke-direct {v2, v0, v3}, Lcom/wsw/cospa/utils/DialogTool$try;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v5, Lcom/wsw/cospa/activity/HomeActivity$for;

    invoke-direct {v5, p0}, Lcom/wsw/cospa/activity/HomeActivity$for;-><init>(Lcom/wsw/cospa/activity/HomeActivity;)V

    const-string v3, "\u8bf7\u8f93\u5165\u6f2b\u753b\u8be6\u60c5\u7684\u5730\u5740"

    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/wsw/cospa/utils/DialogTool;->s(Landroid/app/Activity;Lcom/wsw/cospa/utils/DialogTool$new;Lcom/wsw/cospa/utils/DialogTool$try;Ljava/lang/String;Ljava/lang/String;Lcom/wsw/cospa/utils/DialogTool$EditDialogOptcb;)V

    return-void
.end method

.method public this()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/swipe/SwipeBackActivity;->getSwipeBackLayout()Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/swipe/SwipeBackLayout;->setEnableGesture(Z)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->statusBarView:Landroid/view/View;

    invoke-static {p0, v0}, Landroid/support/v4/p12;->else(Lcom/wsw/cospa/base/BaseActivity;Landroid/view/View;)V

    .line 4
    invoke-static {p0}, Landroid/support/v4/p12;->case(Landroid/app/Activity;)V

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->tbToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 7
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 8
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->dlLeftMain:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v2, p0, Lcom/wsw/cospa/activity/HomeActivity;->tbToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-static {p0, v0, v2}, Lcom/wsw/cospa/utils/synchronized;->do(Landroid/app/Activity;Landroidx/drawerlayout/widget/DrawerLayout;Landroidx/appcompat/widget/Toolbar;)V

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->searchView:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v2, Landroid/support/v4/ck0;

    invoke-direct {v2, p0}, Landroid/support/v4/ck0;-><init>(Lcom/wsw/cospa/activity/HomeActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->sourceNameLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/support/v4/dk0;

    invoke-direct {v2, p0}, Landroid/support/v4/dk0;-><init>(Lcom/wsw/cospa/activity/HomeActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    new-instance v0, Lcom/tbruyelle/rxpermissions2/RxPermissions;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/RxPermissions;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v4, "android.permission.READ_PHONE_STATE"

    .line 13
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->while([Ljava/lang/String;)Lio/reactivex/new;

    move-result-object v0

    .line 14
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/ObservableSubscribeProxy;

    sget-object v2, Landroid/support/v4/tj0;->do:Landroid/support/v4/tj0;

    .line 15
    invoke-interface {v0, v2}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 16
    iget-object v2, p0, Lcom/wsw/cospa/base/BaseActivity;->do:Landroid/support/v4/cq;

    invoke-virtual {v2, v0}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 17
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->tvDownloadTask:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->tvAbout:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->tvSetting:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->tvComicManager:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->ll_version:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->tvLocalComic:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->tv_feedback:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->tv_donate:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->nightModelView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->swNightTheme:Lcom/wsw/cospa/widget/view/SwitchButton;

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/widget/view/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 27
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->tv_shop:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "MTA_CHANNEL"

    .line 28
    invoke-static {p0, v0}, Landroid/support/v4/j10;->try(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "google"

    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 30
    invoke-static {p0, v1}, Lcom/wsw/cospa/utils/else;->try(Lcom/wsw/cospa/activity/HomeActivity;Z)V

    .line 31
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->ll_version:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 32
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->tvVersion:Landroid/widget/TextView;

    invoke-static {p0}, Landroid/support/v4/w2;->for(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->ll_version:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 34
    :goto_0
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/HomeActivity;->d()V

    .line 35
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "HOME_PAGE_HEADER_PIC"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->try(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->while:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/wsw/cospa/activity/HomeActivity;->while:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->import:Ljava/io/File;

    .line 37
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->while:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->import:Ljava/io/File;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->while:Ljava/lang/String;

    iget-object v1, p0, Lcom/wsw/cospa/activity/HomeActivity;->iv_header:Landroid/widget/ImageView;

    invoke-static {p0, v0, v1}, Lcom/wsw/cospa/utils/finally;->case(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_1

    .line 39
    :cond_2
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/HomeActivity;->x()V

    .line 40
    :goto_1
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->iv_header:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->iv_header:Landroid/widget/ImageView;

    new-instance v1, Landroid/support/v4/ek0;

    invoke-direct {v1, p0}, Landroid/support/v4/ek0;-><init>(Lcom/wsw/cospa/activity/HomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 42
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/HomeActivity;->w()V

    return-void
.end method

.method public updateTitle(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->tvSourceName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public w()V
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

    const-string v2, "git/raw/master/block.json"

    invoke-interface {v0, v2, v1}, Lcom/wsw/cospa/utils/analyzeUrl/impl/IHttpGetApi;->getWebContent(Ljava/lang/String;Ljava/util/Map;)Lio/reactivex/new;

    move-result-object v0

    new-instance v1, Landroid/support/v4/vj0;

    invoke-direct {v1, p0}, Landroid/support/v4/vj0;-><init>(Lcom/wsw/cospa/activity/HomeActivity;)V

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

    new-instance v1, Landroid/support/v4/hk0;

    invoke-direct {v1, p0}, Landroid/support/v4/hk0;-><init>(Lcom/wsw/cospa/activity/HomeActivity;)V

    .line 7
    invoke-interface {v0, v1}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public x()V
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/support/v4/g31;->try(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/support/v4/yj0;

    invoke-direct {v0, p0}, Landroid/support/v4/yj0;-><init>(Lcom/wsw/cospa/activity/HomeActivity;)V

    invoke-static {v0}, Landroid/support/v4/wi0;->else(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public y(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->ivArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 2
    iget-object v2, p0, Lcom/wsw/cospa/activity/HomeActivity;->ivArrow:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    const/high16 v1, 0x43340000    # 180.0f

    if-eqz p1, :cond_0

    const/high16 p1, 0x43b40000    # 360.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/high16 p1, 0x43340000    # 180.0f

    const/4 v1, 0x0

    .line 3
    :goto_0
    new-instance v3, Landroid/view/animation/RotateAnimation;

    invoke-direct {v3, v1, p1, v0, v2}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    const-wide/16 v0, 0x12c

    .line 4
    invoke-virtual {v3, v0, v1}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    const/4 p1, 0x1

    .line 5
    invoke-virtual {v3, p1}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/activity/HomeActivity;->ivArrow:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public z(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->tbToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$for;

    const/4 v1, 0x2

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout$for;->new(I)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->tbToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->searchView:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->sourceNameLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->tvToolbarTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/activity/HomeActivity;->tvToolbarTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
