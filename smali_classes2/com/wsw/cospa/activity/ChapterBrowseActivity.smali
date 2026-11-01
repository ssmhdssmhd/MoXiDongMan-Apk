.class public Lcom/wsw/cospa/activity/ChapterBrowseActivity;
.super Lcom/wsw/cospa/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/contract/ChapterBrowseContract$View;
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;
.implements Lcom/wsw/cospa/widget/view/OnTapGestureListener;
.implements Lcom/xw/repo/BubbleSeekBar$OnProgressChangedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/activity/ChapterBrowseActivity$goto;,
        Lcom/wsw/cospa/activity/ChapterBrowseActivity$else;,
        Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/wsw/cospa/base/BaseActivity<",
        "Lcom/wsw/cospa/presenter/do;",
        ">;",
        "Lcom/wsw/cospa/contract/ChapterBrowseContract$View;",
        "Landroid/view/View$OnClickListener;",
        "Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;",
        "Lcom/wsw/cospa/widget/view/OnTapGestureListener;",
        "Lcom/xw/repo/BubbleSeekBar$OnProgressChangedListener;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
        "Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;",
        "Landroid/view/View$OnTouchListener;"
    }
.end annotation


# static fields
.field private static final synchronized:Ljava/lang/String;


# instance fields
.field private abstract:I

.field public autoPlayLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09009e
    .end annotation
.end field

.field public batteryView:Lcom/wsw/cospa/widget/view/BatteryView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903da
    .end annotation
.end field

.field private break:Lcom/wsw/cospa/bean/ChapterListBean;

.field public bsb_auto:Lcom/xw/repo/BubbleSeekBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900c4
    .end annotation
.end field

.field public buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900d8
    .end annotation
.end field

.field private catch:Lcom/wsw/cospa/bean/ComicShelfBean;

.field private class:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

.field public comic_status_bar:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09010e
    .end annotation
.end field

.field private const:Lcom/wsw/cospa/activity/ChapterBrowseActivity$goto;

.field public contentView:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090115
    .end annotation
.end field

.field private continue:Lcom/wsw/cospa/widget/ChangeSourceDialog;

.field private default:Landroid/graphics/RectF;

.field public error_view:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09016a
    .end annotation
.end field

.field public event_bottom:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901a0
    .end annotation
.end field

.field public event_left:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901a1
    .end annotation
.end field

.field public event_middle:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901a2
    .end annotation
.end field

.field public event_right:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901a3
    .end annotation
.end field

.field public event_top:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901a4
    .end annotation
.end field

.field public event_up_down_middle:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901a5
    .end annotation
.end field

.field private extends:Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

.field private final:I

.field private finally:[I

.field private goto:Landroid/content/Intent;

.field private implements:Landroid/os/Handler;

.field private import:Z

.field private instanceof:Lcom/wsw/cospa/activity/ChapterBrowseActivity$else;

.field private interface:Lcom/wsw/cospa/widget/view/ChapterBottomSheet;

.field public ivAutoPlay:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090233
    .end annotation
.end field

.field public iv_close_left_right_tips:Landroidx/appcompat/widget/AppCompatImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090238
    .end annotation
.end field

.field public iv_close_up_down_tips:Landroidx/appcompat/widget/AppCompatImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090239
    .end annotation
.end field

.field public ll_auto:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090272
    .end annotation
.end field

.field public ll_click_event:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090276
    .end annotation
.end field

.field public ll_left_right_content:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090283
    .end annotation
.end field

.field public ll_left_right_tips:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090284
    .end annotation
.end field

.field public ll_seek_progress:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09028b
    .end annotation
.end field

.field public ll_up_down_content:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09028f
    .end annotation
.end field

.field public ll_up_down_tips:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090290
    .end annotation
.end field

.field public mButtomMenu:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09029a
    .end annotation
.end field

.field public mHeadTitleRight:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901de
    .end annotation
.end field

.field public mIndicatorRoot:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902a1
    .end annotation
.end field

.field public mIndicatorView:Lcom/wang/avi/AVLoadingIndicatorView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902a2
    .end annotation
.end field

.field public mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902a5
    .end annotation
.end field

.field public mSeekBarScroll:Lcom/wsw/cospa/widget/view/ReverseSeekBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902a8
    .end annotation
.end field

.field public mZoomRecyclerView:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902ae
    .end annotation
.end field

.field private native:Z

.field public nextChapter:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902fb
    .end annotation
.end field

.field private package:I

.field public preChapter:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090332
    .end annotation
.end field

.field private private:I

.field private protected:Lcom/wsw/cospa/widget/MenuSettingDialog;

.field private public:Z

.field public return:Z

.field public rootView:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09036e
    .end annotation
.end field

.field public scroll_mode_event_left_right:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090385
    .end annotation
.end field

.field public scroll_mode_event_up_down:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090386
    .end annotation
.end field

.field private static:I

.field public statusBatteryText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903d9
    .end annotation
.end field

.field public statusChapterText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903db
    .end annotation
.end field

.field public statusTimeText:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903dc
    .end annotation
.end field

.field private strictfp:Landroid/support/v4/xh1;

.field private super:I

.field private switch:I

.field private this:Lcom/wsw/cospa/bean/ChapterListBean;

.field private throw:Z

.field private throws:Z

.field private transient:Lcom/wsw/cospa/widget/BrightnessSettingWindow;

.field public tvAutoPlay:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090461
    .end annotation
.end field

.field public tvBrightness:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090463
    .end annotation
.end field

.field public tvCatalog:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090466
    .end annotation
.end field

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

.field public tvSaveBook:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904a9
    .end annotation
.end field

.field public tvSetting:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904b0
    .end annotation
.end field

.field public v_brightness:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904d9
    .end annotation
.end field

.field private volatile:Lcom/gyf/immersionbar/else;

.field private final while:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->synchronized:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/base/BaseActivity;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->final:I

    .line 3
    iput v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->super:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->throw:Z

    const-wide/16 v1, 0x5

    .line 5
    iput-wide v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->while:J

    .line 6
    iput-boolean v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->import:Z

    .line 7
    iput-boolean v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->native:Z

    .line 8
    iput-boolean v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->public:Z

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->return:Z

    .line 10
    iput v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->static:I

    .line 11
    iput v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->switch:I

    .line 12
    iput-boolean v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->throws:Z

    const/4 v1, 0x0

    .line 13
    iput-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->default:Landroid/graphics/RectF;

    .line 14
    iput v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->package:I

    .line 15
    iput v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->private:I

    .line 16
    iput v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->abstract:I

    .line 17
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->implements:Landroid/os/Handler;

    .line 18
    new-instance v0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$else;

    invoke-direct {v0, p0, v1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity$else;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Lcom/wsw/cospa/activity/ChapterBrowseActivity$do;)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->instanceof:Lcom/wsw/cospa/activity/ChapterBrowseActivity$else;

    return-void
.end method

.method public static synthetic A(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->native:Z

    return p0
.end method

.method private synthetic A0(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_mode_normal_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method private A1()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->throw:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->throw:Z

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->ll_auto:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->ll_seek_progress:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->ivAutoPlay:Landroid/widget/ImageView;

    const v2, 0x7f080107

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->instanceof:Lcom/wsw/cospa/activity/ChapterBrowseActivity$else;

    iput v0, v1, Lcom/wsw/cospa/activity/ChapterBrowseActivity$else;->if:I

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->implements:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic B(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->native:Z

    return p1
.end method

.method private synthetic B0(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_mode_normal_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic C(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->import:Z

    return p0
.end method

.method private synthetic C0(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_mode_normal_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method private C1(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfBean;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->setReadMode(Ljava/lang/Integer;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->r1()V

    .line 4
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "read_mode_key"

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/v02;->else(Ljava/lang/String;I)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfBean;

    if-eqz p1, :cond_1

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "_chapter"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_shelf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {}, Landroid/support/v4/y8;->for()Landroid/support/v4/y8;

    move-result-object v1

    iget-object v2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/y8;->new(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    invoke-static {}, Landroid/support/v4/y8;->for()Landroid/support/v4/y8;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getDurChapter()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterList(I)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/y8;->new(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static synthetic D(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->import:Z

    return p1
.end method

.method private synthetic D0(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_mode_normal_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method private D1()V
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/support/v4/j8;->do(Landroid/content/Context;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->statusBatteryText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->batteryView:Lcom/wsw/cospa/widget/view/BatteryView;

    invoke-virtual {v1, v0}, Lcom/wsw/cospa/widget/view/BatteryView;->setPower(I)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->statusTimeText:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "HH:mm"

    invoke-static {v1, v2, v3}, Landroid/support/v4/l22;->for(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic E(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->abstract:I

    return p0
.end method

.method private synthetic E0(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_mode_normal_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic F(Lcom/wsw/cospa/activity/ChapterBrowseActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->package:I

    return p1
.end method

.method private synthetic F0(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_mode_normal_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic G(Lcom/wsw/cospa/activity/ChapterBrowseActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->private:I

    return p1
.end method

.method private synthetic G0(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_mode_normal_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic H(Lcom/wsw/cospa/activity/ChapterBrowseActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->C1(I)V

    return-void
.end method

.method private synthetic H0(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_japan_mode_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic I(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/gyf/immersionbar/else;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->volatile:Lcom/gyf/immersionbar/else;

    return-object p0
.end method

.method private synthetic I0(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_japan_mode_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic J(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Landroid/support/v4/xh1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->strictfp:Landroid/support/v4/xh1;

    return-object p0
.end method

.method private synthetic J0(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_japan_mode_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic K(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->m0()I

    move-result p0

    return p0
.end method

.method private synthetic K0(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_japan_mode_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic L(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/activity/ChapterBrowseActivity$else;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->instanceof:Lcom/wsw/cospa/activity/ChapterBrowseActivity$else;

    return-object p0
.end method

.method private synthetic L0(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_japan_mode_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic M(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->implements:Landroid/os/Handler;

    return-object p0
.end method

.method private synthetic M0(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_japan_mode_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic N(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->p1()V

    return-void
.end method

.method private synthetic N0(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_japan_mode_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic O(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->D1()V

    return-void
.end method

.method private synthetic O0(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->scroll_mode_event_up_down:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_mode_roll_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic P(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/activity/ChapterBrowseActivity$goto;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->const:Lcom/wsw/cospa/activity/ChapterBrowseActivity$goto;

    return-object p0
.end method

.method private synthetic P0(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->scroll_mode_event_up_down:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_mode_roll_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic Q(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Lcom/wsw/cospa/activity/ChapterBrowseActivity$goto;)Lcom/wsw/cospa/activity/ChapterBrowseActivity$goto;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->const:Lcom/wsw/cospa/activity/ChapterBrowseActivity$goto;

    return-object p1
.end method

.method private synthetic Q0(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->scroll_mode_event_up_down:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_mode_roll_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic R(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->t0()Z

    move-result p0

    return p0
.end method

.method private synthetic R0(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->scroll_mode_event_up_down:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_mode_roll_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic S(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->class:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    return-object p0
.end method

.method private synthetic S0(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/base/BaseActivity;->if:Landroid/support/v4/m7;

    check-cast p1, Lcom/wsw/cospa/presenter/do;

    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->this:Lcom/wsw/cospa/bean/ChapterListBean;

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/presenter/do;->final(Lcom/wsw/cospa/bean/ChapterListBean;)V

    return-void
.end method

.method public static synthetic T(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->final:I

    return p0
.end method

.method private synthetic T0(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/base/BaseActivity;->if:Landroid/support/v4/m7;

    check-cast p1, Lcom/wsw/cospa/presenter/do;

    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->this:Lcom/wsw/cospa/bean/ChapterListBean;

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/presenter/do;->throw(Lcom/wsw/cospa/bean/ChapterListBean;)V

    return-void
.end method

.method public static synthetic U(Lcom/wsw/cospa/activity/ChapterBrowseActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->final:I

    return p1
.end method

.method private synthetic U0(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/base/BaseActivity;->if:Landroid/support/v4/m7;

    check-cast p1, Lcom/wsw/cospa/presenter/do;

    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->this:Lcom/wsw/cospa/bean/ChapterListBean;

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/presenter/do;->super(Lcom/wsw/cospa/bean/ChapterListBean;)V

    return-void
.end method

.method public static synthetic V(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/bean/ChapterListBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->this:Lcom/wsw/cospa/bean/ChapterListBean;

    return-object p0
.end method

.method private synthetic V0(ILandroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object p2

    .line 3
    invoke-virtual {p2, p0}, Lcc/shinichi/library/do;->abstract(Landroid/content/Context;)Lcc/shinichi/library/do;

    move-result-object p2

    .line 4
    invoke-virtual {p2, p1}, Lcc/shinichi/library/do;->a(I)Lcc/shinichi/library/do;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->i0()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcc/shinichi/library/do;->instanceof(Ljava/util/List;)Lcc/shinichi/library/do;

    move-result-object p1

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, p2}, Lcc/shinichi/library/do;->strictfp(Z)Lcc/shinichi/library/do;

    move-result-object p1

    const/4 p2, 0x1

    .line 7
    invoke-virtual {p1, p2}, Lcc/shinichi/library/do;->volatile(Z)Lcc/shinichi/library/do;

    move-result-object p1

    const/16 p2, 0x12c

    .line 8
    invoke-virtual {p1, p2}, Lcc/shinichi/library/do;->k(I)Lcc/shinichi/library/do;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcc/shinichi/library/do;->l()V

    return-void
.end method

.method public static synthetic W(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Lcom/wsw/cospa/bean/ChapterListBean;)Lcom/wsw/cospa/bean/ChapterListBean;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->this:Lcom/wsw/cospa/bean/ChapterListBean;

    return-object p1
.end method

.method private synthetic W0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->s1()V

    return-void
.end method

.method public static synthetic X(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->public:Z

    return p0
.end method

.method private synthetic X0(Lcom/wsw/cospa/bean/ComicContentImgBean;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    invoke-static {p0}, Landroid/support/v4/ed1;->do(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-static {p0, p1}, Lcom/wsw/cospa/utils/this;->class(Landroid/content/Context;Lcom/wsw/cospa/bean/ComicContentImgBean;)V

    goto :goto_0

    :cond_0
    const-string p1, "\u8bf7\u53bb\u8bbe\u7f6e\u6253\u5f00\u6587\u4ef6\u8bfb\u5199\u6743\u9650"

    .line 4
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static synthetic Y(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->public:Z

    return p1
.end method

.method private synthetic Y0(Lcom/wsw/cospa/bean/ComicContentImgBean;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    const-string p2, "clipboard"

    .line 2
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ClipboardManager;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getImgurl()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getImgurl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getImgurl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 5
    invoke-virtual {p2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const-string p1, "\u590d\u5236\u6210\u529f"

    .line 6
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic Z(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfBean;

    return-object p0
.end method

.method private synthetic Z0(Lcom/wsw/cospa/bean/SearchComicBean;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->continue:Lcom/wsw/cospa/widget/ChangeSourceDialog;

    invoke-virtual {v0}, Lcom/wsw/cospa/widget/ChangeSourceDialog;->dismiss()V

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->finish()V

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, v0, p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->R(Landroid/content/Context;ZLcom/wsw/cospa/bean/SearchComicBean;)V

    return-void
.end method

.method public static synthetic a(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->J0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a0(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/bean/ChapterListBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->break:Lcom/wsw/cospa/bean/ChapterListBean;

    return-object p0
.end method

.method private synthetic a1(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_status_bar_key"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->volatile:Lcom/gyf/immersionbar/else;

    sget-object v0, Lcom/gyf/immersionbar/if;->FLAG_HIDE_STATUS_BAR:Lcom/gyf/immersionbar/if;

    invoke-virtual {p1, v0}, Lcom/gyf/immersionbar/else;->Z(Lcom/gyf/immersionbar/if;)Lcom/gyf/immersionbar/else;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gyf/immersionbar/else;->b0()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->volatile:Lcom/gyf/immersionbar/else;

    sget-object v0, Lcom/gyf/immersionbar/if;->FLAG_SHOW_BAR:Lcom/gyf/immersionbar/if;

    invoke-virtual {p1, v0}, Lcom/gyf/immersionbar/else;->Z(Lcom/gyf/immersionbar/if;)Lcom/gyf/immersionbar/else;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gyf/immersionbar/else;->b0()V

    :goto_0
    return-void
.end method

.method public static synthetic abstract(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Lcom/wsw/cospa/bean/ComicContentImgBean;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->Y0(Lcom/wsw/cospa/bean/ComicContentImgBean;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->U0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b0(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Lcom/wsw/cospa/bean/ChapterListBean;)Lcom/wsw/cospa/bean/ChapterListBean;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->break:Lcom/wsw/cospa/bean/ChapterListBean;

    return-object p1
.end method

.method private synthetic b1()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/support/v4/hm1;->case()Landroid/support/v4/hm1;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Landroid/support/v4/hm1;->if([Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Landroid/support/v4/im1;->case()Landroid/support/v4/im1;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfBean;

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/support/v4/im1;->if([Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic c(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->z0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic c1(Lcom/wsw/cospa/bean/ComicShelfBean;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->setFinalDate(Ljava/lang/Long;)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfBean;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->setHasUpdate(Ljava/lang/Boolean;)V

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-static {p1}, Lcom/wsw/cospa/dao/do;->n(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    .line 4
    new-instance p1, Landroid/support/v4/si;

    invoke-direct {p1, p0}, Landroid/support/v4/si;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V

    invoke-static {p1}, Landroid/support/v4/wi0;->try(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Landroid/support/v4/im1;->case()Landroid/support/v4/im1;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfBean;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/support/v4/im1;->if([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static synthetic continue(Lcom/wsw/cospa/activity/ChapterBrowseActivity;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->V0(ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic d(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->k1(Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic d1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wsw/cospa/dao/do;->finally(Ljava/lang/String;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/wsw/cospa/utils/case;->this()Lcom/wsw/cospa/utils/case;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/utils/case;->throw()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroid/support/v4/wi;

    invoke-direct {v2, p0, v0}, Landroid/support/v4/wi;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Lcom/wsw/cospa/bean/ComicShelfBean;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic default(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->Q0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->g1(Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic e1()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/support/v4/hm1;->case()Landroid/support/v4/hm1;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Landroid/support/v4/hm1;->if([Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Landroid/support/v4/im1;->case()Landroid/support/v4/im1;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfBean;

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/support/v4/im1;->if([Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic extends(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->E0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->L0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic f1(Lio/reactivex/ObservableEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->setFinalDate(Ljava/lang/Long;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfBean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->setHasUpdate(Ljava/lang/Boolean;)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-static {v0}, Lcom/wsw/cospa/dao/do;->n(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    .line 4
    new-instance v0, Landroid/support/v4/vi;

    invoke-direct {v0, p0}, Landroid/support/v4/vi;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V

    invoke-static {v0}, Landroid/support/v4/wi0;->try(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic finally(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Lcom/wsw/cospa/bean/ComicContentImgBean;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->X0(Lcom/wsw/cospa/bean/ComicContentImgBean;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic g(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->O0(Landroid/view/View;)V

    return-void
.end method

.method public static g0(II)I
    .locals 0

    and-int/lit16 p0, p0, 0xfff

    shl-int/lit8 p1, p1, 0xc

    and-int/lit16 p1, p1, -0x1000

    or-int/2addr p0, p1

    return p0
.end method

.method private synthetic g1(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->r0(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    return-void
.end method

.method public static synthetic h(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->d1()V

    return-void
.end method

.method public static h0(Landroid/app/Activity;)V
    .locals 4

    .line 1
    :try_start_0
    const-class v0, Landroid/app/Activity;

    const-string v1, "convertFromTranslucent"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v2, [Ljava/lang/Object;

    .line 3
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private synthetic h1(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;->a()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Landroid/support/v4/ki;

    invoke-direct {p1, p0}, Landroid/support/v4/ki;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V

    invoke-static {p1}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p1

    .line 3
    invoke-static {}, Lio/reactivex/schedulers/do;->new()Lio/reactivex/try;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/new;->subscribeOn(Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object p1

    .line 4
    invoke-static {}, Lio/reactivex/android/schedulers/do;->for()Lio/reactivex/try;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/new;->subscribeOn(Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object p1

    .line 5
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance p2, Landroid/support/v4/pi;

    invoke-direct {p2, p0}, Landroid/support/v4/pi;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V

    .line 6
    invoke-interface {p1, p2}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 7
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    .line 8
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->c0(Lcom/wsw/cospa/bean/ComicShelfGroupBean;)V

    .line 9
    :goto_0
    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static synthetic i(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->P0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic i1()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/support/v4/hm1;->case()Landroid/support/v4/hm1;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Landroid/support/v4/hm1;->if([Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Landroid/support/v4/im1;->case()Landroid/support/v4/im1;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfBean;

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/support/v4/im1;->if([Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic implements(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->N0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic import(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->u0()V

    return-void
.end method

.method public static synthetic instanceof(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->T0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic interface(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->b1()V

    return-void
.end method

.method public static synthetic j(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->S0(Landroid/view/View;)V

    return-void
.end method

.method private j0(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->B1()V

    goto :goto_0

    .line 2
    :cond_1
    iget-boolean p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->native:Z

    if-nez p1, :cond_5

    .line 3
    invoke-direct {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->l1()V

    .line 4
    iput-boolean v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->native:Z

    goto :goto_0

    .line 5
    :cond_2
    iget-boolean p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->import:Z

    if-nez p1, :cond_5

    .line 6
    invoke-direct {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->m1()V

    .line 7
    iput-boolean v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->import:Z

    goto :goto_0

    .line 8
    :cond_3
    invoke-direct {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->p1()V

    goto :goto_0

    .line 9
    :cond_4
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->q1()V

    :cond_5
    :goto_0
    return-void
.end method

.method private synthetic j1(Lio/reactivex/ObservableEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->setFinalDate(Ljava/lang/Long;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfBean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->setHasUpdate(Ljava/lang/Boolean;)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-static {v0}, Lcom/wsw/cospa/dao/do;->n(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    .line 4
    new-instance v0, Landroid/support/v4/ri;

    invoke-direct {v0, p0}, Landroid/support/v4/ri;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V

    invoke-static {v0}, Landroid/support/v4/wi0;->try(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic k(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->a1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private synthetic k1(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->r0(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    return-void
.end method

.method public static synthetic l(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->A0(Landroid/view/View;)V

    return-void
.end method

.method private l1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/base/BaseActivity;->if:Landroid/support/v4/m7;

    check-cast v0, Lcom/wsw/cospa/presenter/do;

    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->this:Lcom/wsw/cospa/bean/ChapterListBean;

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/presenter/do;->catch(Lcom/wsw/cospa/bean/ChapterListBean;)V

    return-void
.end method

.method public static synthetic m(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->R0(Landroid/view/View;)V

    return-void
.end method

.method private m0()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getReadMode()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getReadMode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getReadMode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "read_mode_key"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    return v0
.end method

.method private m1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/base/BaseActivity;->if:Landroid/support/v4/m7;

    check-cast v0, Lcom/wsw/cospa/presenter/do;

    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->this:Lcom/wsw/cospa/bean/ChapterListBean;

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/presenter/do;->class(Lcom/wsw/cospa/bean/ChapterListBean;)V

    return-void
.end method

.method public static synthetic n(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->j1(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method private n0(Lcom/wsw/cospa/bean/ComicShelfBean;)I
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getReadMode()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getReadMode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getReadMode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "read_mode_key"

    invoke-virtual {p1, v1, v0}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result p1

    :goto_0
    return p1
.end method

.method public static synthetic native(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Lcom/wsw/cospa/bean/SearchComicBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->Z0(Lcom/wsw/cospa/bean/SearchComicBean;)V

    return-void
.end method

.method public static synthetic o(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->W0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private o0(FF)I
    .locals 7

    .line 1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 3
    invoke-direct {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->m0()I

    move-result v1

    .line 4
    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    .line 5
    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    div-float/2addr v0, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v1, v5, :cond_2

    cmpg-float p1, p2, v0

    if-gez p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->finally:[I

    aget p1, p1, v4

    return p1

    :cond_0
    cmpl-float p1, p2, v0

    if-lez p1, :cond_1

    mul-float p1, v0, v6

    cmpg-float p1, p2, p1

    if-gez p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->finally:[I

    aget p1, p1, v5

    return p1

    :cond_1
    mul-float v0, v0, v6

    cmpl-float p1, p2, v0

    if-lez p1, :cond_8

    .line 8
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->finally:[I

    aget p1, p1, v3

    return p1

    :cond_2
    const/4 p2, 0x3

    if-ne v1, p2, :cond_5

    cmpg-float p2, p1, v2

    if-gez p2, :cond_3

    .line 9
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->finally:[I

    aget p1, p1, v3

    return p1

    :cond_3
    cmpl-float p2, p1, v2

    if-lez p2, :cond_4

    mul-float p2, v2, v6

    cmpg-float p2, p1, p2

    if-gez p2, :cond_4

    .line 10
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->finally:[I

    aget p1, p1, v5

    return p1

    :cond_4
    mul-float v2, v2, v6

    cmpl-float p1, p1, v2

    if-lez p1, :cond_8

    .line 11
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->finally:[I

    aget p1, p1, v4

    return p1

    :cond_5
    cmpg-float p2, p1, v2

    if-gez p2, :cond_6

    .line 12
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->finally:[I

    aget p1, p1, v4

    return p1

    :cond_6
    cmpl-float p2, p1, v2

    if-lez p2, :cond_7

    mul-float p2, v2, v6

    cmpg-float p2, p1, p2

    if-gez p2, :cond_7

    .line 13
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->finally:[I

    aget p1, p1, v5

    return p1

    :cond_7
    mul-float v2, v2, v6

    cmpl-float p1, p1, v2

    if-lez p1, :cond_8

    .line 14
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->finally:[I

    aget p1, p1, v3

    return p1

    :cond_8
    return v4
.end method

.method public static synthetic p(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->e1()V

    return-void
.end method

.method private p1()V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 3
    invoke-direct {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->m0()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->extends:Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    iget-object v3, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->class:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    invoke-virtual {v3}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v2

    if-ne v1, v3, :cond_0

    iget-boolean v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->native:Z

    if-nez v1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/base/BaseActivity;->if:Landroid/support/v4/m7;

    check-cast v0, Lcom/wsw/cospa/presenter/do;

    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->break:Lcom/wsw/cospa/bean/ChapterListBean;

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/presenter/do;->catch(Lcom/wsw/cospa/bean/ChapterListBean;)V

    .line 6
    iput-boolean v2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->native:Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mZoomRecyclerView:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    .line 8
    iget v0, v0, Landroid/graphics/Point;->y:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->k0()I

    move-result v0

    .line 10
    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->class:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    invoke-virtual {v1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_2

    iget-boolean v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->native:Z

    if-nez v1, :cond_2

    .line 11
    invoke-direct {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->l1()V

    .line 12
    iput-boolean v2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->native:Z

    goto :goto_0

    .line 13
    :cond_2
    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    if-eqz v1, :cond_3

    add-int/2addr v0, v2

    .line 14
    invoke-virtual {v1, v0}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->smoothScrollToPosition(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic package(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->y0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic private(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->f1(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic protected(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->M0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic public(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->I0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->B0(Landroid/view/View;)V

    return-void
.end method

.method private q0()V
    .locals 11

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->m0()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->protected:Lcom/wsw/cospa/widget/MenuSettingDialog;

    invoke-virtual {v1}, Lcom/wsw/cospa/widget/MenuSettingDialog;->initClickTips()V

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v6

    const-string v7, "show_mode_roll_click_tips"

    invoke-virtual {v6, v7, v5}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v6

    .line 4
    iget-object v7, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->scroll_mode_event_up_down:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object v7, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object v7, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->ll_click_event:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/support/v4/ai;

    invoke-direct {v8, p0}, Landroid/support/v4/ai;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v7, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->iv_close_up_down_tips:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v8, Landroid/support/v4/bi;

    invoke-direct {v8, p0}, Landroid/support/v4/bi;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v7, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->ll_up_down_tips:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/support/v4/bj;

    invoke-direct {v8, p0}, Landroid/support/v4/bj;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v7, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->ll_up_down_content:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/support/v4/ei;

    invoke-direct {v8, p0}, Landroid/support/v4/ei;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v7, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->event_top:Landroid/widget/Button;

    new-instance v8, Landroid/support/v4/uh;

    invoke-direct {v8, p0}, Landroid/support/v4/uh;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v7, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->event_up_down_middle:Landroid/widget/Button;

    new-instance v8, Landroid/support/v4/nh;

    invoke-direct {v8, p0}, Landroid/support/v4/nh;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v7, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->event_bottom:Landroid/widget/Button;

    new-instance v8, Landroid/support/v4/yh;

    invoke-direct {v8, p0}, Landroid/support/v4/yh;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_0
    const-string v6, "\u4e0a\u4e00\u9875"

    const-string v7, "\u4e0b\u4e00\u9875"

    if-ne v0, v2, :cond_1

    .line 13
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v8

    const-string v9, "show_mode_normal_click_tips"

    invoke-virtual {v8, v9, v5}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v8

    .line 14
    iget-object v9, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->scroll_mode_event_up_down:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 15
    iget-object v9, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 16
    iget-object v9, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->ll_click_event:Landroid/widget/LinearLayout;

    new-instance v10, Landroid/support/v4/di;

    invoke-direct {v10, p0}, Landroid/support/v4/di;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object v9, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->iv_close_left_right_tips:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v10, Landroid/support/v4/fi;

    invoke-direct {v10, p0}, Landroid/support/v4/fi;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object v9, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->ll_left_right_tips:Landroid/widget/LinearLayout;

    new-instance v10, Landroid/support/v4/gi;

    invoke-direct {v10, p0}, Landroid/support/v4/gi;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object v9, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->ll_left_right_content:Landroid/widget/LinearLayout;

    new-instance v10, Landroid/support/v4/oh;

    invoke-direct {v10, p0}, Landroid/support/v4/oh;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object v9, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->event_left:Landroid/widget/Button;

    new-instance v10, Landroid/support/v4/cj;

    invoke-direct {v10, p0}, Landroid/support/v4/cj;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object v9, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->event_middle:Landroid/widget/Button;

    new-instance v10, Landroid/support/v4/ph;

    invoke-direct {v10, p0}, Landroid/support/v4/ph;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object v9, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->event_right:Landroid/widget/Button;

    new-instance v10, Landroid/support/v4/rh;

    invoke-direct {v10, p0}, Landroid/support/v4/rh;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object v9, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->event_right:Landroid/widget/Button;

    invoke-virtual {v9, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v7, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->event_left:Landroid/widget/Button;

    invoke-virtual {v7, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    move v6, v8

    goto :goto_1

    :cond_1
    if-ne v0, v1, :cond_2

    .line 25
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v8

    const-string v9, "show_japan_mode_click_tips"

    invoke-virtual {v8, v9, v5}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v8

    .line 26
    iget-object v9, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->scroll_mode_event_up_down:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 27
    iget-object v9, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 28
    iget-object v9, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->ll_click_event:Landroid/widget/LinearLayout;

    new-instance v10, Landroid/support/v4/aj;

    invoke-direct {v10, p0}, Landroid/support/v4/aj;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object v9, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->iv_close_left_right_tips:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v10, Landroid/support/v4/zi;

    invoke-direct {v10, p0}, Landroid/support/v4/zi;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object v9, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->ll_left_right_tips:Landroid/widget/LinearLayout;

    new-instance v10, Landroid/support/v4/vh;

    invoke-direct {v10, p0}, Landroid/support/v4/vh;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object v9, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->ll_left_right_content:Landroid/widget/LinearLayout;

    new-instance v10, Landroid/support/v4/hi;

    invoke-direct {v10, p0}, Landroid/support/v4/hi;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v9, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->event_left:Landroid/widget/Button;

    new-instance v10, Landroid/support/v4/zh;

    invoke-direct {v10, p0}, Landroid/support/v4/zh;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object v9, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->event_middle:Landroid/widget/Button;

    new-instance v10, Landroid/support/v4/qh;

    invoke-direct {v10, p0}, Landroid/support/v4/qh;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v9, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->event_right:Landroid/widget/Button;

    new-instance v10, Landroid/support/v4/sh;

    invoke-direct {v10, p0}, Landroid/support/v4/sh;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object v9, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->event_right:Landroid/widget/Button;

    invoke-virtual {v9, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v6, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->event_left:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/4 v6, 0x1

    :goto_1
    if-eqz v6, :cond_3

    .line 37
    iget-object v6, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 38
    :cond_3
    iget-object v6, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    const-string v6, "double_click_zoom_key"

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v0, v5, :cond_4

    .line 39
    iget-object v8, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mZoomRecyclerView:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 40
    iget-object v8, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 41
    iget-object v3, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mZoomRecyclerView:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    invoke-virtual {v3, v7}, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->setScaleFactor(F)V

    .line 42
    iget-object v3, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mZoomRecyclerView:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v8

    invoke-virtual {v8, v6, v5}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v3, v8}, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->setDoubleTap(Z)V

    .line 43
    iget-object v3, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mZoomRecyclerView:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    invoke-virtual {v3, p0}, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->setTapListenerListener(Lcom/wsw/cospa/widget/view/OnTapGestureListener;)V

    goto :goto_4

    .line 44
    :cond_4
    iget-object v8, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mZoomRecyclerView:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 45
    iget-object v3, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 46
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v3

    const-string v8, "quick_page_key"

    invoke-virtual {v3, v8, v4}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 47
    iget-object v3, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    const v8, 0x358637bd    # 1.0E-6f

    invoke-virtual {v3, v8}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->setScrollSpeed(F)V

    goto :goto_3

    .line 48
    :cond_5
    iget-object v3, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    const v8, 0x3df5c28f    # 0.12f

    invoke-virtual {v3, v8}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->setScrollSpeed(F)V

    .line 49
    :goto_3
    iget-object v3, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    const v8, 0x3e4ccccc    # 0.19999999f

    invoke-virtual {v3, v8}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->setTriggerOffset(F)V

    .line 50
    iget-object v3, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    invoke-virtual {v3, v7}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->setScaleFactor(F)V

    .line 51
    iget-object v3, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v8

    invoke-virtual {v8, v6, v5}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v3, v8}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->setDoubleTap(Z)V

    .line 52
    iget-object v3, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    invoke-virtual {v3, p0}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->setTapListenerListener(Lcom/wsw/cospa/widget/view/OnTapGestureListener;)V

    .line 53
    :goto_4
    new-instance v3, Lcom/wsw/cospa/activity/ChapterBrowseActivity$do;

    invoke-direct {v3, p0, p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity$do;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->extends:Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    .line 54
    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->setRecycleChildrenOnDetach(Z)V

    const/4 v3, 0x0

    if-ne v0, v2, :cond_6

    .line 55
    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->extends:Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 56
    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    iget-object v2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->extends:Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    invoke-virtual {v1, v2}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 57
    new-instance v1, Landroidx/recyclerview/widget/PagerSnapHelper;

    invoke-direct {v1}, Landroidx/recyclerview/widget/PagerSnapHelper;-><init>()V

    .line 58
    iget-object v2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;)V

    .line 59
    iget-object v2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_5

    :cond_6
    if-ne v0, v1, :cond_7

    .line 60
    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->extends:Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 61
    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->extends:Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 62
    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    iget-object v2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->extends:Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    invoke-virtual {v1, v2}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 63
    new-instance v1, Landroidx/recyclerview/widget/PagerSnapHelper;

    invoke-direct {v1}, Landroidx/recyclerview/widget/PagerSnapHelper;-><init>()V

    .line 64
    iget-object v2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;)V

    .line 65
    iget-object v2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_5

    .line 66
    :cond_7
    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->extends:Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 67
    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mZoomRecyclerView:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    iget-object v2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->extends:Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 68
    :goto_5
    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->protected:Lcom/wsw/cospa/widget/MenuSettingDialog;

    invoke-virtual {v1, v0}, Lcom/wsw/cospa/widget/MenuSettingDialog;->updateReadModeColor(I)V

    .line 69
    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->protected:Lcom/wsw/cospa/widget/MenuSettingDialog;

    new-instance v2, Lcom/wsw/cospa/activity/ChapterBrowseActivity$if;

    invoke-direct {v2, p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity$if;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V

    invoke-virtual {v1, v2}, Lcom/wsw/cospa/widget/MenuSettingDialog;->setOnCallbackListener(Lcom/wsw/cospa/widget/MenuSettingDialog$onCallbackListener;)V

    .line 70
    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->transient:Lcom/wsw/cospa/widget/BrightnessSettingWindow;

    new-instance v2, Lcom/wsw/cospa/activity/ChapterBrowseActivity$for;

    invoke-direct {v2, p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity$for;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V

    invoke-virtual {v1, v2}, Lcom/wsw/cospa/widget/BrightnessSettingWindow;->setOnBrightnessSettingListener(Lcom/wsw/cospa/widget/BrightnessSettingWindow$onBrightnessSettingListener;)V

    if-ne v0, v5, :cond_8

    .line 71
    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mZoomRecyclerView:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    goto :goto_6

    .line 72
    :cond_8
    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    .line 73
    :goto_6
    new-instance v2, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    const/16 v3, 0xa

    .line 74
    invoke-virtual {v2, v4, v3}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 75
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    .line 76
    iget-object v2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicShelfBean;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wsw/cospa/utils/while;->goto(Ljava/lang/String;)Lcom/wsw/cospa/bean/ComicSourceBean;

    move-result-object v2

    .line 77
    new-instance v8, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    invoke-direct {v8, p0, v0, v2}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;-><init>(Landroid/content/Context;ILcom/wsw/cospa/bean/ComicSourceBean;)V

    iput-object v8, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->class:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    .line 78
    invoke-virtual {v8, p0}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->setTapGestureListener(Lcom/wsw/cospa/widget/view/OnTapGestureListener;)V

    .line 79
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->class:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v2

    const-string v8, "pref_reader_paging"

    invoke-virtual {v2, v8, v4}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->r(Z)V

    .line 80
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->class:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v2

    const-string v8, "pref_reader_paging_reverse"

    invoke-virtual {v2, v8, v4}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->s(Z)V

    .line 81
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->class:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v2

    const-string v8, "pref_reader_white_edge"

    invoke-virtual {v2, v8, v4}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->u(Z)V

    .line 82
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->class:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    invoke-virtual {v0, v7}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->t(F)V

    .line 83
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->class:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v2

    invoke-virtual {v2, v6, v5}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->q(Z)V

    .line 84
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->class:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    invoke-virtual {v0, v5}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->o(Z)V

    .line 85
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 86
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 87
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 88
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->class:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public static synthetic r(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->C0(Landroid/view/View;)V

    return-void
.end method

.method private r0(Lcom/wsw/cospa/bean/ComicShelfBean;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AutoDispose"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wsw/cospa/dao/do;->extends(Ljava/lang/String;)Lio/reactivex/new;

    move-result-object v0

    sget-object v1, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 2
    invoke-virtual {v0, v1}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object v0

    new-instance v1, Lcom/wsw/cospa/activity/ChapterBrowseActivity$new;

    invoke-direct {v1, p0, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity$new;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Lcom/wsw/cospa/bean/ComicShelfBean;)V

    .line 3
    invoke-virtual {v0, v1}, Lio/reactivex/new;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->tvSaveBook:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public static synthetic return(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->i1()V

    return-void
.end method

.method public static synthetic s(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->h1(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic static(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->w0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic strictfp(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->D0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic switch(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Lcom/wsw/cospa/bean/ComicShelfGroupBean;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->v0(Lcom/wsw/cospa/bean/ComicShelfGroupBean;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic synchronized(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->x0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic t(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Lcom/wsw/cospa/bean/ComicShelfBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->c1(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    return-void
.end method

.method private t0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->class:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    invoke-virtual {v0}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->extends:Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    .line 3
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->extends:Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    .line 4
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v2

    sub-int/2addr v0, v1

    if-eq v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static synthetic throws(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->H0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic transient(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->G0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->K0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic u0()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/support/v4/im1;->case()Landroid/support/v4/im1;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfBean;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/support/v4/im1;->if([Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Landroid/support/v4/hm1;->case()Landroid/support/v4/hm1;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/hm1;->if([Ljava/lang/Object;)V

    return-void
.end method

.method public static u1(I)[I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    and-int/lit16 v1, p0, 0xfff

    const/4 v2, 0x0

    aput v1, v0, v2

    and-int/lit16 p0, p0, -0x1000

    shr-int/lit8 p0, p0, 0xc

    const/4 v1, 0x1

    aput p0, v0, v1

    return-object v0
.end method

.method public static synthetic v(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/widget/view/ChapterBottomSheet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->interface:Lcom/wsw/cospa/widget/view/ChapterBottomSheet;

    return-object p0
.end method

.method private synthetic v0(Lcom/wsw/cospa/bean/ComicShelfGroupBean;Lio/reactivex/ObservableEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/wsw/cospa/bean/ComicShelfBean;->setGroupId(J)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->setGroupBean(Lcom/wsw/cospa/bean/ComicShelfGroupBean;)V

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->setFinalDate(Ljava/lang/Long;)V

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfBean;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->setHasUpdate(Ljava/lang/Boolean;)V

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-static {p1}, Lcom/wsw/cospa/dao/do;->n(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    .line 6
    new-instance p1, Landroid/support/v4/qi;

    invoke-direct {p1, p0}, Landroid/support/v4/qi;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V

    invoke-static {p1}, Landroid/support/v4/wi0;->try(Ljava/lang/Runnable;)V

    .line 7
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic volatile(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->F0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/widget/MenuSettingDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->protected:Lcom/wsw/cospa/widget/MenuSettingDialog;

    return-object p0
.end method

.method private synthetic w0(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->r0(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    return-void
.end method

.method public static w1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "chapter_list_key"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "comic_shelf_key"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic x(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->extends:Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    return-object p0
.end method

.method private synthetic x0(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->scroll_mode_event_up_down:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_mode_roll_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method public static x1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "chapter_list_key"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "comic_shelf_key"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "POSITION"

    .line 4
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic y(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->super:I

    return p0
.end method

.method private synthetic y0(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->scroll_mode_event_up_down:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_mode_roll_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method public static y1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "chapter_list_key"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "comic_shelf_key"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "POSITION"

    .line 4
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x20000000

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic z(Lcom/wsw/cospa/activity/ChapterBrowseActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->super:I

    return p1
.end method

.method private synthetic z0(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->scroll_mode_event_up_down:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_mode_roll_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method private z1()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->throw:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->throw:Z

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->ll_auto:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->ll_seek_progress:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->ivAutoPlay:Landroid/widget/ImageView;

    const v3, 0x7f08010c

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    invoke-direct {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->m0()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->instanceof:Lcom/wsw/cospa/activity/ChapterBrowseActivity$else;

    iput v2, v0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$else;->do:I

    const v1, 0x7fffffff

    .line 8
    iput v1, v0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$else;->if:I

    .line 9
    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->bsb_auto:Lcom/xw/repo/BubbleSeekBar;

    invoke-virtual {v1}, Lcom/xw/repo/BubbleSeekBar;->getProgressFloat()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    invoke-static {p0, v1}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$else;->for:I

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->implements:Landroid/os/Handler;

    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->instanceof:Lcom/wsw/cospa/activity/ChapterBrowseActivity$else;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->implements:Landroid/os/Handler;

    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->instanceof:Lcom/wsw/cospa/activity/ChapterBrowseActivity$else;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->bsb_auto:Lcom/xw/repo/BubbleSeekBar;

    invoke-virtual {v0}, Lcom/xw/repo/BubbleSeekBar;->getMax()F

    move-result v0

    .line 13
    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->bsb_auto:Lcom/xw/repo/BubbleSeekBar;

    invoke-virtual {v1}, Lcom/xw/repo/BubbleSeekBar;->getProgressFloat()F

    move-result v1

    .line 14
    iget-object v2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->implements:Landroid/os/Handler;

    iget-object v3, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->instanceof:Lcom/wsw/cospa/activity/ChapterBrowseActivity$else;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    iget-object v2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->implements:Landroid/os/Handler;

    iget-object v3, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->instanceof:Lcom/wsw/cospa/activity/ChapterBrowseActivity$else;

    sub-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float v0, v0, v1

    float-to-long v0, v0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public B1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->setVisibility(I)V

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->e0()V

    return-void
.end method

.method public c0(Lcom/wsw/cospa/bean/ComicShelfGroupBean;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/mi;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/mi;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Lcom/wsw/cospa/bean/ComicShelfGroupBean;)V

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

    new-instance v0, Landroid/support/v4/ni;

    invoke-direct {v0, p0}, Landroid/support/v4/ni;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V

    .line 4
    invoke-interface {p1, v0}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public case()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->goto:Landroid/content/Intent;

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/base/BaseActivity;->if:Landroid/support/v4/m7;

    check-cast v1, Lcom/wsw/cospa/presenter/do;

    invoke-virtual {v1, p0, v0}, Lcom/wsw/cospa/presenter/do;->this(Landroidx/appcompat/app/AppCompatActivity;Landroid/content/Intent;)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/base/BaseActivity;->if:Landroid/support/v4/m7;

    check-cast v0, Lcom/wsw/cospa/presenter/do;

    invoke-virtual {v0}, Lcom/wsw/cospa/presenter/do;->break()V

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->s0()V

    return-void
.end method

.method public d0()V
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->k0()I

    move-result v1

    .line 4
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v2

    const-string v3, "read_mode_key"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 5
    iget-object v2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mZoomRecyclerView:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    const/4 v3, 0x0

    iget v0, v0, Landroid/graphics/Point;->y:I

    neg-int v0, v0

    invoke-virtual {v2, v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    if-nez v1, :cond_4

    .line 6
    invoke-direct {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->m1()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne v2, v0, :cond_2

    if-nez v1, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->m1()V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->class:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    invoke-virtual {v0}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v4

    if-ne v1, v0, :cond_3

    .line 10
    invoke-direct {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->l1()V

    goto :goto_0

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    add-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->smoothScrollToPosition(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public e0()V
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "show_status_bar_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v0

    .line 2
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v1

    const-string v3, "hide_navigation_bar_key"

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->volatile:Lcom/gyf/immersionbar/else;

    sget-object v1, Lcom/gyf/immersionbar/if;->FLAG_HIDE_BAR:Lcom/gyf/immersionbar/if;

    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/else;->Z(Lcom/gyf/immersionbar/if;)Lcom/gyf/immersionbar/else;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gyf/immersionbar/else;->b0()V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->volatile:Lcom/gyf/immersionbar/else;

    sget-object v1, Lcom/gyf/immersionbar/if;->FLAG_HIDE_STATUS_BAR:Lcom/gyf/immersionbar/if;

    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/else;->Z(Lcom/gyf/immersionbar/if;)Lcom/gyf/immersionbar/else;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gyf/immersionbar/else;->b0()V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->volatile:Lcom/gyf/immersionbar/else;

    sget-object v1, Lcom/gyf/immersionbar/if;->FLAG_HIDE_NAVIGATION_BAR:Lcom/gyf/immersionbar/if;

    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/else;->Z(Lcom/gyf/immersionbar/if;)Lcom/gyf/immersionbar/else;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gyf/immersionbar/else;->b0()V

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->volatile:Lcom/gyf/immersionbar/else;

    sget-object v1, Lcom/gyf/immersionbar/if;->FLAG_SHOW_BAR:Lcom/gyf/immersionbar/if;

    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/else;->Z(Lcom/gyf/immersionbar/if;)Lcom/gyf/immersionbar/else;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gyf/immersionbar/else;->b0()V

    :goto_0
    return-void
.end method

.method public f0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->transient:Lcom/wsw/cospa/widget/BrightnessSettingWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->transient:Lcom/wsw/cospa/widget/BrightnessSettingWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public getProgressOnActionUp(Lcom/xw/repo/BubbleSeekBar;IF)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f0900c4

    if-ne p1, p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->instanceof:Lcom/wsw/cospa/activity/ChapterBrowseActivity$else;

    const/high16 p2, 0x40000000    # 2.0f

    mul-float p3, p3, p2

    invoke-static {p0, p3}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    iput p2, p1, Lcom/wsw/cospa/activity/ChapterBrowseActivity$else;->for:I

    :cond_0
    return-void
.end method

.method public getProgressOnFinally(Lcom/xw/repo/BubbleSeekBar;IFZ)V
    .locals 0

    return-void
.end method

.method public bridge synthetic goto()Landroid/support/v4/m7;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->p0()Lcom/wsw/cospa/presenter/do;

    move-result-object v0

    return-object v0
.end method

.method public hideProgress()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->error_view:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mIndicatorView:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {v0, v1}, Lcom/wang/avi/AVLoadingIndicatorView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->contentView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->return:Z

    return-void
.end method

.method public i0()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/tl0;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->class:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    invoke-virtual {v1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->switch()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wsw/cospa/bean/ComicContentImgBean;

    .line 5
    new-instance v4, Landroid/support/v4/tl0;

    invoke-direct {v4}, Landroid/support/v4/tl0;-><init>()V

    .line 6
    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getImgurl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/tl0;->setThumbnailUrl(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getImgurl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/tl0;->setOriginUrl(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getVariableMap()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 9
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 10
    invoke-virtual {v4, v3}, Landroid/support/v4/tl0;->setHeaderMap(Ljava/util/Map;)V

    .line 11
    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-object v0
.end method

.method public initComicBook(Lcom/wsw/cospa/bean/ChapterListBean;Lcom/wsw/cospa/bean/ComicShelfBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->this:Lcom/wsw/cospa/bean/ChapterListBean;

    .line 2
    iput-object p2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfBean;

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->protected:Lcom/wsw/cospa/widget/MenuSettingDialog;

    invoke-virtual {p1, p2}, Lcom/wsw/cospa/widget/MenuSettingDialog;->setComicShelf(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    .line 4
    invoke-direct {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->q0()V

    .line 5
    invoke-direct {p0, p2}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->r0(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    return-void
.end method

.method public initComicName(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->initData(Ljava/lang/String;)V

    return-void
.end method

.method public k0()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->m0()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->extends:Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    return v0

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->extends:Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    invoke-static {v0}, Landroid/support/v4/zl1;->if(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v0

    goto :goto_1

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    invoke-static {v0}, Landroid/support/v4/zl1;->new(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v0

    :goto_1
    if-gez v0, :cond_3

    const/4 v0, 0x0

    :cond_3
    return v0
.end method

.method public l0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->abstract:I

    return v0
.end method

.method public loadChapter(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicContentImgBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->class:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, p1, v2}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->m(ZLjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public loadNextChapter(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicContentImgBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->class:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1, p1, v1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->m(ZLjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public loadPreChapter(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicContentImgBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->class:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, p1, v2}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->m(ZLjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public moveToPosition(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->m0()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mZoomRecyclerView:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->extends:Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    invoke-virtual {p0, v1, v0, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->o1(Landroidx/recyclerview/widget/LinearLayoutManager;Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method public n1()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->class:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->getItemCount()I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "close_long_click_menu_key"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4
    invoke-direct {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->m0()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mZoomRecyclerView:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    invoke-static {v0}, Landroid/support/v4/zl1;->if(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v0

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    invoke-static {v0}, Landroid/support/v4/zl1;->if(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v0

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->class:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    invoke-virtual {v1, v0}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->default(I)Lcom/wsw/cospa/bean/ComicContentImgBean;

    move-result-object v1

    .line 8
    new-instance v2, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$case;

    invoke-direct {v2, p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$case;-><init>(Landroid/content/Context;)V

    const-string v3, "\u64cd\u4f5c"

    .line 9
    invoke-virtual {v2, v3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->volatile(Ljava/lang/String;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    .line 10
    new-instance v3, Landroid/support/v4/xh;

    invoke-direct {v3, p0, v0}, Landroid/support/v4/xh;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;I)V

    const-string v0, "\u67e5\u770b\u539f\u56fe"

    invoke-virtual {v2, v0, v3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$case;->synchronized(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$case;

    .line 11
    new-instance v0, Landroid/support/v4/mh;

    invoke-direct {v0, p0}, Landroid/support/v4/mh;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V

    const-string v3, "\u4fdd\u5b58\u56fe\u7247"

    invoke-virtual {v2, v3, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$case;->synchronized(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$case;

    .line 12
    new-instance v0, Landroid/support/v4/ti;

    invoke-direct {v0, p0, v1}, Landroid/support/v4/ti;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Lcom/wsw/cospa/bean/ComicContentImgBean;)V

    const-string v3, "\u5206\u4eab\u56fe\u7247"

    invoke-virtual {v2, v3, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$case;->synchronized(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$case;

    .line 13
    new-instance v0, Landroid/support/v4/xi;

    invoke-direct {v0, p0, v1}, Landroid/support/v4/xi;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Lcom/wsw/cospa/bean/ComicContentImgBean;)V

    const-string v1, "\u590d\u5236\u94fe\u63a5"

    invoke-virtual {v2, v1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$case;->synchronized(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$case;

    .line 14
    invoke-virtual {v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->this()Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;->show()V

    :cond_3
    return-void
.end method

.method public new()I
    .locals 1

    const v0, 0x7f0c0026

    return v0
.end method

.method public o1(Landroidx/recyclerview/widget/LinearLayoutManager;Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt p3, v0, :cond_0

    .line 3
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0

    :cond_0
    if-gt p3, p1, :cond_1

    sub-int/2addr p3, v0

    .line 4
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    .line 5
    invoke-virtual {p2, v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_0

    :cond_1
    if-lez p3, :cond_2

    sub-int/2addr p3, v1

    .line 6
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 8
    :goto_0
    invoke-direct {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->m0()I

    move-result p1

    if-ne p1, v1, :cond_3

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p3, "page_index"

    invoke-virtual {p1, p3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    shr-int/lit8 p1, p1, 0xc

    iput p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->abstract:I

    neg-int p1, p1

    .line 10
    invoke-virtual {p2, v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :cond_3
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->f0()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->interface:Lcom/wsw/cospa/widget/view/ChapterBottomSheet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->interface:Lcom/wsw/cospa/widget/view/ChapterBottomSheet;

    invoke-virtual {v0}, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->dismiss()V

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->e0()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->protected:Lcom/wsw/cospa/widget/MenuSettingDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/wsw/cospa/widget/MenuSettingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->protected:Lcom/wsw/cospa/widget/MenuSettingDialog;

    invoke-virtual {v0}, Lcom/wsw/cospa/widget/MenuSettingDialog;->dismiss()V

    .line 7
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->e0()V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->isShow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->setVisibility(I)V

    .line 10
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->e0()V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/16 v0, 0x8

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 2
    :sswitch_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->protected:Lcom/wsw/cospa/widget/MenuSettingDialog;

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/MenuSettingDialog;->show()V

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->interface:Lcom/wsw/cospa/widget/view/ChapterBottomSheet;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->isShow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->interface:Lcom/wsw/cospa/widget/view/ChapterBottomSheet;

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->dismiss()V

    .line 5
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->e0()V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->f0()V

    .line 7
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->isShow()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 8
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->setVisibility(I)V

    .line 9
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->e0()V

    goto :goto_0

    .line 10
    :sswitch_1
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->t1()V

    goto :goto_0

    .line 11
    :sswitch_2
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->interface:Lcom/wsw/cospa/widget/view/ChapterBottomSheet;

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->show()V

    .line 12
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->f0()V

    .line 13
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->isShow()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->setVisibility(I)V

    .line 15
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->e0()V

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->protected:Lcom/wsw/cospa/widget/MenuSettingDialog;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/MenuSettingDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 17
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->protected:Lcom/wsw/cospa/widget/MenuSettingDialog;

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/MenuSettingDialog;->dismiss()V

    .line 18
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->e0()V

    goto :goto_0

    .line 19
    :sswitch_3
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->v1()V

    .line 20
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->isShow()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 21
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->setVisibility(I)V

    .line 22
    :cond_2
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->e0()V

    goto :goto_0

    .line 23
    :sswitch_4
    iget-boolean p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->throw:Z

    if-eqz p1, :cond_3

    .line 24
    invoke-direct {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->A1()V

    goto :goto_0

    .line 25
    :cond_3
    invoke-direct {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->z1()V

    :cond_4
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09009e -> :sswitch_4
        0x7f090463 -> :sswitch_3
        0x7f090466 -> :sswitch_2
        0x7f0904a9 -> :sswitch_1
        0x7f0904b0 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->implements:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->instanceof:Lcom/wsw/cospa/activity/ChapterBrowseActivity$else;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iput-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->implements:Landroid/os/Handler;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->instanceof:Lcom/wsw/cospa/activity/ChapterBrowseActivity$else;

    if-eqz v0, :cond_1

    .line 5
    iput-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->instanceof:Lcom/wsw/cospa/activity/ChapterBrowseActivity$else;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->const:Lcom/wsw/cospa/activity/ChapterBrowseActivity$goto;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity$goto;->if()V

    .line 8
    :cond_2
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->new(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->for()V

    .line 9
    invoke-static {p0}, Landroid/support/v4/jh0;->do(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/Glide;->for()V

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->class:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->l()V

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->continue:Lcom/wsw/cospa/widget/ChangeSourceDialog;

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {v0}, Lcom/wsw/cospa/widget/ChangeSourceDialog;->onStop()V

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->this:Lcom/wsw/cospa/bean/ChapterListBean;

    if-eqz v0, :cond_5

    .line 15
    iput-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->this:Lcom/wsw/cospa/bean/ChapterListBean;

    .line 16
    :cond_5
    invoke-static {}, Landroid/support/v4/ep1;->do()Landroid/support/v4/ep1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/ep1;->new()V

    .line 17
    iget-object v0, p0, Lcom/wsw/cospa/base/BaseActivity;->if:Landroid/support/v4/m7;

    check-cast v0, Lcom/wsw/cospa/presenter/do;

    invoke-virtual {v0}, Lcom/wsw/cospa/presenter/do;->else()V

    .line 18
    invoke-super {p0}, Lcom/wsw/cospa/base/BaseActivity;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    invoke-super {p0}, Lcom/wsw/cospa/base/BaseActivity;->onDestroy()V

    :goto_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    .line 3
    iget-boolean v2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->throws:Z

    if-nez v2, :cond_8

    .line 4
    iget v2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->static:I

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float p1, p1

    cmpl-float v2, v2, p1

    if-gtz v2, :cond_2

    iget v2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->switch:I

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p1, p2, p1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    iput-boolean v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->throws:Z

    goto :goto_2

    .line 5
    :cond_3
    iget-boolean p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->throws:Z

    if-nez p1, :cond_8

    .line 6
    invoke-static {p0}, Landroid/support/v4/j10;->case(Landroid/content/Context;)I

    move-result p1

    .line 7
    iget-object p2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->default:Landroid/graphics/RectF;

    if-nez p2, :cond_4

    .line 8
    new-instance p2, Landroid/graphics/RectF;

    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    int-to-float p1, p1

    div-float v4, p1, v3

    .line 9
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v5, v5, v6

    div-float/2addr v5, v3

    mul-float p1, p1, v6

    div-float/2addr p1, v3

    invoke-direct {p2, v2, v4, v5, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->default:Landroid/graphics/RectF;

    .line 10
    :cond_4
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->default:Landroid/graphics/RectF;

    iget p2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->static:I

    int-to-float p2, p2

    iget v2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->switch:I

    int-to-float v2, v2

    invoke-virtual {p1, p2, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 11
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->f0()V

    .line 12
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->interface:Lcom/wsw/cospa/widget/view/ChapterBottomSheet;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->isShow()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 13
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->interface:Lcom/wsw/cospa/widget/view/ChapterBottomSheet;

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->dismiss()V

    .line 14
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->e0()V

    goto :goto_1

    .line 15
    :cond_5
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->protected:Lcom/wsw/cospa/widget/MenuSettingDialog;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/MenuSettingDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 16
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->protected:Lcom/wsw/cospa/widget/MenuSettingDialog;

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/MenuSettingDialog;->dismiss()V

    .line 17
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->e0()V

    :cond_6
    :goto_1
    return v1

    .line 18
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->static:I

    .line 19
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->switch:I

    .line 20
    iput-boolean v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->throws:Z

    :cond_8
    :goto_2
    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->class:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x18

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->finally:[I

    const/4 v2, 0x4

    aget v0, v0, v2

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->finally:[I

    const/4 v2, 0x3

    aget v0, v0, v2

    .line 4
    :goto_0
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v2

    const-string v3, "scroll_mode_volume_key"

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 5
    invoke-direct {p0, v0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->j0(I)V

    const/4 p1, 0x1

    return p1

    .line 6
    :cond_2
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLongPress(FF)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->n1()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->goto:Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->this()V

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/base/BaseActivity;->if:Landroid/support/v4/m7;

    check-cast v0, Lcom/wsw/cospa/presenter/do;

    invoke-virtual {v0, p0, p1}, Lcom/wsw/cospa/presenter/do;->this(Landroidx/appcompat/app/AppCompatActivity;Landroid/content/Intent;)V

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/base/BaseActivity;->if:Landroid/support/v4/m7;

    check-cast p1, Lcom/wsw/cospa/presenter/do;

    invoke-virtual {p1}, Lcom/wsw/cospa/presenter/do;->break()V

    .line 7
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->s0()V

    return-void
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
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->finish()V

    return v1

    .line 3
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f09014a

    if-ne v0, v2, :cond_1

    .line 4
    invoke-static {}, Landroid/support/v4/y8;->for()Landroid/support/v4/y8;

    move-result-object p1

    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfBean;

    const-string v2, "comic_shelf_key"

    invoke-virtual {p1, v2, v0}, Landroid/support/v4/y8;->new(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-static {p0}, Lcom/wsw/cospa/activity/ChapterActivity;->interface(Landroid/content/Context;)V

    return v1

    .line 6
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f0903e9

    if-ne v0, v2, :cond_4

    .line 7
    :try_start_0
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/dao/DatabaseHelper;->default(Ljava/lang/String;)Lcom/wsw/cospa/bean/SearchComicBean;

    move-result-object v0

    if-nez v0, :cond_2

    .line 8
    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 9
    new-instance v0, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-direct {v0}, Lcom/wsw/cospa/bean/SearchComicBean;-><init>()V

    .line 10
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/bean/SearchComicBean;->setAuthor(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getCoverUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/bean/SearchComicBean;->setCoverUrl(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getIntroduce()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/bean/SearchComicBean;->setIntroduce(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/bean/SearchComicBean;->setName(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getKind()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/bean/SearchComicBean;->setKind(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/bean/SearchComicBean;->setNoteUrl(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getOrigin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/bean/SearchComicBean;->setOrigin(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/SearchComicBean;->setTag(Ljava/lang/String;)V

    :cond_2
    if-eqz v0, :cond_a

    .line 18
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/SearchComicBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 19
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v1

    const-string v2, "systemMode"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 20
    invoke-static {}, Lcom/wsw/cospa/base/BaseActivity;->class()Z

    goto :goto_0

    .line 21
    :cond_3
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->catch()Z

    move-result v1

    .line 22
    :goto_0
    new-instance v1, Lcom/wsw/cospa/widget/ChangeSourceDialog;

    invoke-direct {v1, p0, v3, v0}, Lcom/wsw/cospa/widget/ChangeSourceDialog;-><init>(Landroid/content/Context;ILcom/wsw/cospa/bean/SearchComicBean;)V

    iput-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->continue:Lcom/wsw/cospa/widget/ChangeSourceDialog;

    .line 23
    new-instance v0, Landroid/support/v4/ji;

    invoke-direct {v0, p0}, Landroid/support/v4/ji;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V

    invoke-virtual {v1, v0}, Lcom/wsw/cospa/widget/ChangeSourceDialog;->setOnChooseOriginListener(Lcom/wsw/cospa/widget/OriginChooseDialog$ChooseOriginListener;)V

    .line 24
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->continue:Lcom/wsw/cospa/widget/ChangeSourceDialog;

    invoke-virtual {v0}, Lcom/wsw/cospa/widget/ChangeSourceDialog;->show()V

    .line 25
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->continue:Lcom/wsw/cospa/widget/ChangeSourceDialog;

    new-instance v1, Landroid/support/v4/yi;

    invoke-direct {v1, p0}, Landroid/support/v4/yi;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 26
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->continue:Lcom/wsw/cospa/widget/ChangeSourceDialog;

    invoke-virtual {v0}, Lcom/wsw/cospa/widget/ChangeSourceDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 28
    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f090295

    if-ne v0, v2, :cond_5

    .line 29
    iget-object p1, p0, Lcom/wsw/cospa/base/BaseActivity;->if:Landroid/support/v4/m7;

    check-cast p1, Lcom/wsw/cospa/presenter/do;

    invoke-virtual {p1}, Lcom/wsw/cospa/presenter/do;->goto()Lcom/wsw/cospa/bean/ComicSourceBean;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/wsw/cospa/utils/while;->for(Landroid/app/Activity;Lcom/wsw/cospa/bean/ComicSourceBean;)V

    return v1

    .line 30
    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09039d

    if-ne v0, v1, :cond_6

    .line 31
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfBean;

    if-eqz v0, :cond_a

    .line 32
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v0

    .line 33
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/plain"

    .line 34
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicInfoBean;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicInfoBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 37
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "\u5206\u4eab"

    .line 38
    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 39
    :cond_6
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090445

    if-ne v0, v1, :cond_7

    .line 40
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfBean;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/class;->E(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 41
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wsw/cospa/dao/do;->extends(Ljava/lang/String;)Lio/reactivex/new;

    move-result-object v0

    sget-object v1, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 42
    invoke-virtual {v0, v1}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object v0

    .line 43
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v1, Lcom/wsw/cospa/activity/ChapterBrowseActivity$try;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity$try;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V

    .line 44
    invoke-interface {v0, v1}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_1

    .line 45
    :cond_7
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090079

    if-ne v0, v1, :cond_8

    .line 46
    iget-object v0, p0, Lcom/wsw/cospa/base/BaseActivity;->if:Landroid/support/v4/m7;

    check-cast v0, Lcom/wsw/cospa/presenter/do;

    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->this:Lcom/wsw/cospa/bean/ChapterListBean;

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/presenter/do;->final(Lcom/wsw/cospa/bean/ChapterListBean;)V

    goto :goto_1

    .line 47
    :cond_8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090312

    if-ne v0, v1, :cond_9

    .line 48
    :try_start_1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wsw/cospa/utils/while;->goto(Ljava/lang/String;)Lcom/wsw/cospa/bean/ComicSourceBean;

    move-result-object v0

    const-string v1, "\u7f16\u8f91\u56fe\u6e90"

    .line 49
    invoke-static {p0, v1, v0}, Lcom/wsw/cospa/activity/AddComicSourceActivity;->i(Landroid/app/Activity;Ljava/lang/String;Lcom/wsw/cospa/bean/ComicSourceBean;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 51
    :cond_9
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09035d

    if-ne v0, v1, :cond_a

    .line 52
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfBean;

    if-eqz v0, :cond_a

    .line 53
    iget-object v1, p0, Lcom/wsw/cospa/base/BaseActivity;->if:Landroid/support/v4/m7;

    check-cast v1, Lcom/wsw/cospa/presenter/do;

    iget-object v2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->this:Lcom/wsw/cospa/bean/ChapterListBean;

    invoke-virtual {v1, v0, v2}, Lcom/wsw/cospa/presenter/do;->const(Lcom/wsw/cospa/bean/ComicShelfBean;Lcom/wsw/cospa/bean/ChapterListBean;)V

    .line 54
    :cond_a
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->r1()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->const:Lcom/wsw/cospa/activity/ChapterBrowseActivity$goto;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity$goto;->if()V

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->A1()V

    return-void
.end method

.method public onPicturePaging(Lcom/wsw/cospa/bean/ComicContentImgBean;)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->class:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getImgurl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->package(Ljava/lang/String;)I

    move-result v1

    .line 3
    iget-object v2, v0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->class:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    add-int/lit8 v1, v1, 0x1

    new-instance v15, Lcom/wsw/cospa/bean/ComicContentImgBean;

    invoke-virtual/range {p1 .. p1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getImgurl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getIndexPape()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getMaxPage()I

    move-result v6

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getChapterIndex()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getChapterContentUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getChapterText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getVariable()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getTag()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->isDownload()Z

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getLocalPath()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    move-object v3, v15

    invoke-direct/range {v3 .. v14}, Lcom/wsw/cospa/bean/ComicContentImgBean;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 5
    invoke-virtual {v2, v1, v15}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->super(ILcom/wsw/cospa/bean/ComicContentImgBean;)V

    :cond_0
    return-void
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

    const v3, 0x7f090295

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/wsw/cospa/base/BaseActivity;->if:Landroid/support/v4/m7;

    check-cast v2, Lcom/wsw/cospa/presenter/do;

    invoke-virtual {v2}, Lcom/wsw/cospa/presenter/do;->goto()Lcom/wsw/cospa/bean/ComicSourceBean;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/wsw/cospa/base/BaseActivity;->if:Landroid/support/v4/m7;

    check-cast v2, Lcom/wsw/cospa/presenter/do;

    invoke-virtual {v2}, Lcom/wsw/cospa/presenter/do;->goto()Lcom/wsw/cospa/bean/ComicSourceBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getLoginUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

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

.method public onProgressChanged(Lcom/xw/repo/BubbleSeekBar;IFZ)V
    .locals 0

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f0900c5

    if-ne p1, p2, :cond_0

    .line 10
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->v_brightness:Landroid/view/View;

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public onProgressChanged(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;IZ)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->m0()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mZoomRecyclerView:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    :goto_0
    if-eqz p3, :cond_2

    .line 4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged: value "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-ne p1, v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->k0()I

    move-result p1

    add-int/2addr p1, p2

    iget p2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->package:I

    sub-int/2addr p1, p2

    .line 6
    iget-object p2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->extends:Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    invoke-virtual {p0, p2, v1, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->o1(Landroidx/recyclerview/widget/LinearLayoutManager;Landroidx/recyclerview/widget/RecyclerView;I)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->k0()I

    move-result p1

    add-int/2addr p1, p2

    iget p2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->package:I

    sub-int/2addr p1, p2

    .line 8
    iget-object p2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->extends:Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    invoke-virtual {p0, p2, v1, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->o1(Landroidx/recyclerview/widget/LinearLayoutManager;Landroidx/recyclerview/widget/RecyclerView;I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    new-instance v0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$goto;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity$goto;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->const:Lcom/wsw/cospa/activity/ChapterBrowseActivity$goto;

    .line 3
    invoke-virtual {v0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity$goto;->do()V

    .line 4
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "show_status_bar_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v0

    .line 5
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v1

    const-string v3, "hide_navigation_bar_key"

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->volatile:Lcom/gyf/immersionbar/else;

    sget-object v1, Lcom/gyf/immersionbar/if;->FLAG_HIDE_BAR:Lcom/gyf/immersionbar/if;

    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/else;->Z(Lcom/gyf/immersionbar/if;)Lcom/gyf/immersionbar/else;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gyf/immersionbar/else;->b0()V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->volatile:Lcom/gyf/immersionbar/else;

    sget-object v1, Lcom/gyf/immersionbar/if;->FLAG_HIDE_STATUS_BAR:Lcom/gyf/immersionbar/if;

    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/else;->Z(Lcom/gyf/immersionbar/if;)Lcom/gyf/immersionbar/else;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gyf/immersionbar/else;->b0()V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->volatile:Lcom/gyf/immersionbar/else;

    sget-object v1, Lcom/gyf/immersionbar/if;->FLAG_HIDE_NAVIGATION_BAR:Lcom/gyf/immersionbar/if;

    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/else;->Z(Lcom/gyf/immersionbar/if;)Lcom/gyf/immersionbar/else;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gyf/immersionbar/else;->b0()V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->volatile:Lcom/gyf/immersionbar/else;

    sget-object v1, Lcom/gyf/immersionbar/if;->FLAG_SHOW_BAR:Lcom/gyf/immersionbar/if;

    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/else;->Z(Lcom/gyf/immersionbar/if;)Lcom/gyf/immersionbar/else;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gyf/immersionbar/else;->b0()V

    :goto_0
    return-void
.end method

.method public onSingleTap(FF)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->f0()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->interface:Lcom/wsw/cospa/widget/view/ChapterBottomSheet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->interface:Lcom/wsw/cospa/widget/view/ChapterBottomSheet;

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->dismiss()V

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->e0()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->protected:Lcom/wsw/cospa/widget/MenuSettingDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/wsw/cospa/widget/MenuSettingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->protected:Lcom/wsw/cospa/widget/MenuSettingDialog;

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/MenuSettingDialog;->dismiss()V

    .line 7
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->e0()V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->isShow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->setVisibility(I)V

    .line 10
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->e0()V

    goto :goto_0

    .line 11
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->o0(FF)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->j0(I)V

    :goto_0
    return-void
.end method

.method public onStartTrackingTouch(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;)V
    .locals 0

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-boolean p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->return:Z

    if-nez p1, :cond_4

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->f0()V

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->interface:Lcom/wsw/cospa/widget/view/ChapterBottomSheet;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->isShow()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->interface:Lcom/wsw/cospa/widget/view/ChapterBottomSheet;

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->dismiss()V

    .line 6
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->e0()V

    goto :goto_1

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->protected:Lcom/wsw/cospa/widget/MenuSettingDialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/MenuSettingDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->protected:Lcom/wsw/cospa/widget/MenuSettingDialog;

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/MenuSettingDialog;->dismiss()V

    .line 9
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->e0()V

    goto :goto_1

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->isShow()Z

    move-result p1

    if-nez p1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->setVisibility(I)V

    goto :goto_0

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->setVisibility(I)V

    .line 13
    :goto_0
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->e0()V

    .line 14
    :cond_4
    :goto_1
    invoke-super {p0, p2}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_status_bar_key"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result p1

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v2, "hide_navigation_bar_key"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v0

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->volatile:Lcom/gyf/immersionbar/else;

    sget-object v0, Lcom/gyf/immersionbar/if;->FLAG_HIDE_BAR:Lcom/gyf/immersionbar/if;

    invoke-virtual {p1, v0}, Lcom/gyf/immersionbar/else;->Z(Lcom/gyf/immersionbar/if;)Lcom/gyf/immersionbar/else;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gyf/immersionbar/else;->b0()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->volatile:Lcom/gyf/immersionbar/else;

    sget-object v0, Lcom/gyf/immersionbar/if;->FLAG_HIDE_STATUS_BAR:Lcom/gyf/immersionbar/if;

    invoke-virtual {p1, v0}, Lcom/gyf/immersionbar/else;->Z(Lcom/gyf/immersionbar/if;)Lcom/gyf/immersionbar/else;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gyf/immersionbar/else;->b0()V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->volatile:Lcom/gyf/immersionbar/else;

    sget-object v0, Lcom/gyf/immersionbar/if;->FLAG_HIDE_NAVIGATION_BAR:Lcom/gyf/immersionbar/if;

    invoke-virtual {p1, v0}, Lcom/gyf/immersionbar/else;->Z(Lcom/gyf/immersionbar/if;)Lcom/gyf/immersionbar/else;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gyf/immersionbar/else;->b0()V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->volatile:Lcom/gyf/immersionbar/else;

    sget-object v0, Lcom/gyf/immersionbar/if;->FLAG_SHOW_BAR:Lcom/gyf/immersionbar/if;

    invoke-virtual {p1, v0}, Lcom/gyf/immersionbar/else;->Z(Lcom/gyf/immersionbar/if;)Lcom/gyf/immersionbar/else;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gyf/immersionbar/else;->b0()V

    :goto_0
    return-void
.end method

.method public p0()Lcom/wsw/cospa/presenter/do;
    .locals 1

    .line 1
    new-instance v0, Lcom/wsw/cospa/presenter/do;

    invoke-direct {v0}, Lcom/wsw/cospa/presenter/do;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/base/BaseActivity;->if:Landroid/support/v4/m7;

    .line 2
    check-cast v0, Lcom/wsw/cospa/presenter/do;

    invoke-virtual {v0, p0}, Landroid/support/v4/m7;->if(Lcom/wsw/cospa/base/BaseView;)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/base/BaseActivity;->if:Landroid/support/v4/m7;

    check-cast v0, Lcom/wsw/cospa/presenter/do;

    return-object v0
.end method

.method public q1()V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->k0()I

    move-result v1

    .line 4
    invoke-direct {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->m0()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    if-nez v1, :cond_0

    .line 5
    iget-boolean v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->import:Z

    if-nez v1, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->m1()V

    .line 7
    iput-boolean v3, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->import:Z

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mZoomRecyclerView:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    .line 9
    iget v0, v0, Landroid/graphics/Point;->y:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 10
    iget-boolean v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->import:Z

    if-nez v0, :cond_2

    .line 11
    invoke-direct {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->m1()V

    .line 12
    iput-boolean v3, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->import:Z

    goto :goto_0

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    if-eqz v0, :cond_3

    sub-int/2addr v1, v3

    .line 14
    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->smoothScrollToPosition(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public r1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfBean;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/wsw/cospa/utils/case;->this()Lcom/wsw/cospa/utils/case;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/case;->else()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Landroid/support/v4/ui;

    invoke-direct {v1, p0}, Landroid/support/v4/ui;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method public s0()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->m0()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mZoomRecyclerView:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mSeekBarScroll:Lcom/wsw/cospa/widget/view/ReverseSeekBar;

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v3, v1}, Lcom/wsw/cospa/widget/view/ReverseSeekBar;->setReverse(Z)V

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mSeekBarScroll:Lcom/wsw/cospa/widget/view/ReverseSeekBar;

    invoke-virtual {v0, p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setOnProgressChangeListener(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 6
    new-instance v0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity$CustomScrollListener;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 7
    invoke-virtual {v2, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    return-void
.end method

.method public s1()V
    .locals 6

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/support/v4/ed1;->do(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->strictfp:Landroid/support/v4/xh1;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->k0()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->class:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    invoke-virtual {v1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->class:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    invoke-virtual {v1, v0}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->default(I)Lcom/wsw/cospa/bean/ComicContentImgBean;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getImgurl()Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".png"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_0

    :cond_0
    move-object v0, v2

    move-object v1, v0

    .line 8
    :goto_0
    new-instance v3, Lcom/wsw/cospa/activity/ChapterBrowseActivity$case;

    invoke-direct {v3, p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity$case;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V

    invoke-static {p0, v2, v0, v1, v3}, Lcom/wsw/cospa/utils/this;->case(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/wsw/cospa/bean/ComicContentImgBean;Lcom/wsw/cospa/utils/SaveImageCall;)V

    goto :goto_1

    :cond_1
    const-string v0, "\u8bf7\u53bb\u8bbe\u7f6e\u6253\u5f00\u6587\u4ef6\u8bfb\u5199\u6743\u9650"

    .line 9
    invoke-static {v0}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public showProgress()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mIndicatorView:Lcom/wang/avi/AVLoadingIndicatorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wang/avi/AVLoadingIndicatorView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->contentView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->error_view:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->error_view:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mIndicatorView:Lcom/wang/avi/AVLoadingIndicatorView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/wang/avi/AVLoadingIndicatorView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->contentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->tvErrorView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iput-boolean v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->return:Z

    return-void
.end method

.method public skipNextChapter(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicContentImgBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->class:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1, p1, v1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->m(ZLjava/util/List;Z)V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->m0()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mZoomRecyclerView:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    :goto_0
    if-eqz p1, :cond_2

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 7
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/ComicContentImgBean;

    .line 8
    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->class:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    invoke-virtual {v1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->getItemCount()I

    move-result v1

    .line 9
    iget-object v3, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->extends:Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getMaxPage()I

    move-result p1

    sub-int/2addr p1, v2

    sub-int/2addr v1, p1

    invoke-virtual {p0, v3, v0, v1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->o1(Landroidx/recyclerview/widget/LinearLayoutManager;Landroidx/recyclerview/widget/RecyclerView;I)V

    :cond_2
    return-void
.end method

.method public skipPreChapter(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicContentImgBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->class:Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v2, p1, v1}, Lcom/wsw/cospa/adapter/ChapterBrowseAdapter;->m(ZLjava/util/List;Z)V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->m0()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mZoomRecyclerView:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    :goto_0
    if-eqz p1, :cond_2

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v1

    .line 8
    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->extends:Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->k0()I

    move-result v2

    iget v3, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->package:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, p1

    invoke-virtual {p0, v1, v0, v2}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->o1(Landroidx/recyclerview/widget/LinearLayoutManager;Landroidx/recyclerview/widget/RecyclerView;I)V

    :cond_2
    return-void
.end method

.method public t1()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/do;->h()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "\u5168\u90e8"

    .line 3
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 6
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wsw/cospa/bean/ComicShelfGroupBean;

    .line 7
    invoke-virtual {v4}, Lcom/wsw/cospa/bean/ComicShelfGroupBean;->getGroupName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 9
    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 10
    new-instance v3, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;

    invoke-direct {v3, p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;-><init>(Landroid/content/Context;)V

    const-string v4, "\u9009\u62e9\u4e66\u67b6"

    .line 11
    invoke-virtual {v3, v4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->volatile(Ljava/lang/String;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    .line 12
    new-instance v4, Landroid/support/v4/ii;

    invoke-direct {v4, p0, v3, v0}, Landroid/support/v4/ii;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;Ljava/util/List;)V

    invoke-virtual {v3, v1, v4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;->synchronized([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;

    .line 13
    invoke-virtual {v3, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;->b(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;

    .line 14
    invoke-virtual {v3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->interface()Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;

    goto :goto_1

    .line 15
    :cond_1
    new-instance v0, Landroid/support/v4/li;

    invoke-direct {v0, p0}, Landroid/support/v4/li;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object v0

    .line 16
    invoke-static {}, Lio/reactivex/schedulers/do;->new()Lio/reactivex/try;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/new;->subscribeOn(Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object v0

    .line 17
    invoke-static {}, Lio/reactivex/android/schedulers/do;->for()Lio/reactivex/try;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/new;->subscribeOn(Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object v0

    .line 18
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v1, Landroid/support/v4/oi;

    invoke-direct {v1, p0}, Landroid/support/v4/oi;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V

    .line 19
    invoke-interface {v0, v1}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    :goto_1
    return-void
.end method

.method public this()V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Landroid/support/v4/p12;->case(Landroid/app/Activity;)V

    :cond_0
    if-lt v0, v1, :cond_1

    .line 3
    invoke-static {p0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->h0(Landroid/app/Activity;)V

    .line 4
    :cond_1
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "read_switc_screen_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 7
    :goto_0
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->else()V

    .line 8
    invoke-static {p0}, Lcom/gyf/immersionbar/else;->k2(Landroid/app/Activity;)Lcom/gyf/immersionbar/else;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->volatile:Lcom/gyf/immersionbar/else;

    .line 9
    new-instance v0, Landroid/support/v4/xh1$do;

    invoke-direct {v0, p0}, Landroid/support/v4/xh1$do;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/support/v4/xh1$do;->for(I)Landroid/support/v4/xh1$do;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/support/v4/xh1$do;->do()Landroid/support/v4/xh1;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->strictfp:Landroid/support/v4/xh1;

    .line 12
    new-instance v0, Lcom/wsw/cospa/widget/MenuSettingDialog;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/widget/MenuSettingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->protected:Lcom/wsw/cospa/widget/MenuSettingDialog;

    .line 13
    new-instance v0, Lcom/wsw/cospa/widget/BrightnessSettingWindow;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/widget/BrightnessSettingWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->transient:Lcom/wsw/cospa/widget/BrightnessSettingWindow;

    .line 14
    invoke-static {p0}, Landroid/support/v4/j10;->throw(Landroid/app/Activity;)V

    .line 15
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v3, "hide_comic_status_key"

    invoke-virtual {v0, v3, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->comic_status_bar:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->comic_status_bar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 18
    :goto_1
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v3, "switch_eyecare_mode_key"

    invoke-virtual {v0, v3, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 19
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->super()V

    goto :goto_2

    .line 20
    :cond_4
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->if()V

    .line 21
    :goto_2
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v2, "read_comic_brightness_key"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/v02;->try(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 23
    iget-object v2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->v_brightness:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sub-float/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 24
    :cond_5
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const v2, 0x7f060141

    const-string v3, "comic_background_color"

    invoke-virtual {v0, v3, v2}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v0

    .line 25
    iget-object v2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->rootView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 26
    new-instance v0, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->interface:Lcom/wsw/cospa/widget/view/ChapterBottomSheet;

    .line 27
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->tvCatalog:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->autoPlayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->tvBrightness:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->tvSetting:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->tvSaveBook:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->tvRetry:Landroid/widget/TextView;

    new-instance v2, Landroid/support/v4/ci;

    invoke-direct {v2, p0}, Landroid/support/v4/ci;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->preChapter:Landroid/widget/TextView;

    new-instance v2, Landroid/support/v4/th;

    invoke-direct {v2, p0}, Landroid/support/v4/th;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->nextChapter:Landroid/widget/TextView;

    new-instance v2, Landroid/support/v4/wh;

    invoke-direct {v2, p0}, Landroid/support/v4/wh;-><init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->bsb_auto:Lcom/xw/repo/BubbleSeekBar;

    invoke-virtual {v0, p0}, Lcom/xw/repo/BubbleSeekBar;->setOnProgressChangedListener(Lcom/xw/repo/BubbleSeekBar$OnProgressChangedListener;)V

    .line 36
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mIndicatorRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 37
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->initChapterUrl(Z)V

    .line 38
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->initSkipChapter(Z)V

    .line 39
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->initSaveBookText(Z)V

    .line 40
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->catch:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-direct {p0, v0}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->n0(Lcom/wsw/cospa/bean/ComicShelfBean;)I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 41
    invoke-static {p0}, Landroid/support/v4/mm;->new(Landroid/content/Context;)[I

    move-result-object v0

    goto :goto_3

    :cond_6
    invoke-static {p0}, Landroid/support/v4/mm;->do(Landroid/content/Context;)[I

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->finally:[I

    return-void
.end method

.method public updateButtomRight(II)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mHeadTitleRight:Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "%d/%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-array v0, v1, [Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v5

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3
    sget-object p2, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->synchronized:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " updateButtomRight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/support/v4/vv0;->if(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateCatalog(Lcom/wsw/cospa/bean/ComicShelfBean;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->interface:Lcom/wsw/cospa/widget/view/ChapterBottomSheet;

    invoke-virtual {p2, p1}, Lcom/wsw/cospa/widget/view/ChapterBottomSheet;->initData(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    return-void
.end method

.method public updateChapterName(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->statusChapterText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateComicBook(Lcom/wsw/cospa/bean/ChapterListBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->this:Lcom/wsw/cospa/bean/ChapterListBean;

    return-void
.end method

.method public updatePageSeekBar(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mSeekBarScroll:Lcom/wsw/cospa/widget/view/ReverseSeekBar;

    invoke-virtual {v0, p2}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setMax(I)V

    .line 2
    iget-object p2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->mSeekBarScroll:Lcom/wsw/cospa/widget/view/ReverseSeekBar;

    invoke-virtual {p2, p1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setProgress(I)V

    return-void
.end method

.method public updateTitle(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->updateChapterUrl(Ljava/lang/String;)V

    return-void
.end method

.method public v1()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->transient:Lcom/wsw/cospa/widget/BrightnessSettingWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->transient:Lcom/wsw/cospa/widget/BrightnessSettingWindow;

    if-eqz v0, :cond_2

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->rootView:Landroid/widget/RelativeLayout;

    const/16 v2, 0x50

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_2
    return-void
.end method
