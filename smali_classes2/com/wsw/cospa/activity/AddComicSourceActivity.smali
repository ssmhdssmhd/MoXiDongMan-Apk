.class public Lcom/wsw/cospa/activity/AddComicSourceActivity;
.super Lcom/wsw/cospa/base/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/activity/AddComicSourceActivity$else;
    }
.end annotation


# static fields
.field public static final default:I = 0x64

.field public static final import:Ljava/lang/String; = "title_text"

.field public static final native:Ljava/lang/String; = "comic_source"

.field public static final public:Ljava/lang/String; = "comic_source_position"

.field public static final return:Ljava/lang/String; = "\u6dfb\u52a0\u56fe\u6e90"

.field public static final static:Ljava/lang/String; = "\u7f16\u8f91\u56fe\u6e90"

.field public static final switch:I = 0x65

.field public static final throws:I = 0x66


# instance fields
.field public addComicSeekBarMainScrollThumb:Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090082
    .end annotation
.end field

.field public addComicSeekBarWrapper:Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBarWrapper;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090084
    .end annotation
.end field

.field private break:Lcom/wsw/cospa/widget/KeyboardToolPop;

.field private catch:Z

.field private class:Lcom/wsw/cospa/activity/AddComicSourceActivity$else;

.field private const:I

.field public etBookDelayTime:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09016d
    .end annotation
.end field

.field public etBookSingleThread:Lcom/wsw/cospa/widget/TextInputSpinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09016e
    .end annotation
.end field

.field public etBookSourceRemark:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09016f
    .end annotation
.end field

.field public etBookSourceType:Lcom/wsw/cospa/widget/TextInputSpinner;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090170
    .end annotation
.end field

.field public etBookSourceUrl:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090171
    .end annotation
.end field

.field public etHttpUserAgent:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09016c
    .end annotation
.end field

.field public etRuleBookAuthor:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090181
    .end annotation
.end field

.field public etRuleBookContent:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090182
    .end annotation
.end field

.field public etRuleBookContentDecoder:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090183
    .end annotation
.end field

.field public etRuleBookKind:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090184
    .end annotation
.end field

.field public etRuleBookLastChapter:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090185
    .end annotation
.end field

.field public etRuleBookName:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090186
    .end annotation
.end field

.field public etRuleChapterId:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090187
    .end annotation
.end field

.field public etRuleChapterList:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090188
    .end annotation
.end field

.field public etRuleChapterName:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090189
    .end annotation
.end field

.field public etRuleChapterParentId:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09018a
    .end annotation
.end field

.field public etRuleChapterParentName:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09018b
    .end annotation
.end field

.field public etRuleChapterUrl:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09018c
    .end annotation
.end field

.field public etRuleChapterUrlNext:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09018d
    .end annotation
.end field

.field public etRuleContentUrl:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09018e
    .end annotation
.end field

.field public etRuleContentUrlNext:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09018f
    .end annotation
.end field

.field public etRuleCoverUrl:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090190
    .end annotation
.end field

.field public etRuleFindUrl:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090191
    .end annotation
.end field

.field public etRuleIntroduce:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090192
    .end annotation
.end field

.field public etSearchAuthor:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090193
    .end annotation
.end field

.field public etSearchCover:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090195
    .end annotation
.end field

.field public etSearchKind:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090196
    .end annotation
.end field

.field public etSearchLastChapter:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090197
    .end annotation
.end field

.field public etSearchList:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090198
    .end annotation
.end field

.field public etSearchName:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090199
    .end annotation
.end field

.field public etSearchNoteUrl:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09019a
    .end annotation
.end field

.field public etSearchUrl:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09019b
    .end annotation
.end field

.field public etSearchUrlNext:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09019c
    .end annotation
.end field

.field public etSourceGroup:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09019d
    .end annotation
.end field

.field public etSourceName:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09019e
    .end annotation
.end field

.field public etloginUrlResult:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090177
    .end annotation
.end field

.field private final:I

.field private goto:Ljava/lang/String;

.field public mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090299
    .end annotation
.end field

.field public mScrollView:Landroidx/core/widget/NestedScrollView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902a7
    .end annotation
.end field

.field public mToolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902ab
    .end annotation
.end field

.field public rootView:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09036e
    .end annotation
.end field

.field private super:Z

.field private this:Lcom/wsw/cospa/bean/ComicSourceBean;

.field private throw:Landroid/support/v4/xh1;

.field public tieLoginUrl:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090176
    .end annotation
.end field

.field private while:Lcom/tbruyelle/rxpermissions2/RxPermissions;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/base/BaseActivity;-><init>()V

    const-string v0, "\u6dfb\u52a0\u56fe\u6e90"

    .line 2
    iput-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->goto:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->catch:Z

    return-void
.end method

.method private a()V
    .locals 3

    :try_start_0
    const-string v0, "clipboard"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/support/v4/l22;->while(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    .line 5
    instance-of v2, v1, Lorg/json/JSONArray;

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->volatile(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    instance-of v1, v1, Lorg/json/JSONObject;

    if-eqz v1, :cond_2

    .line 8
    const-class v1, Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ComicSourceBean;

    .line 9
    invoke-virtual {p0, v0}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->b(Lcom/wsw/cospa/bean/ComicSourceBean;)V

    goto :goto_0

    .line 10
    :cond_1
    new-instance v1, Lcom/wsw/cospa/activity/AddComicSourceActivity$new;

    invoke-direct {v1, p0, v0}, Lcom/wsw/cospa/activity/AddComicSourceActivity$new;-><init>(Lcom/wsw/cospa/activity/AddComicSourceActivity;Ljava/lang/String;)V

    invoke-static {v1}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object v0

    sget-object v1, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 11
    invoke-virtual {v0, v1}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object v0

    .line 12
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v1, Lcom/wsw/cospa/activity/AddComicSourceActivity$for;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/activity/AddComicSourceActivity$for;-><init>(Lcom/wsw/cospa/activity/AddComicSourceActivity;)V

    .line 13
    invoke-interface {v0, v1}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/Observer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "\u683c\u5f0f\u9519\u8bef"

    .line 14
    invoke-static {v0}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    new-instance v0, Landroid/support/v4/j0;

    invoke-direct {v0, p0}, Landroid/support/v4/j0;-><init>(Lcom/wsw/cospa/activity/AddComicSourceActivity;)V

    invoke-static {v0}, Landroid/support/v4/jz1;->switch(Lio/reactivex/SingleOnSubscribe;)Landroid/support/v4/jz1;

    move-result-object v0

    sget-object v1, Landroid/support/v4/k0;->do:Landroid/support/v4/k0;

    .line 2
    invoke-virtual {v0, v1}, Landroid/support/v4/jz1;->goto(Lio/reactivex/SingleTransformer;)Landroid/support/v4/jz1;

    move-result-object v0

    .line 3
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/jz1;->new(Lio/reactivex/SingleConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/SingleSubscribeProxy;

    new-instance v1, Lcom/wsw/cospa/activity/AddComicSourceActivity$do;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/activity/AddComicSourceActivity$do;-><init>(Lcom/wsw/cospa/activity/AddComicSourceActivity;)V

    .line 4
    invoke-interface {v0, v1}, Lcom/uber/autodispose/SingleSubscribeProxy;->subscribe(Lio/reactivex/SingleObserver;)V

    return-void
.end method

.method private continue()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->break:Lcom/wsw/cospa/widget/KeyboardToolPop;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->break:Lcom/wsw/cospa/widget/KeyboardToolPop;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public static synthetic default(Lcom/wsw/cospa/activity/AddComicSourceActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->catch:Z

    return p0
.end method

.method private e()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->break:Lcom/wsw/cospa/widget/KeyboardToolPop;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->break:Lcom/wsw/cospa/widget/KeyboardToolPop;

    if-eqz v0, :cond_2

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->rootView:Landroid/widget/RelativeLayout;

    const/16 v2, 0x50

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_2
    return-void
.end method

.method public static synthetic extends(Lcom/wsw/cospa/activity/AddComicSourceActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->catch:Z

    return p1
.end method

.method public static f(Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/16 v2, 0x19

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 5
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 6
    aget v2, v1, v3

    sub-int/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 7
    :cond_1
    aget v0, v1, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :goto_0
    return-void
.end method

.method public static synthetic finally(Lcom/wsw/cospa/activity/AddComicSourceActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->e()V

    return-void
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/activity/AddComicSourceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "title_text"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static h(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/activity/AddComicSourceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "title_text"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x65

    .line 3
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static i(Landroid/app/Activity;Ljava/lang/String;Lcom/wsw/cospa/bean/ComicSourceBean;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/activity/AddComicSourceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "title_text"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "comic_source"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 p1, 0x66

    .line 4
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private synthetic implements(Ljava/lang/Boolean;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->strictfp()Lcom/wsw/cospa/bean/ComicSourceBean;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_share_source_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "yyyy_MM_dd_HH_mm"

    invoke-static {v1, v2, v3}, Landroid/support/v4/l22;->for(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-object v1, Landroid/support/v4/wq;->public:Ljava/lang/String;

    .line 5
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 7
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 8
    :cond_0
    invoke-static {p1}, Lcom/wsw/cospa/utils/package;->do(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 9
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-static {p1}, Landroid/support/v4/fz;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 12
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 13
    new-instance p1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x18

    const-string v3, "android.intent.extra.STREAM"

    const/high16 v4, 0x10000000

    if-lt v1, v2, :cond_1

    .line 16
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".fileprovider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v1, p1, v2}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 18
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 19
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 20
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 22
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_0
    const-string p1, "text/*"

    .line 23
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "\u5206\u4eab\u56fe\u6e90"

    .line 24
    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_2
    const-string p1, "\u8bf7\u5148\u9009\u4e2d\u56fe\u6e90\uff01"

    .line 25
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method public static synthetic import(Lcom/wsw/cospa/activity/AddComicSourceActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->implements(Ljava/lang/Boolean;)V

    return-void
.end method

.method private interface(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_3

    .line 4
    check-cast v0, Landroid/widget/EditText;

    .line 5
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    .line 6
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    .line 7
    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    if-ltz v1, :cond_2

    .line 8
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    if-lt v1, v3, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {v0, v1, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1

    .line 10
    :cond_2
    :goto_0
    invoke-interface {v0, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    :cond_3
    :goto_1
    return-void
.end method

.method private j(Landroid/text/Editable;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private k(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "(^\\s+|\\s+$)"

    const-string v1, ""

    .line 1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic native(Lcom/wsw/cospa/activity/AddComicSourceActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->interface(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic package(Lcom/wsw/cospa/activity/AddComicSourceActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->continue()V

    return-void
.end method

.method private private()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->this:Lcom/wsw/cospa/bean/ComicSourceBean;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-direct {v0}, Lcom/wsw/cospa/bean/ComicSourceBean;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->this:Lcom/wsw/cospa/bean/ComicSourceBean;

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->strictfp()Lcom/wsw/cospa/bean/ComicSourceBean;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->this:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lcom/wsw/cospa/utils/DialogTool$new;

    const-string v1, "\u63d0\u793a"

    const-string v2, ""

    const-string v3, "\u4f60\u8fd8\u672a\u4fdd\u5b58\u4fee\u6539\u7684\u6570\u636e\uff0c\u662f\u5426\u7ee7\u7eed\u7f16\u8f91"

    invoke-direct {v0, v1, v2, v3}, Lcom/wsw/cospa/utils/DialogTool$new;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v1, Lcom/wsw/cospa/utils/DialogTool$try;

    const-string v2, "\u662f"

    const-string v3, "\u5426"

    invoke-direct {v1, v2, v3}, Lcom/wsw/cospa/utils/DialogTool$try;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v2, Lcom/wsw/cospa/activity/AddComicSourceActivity$case;

    invoke-direct {v2, p0}, Lcom/wsw/cospa/activity/AddComicSourceActivity$case;-><init>(Lcom/wsw/cospa/activity/AddComicSourceActivity;)V

    invoke-static {p0, v0, v1, v2}, Lcom/wsw/cospa/utils/DialogTool;->o(Landroid/app/Activity;Lcom/wsw/cospa/utils/DialogTool$new;Lcom/wsw/cospa/utils/DialogTool$try;Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic protected(Lio/reactivex/ObservableEmitter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->strictfp()Lcom/wsw/cospa/bean/ComicSourceBean;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->this:Lcom/wsw/cospa/bean/ComicSourceBean;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->this:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/hw;->goto()Lcom/wsw/cospa/dao/ComicSourceBeanDao;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/wsw/cospa/bean/ComicSourceBean;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->this:Lcom/wsw/cospa/bean/ComicSourceBean;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/AbstractDao;->deleteInTx([Ljava/lang/Object;)V

    .line 4
    :cond_0
    invoke-static {v0}, Lcom/wsw/cospa/model/do;->default(Lcom/wsw/cospa/bean/ComicSourceBean;)V

    .line 5
    invoke-static {}, Lcom/wsw/cospa/model/do;->c()V

    .line 6
    invoke-interface {p1, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 7
    invoke-interface {p1}, Lio/reactivex/Emitter;->onComplete()V

    return-void
.end method

.method public static synthetic public(Lcom/wsw/cospa/activity/AddComicSourceActivity;Lio/reactivex/SingleEmitter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->transient(Lio/reactivex/SingleEmitter;)V

    return-void
.end method

.method public static synthetic return(Lcom/wsw/cospa/activity/AddComicSourceActivity;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->protected(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic static(Lcom/wsw/cospa/activity/AddComicSourceActivity;)Lcom/wsw/cospa/bean/ComicSourceBean;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->strictfp()Lcom/wsw/cospa/bean/ComicSourceBean;

    move-result-object p0

    return-object p0
.end method

.method private strictfp()Lcom/wsw/cospa/bean/ComicSourceBean;
    .locals 2

    .line 1
    new-instance v0, Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-direct {v0}, Lcom/wsw/cospa/bean/ComicSourceBean;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etBookSourceType:Lcom/wsw/cospa/widget/TextInputSpinner;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->j(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->setBookSourceType(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etBookSingleThread:Lcom/wsw/cospa/widget/TextInputSpinner;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->j(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->setBookSingleThread(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etBookDelayTime:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->j(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->setBookDelayTime(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etSourceName:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->j(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->setBookSourceName(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->tieLoginUrl:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->j(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->setLoginUrl(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etloginUrlResult:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->j(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->setLoginUrlResult(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etBookSourceUrl:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->j(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->setBookSourceUrl(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etBookSourceRemark:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->j(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->setSourceRemark(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etSourceGroup:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->j(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->setBookSourceGroup(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleBookAuthor:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->j(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleBookAuthor(Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleBookContent:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->j(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleBookContent(Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleBookContentDecoder:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->j(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleBookContentDecoder(Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleBookName:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->j(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleBookName(Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleChapterList:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->j(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleChapterList(Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleChapterName:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->j(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleChapterName(Ljava/lang/String;)V

    .line 17
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleChapterId:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->j(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleChapterId(Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleChapterUrl:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->j(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleChapterUrl(Ljava/lang/String;)V

    .line 19
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleChapterUrlNext:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->j(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleChapterUrlNext(Ljava/lang/String;)V

    .line 20
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleChapterParentId:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->j(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleChapterParentId(Ljava/lang/String;)V

    .line 21
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleChapterParentName:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->j(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleChapterParentName(Ljava/lang/String;)V

    .line 22
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleContentUrl:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->j(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleContentUrl(Ljava/lang/String;)V

    .line 23
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleCoverUrl:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->j(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleCoverUrl(Ljava/lang/String;)V

    .line 24
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleIntroduce:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->j(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleIntroduce(Ljava/lang/String;)V

    .line 25
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etSearchAuthor:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->j(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleSearchAuthor(Ljava/lang/String;)V

    .line 26
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etSearchCover:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->j(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleSearchCoverUrl(Ljava/lang/String;)V

    .line 27
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etSearchKind:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->j(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleSearchKind(Ljava/lang/String;)V

    .line 28
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etSearchLastChapter:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->j(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleSearchLastChapter(Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etSearchList:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->j(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleSearchList(Ljava/lang/String;)V

    .line 30
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etSearchUrlNext:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->j(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleSearchUrlNext(Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etSearchName:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->j(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleSearchName(Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etSearchNoteUrl:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->j(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleSearchNoteUrl(Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etSearchUrl:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->j(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleSearchUrl(Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etHttpUserAgent:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->j(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->setHttpUserAgent(Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleFindUrl:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->j(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleFindUrl(Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleContentUrlNext:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->j(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleContentUrlNext(Ljava/lang/String;)V

    const-string v1, ""

    .line 37
    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleBookUrlPattern(Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleBookKind:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->j(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleBookKind(Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleBookLastChapter:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->j(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->setRuleBookLastChapter(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 40
    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->setEnable(Z)V

    .line 41
    iget-boolean v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->super:Z

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->setEnable(Z)V

    .line 42
    iget v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->const:I

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->setSerialNumber(I)V

    .line 43
    iget v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->final:I

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicSourceBean;->setWeight(I)V

    return-object v0
.end method

.method public static synthetic switch(Lcom/wsw/cospa/activity/AddComicSourceActivity;)Landroid/support/v4/xh1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->throw:Landroid/support/v4/xh1;

    return-object p0
.end method

.method private synchronized()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etSourceName:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-static {v0}, Landroid/support/v4/j10;->do(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etSourceName:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->j(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etBookSourceUrl:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->j(Landroid/text/Editable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Landroid/support/v4/i0;

    invoke-direct {v0, p0}, Landroid/support/v4/i0;-><init>(Lcom/wsw/cospa/activity/AddComicSourceActivity;)V

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

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

    new-instance v1, Lcom/wsw/cospa/activity/AddComicSourceActivity$try;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/activity/AddComicSourceActivity$try;-><init>(Lcom/wsw/cospa/activity/AddComicSourceActivity;)V

    .line 6
    invoke-interface {v0, v1}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/Observer;)V

    return-void

    :cond_1
    :goto_0
    const-string v0, "\u56fe\u6e90\u540d\u79f0\u548cURL\u4e0d\u80fd\u4e3a\u7a7a"

    .line 7
    invoke-static {v0}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic throws(Lcom/wsw/cospa/activity/AddComicSourceActivity;Lcom/wsw/cospa/bean/ComicSourceBean;)Lcom/wsw/cospa/bean/ComicSourceBean;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->this:Lcom/wsw/cospa/bean/ComicSourceBean;

    return-object p1
.end method

.method private synthetic transient(Lio/reactivex/SingleEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 5
    invoke-direct {p0}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->strictfp()Lcom/wsw/cospa/bean/ComicSourceBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x190

    invoke-static {v0, v1, v1}, Landroid/support/v4/ki1;->do(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 6
    invoke-interface {p1, v0}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-interface {p1, v0}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public abstract(Landroid/app/Activity;F)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Landroid/view/Window;->addFlags(I)V

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public b(Lcom/wsw/cospa/bean/ComicSourceBean;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etBookSourceType:Lcom/wsw/cospa/widget/TextInputSpinner;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSingleThread()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etBookSingleThread:Lcom/wsw/cospa/widget/TextInputSpinner;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookDelayTime()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etBookDelayTime:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etSourceName:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etBookSourceUrl:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etBookSourceRemark:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getSourceRemark()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etSourceGroup:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceGroup()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->tieLoginUrl:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getLoginUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etloginUrlResult:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getLoginUrlResult()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleBookAuthor:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleBookAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleBookContent:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleBookContent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleBookContentDecoder:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleBookContentDecoder()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleBookName:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleBookName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleChapterList:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleChapterList()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleChapterName:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleChapterName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleChapterId:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleChapterId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleChapterUrl:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleChapterUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleChapterUrlNext:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleChapterUrlNext()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleChapterParentId:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleChapterParentId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleChapterParentName:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleChapterParentName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleContentUrl:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleContentUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleCoverUrl:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleCoverUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleIntroduce:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleIntroduce()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etSearchAuthor:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleSearchAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etSearchCover:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleSearchCoverUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etSearchKind:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleSearchKind()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etSearchLastChapter:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleSearchLastChapter()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etSearchList:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleSearchList()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etSearchUrlNext:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleSearchUrlNext()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etSearchName:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleSearchName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etSearchNoteUrl:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleSearchNoteUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etSearchUrl:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleSearchUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etHttpUserAgent:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getHttpUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleContentUrlNext:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleContentUrlNext()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleFindUrl:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleFindUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleBookKind:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleBookKind()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleBookLastChapter:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleBookLastChapter()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public case()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title_text"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->goto:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-static {p0, v1, v0}, Lcom/wsw/cospa/utils/synchronized;->try(Landroidx/appcompat/app/AppCompatActivity;Landroidx/appcompat/widget/Toolbar;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->goto:Ljava/lang/String;

    const-string v1, "\u7f16\u8f91\u56fe\u6e90"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "comic_source"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/ComicSourceBean;

    iput-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->this:Lcom/wsw/cospa/bean/ComicSourceBean;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->getSerialNumber()I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->const:I

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->this:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->getEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->super:Z

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->this:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->getWeight()I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->final:I

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->this:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->b(Lcom/wsw/cospa/bean/ComicSourceBean;)V

    :cond_1
    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->while:Lcom/tbruyelle/rxpermissions2/RxPermissions;

    const-string v1, "android.permission.CAMERA"

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->while([Ljava/lang/String;)Lio/reactivex/new;

    move-result-object v0

    .line 2
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v1, Landroid/support/v4/l0;

    invoke-direct {v1, p0}, Landroid/support/v4/l0;-><init>(Lcom/wsw/cospa/activity/AddComicSourceActivity;)V

    .line 3
    invoke-interface {v0, v1}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/base/BaseActivity;->do:Landroid/support/v4/cq;

    invoke-virtual {v1, v0}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public goto()Landroid/support/v4/m7;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public instanceof()V
    .locals 3

    const-string v0, "clipboard"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->goto:Ljava/lang/String;

    const-string v2, "\u7f16\u8f91\u56fe\u6e90"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->this:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-static {v1}, Lcom/wsw/cospa/utils/package;->do(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Landroid/support/v4/fz;->if(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->this:Lcom/wsw/cospa/bean/ComicSourceBean;

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    :cond_0
    return-void
.end method

.method public new()I
    .locals 1

    const v0, 0x7f0c001e

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0xa

    if-ne p1, v0, :cond_3

    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    const-string p2, "COMIC_CONTENT"

    .line 2
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "ENCRYPT_TYPE"

    .line 3
    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const-string p1, "comic_source"

    .line 4
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/ComicSourceBean;

    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->b(Lcom/wsw/cospa/bean/ComicSourceBean;)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleBookContent:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 p3, 0x2

    if-ne p1, p3, :cond_2

    .line 7
    iget-object p1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleChapterList:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/4 p3, 0x3

    if-ne p1, p3, :cond_3

    .line 8
    iget-object p1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etRuleFindUrl:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->etSourceName:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    invoke-static {v0}, Landroid/support/v4/j10;->do(Landroid/view/View;)V

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->private()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 4
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d000a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x102002c

    if-ne v0, v2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->onBackPressed()V

    return v1

    .line 3
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f090087

    if-ne v0, v2, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->synchronized()V

    goto/16 :goto_2

    .line 5
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f09031f

    if-ne v0, v2, :cond_2

    .line 6
    invoke-direct {p0}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->a()V

    goto/16 :goto_2

    .line 7
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f09011c

    if-ne v0, v2, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->instanceof()V

    goto/16 :goto_2

    .line 9
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f090127

    if-ne v0, v2, :cond_5

    .line 10
    invoke-direct {p0}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->strictfp()Lcom/wsw/cospa/bean/ComicSourceBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\u5f53\u524d\u6e90\u6ca1\u6709\u914d\u7f6e\u57df\u540d\u5730\u5740!"

    .line 11
    invoke-static {v0}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 12
    :cond_4
    invoke-direct {p0}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->strictfp()Lcom/wsw/cospa/bean/ComicSourceBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/wsw/cospa/activity/SourceDebugActivity;->abstract(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 13
    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f090295

    if-ne v0, v2, :cond_6

    .line 14
    invoke-direct {p0}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->strictfp()Lcom/wsw/cospa/bean/ComicSourceBean;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/wsw/cospa/utils/while;->for(Landroid/app/Activity;Lcom/wsw/cospa/bean/ComicSourceBean;)V

    goto/16 :goto_2

    .line 15
    :cond_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0901a9

    if-ne v0, v2, :cond_7

    .line 16
    invoke-direct {p0}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->strictfp()Lcom/wsw/cospa/bean/ComicSourceBean;

    move-result-object v0

    invoke-static {v0}, Lcom/wsw/cospa/utils/default;->case(Lcom/wsw/cospa/bean/ComicSourceBean;)V

    goto/16 :goto_2

    .line 17
    :cond_7
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f09039e

    if-ne v0, v2, :cond_8

    .line 18
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->d()V

    goto/16 :goto_2

    .line 19
    :cond_8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f090360

    if-ne v0, v2, :cond_9

    .line 20
    invoke-direct {p0}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->strictfp()Lcom/wsw/cospa/bean/ComicSourceBean;

    move-result-object v0

    if-eqz v0, :cond_f

    const/4 v1, 0x4

    .line 21
    invoke-static {p0, v1, v0}, Lcom/wsw/cospa/activity/EncryptComicActivity;->return(Landroid/app/Activity;ILcom/wsw/cospa/bean/ComicSourceBean;)V

    goto :goto_2

    .line 22
    :cond_9
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f090163

    const-string v3, ""

    if-ne v0, v2, :cond_b

    .line 23
    invoke-direct {p0}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->strictfp()Lcom/wsw/cospa/bean/ComicSourceBean;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 24
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleBookContent()Ljava/lang/String;

    move-result-object v3

    .line 25
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_a
    move-object v0, v3

    .line 26
    :goto_0
    invoke-static {p0, v1, v3, v0}, Lcom/wsw/cospa/activity/EncryptComicActivity;->static(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 27
    :cond_b
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f090162

    if-ne v0, v2, :cond_d

    .line 28
    invoke-direct {p0}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->strictfp()Lcom/wsw/cospa/bean/ComicSourceBean;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 29
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleChapterList()Ljava/lang/String;

    move-result-object v3

    .line 30
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_c
    move-object v0, v3

    :goto_1
    const/4 v1, 0x2

    .line 31
    invoke-static {p0, v1, v3, v0}, Lcom/wsw/cospa/activity/EncryptComicActivity;->static(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 32
    :cond_d
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f090313

    if-ne v0, v2, :cond_f

    .line 33
    invoke-direct {p0}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->strictfp()Lcom/wsw/cospa/bean/ComicSourceBean;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 34
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 35
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceName()Ljava/lang/String;

    move-result-object v2

    .line 36
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v2, v0, v1}, Lcom/wsw/cospa/activity/WebViewActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_e
    const-string v0, "\u8bf7\u8f93\u5165\u56fe\u6e90\u5730\u5740\u540e\u91cd\u8bd5"

    .line 37
    invoke-static {v0}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    .line 38
    :cond_f
    :goto_2
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

    if-ge v1, v2, :cond_1

    .line 2
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    .line 3
    :sswitch_0
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 4
    :sswitch_1
    iget-object v2, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->goto:Ljava/lang/String;

    const-string v3, "\u7f16\u8f91\u56fe\u6e90"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 6
    :cond_0
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1

    :sswitch_data_0
    .sparse-switch
        0x7f090127 -> :sswitch_1
        0x7f090162 -> :sswitch_0
        0x7f090163 -> :sswitch_0
    .end sparse-switch
.end method

.method public this()V
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/support/v4/p12;->case(Landroid/app/Activity;)V

    .line 2
    new-instance v0, Lcom/tbruyelle/rxpermissions2/RxPermissions;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/RxPermissions;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->while:Lcom/tbruyelle/rxpermissions2/RxPermissions;

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->addComicSeekBarMainScrollThumb:Lcom/h6ah4i/android/widget/verticalseekbar/VerticalSeekBar;

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->mScrollView:Landroidx/core/widget/NestedScrollView;

    invoke-static {v0, v1}, Lcom/wsw/cospa/widget/ScrollBindHelper;->bind(Landroid/widget/SeekBar;Landroidx/core/widget/NestedScrollView;)Lcom/wsw/cospa/widget/ScrollBindHelper;

    .line 5
    new-instance v0, Lcom/wsw/cospa/widget/KeyboardToolPop;

    new-instance v1, Landroid/support/v4/h0;

    invoke-direct {v1, p0}, Landroid/support/v4/h0;-><init>(Lcom/wsw/cospa/activity/AddComicSourceActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/wsw/cospa/widget/KeyboardToolPop;-><init>(Landroid/content/Context;Lcom/wsw/cospa/widget/KeyboardToolPop$OnClickListener;)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->break:Lcom/wsw/cospa/widget/KeyboardToolPop;

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/wsw/cospa/activity/AddComicSourceActivity$else;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/wsw/cospa/activity/AddComicSourceActivity$else;-><init>(Lcom/wsw/cospa/activity/AddComicSourceActivity;Lcom/wsw/cospa/activity/AddComicSourceActivity$do;)V

    iput-object v1, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->class:Lcom/wsw/cospa/activity/AddComicSourceActivity$else;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 7
    new-instance v0, Landroid/support/v4/xh1$do;

    invoke-direct {v0, p0}, Landroid/support/v4/xh1$do;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Landroid/support/v4/xh1$do;->for(I)Landroid/support/v4/xh1$do;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u5bfc\u5165\u56fe\u6e90\uff01"

    .line 9
    invoke-virtual {v0, v1}, Landroid/support/v4/xh1$do;->new(Ljava/lang/CharSequence;)Landroid/support/v4/xh1$do;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/support/v4/xh1$do;->do()Landroid/support/v4/xh1;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/AddComicSourceActivity;->throw:Landroid/support/v4/xh1;

    return-void
.end method

.method public volatile(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/wsw/cospa/model/do;->transient(Ljava/lang/String;)Lio/reactivex/new;

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

    new-instance v0, Lcom/wsw/cospa/activity/AddComicSourceActivity$if;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/activity/AddComicSourceActivity$if;-><init>(Lcom/wsw/cospa/activity/AddComicSourceActivity;)V

    .line 4
    invoke-interface {p1, v0}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
