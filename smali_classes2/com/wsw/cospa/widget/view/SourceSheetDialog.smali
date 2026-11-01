.class public Lcom/wsw/cospa/widget/view/SourceSheetDialog;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/model/SearchComicModel$OnSearchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/widget/view/SourceSheetDialog$ChangeSourceAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private blockComics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private click:Lcom/wsw/cospa/widget/OriginChooseDialog$ChooseOriginListener;

.field private mActivity:Lcom/wsw/cospa/base/BaseActivity;

.field private mAdapter:Lcom/wsw/cospa/widget/view/SourceSheetDialog$ChangeSourceAdapter;

.field public mClassicsHeader:Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;

.field private mContext:Landroid/content/Context;

.field public mSourceRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mView:Landroid/view/View;

.field private mbgColorType:I

.field public refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

.field private searchBean:Lcom/wsw/cospa/bean/SearchComicBean;

.field private searchComicModel:Lcom/wsw/cospa/model/SearchComicModel;

.field private searchTime:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/wsw/cospa/bean/SearchComicBean;)V
    .locals 1

    const v0, 0x7f120128

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->mbgColorType:I

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->mContext:Landroid/content/Context;

    .line 4
    check-cast p1, Lcom/wsw/cospa/base/BaseActivity;

    iput-object p1, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->mActivity:Lcom/wsw/cospa/base/BaseActivity;

    .line 5
    iput p2, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->mbgColorType:I

    .line 6
    iput-object p3, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->searchBean:Lcom/wsw/cospa/bean/SearchComicBean;

    return-void
.end method

.method public static synthetic access$000(Lcom/wsw/cospa/widget/view/SourceSheetDialog;)Lcom/wsw/cospa/bean/SearchComicBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->searchBean:Lcom/wsw/cospa/bean/SearchComicBean;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/wsw/cospa/widget/view/SourceSheetDialog;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->mbgColorType:I

    return p0
.end method

.method public static synthetic access$200(Lcom/wsw/cospa/widget/view/SourceSheetDialog;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/wsw/cospa/widget/view/SourceSheetDialog;)Lcom/wsw/cospa/widget/OriginChooseDialog$ChooseOriginListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->click:Lcom/wsw/cospa/widget/OriginChooseDialog$ChooseOriginListener;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/wsw/cospa/widget/view/SourceSheetDialog;)Lcom/wsw/cospa/widget/view/SourceSheetDialog$ChangeSourceAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->mAdapter:Lcom/wsw/cospa/widget/view/SourceSheetDialog$ChangeSourceAdapter;

    return-object p0
.end method

.method public static synthetic do(Lcom/wsw/cospa/widget/view/SourceSheetDialog;Lcom/wsw/cospa/bean/SearchComicBean;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->lambda$getOriginList$1(Lcom/wsw/cospa/bean/SearchComicBean;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private getOriginList(Lcom/wsw/cospa/bean/SearchComicBean;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Lcom/wsw/cospa/bean/SearchComicBean;->setChecked(Ljava/lang/Boolean;)V

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/hw;->goto()Lcom/wsw/cospa/dao/ComicSourceBeanDao;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->catch:Lorg/greenrobot/greendao/Property;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/greenrobot/greendao/Property;->gt(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    new-array v4, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v2, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/greenrobot/greendao/Property;

    sget-object v4, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->break:Lorg/greenrobot/greendao/Property;

    aput-object v4, v2, v3

    .line 5
    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->rx()Lorg/greenrobot/greendao/rx/RxQuery;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/rx/RxQuery;->list()Lrx/Observable;

    move-result-object v1

    invoke-static {}, Landroid/support/v4/ds1;->try()Lrx/if;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->e4(Lrx/if;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Landroid/support/v4/t02;

    invoke-direct {v2, p0, p1, v0}, Landroid/support/v4/t02;-><init>(Lcom/wsw/cospa/widget/view/SourceSheetDialog;Lcom/wsw/cospa/bean/SearchComicBean;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lrx/Observable;->b4(Lrx/functions/Action1;)Lrx/Subscription;

    :cond_0
    return-void
.end method

.method public static synthetic if(Lcom/wsw/cospa/widget/view/SourceSheetDialog;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->lambda$initData$0(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V

    return-void
.end method

.method private synthetic lambda$getOriginList$1(Lcom/wsw/cospa/bean/SearchComicBean;Ljava/util/List;Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/case;->this()Lcom/wsw/cospa/utils/case;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/case;->throw()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/wsw/cospa/widget/view/SourceSheetDialog$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/wsw/cospa/widget/view/SourceSheetDialog$1;-><init>(Lcom/wsw/cospa/widget/view/SourceSheetDialog;Ljava/util/List;Lcom/wsw/cospa/bean/SearchComicBean;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$initData$0(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->searchComicModel:Lcom/wsw/cospa/model/SearchComicModel;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/model/SearchComicModel;->interface(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->searchComicModel:Lcom/wsw/cospa/model/SearchComicModel;

    iget-object v0, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->searchBean:Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/SearchComicBean;->getName()Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->searchTime:J

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/wsw/cospa/model/SearchComicModel;->continue(Ljava/lang/String;JLjava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public checkIsExist(Lcom/wsw/cospa/bean/SearchComicBean;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public initButtomSheet()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->mView:Landroid/view/View;

    const v1, 0x7f09035c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->mView:Landroid/view/View;

    const v1, 0x7f0902aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->mSourceRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->mView:Landroid/view/View;

    const v1, 0x7f09029d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->mClassicsHeader:Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;

    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    const v1, 0x7f12035e

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 8
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    .line 9
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 10
    invoke-static {}, Landroid/support/v4/j10;->goto()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 12
    iget v0, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->mbgColorType:I

    if-nez v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->mView:Landroid/view/View;

    const v1, 0x7f080093

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 14
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->mClassicsHeader:Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;

    iget-object v1, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->mActivity:Lcom/wsw/cospa/base/BaseActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060380

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->while(I)Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;

    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->mView:Landroid/view/View;

    const v1, 0x7f080094

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 16
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->mClassicsHeader:Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;

    iget-object v1, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->mActivity:Lcom/wsw/cospa/base/BaseActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060342

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;->while(I)Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;

    :goto_0
    return-void
.end method

.method public initData()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "block_comic"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->try(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/package;->for(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->blockComics:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/wsw/cospa/model/SearchComicModel;

    iget-object v1, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->mActivity:Lcom/wsw/cospa/base/BaseActivity;

    invoke-direct {v0, v1, p0}, Lcom/wsw/cospa/model/SearchComicModel;-><init>(Landroid/app/Activity;Lcom/wsw/cospa/model/SearchComicModel$OnSearchListener;)V

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->searchComicModel:Lcom/wsw/cospa/model/SearchComicModel;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->searchTime:J

    .line 5
    iget-object v2, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->searchComicModel:Lcom/wsw/cospa/model/SearchComicModel;

    invoke-virtual {v2, v0, v1}, Lcom/wsw/cospa/model/SearchComicModel;->protected(J)V

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setEnableAutoLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    new-instance v1, Landroid/support/v4/s02;

    invoke-direct {v1, p0}, Landroid/support/v4/s02;-><init>(Lcom/wsw/cospa/widget/view/SourceSheetDialog;)V

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setOnRefreshListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 8
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 10
    iget-object v1, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->mSourceRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 11
    new-instance v0, Lcom/wsw/cospa/widget/view/SourceSheetDialog$ChangeSourceAdapter;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/widget/view/SourceSheetDialog$ChangeSourceAdapter;-><init>(Lcom/wsw/cospa/widget/view/SourceSheetDialog;)V

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->mAdapter:Lcom/wsw/cospa/widget/view/SourceSheetDialog$ChangeSourceAdapter;

    .line 12
    iget-object v1, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->mSourceRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 13
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->searchBean:Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-direct {p0, v0}, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->getOriginList(Lcom/wsw/cospa/bean/SearchComicBean;)V

    return-void
.end method

.method public loadMoreFinish(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    :cond_0
    return-void
.end method

.method public loadMoreSearchBook(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/SearchComicBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->blockComics:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/SearchComicBean;->getName()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->searchBean:Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/SearchComicBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->blockComics:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/SearchComicBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->searchBean:Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/SearchComicBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/SearchComicBean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/bean/SearchComicBean;->setChecked(Ljava/lang/Boolean;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->mAdapter:Lcom/wsw/cospa/widget/view/SourceSheetDialog$ChangeSourceAdapter;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/widget/view/SourceSheetDialog$ChangeSourceAdapter;->setOrigin(Lcom/wsw/cospa/bean/SearchComicBean;)V

    .line 8
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/dao/DatabaseHelper;->o(Lcom/wsw/cospa/bean/SearchComicBean;)V

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 10
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/SearchComicBean;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->searchBean:Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/SearchComicBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/SearchComicBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->searchBean:Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/SearchComicBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/SearchComicBean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/bean/SearchComicBean;->setChecked(Ljava/lang/Boolean;)V

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->mAdapter:Lcom/wsw/cospa/widget/view/SourceSheetDialog$ChangeSourceAdapter;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/widget/view/SourceSheetDialog$ChangeSourceAdapter;->setOrigin(Lcom/wsw/cospa/bean/SearchComicBean;)V

    .line 14
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/dao/DatabaseHelper;->o(Lcom/wsw/cospa/bean/SearchComicBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0052

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->mView:Landroid/view/View;

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->initButtomSheet()V

    .line 5
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->initData()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->searchComicModel:Lcom/wsw/cospa/model/SearchComicModel;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/wsw/cospa/model/SearchComicModel;->abstract()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->searchComicModel:Lcom/wsw/cospa/model/SearchComicModel;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/wsw/cospa/model/SearchComicModel;->abstract()V

    :cond_0
    return-void
.end method

.method public refreshFinish(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    :cond_0
    return-void
.end method

.method public refreshSearchBook()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->mAdapter:Lcom/wsw/cospa/widget/view/SourceSheetDialog$ChangeSourceAdapter;

    invoke-virtual {v0}, Lcom/wsw/cospa/widget/view/SourceSheetDialog$ChangeSourceAdapter;->clearList()V

    return-void
.end method

.method public searchBookError(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    :cond_0
    return-void
.end method

.method public setOnChooseOriginListener(Lcom/wsw/cospa/widget/OriginChooseDialog$ChooseOriginListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/SourceSheetDialog;->click:Lcom/wsw/cospa/widget/OriginChooseDialog$ChooseOriginListener;

    return-void
.end method
