.class public Lcom/wsw/cospa/fragment/RecommendFragmant;
.super Lcom/wsw/cospa/base/BaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/wsw/cospa/event/RefreshRecommendChannelMessageObserver;
.implements Lcom/wsw/cospa/event/ObtainRecommendListMessageObserver;
.implements Lcom/wsw/cospa/event/SwitchRecommendModeMessageObserver;


# instance fields
.field private break:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private catch:Lcom/wsw/cospa/activity/HomeActivity;

.field private class:Lcom/wsw/cospa/vo/FindParentVo;

.field private const:Ljava/lang/reflect/Method;

.field public error_view:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09016a
    .end annotation
.end field

.field private final:Ljava/lang/Object;

.field private goto:Lcom/wsw/cospa/vo/FindParentVo;

.field public ivMoreChannel:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090244
    .end annotation
.end field

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

.field public mViewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902ac
    .end annotation
.end field

.field private super:[Ljava/lang/String;

.field public tabLayout:Lcom/flyco/tablayout/SlidingTabLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09040f
    .end annotation
.end field

.field private this:Lcom/wsw/cospa/adapter/CustomPagerAdapter;

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
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/base/BaseFragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->break:Ljava/util/ArrayList;

    const-string v0, "Activity"

    const-string v1, "FragmentActivity"

    .line 3
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->super:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic break(Lcom/wsw/cospa/fragment/RecommendFragmant;Ljava/util/List;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/fragment/RecommendFragmant;->import(Ljava/util/List;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic catch(Lcom/wsw/cospa/fragment/RecommendFragmant;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/fragment/RecommendFragmant;->native(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic class(Lcom/wsw/cospa/fragment/RecommendFragmant;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->break:Ljava/util/ArrayList;

    return-object p0
.end method

.method private varargs const(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
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

.method private default(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
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

.method public static synthetic else(Lcom/wsw/cospa/fragment/RecommendFragmant;Ljava/util/List;)Lio/reactivex/ObservableSource;
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/fragment/RecommendFragmant;->return(Ljava/util/List;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic goto(Lcom/wsw/cospa/fragment/RecommendFragmant;Lcom/wsw/cospa/bean/ComicSourceBean;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/fragment/RecommendFragmant;->static(Lcom/wsw/cospa/bean/ComicSourceBean;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method private synthetic import(Ljava/util/List;Lio/reactivex/ObservableEmitter;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/d72;->else(Landroid/content/Context;)Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/wsw/cospa/utils/do;->for(Landroid/content/Context;)Lcom/wsw/cospa/utils/do;

    move-result-object v1

    const-string v2, "comic_recommend"

    invoke-virtual {v1, v2}, Lcom/wsw/cospa/utils/do;->const(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/vo/FindParentVo;

    iput-object v1, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->goto:Lcom/wsw/cospa/vo/FindParentVo;

    if-nez v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p2, v1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    :goto_0
    if-eqz p1, :cond_b

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 5
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 7
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/ComicSourceBean;

    .line 8
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleFindUrl()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "<js>"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "(&&|\n)+"

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    const-string v4, "<"

    .line 11
    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/hw;->this()Lcom/wsw/cospa/dao/CookieBeanDao;

    move-result-object v1

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/CookieBean;

    .line 13
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/CookieBean;->getVariableStr()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/lang3/class;->A(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 15
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/CookieBean;->getVariableStr()Ljava/lang/String;

    move-result-object v1

    const-string v5, "HeaderCookie"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 17
    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    .line 19
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lcom/wsw/cospa/utils/implements;->if(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 21
    :cond_2
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/implements;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 23
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 24
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_9

    aget-object v6, v0, v5

    .line 26
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    goto/16 :goto_4

    :cond_4
    const-string v7, "::"

    .line 27
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 28
    new-instance v7, Lcom/wsw/cospa/vo/FindChildVo;

    invoke-direct {v7}, Lcom/wsw/cospa/vo/FindChildVo;-><init>()V

    .line 29
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/wsw/cospa/vo/FindChildVo;->setParentName(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/wsw/cospa/vo/FindChildVo;->setParentTag(Ljava/lang/String;)V

    .line 31
    aget-object v8, v6, v4

    invoke-virtual {v7, v8}, Lcom/wsw/cospa/vo/FindChildVo;->setKindName(Ljava/lang/String;)V

    const/4 v8, 0x1

    .line 32
    aget-object v9, v6, v8

    const-string v10, "http"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 33
    aget-object v6, v6, v8

    invoke-virtual {v7, v6}, Lcom/wsw/cospa/vo/FindChildVo;->setKindUrl(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 34
    :cond_5
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 35
    aget-object v9, v6, v8

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 36
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 37
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 38
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v6, v8

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/wsw/cospa/vo/FindChildVo;->setKindUrl(Ljava/lang/String;)V

    goto :goto_3

    .line 39
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v6, v8

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/wsw/cospa/vo/FindChildVo;->setKindUrl(Ljava/lang/String;)V

    goto :goto_3

    .line 40
    :cond_7
    aget-object v9, v6, v8

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 41
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v6, v8

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/wsw/cospa/vo/FindChildVo;->setKindUrl(Ljava/lang/String;)V

    goto :goto_3

    .line 42
    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v6, v8

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/wsw/cospa/vo/FindChildVo;->setKindUrl(Ljava/lang/String;)V

    .line 43
    :goto_3
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 44
    :cond_9
    new-instance v0, Lcom/wsw/cospa/vo/FindParentVo;

    invoke-direct {v0}, Lcom/wsw/cospa/vo/FindParentVo;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->goto:Lcom/wsw/cospa/vo/FindParentVo;

    .line 45
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/wsw/cospa/vo/FindParentVo;->setParentName(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->goto:Lcom/wsw/cospa/vo/FindParentVo;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/vo/FindParentVo;->setParentTag(Ljava/lang/String;)V

    .line 47
    iget-object p1, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->goto:Lcom/wsw/cospa/vo/FindParentVo;

    invoke-virtual {p1, v1}, Lcom/wsw/cospa/vo/FindParentVo;->setChildVoList(Ljava/util/List;)V

    .line 48
    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/wsw/cospa/utils/do;->for(Landroid/content/Context;)Lcom/wsw/cospa/utils/do;

    move-result-object p1

    iget-object v0, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->goto:Lcom/wsw/cospa/vo/FindParentVo;

    invoke-virtual {p1, v2, v0}, Lcom/wsw/cospa/utils/do;->static(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 49
    iget-object p1, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->goto:Lcom/wsw/cospa/vo/FindParentVo;

    invoke-interface {p2, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    goto :goto_5

    .line 50
    :cond_b
    new-instance p1, Ljava/lang/Throwable;

    const-string v0, "\u6ca1\u6709\u83b7\u53d6\u5230\u63a8\u8350\uff01\u8bf7\u9009\u62e9\u5176\u4ed6\u56fe\u6e90"

    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    :goto_5
    return-void
.end method

.method private synthetic native(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/fragment/RecommendFragmant;->throws()V

    return-void
.end method

.method private synthetic public(Lio/reactivex/ObservableEmitter;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "pref_find_letter_sort"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v1

    const-string v2, "pref_show_all_find"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/wsw/cospa/dao/DatabaseHelper;->super(Z)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/wsw/cospa/dao/DatabaseHelper;->const(Z)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/bean/ComicSourceBean;

    .line 8
    :try_start_0
    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleFindUrl()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "<js>"

    .line 10
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "(&&|\n)+"

    if-eqz v4, :cond_3

    const/4 v4, 0x4

    :try_start_1
    const-string v6, "<"

    .line 11
    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/hw;->this()Lcom/wsw/cospa/dao/CookieBeanDao;

    move-result-object v4

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wsw/cospa/bean/CookieBean;

    .line 13
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    if-eqz v4, :cond_2

    .line 14
    invoke-virtual {v4}, Lcom/wsw/cospa/bean/CookieBean;->getVariableStr()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/commons/lang3/class;->A(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "HeaderCookie"

    .line 15
    invoke-virtual {v4}, Lcom/wsw/cospa/bean/CookieBean;->getVariableStr()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance v4, Lcom/google/gson/GsonBuilder;

    invoke-direct {v4}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 17
    invoke-virtual {v4}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v4

    .line 18
    invoke-virtual {v4}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v4

    .line 19
    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v7, v4}, Lcom/wsw/cospa/utils/implements;->if(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 20
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 21
    :cond_2
    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/wsw/cospa/utils/implements;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 22
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 23
    :cond_3
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    :goto_2
    if-eqz v3, :cond_1

    .line 24
    array-length v3, v3

    if-lez v3, :cond_1

    .line 25
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    const-string v3, "\u53d1\u73b0\u89c4\u5219\u8bed\u6cd5\u9519\u8bef"

    .line 26
    invoke-virtual {v2, v3}, Lcom/wsw/cospa/bean/ComicSourceBean;->addGroup(Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/wsw/cospa/dao/DatabaseHelper;->abstract(Lcom/wsw/cospa/bean/ComicSourceBean;)V

    goto/16 :goto_1

    .line 28
    :cond_4
    invoke-interface {p1, v1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    goto :goto_3

    .line 29
    :cond_5
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "\u6682\u65e0\u56fe\u6e90\uff0c\u8bf7\u5173\u6ce8\u5f02\u6b21\u5143\u5fae\u4fe1\u516c\u4f17\u53f7\uff1a\u641c\u7d22\u3010\u5f02\u6b21\u5143APP\u8f6f\u4ef6\u3011\u6216\u8005\u626b\u63cf\u5173\u4e8e\u754c\u9762\u4e2d\u7684\u4e8c\u7ef4\u7801\u83b7\u53d6\u56fe\u6e90"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lio/reactivex/Emitter;->onError(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method private synthetic return(Ljava/util/List;)Lio/reactivex/ObservableSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/fragment/RecommendFragmant;->final(Ljava/util/List;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method private synthetic static(Lcom/wsw/cospa/bean/ComicSourceBean;Lio/reactivex/ObservableEmitter;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleFindUrl()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "<js>"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "(&&|\n)+"

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    const-string v3, "<"

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/hw;->this()Lcom/wsw/cospa/dao/CookieBeanDao;

    move-result-object v1

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/CookieBean;

    .line 6
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/CookieBean;->getVariableStr()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/lang3/class;->A(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 8
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/CookieBean;->getVariableStr()Ljava/lang/String;

    move-result-object v1

    const-string v4, "HeaderCookie"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v1, Lcom/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 10
    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    .line 12
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/wsw/cospa/utils/implements;->if(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/implements;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 17
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_7

    aget-object v5, v0, v4

    .line 19
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_3

    :cond_2
    const-string v6, "::"

    .line 20
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 21
    new-instance v6, Lcom/wsw/cospa/vo/FindChildVo;

    invoke-direct {v6}, Lcom/wsw/cospa/vo/FindChildVo;-><init>()V

    .line 22
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/wsw/cospa/vo/FindChildVo;->setParentName(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/wsw/cospa/vo/FindChildVo;->setParentTag(Ljava/lang/String;)V

    .line 24
    aget-object v7, v5, v3

    invoke-virtual {v6, v7}, Lcom/wsw/cospa/vo/FindChildVo;->setKindName(Ljava/lang/String;)V

    const/4 v7, 0x1

    .line 25
    aget-object v8, v5, v7

    const-string v9, "http"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 26
    aget-object v5, v5, v7

    invoke-virtual {v6, v5}, Lcom/wsw/cospa/vo/FindChildVo;->setKindUrl(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 27
    :cond_3
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 28
    aget-object v8, v5, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 29
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    .line 30
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 31
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v5, v7

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/wsw/cospa/vo/FindChildVo;->setKindUrl(Ljava/lang/String;)V

    goto :goto_2

    .line 32
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v5, v7

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/wsw/cospa/vo/FindChildVo;->setKindUrl(Ljava/lang/String;)V

    goto :goto_2

    .line 33
    :cond_5
    aget-object v8, v5, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 34
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v5, v7

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/wsw/cospa/vo/FindChildVo;->setKindUrl(Ljava/lang/String;)V

    goto :goto_2

    .line 35
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v5, v7

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/wsw/cospa/vo/FindChildVo;->setKindUrl(Ljava/lang/String;)V

    .line 36
    :goto_2
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 37
    :cond_7
    new-instance v0, Lcom/wsw/cospa/vo/FindParentVo;

    invoke-direct {v0}, Lcom/wsw/cospa/vo/FindParentVo;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->goto:Lcom/wsw/cospa/vo/FindParentVo;

    .line 38
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/vo/FindParentVo;->setParentName(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->goto:Lcom/wsw/cospa/vo/FindParentVo;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/vo/FindParentVo;->setParentTag(Ljava/lang/String;)V

    .line 40
    iget-object p1, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->goto:Lcom/wsw/cospa/vo/FindParentVo;

    invoke-virtual {p1, v1}, Lcom/wsw/cospa/vo/FindParentVo;->setChildVoList(Ljava/util/List;)V

    .line 41
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/wsw/cospa/utils/do;->for(Landroid/content/Context;)Lcom/wsw/cospa/utils/do;

    move-result-object p1

    iget-object v0, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->goto:Lcom/wsw/cospa/vo/FindParentVo;

    const-string v1, "comic_recommend"

    invoke-virtual {p1, v1, v0}, Lcom/wsw/cospa/utils/do;->static(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 42
    iget-object p1, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->goto:Lcom/wsw/cospa/vo/FindParentVo;

    invoke-interface {p2, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public static switch()Lcom/wsw/cospa/fragment/RecommendFragmant;
    .locals 1

    .line 1
    new-instance v0, Lcom/wsw/cospa/fragment/RecommendFragmant;

    invoke-direct {v0}, Lcom/wsw/cospa/fragment/RecommendFragmant;-><init>()V

    return-object v0
.end method

.method public static synthetic this(Lcom/wsw/cospa/fragment/RecommendFragmant;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/fragment/RecommendFragmant;->public(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method private while()V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->const:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->final:Ljava/lang/Object;

    if-eqz v2, :cond_1

    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 5
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 6
    iget-object v2, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->super:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->super:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_3
    const-string v2, "mFragments"

    .line 8
    invoke-direct {p0, v0, v2}, Lcom/wsw/cospa/fragment/RecommendFragmant;->default(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->final:Ljava/lang/Object;

    const-string v2, "noteStateNotSaved"

    new-array v3, v1, [Ljava/lang/Class;

    .line 10
    invoke-direct {p0, v0, v2, v3}, Lcom/wsw/cospa/fragment/RecommendFragmant;->const(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->const:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_4

    .line 11
    iget-object v2, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->final:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method


# virtual methods
.method public case()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->ivMoreChannel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->tvRetry:Landroid/widget/TextView;

    new-instance v1, Landroid/support/v4/rl1;

    invoke-direct {v1, p0}, Landroid/support/v4/rl1;-><init>(Lcom/wsw/cospa/fragment/RecommendFragmant;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->tabLayout:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060380

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flyco/tablayout/SlidingTabLayout;->setIndicatorColor(I)V

    return-void
.end method

.method public extends(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->error_view:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->mIndicatorView:Lcom/wang/avi/AVLoadingIndicatorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/wang/avi/AVLoadingIndicatorView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->tvErrorView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final(Ljava/util/List;)Lio/reactivex/new;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicSourceBean;",
            ">;)",
            "Lio/reactivex/new<",
            "Lcom/wsw/cospa/vo/FindParentVo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/ul1;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/ul1;-><init>(Lcom/wsw/cospa/fragment/RecommendFragmant;Ljava/util/List;)V

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method public finally(Lcom/wsw/cospa/bean/ComicSourceBean;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/tl1;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/tl1;-><init>(Lcom/wsw/cospa/fragment/RecommendFragmant;Lcom/wsw/cospa/bean/ComicSourceBean;)V

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p1

    sget-object v0, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 2
    invoke-virtual {p1, v0}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object p1

    .line 3
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v0, Lcom/wsw/cospa/fragment/RecommendFragmant$if;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/fragment/RecommendFragmant$if;-><init>(Lcom/wsw/cospa/fragment/RecommendFragmant;)V

    .line 4
    invoke-interface {p1, v0}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public if()I
    .locals 1

    const v0, 0x7f0c0088

    return v0
.end method

.method public new()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/support/v4/om1;->case()Landroid/support/v4/om1;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/vz0;->for(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Landroid/support/v4/k61;->case()Landroid/support/v4/k61;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/vz0;->for(Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Landroid/support/v4/o32;->case()Landroid/support/v4/o32;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/vz0;->for(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/fragment/RecommendFragmant;->throws()V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 4
    check-cast p1, Lcom/wsw/cospa/activity/HomeActivity;

    iput-object p1, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->catch:Lcom/wsw/cospa/activity/HomeActivity;

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/wsw/cospa/base/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 2
    check-cast p1, Lcom/wsw/cospa/activity/HomeActivity;

    iput-object p1, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->catch:Lcom/wsw/cospa/activity/HomeActivity;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090244

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->class:Lcom/wsw/cospa/vo/FindParentVo;

    if-eqz p1, :cond_1

    .line 3
    invoke-static {p1}, Lcom/wsw/cospa/utils/package;->do(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p0, p1}, Lcom/wsw/cospa/activity/ChannelEditDialog;->import(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "RecommendFragmant"

    const-string v1, "onDestroy: "

    .line 1
    invoke-static {v0, v1}, Landroid/support/v4/vv0;->if(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0}, Lcom/wsw/cospa/base/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const-string v0, "RecommendFragmant"

    const-string v1, "onDestroyView: "

    .line 1
    invoke-static {v0, v1}, Landroid/support/v4/vv0;->if(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Landroid/support/v4/om1;->case()Landroid/support/v4/om1;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/vz0;->new(Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Landroid/support/v4/k61;->case()Landroid/support/v4/k61;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/vz0;->new(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Landroid/support/v4/o32;->case()Landroid/support/v4/o32;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/vz0;->new(Ljava/lang/Object;)V

    .line 5
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onObtainRecommendListMessage()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/fragment/RecommendFragmant;->throws()V

    return-void
.end method

.method public onRefreshChannel(Lcom/wsw/cospa/vo/FindParentVo;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wsw/cospa/vo/FindParentVo;",
            "Ljava/util/List<",
            "Landroid/support/v4/ih;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->break:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/ih;

    .line 5
    invoke-virtual {v3}, Landroid/support/v4/ih;->if()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wsw/cospa/vo/FindChildVo;

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v3}, Lcom/wsw/cospa/vo/FindChildVo;->getKindName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v4, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->break:Ljava/util/ArrayList;

    invoke-static {p1, v3}, Lcom/wsw/cospa/fragment/FindColumnFragment;->package(Lcom/wsw/cospa/vo/FindParentVo;Lcom/wsw/cospa/vo/FindChildVo;)Lcom/wsw/cospa/fragment/FindColumnFragment;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->this:Lcom/wsw/cospa/adapter/CustomPagerAdapter;

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/adapter/CustomPagerAdapter;->if(Ljava/util/List;)V

    .line 9
    iget-object p1, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->tabLayout:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-virtual {p1, v1, v1}, Lcom/flyco/tablayout/SlidingTabLayout;->while(IZ)V

    .line 10
    iget-object p1, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->tabLayout:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-virtual {p1}, Lcom/flyco/tablayout/SlidingTabLayout;->final()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/fragment/RecommendFragmant;->while()V

    return-void
.end method

.method public onSwitchMode(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/fragment/RecommendFragmant;->throws()V

    return-void
.end method

.method public super()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->mLoadingRootView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public throw(Lcom/wsw/cospa/vo/FindParentVo;)V
    .locals 9

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->class:Lcom/wsw/cospa/vo/FindParentVo;

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/fragment/RecommendFragmant;->super()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->this:Lcom/wsw/cospa/adapter/CustomPagerAdapter;

    const/16 v1, 0x8

    const/16 v2, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_6

    .line 4
    invoke-virtual {p1}, Lcom/wsw/cospa/vo/FindParentVo;->getChildVoList()Ljava/util/List;

    move-result-object v0

    .line 5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lt v6, v2, :cond_2

    .line 7
    iget-object v1, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->ivMoreChannel:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_5

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wsw/cospa/vo/FindChildVo;

    if-eqz v6, :cond_1

    .line 9
    invoke-virtual {v6}, Lcom/wsw/cospa/vo/FindChildVo;->getKindName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v7, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->break:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :goto_1
    invoke-static {p1, v6, v8}, Lcom/wsw/cospa/fragment/FindColumnFragment;->private(Lcom/wsw/cospa/vo/FindParentVo;Lcom/wsw/cospa/vo/FindChildVo;Z)Lcom/wsw/cospa/fragment/FindColumnFragment;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_2
    iget-object v2, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->ivMoreChannel:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v1, 0x0

    .line 12
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/vo/FindChildVo;

    if-eqz v2, :cond_4

    .line 14
    invoke-virtual {v2}, Lcom/wsw/cospa/vo/FindChildVo;->getKindName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v6, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->break:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    invoke-static {p1, v2, v7}, Lcom/wsw/cospa/fragment/FindColumnFragment;->private(Lcom/wsw/cospa/vo/FindParentVo;Lcom/wsw/cospa/vo/FindChildVo;Z)Lcom/wsw/cospa/fragment/FindColumnFragment;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 16
    :cond_5
    iget-object v0, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->catch:Lcom/wsw/cospa/activity/HomeActivity;

    invoke-virtual {p1}, Lcom/wsw/cospa/vo/FindParentVo;->getParentName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/activity/HomeActivity;->updateTitle(Ljava/lang/String;)V

    .line 17
    new-instance p1, Lcom/wsw/cospa/adapter/CustomPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->break:Ljava/util/ArrayList;

    invoke-direct {p1, v0, v1}, Lcom/wsw/cospa/adapter/CustomPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    iput-object p1, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->this:Lcom/wsw/cospa/adapter/CustomPagerAdapter;

    .line 18
    iget-object p1, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->break:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 19
    iget-object p1, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->this:Lcom/wsw/cospa/adapter/CustomPagerAdapter;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 20
    iget-object p1, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->this:Lcom/wsw/cospa/adapter/CustomPagerAdapter;

    invoke-virtual {p1, v5}, Lcom/wsw/cospa/adapter/CustomPagerAdapter;->if(Ljava/util/List;)V

    .line 21
    iget-object p1, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->tabLayout:Lcom/flyco/tablayout/SlidingTabLayout;

    iget-object v0, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0}, Lcom/flyco/tablayout/SlidingTabLayout;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 22
    iget-object p1, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->tabLayout:Lcom/flyco/tablayout/SlidingTabLayout;

    new-instance v0, Lcom/wsw/cospa/fragment/RecommendFragmant$for;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/fragment/RecommendFragmant$for;-><init>(Lcom/wsw/cospa/fragment/RecommendFragmant;)V

    invoke-virtual {p1, v0}, Lcom/flyco/tablayout/SlidingTabLayout;->setOnTabSelectListener(Lcom/flyco/tablayout/listener/OnTabSelectListener;)V

    goto/16 :goto_8

    .line 23
    :cond_6
    iget-object v0, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->break:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 24
    invoke-virtual {p1}, Lcom/wsw/cospa/vo/FindParentVo;->getChildVoList()Ljava/util/List;

    move-result-object v0

    .line 25
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lt v6, v2, :cond_9

    .line 27
    iget-object v1, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->ivMoreChannel:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v2, :cond_c

    .line 28
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wsw/cospa/vo/FindChildVo;

    if-eqz v6, :cond_8

    .line 29
    invoke-virtual {v6}, Lcom/wsw/cospa/vo/FindChildVo;->getKindName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v7, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->break:Ljava/util/ArrayList;

    if-nez v1, :cond_7

    const/4 v8, 0x1

    goto :goto_5

    :cond_7
    const/4 v8, 0x0

    :goto_5
    invoke-static {p1, v6, v8}, Lcom/wsw/cospa/fragment/FindColumnFragment;->private(Lcom/wsw/cospa/vo/FindParentVo;Lcom/wsw/cospa/vo/FindChildVo;Z)Lcom/wsw/cospa/fragment/FindColumnFragment;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 31
    :cond_9
    iget-object v2, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->ivMoreChannel:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v1, 0x0

    .line 32
    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_c

    .line 33
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/vo/FindChildVo;

    if-eqz v2, :cond_b

    .line 34
    invoke-virtual {v2}, Lcom/wsw/cospa/vo/FindChildVo;->getKindName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v6, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->break:Ljava/util/ArrayList;

    if-nez v1, :cond_a

    const/4 v7, 0x1

    goto :goto_7

    :cond_a
    const/4 v7, 0x0

    :goto_7
    invoke-static {p1, v2, v7}, Lcom/wsw/cospa/fragment/FindColumnFragment;->private(Lcom/wsw/cospa/vo/FindParentVo;Lcom/wsw/cospa/vo/FindChildVo;Z)Lcom/wsw/cospa/fragment/FindColumnFragment;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 36
    :cond_c
    iget-object p1, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->this:Lcom/wsw/cospa/adapter/CustomPagerAdapter;

    invoke-virtual {p1, v5}, Lcom/wsw/cospa/adapter/CustomPagerAdapter;->if(Ljava/util/List;)V

    .line 37
    iget-object p1, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->tabLayout:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-virtual {p1, v4, v4}, Lcom/flyco/tablayout/SlidingTabLayout;->while(IZ)V

    .line 38
    iget-object p1, p0, Lcom/wsw/cospa/fragment/RecommendFragmant;->tabLayout:Lcom/flyco/tablayout/SlidingTabLayout;

    invoke-virtual {p1}, Lcom/flyco/tablayout/SlidingTabLayout;->final()V

    :goto_8
    return-void
.end method

.method public throws()V
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/sl1;

    invoke-direct {v0, p0}, Landroid/support/v4/sl1;-><init>(Lcom/wsw/cospa/fragment/RecommendFragmant;)V

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object v0

    sget-object v1, Landroid/support/v4/wl1;->do:Landroid/support/v4/wl1;

    .line 2
    invoke-virtual {v0, v1}, Lio/reactivex/new;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/new;

    move-result-object v0

    new-instance v1, Landroid/support/v4/vl1;

    invoke-direct {v1, p0}, Landroid/support/v4/vl1;-><init>(Lcom/wsw/cospa/fragment/RecommendFragmant;)V

    .line 3
    invoke-virtual {v0, v1}, Lio/reactivex/new;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/new;

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

    new-instance v1, Lcom/wsw/cospa/fragment/RecommendFragmant$do;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/fragment/RecommendFragmant$do;-><init>(Lcom/wsw/cospa/fragment/RecommendFragmant;)V

    .line 6
    invoke-interface {v0, v1}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public try()Landroid/support/v4/m7;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
