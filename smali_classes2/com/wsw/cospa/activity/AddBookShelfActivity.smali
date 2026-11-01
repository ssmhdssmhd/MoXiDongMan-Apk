.class public Lcom/wsw/cospa/activity/AddBookShelfActivity;
.super Lcom/wsw/cospa/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/activity/AddBookShelfActivity$DragListener;,
        Lcom/wsw/cospa/activity/AddBookShelfActivity$try;
    }
.end annotation


# static fields
.field public static final final:I = 0x2775

.field public static final super:I = 0x2776


# instance fields
.field public allCategoryCheck:Landroid/widget/CheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900f1
    .end annotation
.end field

.field public allCategoryLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09008c
    .end annotation
.end field

.field private break:Lcom/wsw/cospa/bean/ComicShelfBean;

.field private catch:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

.field private class:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicShelfGroupBean;",
            ">;"
        }
    .end annotation
.end field

.field private const:Lcom/wsw/cospa/adapter/AddBookShelfAdapter;

.field public etBookshelfName:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090172
    .end annotation
.end field

.field private goto:Z

.field public groupSortTip:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901f5
    .end annotation
.end field

.field public mToolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902ab
    .end annotation
.end field

.field public rbGirdMode:Landroidx/appcompat/widget/AppCompatRadioButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090350
    .end annotation
.end field

.field public rbListMode:Landroidx/appcompat/widget/AppCompatRadioButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090351
    .end annotation
.end field

.field public rbSortDrag:Landroidx/appcompat/widget/AppCompatRadioButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090352
    .end annotation
.end field

.field public rbSortTime:Landroidx/appcompat/widget/AppCompatRadioButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090353
    .end annotation
.end field

.field public rgSortType:Landroid/widget/RadioGroup;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090362
    .end annotation
.end field

.field public rgViewMode:Landroid/widget/RadioGroup;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090363
    .end annotation
.end field

.field public savBookshelfView:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090379
    .end annotation
.end field

.field public shelfGroupList:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903a3
    .end annotation
.end field

.field private this:Ljava/lang/String;

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

.method private synthetic abstract(ZLio/reactivex/ObservableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "show_all_category"

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    .line 2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 3
    invoke-interface {p2}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method private synthetic continue(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->this:Ljava/lang/String;

    const-string v1, "groupKey"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 3
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method public static synthetic default(Lcom/wsw/cospa/activity/AddBookShelfActivity;Lcom/wsw/cospa/bean/ComicShelfBean;)Lcom/wsw/cospa/bean/ComicShelfBean;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->break:Lcom/wsw/cospa/bean/ComicShelfBean;

    return-object p1
.end method

.method public static synthetic extends(Lcom/wsw/cospa/activity/AddBookShelfActivity;)Lcom/wsw/cospa/bean/ComicShelfGroupBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    return-object p0
.end method

.method public static synthetic finally(Lcom/wsw/cospa/activity/AddBookShelfActivity;Lcom/wsw/cospa/bean/ComicShelfGroupBean;)Lcom/wsw/cospa/bean/ComicShelfGroupBean;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    return-object p1
.end method

.method public static implements(Landroidx/fragment/app/Fragment;ZLjava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/wsw/cospa/activity/AddBookShelfActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "isAdd"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "groupKey"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x2775

    .line 4
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static synthetic import(Lcom/wsw/cospa/activity/AddBookShelfActivity;ZLio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/activity/AddBookShelfActivity;->abstract(ZLio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method private synthetic interface(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->this:Ljava/lang/String;

    const-string v1, "groupKey"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 4
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 5
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public static synthetic native(Lcom/wsw/cospa/activity/AddBookShelfActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/AddBookShelfActivity;->continue(Ljava/lang/Boolean;)V

    return-void
.end method

.method private package()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/wsw/cospa/dao/do;->throws(J)Lio/reactivex/new;

    move-result-object v0

    .line 3
    invoke-static {}, Lio/reactivex/schedulers/do;->new()Lio/reactivex/try;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/new;->subscribeOn(Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object v0

    .line 4
    invoke-static {}, Lio/reactivex/android/schedulers/do;->for()Lio/reactivex/try;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/new;->observeOn(Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object v0

    .line 5
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v1, Lcom/wsw/cospa/activity/AddBookShelfActivity$new;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/activity/AddBookShelfActivity$new;-><init>(Lcom/wsw/cospa/activity/AddBookShelfActivity;)V

    .line 6
    invoke-interface {v0, v1}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/Observer;)V

    :cond_0
    return-void
.end method

.method public static protected(Landroidx/fragment/app/Fragment;Z)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/wsw/cospa/activity/AddBookShelfActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "isAdd"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 p1, 0x2775

    .line 3
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static synthetic public(Lcom/wsw/cospa/activity/AddBookShelfActivity;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/AddBookShelfActivity;->volatile(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic return(Lcom/wsw/cospa/activity/AddBookShelfActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/AddBookShelfActivity;->interface(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic static(Lcom/wsw/cospa/activity/AddBookShelfActivity;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/activity/AddBookShelfActivity;->strictfp(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private synthetic strictfp(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->allCategoryCheck:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Landroid/support/v4/a0;

    invoke-direct {p1, p0, p2}, Landroid/support/v4/a0;-><init>(Lcom/wsw/cospa/activity/AddBookShelfActivity;Z)V

    invoke-static {p1}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p1

    .line 3
    invoke-static {}, Lio/reactivex/schedulers/do;->try()Lio/reactivex/try;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/new;->subscribeOn(Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object p1

    .line 4
    invoke-static {}, Lio/reactivex/android/schedulers/do;->for()Lio/reactivex/try;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/new;->observeOn(Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object p1

    .line 5
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance p2, Landroid/support/v4/c0;

    invoke-direct {p2, p0}, Landroid/support/v4/c0;-><init>(Lcom/wsw/cospa/activity/AddBookShelfActivity;)V

    .line 6
    invoke-interface {p1, p2}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public static synthetic switch(Lcom/wsw/cospa/activity/AddBookShelfActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->this:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic throws(Lcom/wsw/cospa/activity/AddBookShelfActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->break:Lcom/wsw/cospa/bean/ComicShelfBean;

    return-object p0
.end method

.method public static transient(Landroidx/fragment/app/Fragment;ZJ)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/wsw/cospa/activity/AddBookShelfActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "isAdd"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "groupId"

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/16 p1, 0x2776

    .line 4
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private synthetic volatile(Lio/reactivex/ObservableEmitter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->const:Lcom/wsw/cospa/adapter/AddBookShelfAdapter;

    if-eqz v1, :cond_3

    .line 3
    invoke-virtual {v1}, Lcom/wsw/cospa/adapter/AddBookShelfAdapter;->new()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_1

    .line 5
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    .line 6
    :try_start_0
    invoke-virtual {v4}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->getGroupNumber()I

    move-result v5

    if-eq v5, v2, :cond_0

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->setGroupNumber(Ljava/lang/Integer;)V

    .line 8
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 9
    :catch_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->setGroupNumber(Ljava/lang/Integer;)V

    .line 10
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 12
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/hw;->else()Lcom/wsw/cospa/dao/ComicShelfGroupBeanDao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    .line 13
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 14
    invoke-interface {p1}, Lio/reactivex/Emitter;->onComplete()V

    goto :goto_2

    .line 15
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 16
    invoke-interface {p1}, Lio/reactivex/Emitter;->onComplete()V

    goto :goto_2

    .line 17
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 18
    invoke-interface {p1}, Lio/reactivex/Emitter;->onComplete()V

    :goto_2
    return-void
.end method


# virtual methods
.method public case()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isAdd"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->goto:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->tvTitle:Landroid/widget/TextView;

    const-string v3, "\u7f16\u8f91\u4e66\u67b6"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-wide/16 v3, 0x0

    const-string v5, "groupId"

    invoke-virtual {v0, v5, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 4
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/wsw/cospa/dao/do;->public(Ljava/lang/Long;)Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    if-eqz v0, :cond_2

    .line 5
    iget-object v3, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->etBookshelfName:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->getGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->getViewId()I

    move-result v0

    .line 7
    iget-object v3, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->getSortId()I

    move-result v3

    if-ne v0, v2, :cond_0

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->rbListMode:Landroidx/appcompat/widget/AppCompatRadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->rbGirdMode:Landroidx/appcompat/widget/AppCompatRadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->rbGirdMode:Landroidx/appcompat/widget/AppCompatRadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 11
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->rbListMode:Landroidx/appcompat/widget/AppCompatRadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    if-ne v3, v2, :cond_1

    .line 12
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->rbSortTime:Landroidx/appcompat/widget/AppCompatRadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 13
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->rbSortDrag:Landroidx/appcompat/widget/AppCompatRadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->rbSortTime:Landroidx/appcompat/widget/AppCompatRadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 15
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->rbSortDrag:Landroidx/appcompat/widget/AppCompatRadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 16
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "noteUrl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/wsw/cospa/dao/do;->extends(Ljava/lang/String;)Lio/reactivex/new;

    move-result-object v0

    sget-object v1, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 18
    invoke-virtual {v0, v1}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object v0

    .line 19
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v1, Lcom/wsw/cospa/activity/AddBookShelfActivity$for;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/activity/AddBookShelfActivity$for;-><init>(Lcom/wsw/cospa/activity/AddBookShelfActivity;)V

    .line 20
    invoke-interface {v0, v1}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_1

    .line 21
    :cond_3
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->tvTitle:Landroid/widget/TextView;

    const-string v2, "\u65b0\u589e\u4e66\u67b6"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->groupSortTip:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 23
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->allCategoryLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public goto()Landroid/support/v4/m7;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public new()I
    .locals 1

    const v0, 0x7f0c001d

    return v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->etBookshelfName:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-static {v0}, Landroid/support/v4/j10;->do(Landroid/view/View;)V

    .line 2
    new-instance v0, Landroid/support/v4/z;

    invoke-direct {v0, p0}, Landroid/support/v4/z;-><init>(Lcom/wsw/cospa/activity/AddBookShelfActivity;)V

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

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

    new-instance v1, Landroid/support/v4/d0;

    invoke-direct {v1, p0}, Landroid/support/v4/d0;-><init>(Lcom/wsw/cospa/activity/AddBookShelfActivity;)V

    .line 5
    invoke-interface {v0, v1}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->rgViewMode:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCheckedChanged  rgViewMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/widget/swipe/SwipeBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->rgSortType:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCheckedChanged  rgSortType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/widget/swipe/SwipeBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090379

    if-eq p1, v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->etBookshelfName:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->rgViewMode:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f090351

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v0, v1, :cond_1

    const-string v0, "\u5217\u8868"

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const v1, 0x7f090350

    if-ne v0, v1, :cond_2

    const-string v0, "\u7f51\u683c"

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    move-object v0, v5

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v6, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->rgSortType:Landroid/widget/RadioGroup;

    invoke-virtual {v6}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v6

    const v7, 0x7f090353

    if-ne v6, v7, :cond_3

    const-string v2, "\u65f6\u95f4"

    move-object v3, v2

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const v7, 0x7f090352

    if-ne v6, v7, :cond_4

    const-string v3, "\u62d6\u62fd"

    goto :goto_1

    :cond_4
    move-object v3, v5

    const/4 v2, 0x0

    .line 5
    :goto_1
    iget-boolean v6, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->goto:Z

    const-string v7, "\u8bf7\u8f93\u5165\u4e66\u67b6\u540d\uff01"

    const/4 v8, -0x1

    if-eqz v6, :cond_7

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 7
    invoke-static {v7}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 8
    :cond_5
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/AddBookShelfActivity;->private(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string p1, "\u5df2\u5b58\u5728\u540c\u540d\u4e66\u67b6\uff01"

    .line 9
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 10
    :cond_6
    new-instance v6, Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    invoke-direct {v6}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;-><init>()V

    .line 11
    invoke-virtual {v6, v5}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->setId(Ljava/lang/Long;)V

    .line 12
    invoke-virtual {v6, p1}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->setGroupName(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v6, v1}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->setViewId(I)V

    .line 14
    invoke-virtual {v6, v0}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->setGroupView(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v6, v2}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->setSortId(I)V

    .line 16
    invoke-virtual {v6, v3}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->setGroupSort(Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->rgViewMode:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    invoke-virtual {v6, p1}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->setViewCheckedId(I)V

    .line 18
    iget-object p1, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->rgSortType:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    invoke-virtual {v6, p1}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->setSortCheckedId(I)V

    .line 19
    invoke-virtual {v6, v4}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->setEnable(Z)V

    .line 20
    iget-boolean p1, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->goto:Z

    invoke-static {v6, p1}, Lcom/wsw/cospa/dao/do;->const(Lcom/wsw/cospa/bean/ComicShelfGroupBean;Z)V

    .line 21
    invoke-virtual {p0, v8}, Landroid/app/Activity;->setResult(I)V

    .line 22
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->finish()V

    goto :goto_2

    .line 23
    :cond_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 24
    invoke-static {v7}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    goto :goto_2

    .line 25
    :cond_8
    iget-object v4, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    invoke-virtual {v4, p1}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->setGroupName(Ljava/lang/String;)V

    .line 26
    iget-object p1, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    invoke-virtual {p1, v1}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->setViewId(I)V

    .line 27
    iget-object p1, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->setGroupView(Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    invoke-virtual {p1, v2}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->setSortId(I)V

    .line 29
    iget-object p1, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    invoke-virtual {p1, v3}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->setGroupSort(Ljava/lang/String;)V

    .line 30
    iget-object p1, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    iget-object v0, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->rgViewMode:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->setViewCheckedId(I)V

    .line 31
    iget-object p1, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    iget-object v0, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->rgSortType:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->setSortCheckedId(I)V

    .line 32
    iget-object p1, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    iget-boolean v0, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->goto:Z

    invoke-static {p1, v0}, Lcom/wsw/cospa/dao/do;->const(Lcom/wsw/cospa/bean/ComicShelfGroupBean;Z)V

    .line 33
    invoke-virtual {p0, v8}, Landroid/app/Activity;->setResult(I)V

    .line 34
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->finish()V

    :goto_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/AddBookShelfActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09012c

    if-ne v0, v1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/wsw/cospa/activity/AddBookShelfActivity;->package()V

    .line 5
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f09012c

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-boolean v2, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->goto:Z

    if-nez v2, :cond_1

    .line 4
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 5
    :cond_1
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public private(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/do;->h()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    .line 4
    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->getGroupName()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public this()V
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/support/v4/p12;->case(Landroid/app/Activity;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-static {p0, v0}, Lcom/wsw/cospa/utils/synchronized;->for(Landroidx/appcompat/app/AppCompatActivity;Landroidx/appcompat/widget/Toolbar;)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->rgViewMode:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->rgSortType:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->savBookshelfView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "groupKey"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->this:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    invoke-static {}, Landroid/support/v4/y8;->for()Landroid/support/v4/y8;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->this:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/y8;->if(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->class:Ljava/util/List;

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->class:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 10
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 11
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->shelfGroupList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 12
    new-instance v0, Lcom/wsw/cospa/adapter/AddBookShelfAdapter;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/adapter/AddBookShelfAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->const:Lcom/wsw/cospa/adapter/AddBookShelfAdapter;

    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lcom/wsw/cospa/adapter/AddBookShelfAdapter;->catch(Z)V

    .line 14
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->shelfGroupList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->const:Lcom/wsw/cospa/adapter/AddBookShelfAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 15
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->const:Lcom/wsw/cospa/adapter/AddBookShelfAdapter;

    iget-object v2, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->class:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/adapter/AddBookShelfAdapter;->refresh(Ljava/util/List;)V

    .line 16
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v2, Lcom/wsw/cospa/activity/AddBookShelfActivity$try;

    iget-object v3, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->const:Lcom/wsw/cospa/adapter/AddBookShelfAdapter;

    invoke-direct {v2, v3}, Lcom/wsw/cospa/activity/AddBookShelfActivity$try;-><init>(Lcom/wsw/cospa/adapter/AddBookShelfAdapter;)V

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 17
    iget-object v2, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->shelfGroupList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 18
    iget-object v2, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->const:Lcom/wsw/cospa/adapter/AddBookShelfAdapter;

    new-instance v3, Lcom/wsw/cospa/activity/AddBookShelfActivity$do;

    invoke-direct {v3, p0}, Lcom/wsw/cospa/activity/AddBookShelfActivity$do;-><init>(Lcom/wsw/cospa/activity/AddBookShelfActivity;)V

    invoke-virtual {v2, v3}, Lcom/wsw/cospa/adapter/AddBookShelfAdapter;->setOnCheckedChangeListener(Lcom/wsw/cospa/listener/OnCheckedChangeListener;)V

    .line 19
    iget-object v2, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->const:Lcom/wsw/cospa/adapter/AddBookShelfAdapter;

    new-instance v3, Lcom/wsw/cospa/activity/AddBookShelfActivity$if;

    invoke-direct {v3, p0, v0}, Lcom/wsw/cospa/activity/AddBookShelfActivity$if;-><init>(Lcom/wsw/cospa/activity/AddBookShelfActivity;Landroidx/recyclerview/widget/ItemTouchHelper;)V

    invoke-virtual {v2, v3}, Lcom/wsw/cospa/adapter/AddBookShelfAdapter;->class(Lcom/wsw/cospa/activity/AddBookShelfActivity$DragListener;)V

    .line 20
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v2, "show_all_category"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v0

    .line 21
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->allCategoryCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 22
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->allCategoryCheck:Landroid/widget/CheckBox;

    new-instance v1, Landroid/support/v4/y;

    invoke-direct {v1, p0}, Landroid/support/v4/y;-><init>(Lcom/wsw/cospa/activity/AddBookShelfActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_1
    return-void
.end method
