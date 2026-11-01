.class public Lcom/wsw/cospa/activity/LocalCompressActivity;
.super Lcom/wsw/cospa/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/wsw/cospa/widget/view/OnTapGestureListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/activity/LocalCompressActivity$try;,
        Lcom/wsw/cospa/activity/LocalCompressActivity$else;,
        Lcom/wsw/cospa/activity/LocalCompressActivity$case;,
        Lcom/wsw/cospa/activity/LocalCompressActivity$new;,
        Lcom/wsw/cospa/activity/LocalCompressActivity$CustomScrollListener;
    }
.end annotation


# static fields
.field private static final strictfp:Ljava/lang/String;


# instance fields
.field private abstract:Landroid/os/Handler;

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

.field private break:Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

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

.field private catch:Landroidx/recyclerview/widget/PagerSnapHelper;

.field private class:I

.field public comic_status_bar:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09010e
    .end annotation
.end field

.field public const:Z

.field public contentView:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090115
    .end annotation
.end field

.field private continue:Lcom/wsw/cospa/activity/LocalCompressActivity$new;

.field private default:Ljava/util/zip/ZipFile;

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

.field private extends:Lcom/wsw/cospa/adapter/LocalCompressAdapter;

.field private final:I

.field private finally:Lcom/wsw/cospa/bean/Node;

.field private goto:Lcom/gyf/immersionbar/else;

.field private import:Lcom/wsw/cospa/activity/LocalCompressActivity$case;

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

.field private native:I

.field public nextChapter:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902fb
    .end annotation
.end field

.field private package:Lcom/wsw/cospa/widget/MenuSettingDialog;

.field public preChapter:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090332
    .end annotation
.end field

.field private private:Lcom/wsw/cospa/widget/BrightnessSettingWindow;

.field private public:Z

.field private final return:J

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

.field private static:[Ljava/lang/String;

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

.field private super:I

.field public switch:Lcom/wsw/cospa/bean/RipeFile;

.field private this:[I

.field private throw:Z

.field public throws:Ljava/lang/Integer;

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

.field private while:Landroid/graphics/RectF;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/wsw/cospa/activity/LocalCompressActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wsw/cospa/activity/LocalCompressActivity;->strictfp:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->class:I

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->const:Z

    .line 4
    iput v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->final:I

    .line 5
    iput v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->super:I

    .line 6
    iput-boolean v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->throw:Z

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->while:Landroid/graphics/RectF;

    const/4 v2, -0x1

    .line 8
    iput v2, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->native:I

    .line 9
    iput-boolean v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->public:Z

    const-wide/16 v2, 0x5

    .line 10
    iput-wide v2, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->return:J

    const-string v4, "png"

    const-string v5, "jpg"

    const-string v6, "jpeg"

    const-string v7, "webp"

    const-string v8, "gif"

    const-string v9, "zip"

    const-string v10, "rar"

    .line 11
    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->static:[Ljava/lang/String;

    .line 12
    new-instance v0, Lcom/wsw/cospa/bean/Node;

    invoke-direct {v0}, Lcom/wsw/cospa/bean/Node;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->finally:Lcom/wsw/cospa/bean/Node;

    .line 13
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->abstract:Landroid/os/Handler;

    .line 14
    new-instance v0, Lcom/wsw/cospa/activity/LocalCompressActivity$new;

    invoke-direct {v0, p0, v1}, Lcom/wsw/cospa/activity/LocalCompressActivity$new;-><init>(Lcom/wsw/cospa/activity/LocalCompressActivity;Lcom/wsw/cospa/activity/LocalCompressActivity$do;)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->continue:Lcom/wsw/cospa/activity/LocalCompressActivity$new;

    return-void
.end method

.method private synthetic A(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_mode_normal_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic B(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_mode_normal_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic C(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_japan_mode_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic D(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_japan_mode_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic E(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_japan_mode_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic F(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_japan_mode_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic G(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_japan_mode_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic H(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_japan_mode_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic I(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->scroll_mode_event_up_down:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_mode_roll_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic J(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_japan_mode_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic K(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->scroll_mode_event_up_down:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_mode_roll_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic L(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->scroll_mode_event_up_down:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_mode_roll_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic M(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->scroll_mode_event_up_down:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_mode_roll_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic N(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->scroll_mode_event_up_down:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_mode_roll_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic O(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_mode_normal_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic P(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_mode_normal_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic Q(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_mode_normal_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method private R(Lcom/wsw/cospa/bean/Node;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/wsw/cospa/bean/Node;->children:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wsw/cospa/bean/Node;

    .line 4
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-boolean v3, v3, Lcom/wsw/cospa/bean/Node;->isDir:Z

    if-nez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0, v0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->e0(Ljava/util/List;)V

    if-eqz v2, :cond_2

    .line 7
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->extends:Lcom/wsw/cospa/adapter/LocalCompressAdapter;

    iget-object v2, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->default:Ljava/util/zip/ZipFile;

    invoke-virtual {p1, v4, v0, v1, v2}, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->import(ZLjava/util/List;ZLjava/util/zip/ZipFile;)V

    :cond_2
    return-void
.end method

.method private S()V
    .locals 0

    return-void
.end method

.method private T()V
    .locals 0

    return-void
.end method

.method public static U(Landroidx/recyclerview/widget/LinearLayoutManager;Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p0

    if-gt p2, v0, :cond_0

    .line 3
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0

    :cond_0
    if-gt p2, p0, :cond_1

    sub-int/2addr p2, v0

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p0

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p1, p2, p0}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_0

    :cond_1
    if-lez p2, :cond_2

    add-int/lit8 p2, p2, -0x1

    .line 6
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :goto_0
    return-void
.end method

.method private V()V
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
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v1

    const-string v2, "read_mode_key"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->break:Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    iget-object v2, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->extends:Lcom/wsw/cospa/adapter/LocalCompressAdapter;

    invoke-virtual {v2}, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->S()V

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->mZoomRecyclerView:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    const/4 v2, 0x0

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->q()I

    move-result v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 8
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->extends:Lcom/wsw/cospa/adapter/LocalCompressAdapter;

    invoke-virtual {v1}, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v3

    if-ne v0, v1, :cond_2

    .line 9
    invoke-direct {p0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->S()V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    add-int/2addr v0, v3

    invoke-virtual {v1, v0}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->smoothScrollToPosition(I)V

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    .line 11
    invoke-direct {p0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->T()V

    goto :goto_0

    .line 12
    :cond_4
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    sub-int/2addr v0, v3

    invoke-virtual {v1, v0}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->smoothScrollToPosition(I)V

    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/wsw/cospa/activity/LocalCompressActivity;)Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->break:Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    return-object p0
.end method

.method public static synthetic abstract(Lcom/wsw/cospa/activity/LocalCompressActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalCompressActivity;->A(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/wsw/cospa/activity/LocalCompressActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->V()V

    return-void
.end method

.method public static synthetic c(Lcom/wsw/cospa/activity/LocalCompressActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->k0()V

    return-void
.end method

.method public static synthetic continue(Lcom/wsw/cospa/activity/LocalCompressActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalCompressActivity;->C(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/wsw/cospa/activity/LocalCompressActivity;)Lcom/wsw/cospa/activity/LocalCompressActivity$case;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->import:Lcom/wsw/cospa/activity/LocalCompressActivity$case;

    return-object p0
.end method

.method private d0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/zip/ZipEntry;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lcom/wsw/cospa/activity/LocalCompressActivity$else;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wsw/cospa/activity/LocalCompressActivity$else;-><init>(Lcom/wsw/cospa/activity/LocalCompressActivity;Lcom/wsw/cospa/activity/LocalCompressActivity$do;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    return-void
.end method

.method public static synthetic default(Lcom/wsw/cospa/activity/LocalCompressActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalCompressActivity;->D(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/wsw/cospa/activity/LocalCompressActivity;Lcom/wsw/cospa/activity/LocalCompressActivity$case;)Lcom/wsw/cospa/activity/LocalCompressActivity$case;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->import:Lcom/wsw/cospa/activity/LocalCompressActivity$case;

    return-object p1
.end method

.method private e0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/Node;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lcom/wsw/cospa/activity/LocalCompressActivity$try;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wsw/cospa/activity/LocalCompressActivity$try;-><init>(Lcom/wsw/cospa/activity/LocalCompressActivity;Lcom/wsw/cospa/activity/LocalCompressActivity$do;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    return-void
.end method

.method public static synthetic extends(Lcom/wsw/cospa/activity/LocalCompressActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalCompressActivity;->F(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/wsw/cospa/activity/LocalCompressActivity;)Lcom/wsw/cospa/adapter/LocalCompressAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->extends:Lcom/wsw/cospa/adapter/LocalCompressAdapter;

    return-object p0
.end method

.method public static f0(Landroid/content/Context;Ljava/lang/String;Lcom/wsw/cospa/bean/RipeFile;Ljava/lang/Integer;)V
    .locals 1

    .line 1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/wsw/cospa/activity/LocalCompressActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "RipeFile"

    .line 2
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "POSITION"

    .line 3
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic finally(Lcom/wsw/cospa/activity/LocalCompressActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalCompressActivity;->O(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/wsw/cospa/activity/LocalCompressActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalCompressActivity;->j0(I)V

    return-void
.end method

.method private g0()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->public:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->public:Z

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->ll_auto:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->ll_seek_progress:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->ivAutoPlay:Landroid/widget/ImageView;

    const v3, 0x7f08010c

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v1

    const-string v3, "read_mode_key"

    invoke-virtual {v1, v3, v0}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->continue:Lcom/wsw/cospa/activity/LocalCompressActivity$new;

    iput v2, v0, Lcom/wsw/cospa/activity/LocalCompressActivity$new;->do:I

    const v1, 0x7fffffff

    .line 8
    iput v1, v0, Lcom/wsw/cospa/activity/LocalCompressActivity$new;->if:I

    .line 9
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->bsb_auto:Lcom/xw/repo/BubbleSeekBar;

    invoke-virtual {v1}, Lcom/xw/repo/BubbleSeekBar;->getProgressFloat()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    invoke-static {p0, v1}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/wsw/cospa/activity/LocalCompressActivity$new;->for:I

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->abstract:Landroid/os/Handler;

    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->continue:Lcom/wsw/cospa/activity/LocalCompressActivity$new;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->bsb_auto:Lcom/xw/repo/BubbleSeekBar;

    invoke-virtual {v0}, Lcom/xw/repo/BubbleSeekBar;->getMax()F

    move-result v0

    .line 12
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->bsb_auto:Lcom/xw/repo/BubbleSeekBar;

    invoke-virtual {v1}, Lcom/xw/repo/BubbleSeekBar;->getProgressFloat()F

    move-result v1

    .line 13
    iget-object v2, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->abstract:Landroid/os/Handler;

    iget-object v3, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->continue:Lcom/wsw/cospa/activity/LocalCompressActivity$new;

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

.method public static synthetic h(Lcom/wsw/cospa/activity/LocalCompressActivity;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->r()I

    move-result p0

    return p0
.end method

.method private h0()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->public:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->public:Z

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->ll_auto:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->ll_seek_progress:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->ivAutoPlay:Landroid/widget/ImageView;

    const v2, 0x7f080107

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->continue:Lcom/wsw/cospa/activity/LocalCompressActivity$new;

    iput v0, v1, Lcom/wsw/cospa/activity/LocalCompressActivity$new;->if:I

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->abstract:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic i(Lcom/wsw/cospa/activity/LocalCompressActivity;)Lcom/gyf/immersionbar/else;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->goto:Lcom/gyf/immersionbar/else;

    return-object p0
.end method

.method public static synthetic implements(Lcom/wsw/cospa/activity/LocalCompressActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalCompressActivity;->y(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic import(Lcom/wsw/cospa/activity/LocalCompressActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalCompressActivity;->I(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic instanceof(Lcom/wsw/cospa/activity/LocalCompressActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalCompressActivity;->H(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic interface(Lcom/wsw/cospa/activity/LocalCompressActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalCompressActivity;->N(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j(Lcom/wsw/cospa/activity/LocalCompressActivity;)Lcom/wsw/cospa/activity/LocalCompressActivity$new;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->continue:Lcom/wsw/cospa/activity/LocalCompressActivity$new;

    return-object p0
.end method

.method private j0(I)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "read_mode_key"

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/v02;->else(Ljava/lang/String;I)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    return-void
.end method

.method public static synthetic k(Lcom/wsw/cospa/activity/LocalCompressActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->abstract:Landroid/os/Handler;

    return-object p0
.end method

.method private k0()V
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/support/v4/j8;->do(Landroid/content/Context;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->statusBatteryText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->batteryView:Lcom/wsw/cospa/widget/view/BatteryView;

    invoke-virtual {v1, v0}, Lcom/wsw/cospa/widget/view/BatteryView;->setPower(I)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->statusTimeText:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "HH:mm"

    invoke-static {v1, v2, v3}, Landroid/support/v4/l22;->for(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic native(Lcom/wsw/cospa/activity/LocalCompressActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalCompressActivity;->E(Landroid/view/View;)V

    return-void
.end method

.method public static o(Landroid/app/Activity;)V
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

.method private p(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->i0()V

    goto :goto_0

    .line 2
    :cond_1
    invoke-direct {p0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->S()V

    goto :goto_0

    .line 3
    :cond_2
    invoke-direct {p0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->T()V

    goto :goto_0

    .line 4
    :cond_3
    invoke-direct {p0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->V()V

    goto :goto_0

    .line 5
    :cond_4
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->X()V

    :goto_0
    return-void
.end method

.method public static synthetic package(Lcom/wsw/cospa/activity/LocalCompressActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalCompressActivity;->M(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic private(Lcom/wsw/cospa/activity/LocalCompressActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalCompressActivity;->G(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic protected(Lcom/wsw/cospa/activity/LocalCompressActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalCompressActivity;->P(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic public(Lcom/wsw/cospa/activity/LocalCompressActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalCompressActivity;->J(Landroid/view/View;)V

    return-void
.end method

.method private r()I
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "read_mode_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static synthetic return(Lcom/wsw/cospa/activity/LocalCompressActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalCompressActivity;->K(Landroid/view/View;)V

    return-void
.end method

.method private s(FF)I
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
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v1

    const-string v2, "read_mode_key"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v1

    .line 4
    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v2, v4

    .line 5
    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_2

    cmpg-float p1, p2, v0

    if-gez p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->this:[I

    aget p1, p1, v5

    return p1

    :cond_0
    cmpl-float p1, p2, v0

    if-lez p1, :cond_1

    mul-float p1, v0, v6

    cmpg-float p1, p2, p1

    if-gez p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->this:[I

    aget p1, p1, v3

    return p1

    :cond_1
    mul-float v0, v0, v6

    cmpl-float p1, p2, v0

    if-lez p1, :cond_8

    .line 8
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->this:[I

    aget p1, p1, v4

    return p1

    :cond_2
    const/4 p2, 0x3

    if-ne v1, p2, :cond_5

    cmpg-float p2, p1, v2

    if-gez p2, :cond_3

    .line 9
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->this:[I

    aget p1, p1, v4

    return p1

    :cond_3
    cmpl-float p2, p1, v2

    if-lez p2, :cond_4

    mul-float p2, v2, v6

    cmpg-float p2, p1, p2

    if-gez p2, :cond_4

    .line 10
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->this:[I

    aget p1, p1, v3

    return p1

    :cond_4
    mul-float v2, v2, v6

    cmpl-float p1, p1, v2

    if-lez p1, :cond_8

    .line 11
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->this:[I

    aget p1, p1, v5

    return p1

    :cond_5
    cmpg-float p2, p1, v2

    if-gez p2, :cond_6

    .line 12
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->this:[I

    aget p1, p1, v5

    return p1

    :cond_6
    cmpl-float p2, p1, v2

    if-lez p2, :cond_7

    mul-float p2, v2, v6

    cmpg-float p2, p1, p2

    if-gez p2, :cond_7

    .line 13
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->this:[I

    aget p1, p1, v3

    return p1

    :cond_7
    mul-float v2, v2, v6

    cmpl-float p1, p1, v2

    if-lez p1, :cond_8

    .line 14
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->this:[I

    aget p1, p1, v4

    return p1

    :cond_8
    return v5
.end method

.method public static synthetic static(Lcom/wsw/cospa/activity/LocalCompressActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalCompressActivity;->z(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic strictfp(Lcom/wsw/cospa/activity/LocalCompressActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalCompressActivity;->L(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic switch(Lcom/wsw/cospa/activity/LocalCompressActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalCompressActivity;->B(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic synchronized(Lcom/wsw/cospa/activity/LocalCompressActivity;)Lcom/wsw/cospa/widget/MenuSettingDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->package:Lcom/wsw/cospa/widget/MenuSettingDialog;

    return-object p0
.end method

.method private t()V
    .locals 11

    .line 1
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "read_mode_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 2
    invoke-static {p0}, Landroid/support/v4/mm;->new(Landroid/content/Context;)[I

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/support/v4/mm;->do(Landroid/content/Context;)[I

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->this:[I

    const/4 v1, 0x3

    const/4 v3, 0x2

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ne v0, v2, :cond_1

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v6

    const-string v7, "show_mode_roll_click_tips"

    invoke-virtual {v6, v7, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v6

    .line 4
    iget-object v7, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->scroll_mode_event_up_down:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object v7, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object v7, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->ll_click_event:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/support/v4/xt0;

    invoke-direct {v8, p0}, Landroid/support/v4/xt0;-><init>(Lcom/wsw/cospa/activity/LocalCompressActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v7, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->iv_close_up_down_tips:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v8, Landroid/support/v4/au0;

    invoke-direct {v8, p0}, Landroid/support/v4/au0;-><init>(Lcom/wsw/cospa/activity/LocalCompressActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v7, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->ll_up_down_tips:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/support/v4/rt0;

    invoke-direct {v8, p0}, Landroid/support/v4/rt0;-><init>(Lcom/wsw/cospa/activity/LocalCompressActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v7, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->ll_up_down_content:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/support/v4/fu0;

    invoke-direct {v8, p0}, Landroid/support/v4/fu0;-><init>(Lcom/wsw/cospa/activity/LocalCompressActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v7, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->event_top:Landroid/widget/Button;

    new-instance v8, Landroid/support/v4/wt0;

    invoke-direct {v8, p0}, Landroid/support/v4/wt0;-><init>(Lcom/wsw/cospa/activity/LocalCompressActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v7, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->event_up_down_middle:Landroid/widget/Button;

    new-instance v8, Landroid/support/v4/st0;

    invoke-direct {v8, p0}, Landroid/support/v4/st0;-><init>(Lcom/wsw/cospa/activity/LocalCompressActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v7, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->event_bottom:Landroid/widget/Button;

    new-instance v8, Landroid/support/v4/yt0;

    invoke-direct {v8, p0}, Landroid/support/v4/yt0;-><init>(Lcom/wsw/cospa/activity/LocalCompressActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    :cond_1
    const-string v6, "\u4e0a\u4e00\u9875"

    const-string v7, "\u4e0b\u4e00\u9875"

    if-ne v0, v3, :cond_2

    .line 13
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v8

    const-string v9, "show_mode_normal_click_tips"

    invoke-virtual {v8, v9, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v8

    .line 14
    iget-object v9, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->scroll_mode_event_up_down:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 15
    iget-object v9, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 16
    iget-object v9, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->ll_click_event:Landroid/widget/LinearLayout;

    new-instance v10, Landroid/support/v4/lu0;

    invoke-direct {v10, p0}, Landroid/support/v4/lu0;-><init>(Lcom/wsw/cospa/activity/LocalCompressActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object v9, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->iv_close_left_right_tips:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v10, Landroid/support/v4/zt0;

    invoke-direct {v10, p0}, Landroid/support/v4/zt0;-><init>(Lcom/wsw/cospa/activity/LocalCompressActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object v9, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->ll_left_right_tips:Landroid/widget/LinearLayout;

    new-instance v10, Landroid/support/v4/iu0;

    invoke-direct {v10, p0}, Landroid/support/v4/iu0;-><init>(Lcom/wsw/cospa/activity/LocalCompressActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object v9, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->ll_left_right_content:Landroid/widget/LinearLayout;

    new-instance v10, Landroid/support/v4/bu0;

    invoke-direct {v10, p0}, Landroid/support/v4/bu0;-><init>(Lcom/wsw/cospa/activity/LocalCompressActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object v9, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->event_left:Landroid/widget/Button;

    new-instance v10, Landroid/support/v4/gu0;

    invoke-direct {v10, p0}, Landroid/support/v4/gu0;-><init>(Lcom/wsw/cospa/activity/LocalCompressActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object v9, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->event_middle:Landroid/widget/Button;

    new-instance v10, Landroid/support/v4/ut0;

    invoke-direct {v10, p0}, Landroid/support/v4/ut0;-><init>(Lcom/wsw/cospa/activity/LocalCompressActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object v9, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->event_right:Landroid/widget/Button;

    new-instance v10, Landroid/support/v4/hu0;

    invoke-direct {v10, p0}, Landroid/support/v4/hu0;-><init>(Lcom/wsw/cospa/activity/LocalCompressActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object v9, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->event_right:Landroid/widget/Button;

    invoke-virtual {v9, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v7, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->event_left:Landroid/widget/Button;

    invoke-virtual {v7, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    move v6, v8

    goto :goto_2

    :cond_2
    if-ne v0, v1, :cond_3

    .line 25
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v8

    const-string v9, "show_japan_mode_click_tips"

    invoke-virtual {v8, v9, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v8

    .line 26
    iget-object v9, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->scroll_mode_event_up_down:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 27
    iget-object v9, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 28
    iget-object v9, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->ll_click_event:Landroid/widget/LinearLayout;

    new-instance v10, Landroid/support/v4/vt0;

    invoke-direct {v10, p0}, Landroid/support/v4/vt0;-><init>(Lcom/wsw/cospa/activity/LocalCompressActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object v9, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->iv_close_left_right_tips:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v10, Landroid/support/v4/ju0;

    invoke-direct {v10, p0}, Landroid/support/v4/ju0;-><init>(Lcom/wsw/cospa/activity/LocalCompressActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object v9, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->ll_left_right_tips:Landroid/widget/LinearLayout;

    new-instance v10, Landroid/support/v4/cu0;

    invoke-direct {v10, p0}, Landroid/support/v4/cu0;-><init>(Lcom/wsw/cospa/activity/LocalCompressActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object v9, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->ll_left_right_content:Landroid/widget/LinearLayout;

    new-instance v10, Landroid/support/v4/ku0;

    invoke-direct {v10, p0}, Landroid/support/v4/ku0;-><init>(Lcom/wsw/cospa/activity/LocalCompressActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v9, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->event_left:Landroid/widget/Button;

    new-instance v10, Landroid/support/v4/tt0;

    invoke-direct {v10, p0}, Landroid/support/v4/tt0;-><init>(Lcom/wsw/cospa/activity/LocalCompressActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object v9, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->event_middle:Landroid/widget/Button;

    new-instance v10, Landroid/support/v4/du0;

    invoke-direct {v10, p0}, Landroid/support/v4/du0;-><init>(Lcom/wsw/cospa/activity/LocalCompressActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v9, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->event_right:Landroid/widget/Button;

    new-instance v10, Landroid/support/v4/eu0;

    invoke-direct {v10, p0}, Landroid/support/v4/eu0;-><init>(Lcom/wsw/cospa/activity/LocalCompressActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object v9, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->event_right:Landroid/widget/Button;

    invoke-virtual {v9, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v6, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->event_left:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    const/4 v6, 0x1

    :goto_2
    if-eqz v6, :cond_4

    .line 37
    iget-object v6, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    .line 38
    :cond_4
    iget-object v6, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_3
    const-string v6, "double_click_zoom_key"

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_5

    .line 39
    iget-object v8, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->mZoomRecyclerView:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 40
    iget-object v8, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 41
    iget-object v4, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->mZoomRecyclerView:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    invoke-virtual {v4, v7}, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->setScaleFactor(F)V

    .line 42
    iget-object v4, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->mZoomRecyclerView:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v8

    invoke-virtual {v8, v6, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v4, v8}, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->setDoubleTap(Z)V

    .line 43
    iget-object v4, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->mZoomRecyclerView:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    invoke-virtual {v4, p0}, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->setTapListenerListener(Lcom/wsw/cospa/widget/view/OnTapGestureListener;)V

    goto :goto_5

    .line 44
    :cond_5
    iget-object v8, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->mZoomRecyclerView:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 45
    iget-object v4, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 46
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v4

    const-string v8, "quick_page_key"

    invoke-virtual {v4, v8, v5}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 47
    iget-object v4, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    const v8, 0x358637bd    # 1.0E-6f

    invoke-virtual {v4, v8}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->setScrollSpeed(F)V

    goto :goto_4

    .line 48
    :cond_6
    iget-object v4, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    const v8, 0x3df5c28f    # 0.12f

    invoke-virtual {v4, v8}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->setScrollSpeed(F)V

    .line 49
    :goto_4
    iget-object v4, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    const v8, 0x3e4ccccc    # 0.19999999f

    invoke-virtual {v4, v8}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->setTriggerOffset(F)V

    .line 50
    iget-object v4, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    invoke-virtual {v4, v7}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->setScaleFactor(F)V

    .line 51
    iget-object v4, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v8

    invoke-virtual {v8, v6, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v4, v8}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->setDoubleTap(Z)V

    .line 52
    iget-object v4, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    invoke-virtual {v4, p0}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->setTapListenerListener(Lcom/wsw/cospa/widget/view/OnTapGestureListener;)V

    .line 53
    :goto_5
    new-instance v4, Lcom/wsw/cospa/activity/LocalCompressActivity$do;

    invoke-direct {v4, p0, p0}, Lcom/wsw/cospa/activity/LocalCompressActivity$do;-><init>(Lcom/wsw/cospa/activity/LocalCompressActivity;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->break:Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    const/4 v8, 0x0

    if-ne v0, v3, :cond_7

    .line 54
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 55
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    iget-object v3, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->break:Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    invoke-virtual {v1, v3}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 56
    new-instance v1, Landroidx/recyclerview/widget/PagerSnapHelper;

    invoke-direct {v1}, Landroidx/recyclerview/widget/PagerSnapHelper;-><init>()V

    iput-object v1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->catch:Landroidx/recyclerview/widget/PagerSnapHelper;

    .line 57
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    invoke-virtual {v1, v8}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;)V

    .line 58
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->catch:Landroidx/recyclerview/widget/PagerSnapHelper;

    iget-object v3, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_6

    :cond_7
    if-ne v0, v1, :cond_8

    .line 59
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 60
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->break:Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 61
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    iget-object v3, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->break:Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    invoke-virtual {v1, v3}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 62
    new-instance v1, Landroidx/recyclerview/widget/PagerSnapHelper;

    invoke-direct {v1}, Landroidx/recyclerview/widget/PagerSnapHelper;-><init>()V

    iput-object v1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->catch:Landroidx/recyclerview/widget/PagerSnapHelper;

    .line 63
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    invoke-virtual {v1, v8}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;)V

    .line 64
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->catch:Landroidx/recyclerview/widget/PagerSnapHelper;

    iget-object v3, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_6

    .line 65
    :cond_8
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 66
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->mZoomRecyclerView:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    iget-object v3, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->break:Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 67
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->catch:Landroidx/recyclerview/widget/PagerSnapHelper;

    if-eqz v1, :cond_9

    .line 68
    invoke-virtual {v1, v8}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 69
    :cond_9
    :goto_6
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->package:Lcom/wsw/cospa/widget/MenuSettingDialog;

    invoke-virtual {v1}, Lcom/wsw/cospa/widget/MenuSettingDialog;->initClickTips()V

    .line 70
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->package:Lcom/wsw/cospa/widget/MenuSettingDialog;

    invoke-virtual {v1, v0}, Lcom/wsw/cospa/widget/MenuSettingDialog;->updateReadModeColor(I)V

    .line 71
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->package:Lcom/wsw/cospa/widget/MenuSettingDialog;

    new-instance v3, Lcom/wsw/cospa/activity/LocalCompressActivity$if;

    invoke-direct {v3, p0}, Lcom/wsw/cospa/activity/LocalCompressActivity$if;-><init>(Lcom/wsw/cospa/activity/LocalCompressActivity;)V

    invoke-virtual {v1, v3}, Lcom/wsw/cospa/widget/MenuSettingDialog;->setOnCallbackListener(Lcom/wsw/cospa/widget/MenuSettingDialog$onCallbackListener;)V

    .line 72
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->private:Lcom/wsw/cospa/widget/BrightnessSettingWindow;

    new-instance v3, Lcom/wsw/cospa/activity/LocalCompressActivity$for;

    invoke-direct {v3, p0}, Lcom/wsw/cospa/activity/LocalCompressActivity$for;-><init>(Lcom/wsw/cospa/activity/LocalCompressActivity;)V

    invoke-virtual {v1, v3}, Lcom/wsw/cospa/widget/BrightnessSettingWindow;->setOnBrightnessSettingListener(Lcom/wsw/cospa/widget/BrightnessSettingWindow$onBrightnessSettingListener;)V

    if-ne v0, v2, :cond_a

    .line 73
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->mZoomRecyclerView:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    goto :goto_7

    .line 74
    :cond_a
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    .line 75
    :goto_7
    new-instance v3, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v3}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    const/16 v4, 0xa

    .line 76
    invoke-virtual {v3, v5, v4}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 77
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    .line 78
    new-instance v3, Lcom/wsw/cospa/adapter/LocalCompressAdapter;

    invoke-direct {v3, p0, v0}, Lcom/wsw/cospa/adapter/LocalCompressAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->extends:Lcom/wsw/cospa/adapter/LocalCompressAdapter;

    .line 79
    invoke-virtual {v3, p0}, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->setTapGestureListener(Lcom/wsw/cospa/widget/view/OnTapGestureListener;)V

    .line 80
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->extends:Lcom/wsw/cospa/adapter/LocalCompressAdapter;

    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v3

    const-string v9, "pref_reader_paging"

    invoke-virtual {v3, v9, v5}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->return(Z)V

    .line 81
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->extends:Lcom/wsw/cospa/adapter/LocalCompressAdapter;

    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v3

    const-string v9, "pref_reader_paging_reverse"

    invoke-virtual {v3, v9, v5}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->static(Z)V

    .line 82
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->extends:Lcom/wsw/cospa/adapter/LocalCompressAdapter;

    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v3

    const-string v9, "pref_reader_white_edge"

    invoke-virtual {v3, v9, v5}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->throws(Z)V

    .line 83
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->extends:Lcom/wsw/cospa/adapter/LocalCompressAdapter;

    invoke-virtual {v0, v7}, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->switch(F)V

    .line 84
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->extends:Lcom/wsw/cospa/adapter/LocalCompressAdapter;

    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v3

    invoke-virtual {v3, v6, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->public(Z)V

    .line 85
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->extends:Lcom/wsw/cospa/adapter/LocalCompressAdapter;

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->native(Z)V

    .line 86
    invoke-virtual {v1, v8}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 87
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 88
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 89
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->extends:Lcom/wsw/cospa/adapter/LocalCompressAdapter;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public static synthetic throws(Lcom/wsw/cospa/activity/LocalCompressActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalCompressActivity;->Q(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic transient(Lcom/wsw/cospa/activity/LocalCompressActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalCompressActivity;->x(Landroid/view/View;)V

    return-void
.end method

.method private u()V
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "read_mode_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->mSeekBarScroll:Lcom/wsw/cospa/widget/view/ReverseSeekBar;

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/wsw/cospa/widget/view/ReverseSeekBar;->setReverse(Z)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->mSeekBarScroll:Lcom/wsw/cospa/widget/view/ReverseSeekBar;

    invoke-virtual {v0, p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setOnProgressChangeListener(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;)V

    return-void
.end method

.method private v()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->extends:Lcom/wsw/cospa/adapter/LocalCompressAdapter;

    invoke-virtual {v0}, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->break:Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    .line 3
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->break:Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

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

.method public static synthetic volatile(Lcom/wsw/cospa/activity/LocalCompressActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalCompressActivity;->w(Landroid/view/View;)V

    return-void
.end method

.method private synthetic w(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->scroll_mode_event_up_down:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_mode_roll_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic x(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->scroll_mode_event_up_down:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_mode_roll_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic y(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_mode_normal_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic z(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_mode_normal_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public W(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/zip/ZipEntry;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 2
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "/"

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 5
    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 7
    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 8
    new-instance v2, Lcom/wsw/cospa/bean/Node;

    invoke-direct {v2}, Lcom/wsw/cospa/bean/Node;-><init>()V

    .line 9
    array-length v6, v1

    sub-int/2addr v6, v5

    aget-object v6, v1, v6

    iput-object v6, v2, Lcom/wsw/cospa/bean/Node;->name:Ljava/lang/String;

    .line 10
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/wsw/cospa/bean/Node;->time:J

    .line 11
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/wsw/cospa/bean/Node;->size:J

    .line 12
    iput-object v0, v2, Lcom/wsw/cospa/bean/Node;->zipEntry:Ljava/util/zip/ZipEntry;

    .line 13
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v0

    iput-boolean v0, v2, Lcom/wsw/cospa/bean/Node;->isDir:Z

    .line 14
    array-length v0, v1

    if-ne v0, v5, :cond_2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/wsw/cospa/bean/Node;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/wsw/cospa/bean/Node;->path:Ljava/lang/String;

    .line 16
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->finally:Lcom/wsw/cospa/bean/Node;

    iput-object v0, v2, Lcom/wsw/cospa/bean/Node;->parent:Lcom/wsw/cospa/bean/Node;

    .line 17
    iget-object v0, v0, Lcom/wsw/cospa/bean/Node;->children:Ljava/util/Map;

    iget-object v1, v2, Lcom/wsw/cospa/bean/Node;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->finally:Lcom/wsw/cospa/bean/Node;

    .line 19
    :goto_1
    array-length v6, v1

    sub-int/2addr v6, v5

    if-ge v3, v6, :cond_4

    .line 20
    aget-object v6, v1, v3

    .line 21
    iget-object v7, v0, Lcom/wsw/cospa/bean/Node;->children:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 22
    iget-object v0, v0, Lcom/wsw/cospa/bean/Node;->children:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/Node;

    goto :goto_2

    .line 23
    :cond_3
    new-instance v7, Lcom/wsw/cospa/bean/Node;

    invoke-direct {v7}, Lcom/wsw/cospa/bean/Node;-><init>()V

    .line 24
    iput-object v0, v7, Lcom/wsw/cospa/bean/Node;->parent:Lcom/wsw/cospa/bean/Node;

    .line 25
    iput-object v6, v7, Lcom/wsw/cospa/bean/Node;->name:Ljava/lang/String;

    .line 26
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lcom/wsw/cospa/bean/Node;->path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v7, Lcom/wsw/cospa/bean/Node;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/wsw/cospa/bean/Node;->path:Ljava/lang/String;

    .line 27
    iput-boolean v5, v7, Lcom/wsw/cospa/bean/Node;->isDir:Z

    .line 28
    iget-object v0, v0, Lcom/wsw/cospa/bean/Node;->children:Ljava/util/Map;

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v7

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 29
    :cond_4
    iput-object v0, v2, Lcom/wsw/cospa/bean/Node;->parent:Lcom/wsw/cospa/bean/Node;

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/wsw/cospa/bean/Node;->path:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/wsw/cospa/bean/Node;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/wsw/cospa/bean/Node;->path:Ljava/lang/String;

    .line 31
    iget-object v0, v0, Lcom/wsw/cospa/bean/Node;->children:Ljava/util/Map;

    iget-object v1, v2, Lcom/wsw/cospa/bean/Node;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public X()V
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
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->q()I

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
    iget-object v2, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->mZoomRecyclerView:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    const/4 v3, 0x0

    iget v0, v0, Landroid/graphics/Point;->y:I

    neg-int v0, v0

    invoke-virtual {v2, v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    if-nez v1, :cond_2

    .line 6
    invoke-direct {p0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->T()V

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->T()V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->smoothScrollToPosition(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public Y(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->default:Ljava/util/zip/ZipFile;

    .line 3
    iget-object v2, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->finally:Lcom/wsw/cospa/bean/Node;

    iput-object p1, v2, Lcom/wsw/cospa/bean/Node;->path:Ljava/lang/String;

    .line 4
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/wsw/cospa/bean/Node;->name:Ljava/lang/String;

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->finally:Lcom/wsw/cospa/bean/Node;

    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->default:Ljava/util/zip/ZipFile;

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->size()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p1, Lcom/wsw/cospa/bean/Node;->size:J

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->default:Ljava/util/zip/ZipFile;

    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p1

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-object v0
.end method

.method public Z()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->error_view:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->mIndicatorView:Lcom/wang/avi/AVLoadingIndicatorView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/wang/avi/AVLoadingIndicatorView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->contentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->tvErrorView:Landroid/widget/TextView;

    const-string v2, "\u6f2b\u753b\u5df2\u4e0b\u67b6\u6216\u662f\u4ed8\u8d39\u7ae0\u8282\uff01"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iput-boolean v1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->const:Z

    return-void
.end method

.method public a0(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->error_view:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->mIndicatorView:Lcom/wang/avi/AVLoadingIndicatorView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/wang/avi/AVLoadingIndicatorView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->contentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->tvErrorView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iput-boolean v1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->const:Z

    return-void
.end method

.method public b0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->private:Lcom/wsw/cospa/widget/BrightnessSettingWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->private:Lcom/wsw/cospa/widget/BrightnessSettingWindow;

    if-eqz v0, :cond_2

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->rootView:Landroid/widget/RelativeLayout;

    const/16 v2, 0x50

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_2
    return-void
.end method

.method public c0(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "\\d+"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, p1

    const-string p1, "%04d"

    invoke-static {p1, v2}, Landroid/support/v4/l22;->case(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public case()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "RipeFile"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/RipeFile;

    iput-object v1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->switch:Lcom/wsw/cospa/bean/RipeFile;

    const-string v1, "POSITION"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->throws:Ljava/lang/Integer;

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->showProgress()V

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->switch:Lcom/wsw/cospa/bean/RipeFile;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/RipeFile;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->Y(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-virtual {p0, v0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->W(Ljava/util/List;)V

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->finally:Lcom/wsw/cospa/bean/Node;

    invoke-direct {p0, v0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->R(Lcom/wsw/cospa/bean/Node;)V

    .line 8
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->hideProgress()V

    return-void
.end method

.method public goto()Landroid/support/v4/m7;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hideProgress()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->error_view:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->mIndicatorView:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {v0, v1}, Lcom/wang/avi/AVLoadingIndicatorView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->contentView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->const:Z

    return-void
.end method

.method public i0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    invoke-virtual {v0}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->setVisibility(I)V

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->m()V

    return-void
.end method

.method public l()V
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
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->q()I

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
    iget-object v2, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->mZoomRecyclerView:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    const/4 v3, 0x0

    iget v0, v0, Landroid/graphics/Point;->y:I

    neg-int v0, v0

    invoke-virtual {v2, v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    if-nez v1, :cond_4

    .line 6
    invoke-direct {p0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->T()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne v2, v0, :cond_2

    if-nez v1, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->T()V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->extends:Lcom/wsw/cospa/adapter/LocalCompressAdapter;

    invoke-virtual {v0}, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v4

    if-ne v1, v0, :cond_3

    .line 10
    invoke-direct {p0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->S()V

    goto :goto_0

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    add-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->smoothScrollToPosition(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public m()V
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
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->goto:Lcom/gyf/immersionbar/else;

    sget-object v1, Lcom/gyf/immersionbar/if;->FLAG_HIDE_BAR:Lcom/gyf/immersionbar/if;

    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/else;->Z(Lcom/gyf/immersionbar/if;)Lcom/gyf/immersionbar/else;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gyf/immersionbar/else;->b0()V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->goto:Lcom/gyf/immersionbar/else;

    sget-object v1, Lcom/gyf/immersionbar/if;->FLAG_HIDE_STATUS_BAR:Lcom/gyf/immersionbar/if;

    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/else;->Z(Lcom/gyf/immersionbar/if;)Lcom/gyf/immersionbar/else;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gyf/immersionbar/else;->b0()V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->goto:Lcom/gyf/immersionbar/else;

    sget-object v1, Lcom/gyf/immersionbar/if;->FLAG_HIDE_NAVIGATION_BAR:Lcom/gyf/immersionbar/if;

    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/else;->Z(Lcom/gyf/immersionbar/if;)Lcom/gyf/immersionbar/else;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gyf/immersionbar/else;->b0()V

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->goto:Lcom/gyf/immersionbar/else;

    sget-object v1, Lcom/gyf/immersionbar/if;->FLAG_SHOW_BAR:Lcom/gyf/immersionbar/if;

    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/else;->Z(Lcom/gyf/immersionbar/if;)Lcom/gyf/immersionbar/else;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gyf/immersionbar/else;->b0()V

    :goto_0
    return-void
.end method

.method public n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->private:Lcom/wsw/cospa/widget/BrightnessSettingWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->private:Lcom/wsw/cospa/widget/BrightnessSettingWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public new()I
    .locals 1

    const v0, 0x7f0c003a

    return v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->n()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->package:Lcom/wsw/cospa/widget/MenuSettingDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wsw/cospa/widget/MenuSettingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->package:Lcom/wsw/cospa/widget/MenuSettingDialog;

    invoke-virtual {v0}, Lcom/wsw/cospa/widget/MenuSettingDialog;->dismiss()V

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->m()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->isShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->setVisibility(I)V

    .line 7
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->m()V

    goto :goto_0

    .line 8
    :cond_1
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

    goto :goto_0

    .line 2
    :sswitch_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->package:Lcom/wsw/cospa/widget/MenuSettingDialog;

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/MenuSettingDialog;->show()V

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->n()V

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->isShow()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->setVisibility(I)V

    .line 6
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->m()V

    goto :goto_0

    .line 7
    :sswitch_1
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->n()V

    .line 8
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->isShow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->setVisibility(I)V

    .line 10
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->m()V

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->package:Lcom/wsw/cospa/widget/MenuSettingDialog;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/MenuSettingDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->package:Lcom/wsw/cospa/widget/MenuSettingDialog;

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/MenuSettingDialog;->dismiss()V

    .line 13
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->m()V

    goto :goto_0

    .line 14
    :sswitch_2
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->b0()V

    .line 15
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->isShow()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 16
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->setVisibility(I)V

    .line 17
    :cond_1
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->m()V

    goto :goto_0

    .line 18
    :sswitch_3
    iget-boolean p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->public:Z

    if-eqz p1, :cond_2

    .line 19
    invoke-direct {p0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->h0()V

    goto :goto_0

    .line 20
    :cond_2
    invoke-direct {p0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->g0()V

    :cond_3
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09009e -> :sswitch_3
        0x7f090463 -> :sswitch_2
        0x7f090466 -> :sswitch_1
        0x7f0904b0 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->abstract:Landroid/os/Handler;

    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->continue:Lcom/wsw/cospa/activity/LocalCompressActivity$new;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->import:Lcom/wsw/cospa/activity/LocalCompressActivity$case;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/wsw/cospa/activity/LocalCompressActivity$case;->if()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->extends:Lcom/wsw/cospa/adapter/LocalCompressAdapter;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->while()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->package:Lcom/wsw/cospa/widget/MenuSettingDialog;

    invoke-virtual {v0}, Lcom/wsw/cospa/widget/MenuSettingDialog;->dismiss()V

    .line 7
    invoke-super {p0}, Lcom/wsw/cospa/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 6
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

    if-eqz p1, :cond_6

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    .line 3
    iget-boolean v1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->throw:Z

    if-nez v1, :cond_7

    .line 4
    iget v1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->final:I

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    int-to-float p1, p1

    cmpl-float v1, v1, p1

    if-gtz v1, :cond_2

    iget v1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->super:I

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p1, p2, p1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    iput-boolean v2, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->throw:Z

    goto :goto_1

    .line 5
    :cond_3
    iget-boolean p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->throw:Z

    if-nez p1, :cond_7

    .line 6
    invoke-static {p0}, Landroid/support/v4/j10;->case(Landroid/content/Context;)I

    move-result p1

    .line 7
    iget-object p2, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->while:Landroid/graphics/RectF;

    if-nez p2, :cond_4

    .line 8
    new-instance p2, Landroid/graphics/RectF;

    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    div-int/lit8 v4, p1, 0x3

    int-to-float v4, v4

    .line 9
    invoke-static {}, Landroid/support/v4/j10;->catch()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    div-int/lit8 v5, v5, 0x3

    int-to-float v5, v5

    mul-int/lit8 p1, p1, 0x2

    div-int/lit8 p1, p1, 0x3

    int-to-float p1, p1

    invoke-direct {p2, v3, v4, v5, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p2, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->while:Landroid/graphics/RectF;

    .line 10
    :cond_4
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->while:Landroid/graphics/RectF;

    iget p2, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->final:I

    int-to-float p2, p2

    iget v1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->super:I

    int-to-float v1, v1

    invoke-virtual {p1, p2, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 11
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->n()V

    .line 12
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->package:Lcom/wsw/cospa/widget/MenuSettingDialog;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/MenuSettingDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 13
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->package:Lcom/wsw/cospa/widget/MenuSettingDialog;

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/MenuSettingDialog;->dismiss()V

    .line 14
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->m()V

    :cond_5
    return v2

    .line 15
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->final:I

    .line 16
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->super:I

    .line 17
    iput-boolean v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->throw:Z

    :cond_7
    :goto_1
    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->extends:Lcom/wsw/cospa/adapter/LocalCompressAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/wsw/cospa/adapter/LocalCompressAdapter;->getItemCount()I

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
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->this:[I

    const/4 v2, 0x4

    aget v0, v0, v2

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->this:[I

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
    invoke-direct {p0, v0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->p(I)V

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

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

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
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->import:Lcom/wsw/cospa/activity/LocalCompressActivity$case;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/wsw/cospa/activity/LocalCompressActivity$case;->if()V

    :cond_0
    return-void
.end method

.method public onProgressChanged(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;IZ)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "read_mode_key"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->mZoomRecyclerView:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    :goto_0
    if-eqz p3, :cond_2

    if-ne p1, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->q()I

    move-result p1

    add-int/2addr p1, p2

    iget p2, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->class:I

    sub-int/2addr p1, p2

    .line 5
    iget-object p2, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->break:Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    invoke-static {p2, v0, p1}, Lcom/wsw/cospa/activity/LocalCompressActivity;->U(Landroidx/recyclerview/widget/LinearLayoutManager;Landroidx/recyclerview/widget/RecyclerView;I)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->q()I

    move-result p1

    add-int/2addr p1, p2

    iget p2, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->class:I

    sub-int/2addr p1, p2

    .line 7
    iget-object p2, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->break:Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    invoke-static {p2, v0, p1}, Lcom/wsw/cospa/activity/LocalCompressActivity;->U(Landroidx/recyclerview/widget/LinearLayoutManager;Landroidx/recyclerview/widget/RecyclerView;I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 2
    new-instance v0, Lcom/wsw/cospa/activity/LocalCompressActivity$case;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/activity/LocalCompressActivity$case;-><init>(Lcom/wsw/cospa/activity/LocalCompressActivity;)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->import:Lcom/wsw/cospa/activity/LocalCompressActivity$case;

    .line 3
    invoke-virtual {v0}, Lcom/wsw/cospa/activity/LocalCompressActivity$case;->do()V

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->m()V

    return-void
.end method

.method public onSingleTap(FF)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->n()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->package:Lcom/wsw/cospa/widget/MenuSettingDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wsw/cospa/widget/MenuSettingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->package:Lcom/wsw/cospa/widget/MenuSettingDialog;

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/MenuSettingDialog;->dismiss()V

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->m()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->isShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->setVisibility(I)V

    .line 7
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->m()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/activity/LocalCompressActivity;->s(FF)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalCompressActivity;->p(I)V

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
    .locals 0

    const/4 p1, 0x0

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
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->goto:Lcom/gyf/immersionbar/else;

    sget-object v0, Lcom/gyf/immersionbar/if;->FLAG_HIDE_BAR:Lcom/gyf/immersionbar/if;

    invoke-virtual {p1, v0}, Lcom/gyf/immersionbar/else;->Z(Lcom/gyf/immersionbar/if;)Lcom/gyf/immersionbar/else;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gyf/immersionbar/else;->b0()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->goto:Lcom/gyf/immersionbar/else;

    sget-object v0, Lcom/gyf/immersionbar/if;->FLAG_HIDE_STATUS_BAR:Lcom/gyf/immersionbar/if;

    invoke-virtual {p1, v0}, Lcom/gyf/immersionbar/else;->Z(Lcom/gyf/immersionbar/if;)Lcom/gyf/immersionbar/else;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gyf/immersionbar/else;->b0()V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->goto:Lcom/gyf/immersionbar/else;

    sget-object v0, Lcom/gyf/immersionbar/if;->FLAG_HIDE_NAVIGATION_BAR:Lcom/gyf/immersionbar/if;

    invoke-virtual {p1, v0}, Lcom/gyf/immersionbar/else;->Z(Lcom/gyf/immersionbar/if;)Lcom/gyf/immersionbar/else;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gyf/immersionbar/else;->b0()V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->goto:Lcom/gyf/immersionbar/else;

    sget-object v0, Lcom/gyf/immersionbar/if;->FLAG_SHOW_BAR:Lcom/gyf/immersionbar/if;

    invoke-virtual {p1, v0}, Lcom/gyf/immersionbar/else;->Z(Lcom/gyf/immersionbar/if;)Lcom/gyf/immersionbar/else;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gyf/immersionbar/else;->b0()V

    :goto_0
    return-void
.end method

.method public q()I
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "read_mode_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->break:Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    invoke-static {v0}, Landroid/support/v4/zl1;->if(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v0

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    invoke-static {v0}, Landroid/support/v4/zl1;->new(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v0

    :goto_0
    if-gez v0, :cond_2

    const/4 v0, 0x0

    :cond_2
    return v0

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->break:Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    return v0
.end method

.method public showProgress()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->mIndicatorView:Lcom/wang/avi/AVLoadingIndicatorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wang/avi/AVLoadingIndicatorView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->contentView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->error_view:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public this()V
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Landroid/support/v4/p12;->case(Landroid/app/Activity;)V

    :cond_0
    if-lt v0, v1, :cond_1

    .line 3
    invoke-static {p0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->o(Landroid/app/Activity;)V

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

    iput-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->goto:Lcom/gyf/immersionbar/else;

    .line 9
    invoke-static {p0}, Landroid/support/v4/j10;->throw(Landroid/app/Activity;)V

    .line 10
    new-instance v0, Lcom/wsw/cospa/widget/MenuSettingDialog;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/widget/MenuSettingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->package:Lcom/wsw/cospa/widget/MenuSettingDialog;

    .line 11
    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/MenuSettingDialog;->hideLongClickMenu(Z)V

    .line 12
    new-instance v0, Lcom/wsw/cospa/widget/BrightnessSettingWindow;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/widget/BrightnessSettingWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->private:Lcom/wsw/cospa/widget/BrightnessSettingWindow;

    .line 13
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v3, "hide_comic_status_key"

    invoke-virtual {v0, v3, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v0

    const/16 v3, 0x8

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->comic_status_bar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->comic_status_bar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 16
    :goto_1
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v4, "switch_eyecare_mode_key"

    invoke-virtual {v0, v4, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->super()V

    goto :goto_2

    .line 18
    :cond_4
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->if()V

    .line 19
    :goto_2
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const v4, 0x7f060141

    const-string v5, "comic_background_color"

    invoke-virtual {v0, v5, v4}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v0

    .line 20
    iget-object v4, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->rootView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 21
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->tvCatalog:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 22
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->autoPlayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->tvBrightness:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->tvSetting:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->mIndicatorRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 26
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v3, "read_mode_key"

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 27
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->mZoomRecyclerView:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    goto :goto_3

    .line 28
    :cond_5
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    .line 29
    :goto_3
    new-instance v1, Lcom/wsw/cospa/activity/LocalCompressActivity$CustomScrollListener;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/activity/LocalCompressActivity$CustomScrollListener;-><init>(Lcom/wsw/cospa/activity/LocalCompressActivity;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 30
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 31
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->initChapterUrl(Z)V

    .line 32
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->initSkipChapter(Z)V

    .line 33
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalCompressActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->initSaveBookText(Z)V

    .line 34
    invoke-direct {p0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->u()V

    .line 35
    invoke-direct {p0}, Lcom/wsw/cospa/activity/LocalCompressActivity;->t()V

    return-void
.end method
