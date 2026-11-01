.class public Lcom/wsw/cospa/widget/ChangeSourceDialog;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialog;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/model/SearchComicModel$OnSearchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter;
    }
.end annotation


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

.field public coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public ivRefresh:Landroid/widget/ImageView;

.field private mActivity:Lcom/wsw/cospa/base/BaseActivity;

.field private mAdapter:Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter;

.field private mContext:Landroid/content/Context;

.field public mProgressBar:Landroid/widget/ProgressBar;

.field public mSourceRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mView:Landroid/view/View;

.field private mbgColorType:I

.field public peekHeight:I

.field private searchBean:Lcom/wsw/cospa/bean/SearchComicBean;

.field private searchComicModel:Lcom/wsw/cospa/model/SearchComicModel;

.field private searchTime:J

.field public tv_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/wsw/cospa/bean/SearchComicBean;)V
    .locals 1

    const v0, 0x7f1200fa

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->mbgColorType:I

    .line 3
    iput v0, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->peekHeight:I

    .line 4
    iput-object p1, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->mContext:Landroid/content/Context;

    .line 5
    check-cast p1, Lcom/wsw/cospa/base/BaseActivity;

    iput-object p1, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->mActivity:Lcom/wsw/cospa/base/BaseActivity;

    .line 6
    iput p2, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->mbgColorType:I

    .line 7
    iput-object p3, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->searchBean:Lcom/wsw/cospa/bean/SearchComicBean;

    return-void
.end method

.method public static synthetic access$000(Lcom/wsw/cospa/widget/ChangeSourceDialog;)Lcom/wsw/cospa/model/SearchComicModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->searchComicModel:Lcom/wsw/cospa/model/SearchComicModel;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/wsw/cospa/widget/ChangeSourceDialog;)Lcom/wsw/cospa/bean/SearchComicBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->searchBean:Lcom/wsw/cospa/bean/SearchComicBean;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/wsw/cospa/widget/ChangeSourceDialog;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->searchTime:J

    return-wide v0
.end method

.method public static synthetic access$300(Lcom/wsw/cospa/widget/ChangeSourceDialog;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/wsw/cospa/widget/ChangeSourceDialog;)Lcom/wsw/cospa/widget/OriginChooseDialog$ChooseOriginListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->click:Lcom/wsw/cospa/widget/OriginChooseDialog$ChooseOriginListener;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/wsw/cospa/widget/ChangeSourceDialog;)Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->mAdapter:Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter;

    return-object p0
.end method

.method public static synthetic do(Lcom/wsw/cospa/widget/ChangeSourceDialog;Lcom/wsw/cospa/bean/SearchComicBean;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/wsw/cospa/widget/ChangeSourceDialog;->lambda$getOriginList$0(Lcom/wsw/cospa/bean/SearchComicBean;Ljava/util/List;Ljava/util/List;)V

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

    new-instance v2, Landroid/support/v4/gh;

    invoke-direct {v2, p0, p1, v0}, Landroid/support/v4/gh;-><init>(Lcom/wsw/cospa/widget/ChangeSourceDialog;Lcom/wsw/cospa/bean/SearchComicBean;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lrx/Observable;->b4(Lrx/functions/Action1;)Lrx/Subscription;

    :cond_0
    return-void
.end method

.method private initData()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extends(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    .line 2
    invoke-static {}, Landroid/support/v4/j10;->goto()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n(I)V

    return-void
.end method

.method private synthetic lambda$getOriginList$0(Lcom/wsw/cospa/bean/SearchComicBean;Ljava/util/List;Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/case;->this()Lcom/wsw/cospa/utils/case;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/case;->throw()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/wsw/cospa/widget/ChangeSourceDialog$2;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/wsw/cospa/widget/ChangeSourceDialog$2;-><init>(Lcom/wsw/cospa/widget/ChangeSourceDialog;Ljava/util/List;Lcom/wsw/cospa/bean/SearchComicBean;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public checkIsExist(Lcom/wsw/cospa/bean/SearchComicBean;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public dismiss()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/ChangeSourceDialog;->onStop()V

    .line 2
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->mActivity:Lcom/wsw/cospa/base/BaseActivity;

    invoke-static {v0, p0}, Lcom/gyf/immersionbar/else;->interface(Landroid/app/Activity;Landroid/app/Dialog;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public initView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->mContext:Landroid/content/Context;

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

    iput-object v0, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->blockComics:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/wsw/cospa/model/SearchComicModel;

    iget-object v1, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->mActivity:Lcom/wsw/cospa/base/BaseActivity;

    invoke-direct {v0, v1, p0}, Lcom/wsw/cospa/model/SearchComicModel;-><init>(Landroid/app/Activity;Lcom/wsw/cospa/model/SearchComicModel$OnSearchListener;)V

    iput-object v0, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->searchComicModel:Lcom/wsw/cospa/model/SearchComicModel;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->searchTime:J

    .line 5
    iget-object v2, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->searchComicModel:Lcom/wsw/cospa/model/SearchComicModel;

    invoke-virtual {v2, v0, v1}, Lcom/wsw/cospa/model/SearchComicModel;->protected(J)V

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->ivRefresh:Landroid/widget/ImageView;

    new-instance v1, Lcom/wsw/cospa/widget/ChangeSourceDialog$1;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/widget/ChangeSourceDialog$1;-><init>(Lcom/wsw/cospa/widget/ChangeSourceDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 9
    iget-object v1, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->mSourceRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 10
    new-instance v0, Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter;-><init>(Lcom/wsw/cospa/widget/ChangeSourceDialog;)V

    iput-object v0, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->mAdapter:Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter;

    .line 11
    iget-object v1, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->mSourceRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 12
    iget-object v0, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->searchBean:Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-direct {p0, v0}, Lcom/wsw/cospa/widget/ChangeSourceDialog;->getOriginList(Lcom/wsw/cospa/bean/SearchComicBean;)V

    return-void
.end method

.method public loadMoreFinish(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->ivRefresh:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public loadMoreSearchBook(Ljava/util/List;)V
    .locals 7
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
    iget-object v0, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->blockComics:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "\uff09\u4e2a"

    const-string v2, "\u6362\u6e90\u5217\u8868\uff08"

    const-string v3, "loadMoreSearchBook name \uff1a "

    const-string v4, "ChangeSourceDialog"

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_7

    .line 3
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/SearchComicBean;->getName()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/support/v4/vv0;->if(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v6, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->searchBean:Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v6}, Lcom/wsw/cospa/bean/SearchComicBean;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->searchBean:Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v6}, Lcom/wsw/cospa/bean/SearchComicBean;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    iget-object v6, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->blockComics:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/SearchComicBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->searchBean:Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v3}, Lcom/wsw/cospa/bean/SearchComicBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/SearchComicBean;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/wsw/cospa/bean/SearchComicBean;->setChecked(Ljava/lang/Boolean;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->mAdapter:Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v0, v3}, Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter;->setOrigin(Lcom/wsw/cospa/bean/SearchComicBean;)V

    .line 9
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/dao/DatabaseHelper;->o(Lcom/wsw/cospa/bean/SearchComicBean;)V

    .line 10
    iget-object p1, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->tv_title:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->mAdapter:Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter;

    invoke-virtual {v2}, Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter;->getItemCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 11
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_7

    .line 12
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/SearchComicBean;->getName()Ljava/lang/String;

    move-result-object v0

    .line 13
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/support/v4/vv0;->if(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v6, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->searchBean:Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v6}, Lcom/wsw/cospa/bean/SearchComicBean;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->searchBean:Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v6}, Lcom/wsw/cospa/bean/SearchComicBean;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 15
    :cond_5
    :goto_2
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/SearchComicBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->searchBean:Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v3}, Lcom/wsw/cospa/bean/SearchComicBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/SearchComicBean;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/wsw/cospa/bean/SearchComicBean;->setChecked(Ljava/lang/Boolean;)V

    .line 17
    :cond_6
    iget-object v0, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->mAdapter:Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v0, v3}, Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter;->setOrigin(Lcom/wsw/cospa/bean/SearchComicBean;)V

    .line 18
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/dao/DatabaseHelper;->o(Lcom/wsw/cospa/bean/SearchComicBean;)V

    .line 19
    iget-object p1, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->tv_title:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->mAdapter:Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter;

    invoke-virtual {v2}, Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter;->getItemCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0055

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->mView:Landroid/view/View;

    const v0, 0x7f0902aa

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->mSourceRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->mView:Landroid/view/View;

    const v0, 0x7f09011b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object p1, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->mView:Landroid/view/View;

    const v0, 0x7f09024a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->ivRefresh:Landroid/widget/ImageView;

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->mView:Landroid/view/View;

    const v0, 0x7f090335

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 7
    iget-object p1, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->mView:Landroid/view/View;

    const v0, 0x7f0904be

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->tv_title:Landroid/widget/TextView;

    .line 8
    iget-object p1, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCancelable(Z)V

    .line 10
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCanceledOnTouchOutside(Z)V

    .line 11
    invoke-direct {p0}, Lcom/wsw/cospa/widget/ChangeSourceDialog;->initData()V

    .line 12
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/ChangeSourceDialog;->initView()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->searchComicModel:Lcom/wsw/cospa/model/SearchComicModel;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/wsw/cospa/model/SearchComicModel;->abstract()V

    :cond_0
    return-void
.end method

.method public refreshFinish(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->ivRefresh:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public refreshSearchBook()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->mAdapter:Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter;

    invoke-virtual {v0}, Lcom/wsw/cospa/widget/ChangeSourceDialog$ChangeSourceAdapter;->clearList()V

    return-void
.end method

.method public searchBookError(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->ivRefresh:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public setOnChooseOriginListener(Lcom/wsw/cospa/widget/OriginChooseDialog$ChooseOriginListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->click:Lcom/wsw/cospa/widget/OriginChooseDialog$ChooseOriginListener;

    return-void
.end method

.method public show()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->mActivity:Lcom/wsw/cospa/base/BaseActivity;

    invoke-static {v0, p0}, Lcom/gyf/immersionbar/else;->l2(Landroid/app/Activity;Landroid/app/Dialog;)Lcom/gyf/immersionbar/else;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gyf/immersionbar/else;->b0()V

    .line 3
    iget v0, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->peekHeight:I

    if-nez v0, :cond_0

    const v0, 0x7f09011b

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/widget/ChangeSourceDialog;->peekHeight:I

    const v0, 0x7f090131

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 8
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    .line 9
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extends(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    .line 12
    invoke-static {}, Landroid/support/v4/j10;->goto()I

    move-result v3

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v1

    double-to-int v1, v3

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n(I)V

    const/4 v1, 0x4

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->r(I)V

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f12035e

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    return-void
.end method
