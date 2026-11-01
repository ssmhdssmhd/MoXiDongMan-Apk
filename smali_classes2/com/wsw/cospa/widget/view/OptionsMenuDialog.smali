.class public Lcom/wsw/cospa/widget/view/OptionsMenuDialog;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public disposable:Lio/reactivex/disposables/Disposable;

.field private groupId:J

.field public ivModeImage:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090243
    .end annotation
.end field

.field private mActivity:Lcom/wsw/cospa/base/BaseActivity;

.field private mContext:Lcom/wsw/cospa/fragment/BookShelfFragment;

.field private mShelfMode:I

.field private mView:Landroid/view/View;

.field private shelfBean:Lcom/wsw/cospa/bean/ComicShelfBean;

.field private shelfGroupBean:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

.field public tvChangeSource:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090467
    .end annotation
.end field

.field public tvClearShelf:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09046c
    .end annotation
.end field

.field public tvComicName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09046f
    .end annotation
.end field

.field public tvDeleteComic:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090477
    .end annotation
.end field

.field public tvDownloadComic:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09047d
    .end annotation
.end field

.field public tvManagerComic:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090498
    .end annotation
.end field

.field public tvMoveComic:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090499
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/fragment/BookShelfFragment;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120128

    invoke-direct {p0, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    new-instance v0, Landroid/support/v4/cq;

    invoke-direct {v0}, Landroid/support/v4/cq;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->disposable:Lio/reactivex/disposables/Disposable;

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->mContext:Lcom/wsw/cospa/fragment/BookShelfFragment;

    .line 4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/base/BaseActivity;

    iput-object p1, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->mActivity:Lcom/wsw/cospa/base/BaseActivity;

    return-void
.end method

.method public constructor <init>(Lcom/wsw/cospa/fragment/BookShelfFragment;Lcom/wsw/cospa/bean/ComicShelfBean;)V
    .locals 2

    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120128

    invoke-direct {p0, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 6
    new-instance v0, Landroid/support/v4/cq;

    invoke-direct {v0}, Landroid/support/v4/cq;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->disposable:Lio/reactivex/disposables/Disposable;

    .line 7
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->mContext:Lcom/wsw/cospa/fragment/BookShelfFragment;

    .line 8
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/base/BaseActivity;

    iput-object p1, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->mActivity:Lcom/wsw/cospa/base/BaseActivity;

    .line 9
    iput-object p2, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->shelfBean:Lcom/wsw/cospa/bean/ComicShelfBean;

    return-void
.end method

.method public static synthetic access$000(Lcom/wsw/cospa/widget/view/OptionsMenuDialog;)Lcom/wsw/cospa/bean/ComicShelfBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->shelfBean:Lcom/wsw/cospa/bean/ComicShelfBean;

    return-object p0
.end method

.method private changeSource()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->shelfBean:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/dao/DatabaseHelper;->default(Ljava/lang/String;)Lcom/wsw/cospa/bean/SearchComicBean;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->shelfBean:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v0, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-direct {v0}, Lcom/wsw/cospa/bean/SearchComicBean;-><init>()V

    .line 4
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/bean/SearchComicBean;->setAuthor(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getCoverUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/bean/SearchComicBean;->setCoverUrl(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getIntroduce()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/bean/SearchComicBean;->setIntroduce(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/bean/SearchComicBean;->setName(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getKind()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/bean/SearchComicBean;->setKind(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/bean/SearchComicBean;->setNoteUrl(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getOrigin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/bean/SearchComicBean;->setOrigin(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/SearchComicBean;->setTag(Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/SearchComicBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 13
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    iget-object v1, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->mActivity:Lcom/wsw/cospa/base/BaseActivity;

    invoke-static {v1}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v1

    const-string v2, "systemMode"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v1

    .line 15
    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    if-ne v2, v1, :cond_2

    goto :goto_0

    .line 16
    :cond_1
    iget-object v1, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->mActivity:Lcom/wsw/cospa/base/BaseActivity;

    invoke-static {v1}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v1

    const-string v2, "nightTheme"

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    const/4 v3, 0x1

    .line 17
    :cond_2
    new-instance v1, Lcom/wsw/cospa/widget/ChangeSourceDialog;

    iget-object v2, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->mActivity:Lcom/wsw/cospa/base/BaseActivity;

    invoke-direct {v1, v2, v3, v0}, Lcom/wsw/cospa/widget/ChangeSourceDialog;-><init>(Landroid/content/Context;ILcom/wsw/cospa/bean/SearchComicBean;)V

    .line 18
    new-instance v0, Landroid/support/v4/i81;

    invoke-direct {v0, p0, v1}, Landroid/support/v4/i81;-><init>(Lcom/wsw/cospa/widget/view/OptionsMenuDialog;Lcom/wsw/cospa/widget/ChangeSourceDialog;)V

    invoke-virtual {v1, v0}, Lcom/wsw/cospa/widget/ChangeSourceDialog;->setOnChooseOriginListener(Lcom/wsw/cospa/widget/OriginChooseDialog$ChooseOriginListener;)V

    .line 19
    invoke-virtual {v1}, Lcom/wsw/cospa/widget/ChangeSourceDialog;->show()V

    :cond_3
    return-void
.end method

.method private clearShelf()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->disposable:Lio/reactivex/disposables/Disposable;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/support/v4/cq;

    invoke-direct {v0}, Landroid/support/v4/cq;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->disposable:Lio/reactivex/disposables/Disposable;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->shelfBean:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getGroupId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 4
    iget-object v2, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->shelfGroupBean:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->getSortId()I

    move-result v2

    .line 5
    invoke-static {v0, v1, v2}, Lcom/wsw/cospa/dao/do;->default(JI)Lio/reactivex/new;

    move-result-object v0

    sget-object v1, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 6
    invoke-virtual {v0, v1}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->mActivity:Lcom/wsw/cospa/base/BaseActivity;

    .line 7
    invoke-static {v1}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v1, Lcom/wsw/cospa/widget/view/OptionsMenuDialog$1;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/widget/view/OptionsMenuDialog$1;-><init>(Lcom/wsw/cospa/widget/view/OptionsMenuDialog;)V

    .line 8
    invoke-interface {v0, v1}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_0

    .line 9
    :cond_1
    sget-object v0, Landroid/support/v4/j81;->do:Landroid/support/v4/j81;

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object v0

    .line 10
    invoke-static {}, Lio/reactivex/schedulers/do;->else()Lio/reactivex/try;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/new;->subscribeOn(Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object v0

    .line 11
    invoke-static {}, Lio/reactivex/android/schedulers/do;->for()Lio/reactivex/try;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/new;->observeOn(Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->mActivity:Lcom/wsw/cospa/base/BaseActivity;

    .line 12
    invoke-static {v1}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v1, Lcom/wsw/cospa/widget/view/OptionsMenuDialog$2;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/widget/view/OptionsMenuDialog$2;-><init>(Lcom/wsw/cospa/widget/view/OptionsMenuDialog;)V

    .line 13
    invoke-interface {v0, v1}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/Observer;)V

    :goto_0
    return-void
.end method

.method private deleteComic()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->shelfBean:Lcom/wsw/cospa/bean/ComicShelfBean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->shelfBean:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/wsw/cospa/utils/DialogTool$new;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u662f\u5426\u5c06 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicInfoBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \u79fb\u9664\u4e66\u67b6\uff1f"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\u6e29\u99a8\u63d0\u793a"

    invoke-direct {v1, v3, v2, v0}, Lcom/wsw/cospa/utils/DialogTool$new;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/wsw/cospa/utils/DialogTool$try;

    const-string v2, "\u786e\u8ba4"

    const-string v3, "\u53d6\u6d88"

    invoke-direct {v0, v2, v3}, Lcom/wsw/cospa/utils/DialogTool$try;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v2, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->mActivity:Lcom/wsw/cospa/base/BaseActivity;

    new-instance v3, Lcom/wsw/cospa/widget/view/OptionsMenuDialog$3;

    invoke-direct {v3, p0}, Lcom/wsw/cospa/widget/view/OptionsMenuDialog$3;-><init>(Lcom/wsw/cospa/widget/view/OptionsMenuDialog;)V

    invoke-static {v2, v1, v0, v3}, Lcom/wsw/cospa/utils/DialogTool;->o(Landroid/app/Activity;Lcom/wsw/cospa/utils/DialogTool$new;Lcom/wsw/cospa/utils/DialogTool$try;Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;)V

    :cond_0
    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/widget/view/OptionsMenuDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->lambda$onClick$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private downloadComic()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->shelfBean:Lcom/wsw/cospa/bean/ComicShelfBean;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Landroid/support/v4/y8;->for()Landroid/support/v4/y8;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->shelfBean:Lcom/wsw/cospa/bean/ComicShelfBean;

    const-string v2, "comic_shelf_key"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/y8;->new(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->mActivity:Lcom/wsw/cospa/base/BaseActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ChapterActivity;->interface(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public static synthetic for(Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-static {p0}, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->lambda$clearShelf$1(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic if(Lcom/wsw/cospa/widget/view/OptionsMenuDialog;Lcom/wsw/cospa/widget/ChangeSourceDialog;Lcom/wsw/cospa/bean/SearchComicBean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->lambda$changeSource$2(Lcom/wsw/cospa/widget/ChangeSourceDialog;Lcom/wsw/cospa/bean/SearchComicBean;)V

    return-void
.end method

.method private initButtomSheet()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->shelfBean:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->tvComicName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicInfoBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    const v1, 0x7f12035e

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 7
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    .line 8
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    .line 9
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private initData()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->ivModeImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->tvClearShelf:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->tvChangeSource:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->tvDownloadComic:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->tvDeleteComic:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->tvManagerComic:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->tvMoveComic:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->shelfBean:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-static {v0}, Lcom/wsw/cospa/dao/do;->i(Lcom/wsw/cospa/bean/ComicShelfBean;)Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->shelfGroupBean:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->shelfBean:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getGroupId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->groupId:J

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->shelfGroupBean:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->getViewId()I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->mShelfMode:I

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->mActivity:Lcom/wsw/cospa/base/BaseActivity;

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "shelf_mode_key"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->mShelfMode:I

    .line 12
    :goto_0
    iget v0, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->mShelfMode:I

    if-ne v0, v2, :cond_1

    .line 13
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->ivModeImage:Landroid/widget/ImageView;

    const v1, 0x7f0800e6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->ivModeImage:Landroid/widget/ImageView;

    const v1, 0x7f0800e7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$changeSource$2(Lcom/wsw/cospa/widget/ChangeSourceDialog;Lcom/wsw/cospa/bean/SearchComicBean;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/wsw/cospa/widget/ChangeSourceDialog;->dismiss()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 3
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->mActivity:Lcom/wsw/cospa/base/BaseActivity;

    const-class v1, Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "isLocal"

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "SearchComic"

    .line 5
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6
    iget-object p2, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->mContext:Lcom/wsw/cospa/fragment/BookShelfFragment;

    invoke-virtual {p2, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static synthetic lambda$clearShelf$1(Lio/reactivex/ObservableEmitter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/do;->throw()V

    .line 2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 3
    invoke-interface {p0}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method private synthetic lambda$onClick$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->clearShelf()V

    return-void
.end method

.method private synthetic lambda$selectBookShelfGroup$3(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;->a()I

    move-result p1

    .line 2
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    .line 3
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->addBookshelf(Lcom/wsw/cospa/bean/ComicShelfGroupBean;)V

    .line 4
    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static synthetic new(Lcom/wsw/cospa/widget/view/OptionsMenuDialog;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->lambda$selectBookShelfGroup$3(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private switchMode()V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->groupId:J

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->shelfGroupBean:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->getViewId()I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->mShelfMode:I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->mActivity:Lcom/wsw/cospa/base/BaseActivity;

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "shelf_mode_key"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->mShelfMode:I

    .line 4
    :goto_0
    iget v0, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->mShelfMode:I

    if-ne v0, v2, :cond_1

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->ivModeImage:Landroid/widget/ImageView;

    const v1, 0x7f0800e7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->mContext:Lcom/wsw/cospa/fragment/BookShelfFragment;

    invoke-virtual {v0}, Lcom/wsw/cospa/fragment/BookShelfFragment;->w()V

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->ivModeImage:Landroid/widget/ImageView;

    const v1, 0x7f0800e6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->mContext:Lcom/wsw/cospa/fragment/BookShelfFragment;

    invoke-virtual {v0}, Lcom/wsw/cospa/fragment/BookShelfFragment;->w()V

    :goto_1
    return-void
.end method


# virtual methods
.method public addBookshelf(Lcom/wsw/cospa/bean/ComicShelfGroupBean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->shelfBean:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-static {v0, p1}, Lcom/wsw/cospa/dao/do;->q(Lcom/wsw/cospa/bean/ComicShelfBean;Lcom/wsw/cospa/bean/ComicShelfGroupBean;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2
    :sswitch_0
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->selectBookShelfGroup()V

    goto :goto_0

    .line 3
    :sswitch_1
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->mContext:Lcom/wsw/cospa/fragment/BookShelfFragment;

    iget-wide v0, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->groupId:J

    invoke-static {p1, v0, v1}, Lcom/wsw/cospa/activity/ComicGroupManagerActivity;->volatile(Landroidx/fragment/app/Fragment;J)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 5
    :sswitch_2
    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->downloadComic()V

    goto :goto_0

    .line 6
    :sswitch_3
    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->deleteComic()V

    goto :goto_0

    .line 7
    :sswitch_4
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->mActivity:Lcom/wsw/cospa/base/BaseActivity;

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "\u6e29\u99a8\u63d0\u793a"

    .line 8
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "\u662f\u5426\u5220\u9664\u6240\u6709\u6f2b\u753b\uff1f"

    .line 9
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f110039

    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Landroid/support/v4/g81;

    invoke-direct {v0, p0}, Landroid/support/v4/g81;-><init>(Lcom/wsw/cospa/widget/view/OptionsMenuDialog;)V

    const-string v1, "\u786e\u5b9a"

    .line 11
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 13
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 14
    :sswitch_5
    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->changeSource()V

    goto :goto_0

    .line 15
    :sswitch_6
    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->switchMode()V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090243 -> :sswitch_6
        0x7f090467 -> :sswitch_5
        0x7f09046c -> :sswitch_4
        0x7f090477 -> :sswitch_3
        0x7f09047d -> :sswitch_2
        0x7f090498 -> :sswitch_1
        0x7f090499 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->mActivity:Lcom/wsw/cospa/base/BaseActivity;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c00ea

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->mView:Landroid/view/View;

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->mView:Landroid/view/View;

    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->case(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 5
    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->initButtomSheet()V

    .line 6
    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->initData()V

    return-void
.end method

.method public selectBookShelfGroup()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/do;->h()Ljava/util/List;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->shelfBean:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getGroupId()J

    move-result-wide v1

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_4

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    const/4 v5, 0x0

    .line 6
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 7
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    .line 8
    iget-object v7, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->shelfGroupBean:Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    if-eqz v7, :cond_0

    .line 9
    invoke-virtual {v7}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->getId()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->getId()Ljava/lang/Long;

    move-result-object v8

    if-eq v7, v8, :cond_1

    .line 10
    invoke-virtual {v6}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->getGroupName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {v6}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->getGroupName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 14
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 15
    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 16
    new-instance v3, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;

    iget-object v5, p0, Lcom/wsw/cospa/widget/view/OptionsMenuDialog;->mActivity:Lcom/wsw/cospa/base/BaseActivity;

    invoke-direct {v3, v5}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;-><init>(Landroid/content/Context;)V

    const-string v5, "\u9009\u62e9\u4e66\u67b6"

    .line 17
    invoke-virtual {v3, v5}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->volatile(Ljava/lang/String;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    .line 18
    new-instance v5, Landroid/support/v4/h81;

    invoke-direct {v5, p0, v3, v4}, Landroid/support/v4/h81;-><init>(Lcom/wsw/cospa/widget/view/OptionsMenuDialog;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;Ljava/util/List;)V

    invoke-virtual {v3, v0, v5}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;->synchronized([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;

    const-wide/16 v4, 0x0

    cmp-long v0, v1, v4

    if-lez v0, :cond_3

    long-to-int v0, v1

    .line 19
    invoke-virtual {v3, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;->b(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;

    .line 20
    :cond_3
    invoke-virtual {v3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->interface()Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;

    :cond_4
    return-void
.end method
