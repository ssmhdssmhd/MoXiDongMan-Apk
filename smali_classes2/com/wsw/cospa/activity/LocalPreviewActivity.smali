.class public Lcom/wsw/cospa/activity/LocalPreviewActivity;
.super Lcom/wsw/cospa/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Ljava/io/FileFilter;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/wsw/cospa/widget/view/OnTapGestureListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/activity/LocalPreviewActivity$catch;,
        Lcom/wsw/cospa/activity/LocalPreviewActivity$this;,
        Lcom/wsw/cospa/activity/LocalPreviewActivity$break;,
        Lcom/wsw/cospa/activity/LocalPreviewActivity$CustomScrollListener;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String;


# instance fields
.field private a:Lcom/wsw/cospa/widget/MenuSettingDialog;

.field public abstract:Ljava/lang/Integer;

.field public autoPlayLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09009e
    .end annotation
.end field

.field private b:Lcom/wsw/cospa/widget/BrightnessSettingWindow;

.field public batteryView:Lcom/wsw/cospa/widget/view/BatteryView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903da
    .end annotation
.end field

.field private break:[I

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

.field private c:Ljava/io/File;

.field private catch:Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

.field private class:Landroidx/recyclerview/widget/PagerSnapHelper;

.field public comic_status_bar:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09010e
    .end annotation
.end field

.field private const:I

.field public contentView:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090115
    .end annotation
.end field

.field private continue:Lcom/wsw/cospa/bean/FileSnapshot;

.field private d:Landroid/os/Handler;

.field private default:Z

.field private e:Lcom/wsw/cospa/activity/LocalPreviewActivity$this;

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

.field private extends:I

.field public final:Z

.field private finally:Z

.field private goto:Lcom/wsw/cospa/adapter/LocalPreviewAdapter;

.field private implements:Lio/reactivex/disposables/Disposable;

.field private import:Landroid/graphics/RectF;

.field private instanceof:Lcom/wsw/cospa/bean/RipeFile;

.field private final interface:Landroid/support/v4/cq;

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

.field private native:Lcom/wsw/cospa/activity/LocalPreviewActivity$catch;

.field public nextChapter:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902fb
    .end annotation
.end field

.field private package:[Ljava/lang/String;

.field public preChapter:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090332
    .end annotation
.end field

.field public private:Lcom/wsw/cospa/bean/RipeFile;

.field private protected:Lio/reactivex/disposables/Disposable;

.field private public:I

.field private return:Z

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

.field private final static:J

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

.field private final strictfp:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/wsw/cospa/bean/FileSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field private super:I

.field private switch:Z

.field private synchronized:Z

.field private this:Lcom/gyf/immersionbar/else;

.field private throw:I

.field private throws:Z

.field private transient:Lio/reactivex/disposables/Disposable;

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

.field private final volatile:Ljava/util/Comparator;

.field private while:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->const:I

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->final:Z

    .line 4
    iput v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->super:I

    .line 5
    iput v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->throw:I

    .line 6
    iput-boolean v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->while:Z

    const/4 v2, 0x0

    .line 7
    iput-object v2, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->import:Landroid/graphics/RectF;

    const/4 v3, -0x1

    .line 8
    iput v3, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->public:I

    .line 9
    iput-boolean v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->return:Z

    const-wide/16 v3, 0x5

    .line 10
    iput-wide v3, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->static:J

    .line 11
    iput-boolean v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->switch:Z

    .line 12
    iput-boolean v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->throws:Z

    .line 13
    iput-boolean v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->default:Z

    .line 14
    iput v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->extends:I

    const-string v0, "png"

    const-string v1, "jpg"

    const-string v3, "jpeg"

    const-string v4, "webp"

    const-string v5, "gif"

    .line 15
    filled-new-array {v0, v1, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->package:[Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->strictfp:Ljava/util/Stack;

    .line 17
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->volatile:Ljava/util/Comparator;

    .line 18
    new-instance v0, Landroid/support/v4/cq;

    invoke-direct {v0}, Landroid/support/v4/cq;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->interface:Landroid/support/v4/cq;

    .line 19
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->d:Landroid/os/Handler;

    .line 20
    new-instance v0, Lcom/wsw/cospa/activity/LocalPreviewActivity$this;

    invoke-direct {v0, p0, v2}, Lcom/wsw/cospa/activity/LocalPreviewActivity$this;-><init>(Lcom/wsw/cospa/activity/LocalPreviewActivity;Lcom/wsw/cospa/activity/LocalPreviewActivity$do;)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->e:Lcom/wsw/cospa/activity/LocalPreviewActivity$this;

    return-void
.end method

.method public static synthetic A(Lcom/wsw/cospa/activity/LocalPreviewActivity;)Lcom/wsw/cospa/bean/FileSnapshot;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->continue:Lcom/wsw/cospa/bean/FileSnapshot;

    return-object p0
.end method

.method private B0(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/RipeFile;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lcom/wsw/cospa/activity/LocalPreviewActivity$break;

    invoke-direct {v0, p0, p2}, Lcom/wsw/cospa/activity/LocalPreviewActivity$break;-><init>(Lcom/wsw/cospa/activity/LocalPreviewActivity;I)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->finally:Z

    :cond_0
    return-void
.end method

.method public static C0(Landroid/content/Context;Lcom/wsw/cospa/bean/RipeFile;Ljava/lang/Integer;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "RipeFile"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "POSITION"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static D0(Landroid/content/Context;Lcom/wsw/cospa/bean/RipeFile;Ljava/lang/Integer;Z)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/activity/LocalPreviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "RipeFile"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "POSITION"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "IS_CONTINUE_READING"

    .line 4
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static E(Landroid/app/Activity;)V
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

.method private E0()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->return:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->return:Z

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->ll_auto:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->ll_seek_progress:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->ivAutoPlay:Landroid/widget/ImageView;

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
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->e:Lcom/wsw/cospa/activity/LocalPreviewActivity$this;

    iput v2, v0, Lcom/wsw/cospa/activity/LocalPreviewActivity$this;->do:I

    const v1, 0x7fffffff

    .line 8
    iput v1, v0, Lcom/wsw/cospa/activity/LocalPreviewActivity$this;->if:I

    .line 9
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->bsb_auto:Lcom/xw/repo/BubbleSeekBar;

    invoke-virtual {v1}, Lcom/xw/repo/BubbleSeekBar;->getProgressFloat()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    invoke-static {p0, v1}, Landroid/support/v4/j10;->new(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/wsw/cospa/activity/LocalPreviewActivity$this;->for:I

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->e:Lcom/wsw/cospa/activity/LocalPreviewActivity$this;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->bsb_auto:Lcom/xw/repo/BubbleSeekBar;

    invoke-virtual {v0}, Lcom/xw/repo/BubbleSeekBar;->getMax()F

    move-result v0

    .line 12
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->bsb_auto:Lcom/xw/repo/BubbleSeekBar;

    invoke-virtual {v1}, Lcom/xw/repo/BubbleSeekBar;->getProgressFloat()F

    move-result v1

    .line 13
    iget-object v2, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->d:Landroid/os/Handler;

    iget-object v3, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->e:Lcom/wsw/cospa/activity/LocalPreviewActivity$this;

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

.method private F(I)V
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
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->G0()V

    goto :goto_0

    .line 2
    :cond_1
    invoke-direct {p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->o0()V

    goto :goto_0

    .line 3
    :cond_2
    invoke-direct {p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->r0()V

    goto :goto_0

    .line 4
    :cond_3
    invoke-direct {p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->t0()V

    goto :goto_0

    .line 5
    :cond_4
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->u0()V

    :goto_0
    return-void
.end method

.method private F0()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->return:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->return:Z

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->ll_auto:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->ll_seek_progress:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->ivAutoPlay:Landroid/widget/ImageView;

    const v2, 0x7f080107

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->e:Lcom/wsw/cospa/activity/LocalPreviewActivity$this;

    iput v0, v1, Lcom/wsw/cospa/activity/LocalPreviewActivity$this;->if:I

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private H0(I)V
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

.method private I0()V
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/support/v4/j8;->do(Landroid/content/Context;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->statusBatteryText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->batteryView:Lcom/wsw/cospa/widget/view/BatteryView;

    invoke-virtual {v1, v0}, Lcom/wsw/cospa/widget/view/BatteryView;->setPower(I)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->statusTimeText:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "HH:mm"

    invoke-static {v1, v2, v3}, Landroid/support/v4/l22;->for(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private M()I
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

.method private N(FF)I
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
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->break:[I

    aget p1, p1, v5

    return p1

    :cond_0
    cmpl-float p1, p2, v0

    if-lez p1, :cond_1

    mul-float p1, v0, v6

    cmpg-float p1, p2, p1

    if-gez p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->break:[I

    aget p1, p1, v3

    return p1

    :cond_1
    mul-float v0, v0, v6

    cmpl-float p1, p2, v0

    if-lez p1, :cond_8

    .line 8
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->break:[I

    aget p1, p1, v4

    return p1

    :cond_2
    const/4 p2, 0x3

    if-ne v1, p2, :cond_5

    cmpg-float p2, p1, v2

    if-gez p2, :cond_3

    .line 9
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->break:[I

    aget p1, p1, v4

    return p1

    :cond_3
    cmpl-float p2, p1, v2

    if-lez p2, :cond_4

    mul-float p2, v2, v6

    cmpg-float p2, p1, p2

    if-gez p2, :cond_4

    .line 10
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->break:[I

    aget p1, p1, v3

    return p1

    :cond_4
    mul-float v2, v2, v6

    cmpl-float p1, p1, v2

    if-lez p1, :cond_8

    .line 11
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->break:[I

    aget p1, p1, v5

    return p1

    :cond_5
    cmpg-float p2, p1, v2

    if-gez p2, :cond_6

    .line 12
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->break:[I

    aget p1, p1, v5

    return p1

    :cond_6
    cmpl-float p2, p1, v2

    if-lez p2, :cond_7

    mul-float p2, v2, v6

    cmpg-float p2, p1, p2

    if-gez p2, :cond_7

    .line 13
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->break:[I

    aget p1, p1, v3

    return p1

    :cond_7
    mul-float v2, v2, v6

    cmpl-float p1, p1, v2

    if-lez p1, :cond_8

    .line 14
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->break:[I

    aget p1, p1, v4

    return p1

    :cond_8
    return v5
.end method

.method private O()V
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
    iput-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->break:[I

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
    iget-object v7, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->scroll_mode_event_up_down:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object v7, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object v7, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->ll_click_event:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/support/v4/pu0;

    invoke-direct {v8, p0}, Landroid/support/v4/pu0;-><init>(Lcom/wsw/cospa/activity/LocalPreviewActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v7, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->iv_close_up_down_tips:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v8, Landroid/support/v4/xu0;

    invoke-direct {v8, p0}, Landroid/support/v4/xu0;-><init>(Lcom/wsw/cospa/activity/LocalPreviewActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v7, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->ll_up_down_tips:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/support/v4/vu0;

    invoke-direct {v8, p0}, Landroid/support/v4/vu0;-><init>(Lcom/wsw/cospa/activity/LocalPreviewActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v7, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->ll_up_down_content:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/support/v4/gv0;

    invoke-direct {v8, p0}, Landroid/support/v4/gv0;-><init>(Lcom/wsw/cospa/activity/LocalPreviewActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v7, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->event_top:Landroid/widget/Button;

    new-instance v8, Landroid/support/v4/yu0;

    invoke-direct {v8, p0}, Landroid/support/v4/yu0;-><init>(Lcom/wsw/cospa/activity/LocalPreviewActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v7, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->event_up_down_middle:Landroid/widget/Button;

    new-instance v8, Landroid/support/v4/uu0;

    invoke-direct {v8, p0}, Landroid/support/v4/uu0;-><init>(Lcom/wsw/cospa/activity/LocalPreviewActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v7, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->event_bottom:Landroid/widget/Button;

    new-instance v8, Landroid/support/v4/cv0;

    invoke-direct {v8, p0}, Landroid/support/v4/cv0;-><init>(Lcom/wsw/cospa/activity/LocalPreviewActivity;)V

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
    iget-object v9, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->scroll_mode_event_up_down:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 15
    iget-object v9, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 16
    iget-object v9, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->ll_click_event:Landroid/widget/LinearLayout;

    new-instance v10, Landroid/support/v4/wu0;

    invoke-direct {v10, p0}, Landroid/support/v4/wu0;-><init>(Lcom/wsw/cospa/activity/LocalPreviewActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object v9, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->iv_close_left_right_tips:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v10, Landroid/support/v4/ru0;

    invoke-direct {v10, p0}, Landroid/support/v4/ru0;-><init>(Lcom/wsw/cospa/activity/LocalPreviewActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object v9, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->ll_left_right_tips:Landroid/widget/LinearLayout;

    new-instance v10, Landroid/support/v4/ev0;

    invoke-direct {v10, p0}, Landroid/support/v4/ev0;-><init>(Lcom/wsw/cospa/activity/LocalPreviewActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object v9, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->ll_left_right_content:Landroid/widget/LinearLayout;

    new-instance v10, Landroid/support/v4/qu0;

    invoke-direct {v10, p0}, Landroid/support/v4/qu0;-><init>(Lcom/wsw/cospa/activity/LocalPreviewActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object v9, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->event_left:Landroid/widget/Button;

    new-instance v10, Landroid/support/v4/iv0;

    invoke-direct {v10, p0}, Landroid/support/v4/iv0;-><init>(Lcom/wsw/cospa/activity/LocalPreviewActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object v9, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->event_middle:Landroid/widget/Button;

    new-instance v10, Landroid/support/v4/ou0;

    invoke-direct {v10, p0}, Landroid/support/v4/ou0;-><init>(Lcom/wsw/cospa/activity/LocalPreviewActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object v9, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->event_right:Landroid/widget/Button;

    new-instance v10, Landroid/support/v4/hv0;

    invoke-direct {v10, p0}, Landroid/support/v4/hv0;-><init>(Lcom/wsw/cospa/activity/LocalPreviewActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object v9, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->event_right:Landroid/widget/Button;

    invoke-virtual {v9, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v7, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->event_left:Landroid/widget/Button;

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
    iget-object v9, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->scroll_mode_event_up_down:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 27
    iget-object v9, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 28
    iget-object v9, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->ll_click_event:Landroid/widget/LinearLayout;

    new-instance v10, Landroid/support/v4/fv0;

    invoke-direct {v10, p0}, Landroid/support/v4/fv0;-><init>(Lcom/wsw/cospa/activity/LocalPreviewActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object v9, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->iv_close_left_right_tips:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v10, Landroid/support/v4/tu0;

    invoke-direct {v10, p0}, Landroid/support/v4/tu0;-><init>(Lcom/wsw/cospa/activity/LocalPreviewActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object v9, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->ll_left_right_tips:Landroid/widget/LinearLayout;

    new-instance v10, Landroid/support/v4/av0;

    invoke-direct {v10, p0}, Landroid/support/v4/av0;-><init>(Lcom/wsw/cospa/activity/LocalPreviewActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object v9, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->ll_left_right_content:Landroid/widget/LinearLayout;

    new-instance v10, Landroid/support/v4/su0;

    invoke-direct {v10, p0}, Landroid/support/v4/su0;-><init>(Lcom/wsw/cospa/activity/LocalPreviewActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v9, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->event_left:Landroid/widget/Button;

    new-instance v10, Landroid/support/v4/jv0;

    invoke-direct {v10, p0}, Landroid/support/v4/jv0;-><init>(Lcom/wsw/cospa/activity/LocalPreviewActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object v9, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->event_middle:Landroid/widget/Button;

    new-instance v10, Landroid/support/v4/zu0;

    invoke-direct {v10, p0}, Landroid/support/v4/zu0;-><init>(Lcom/wsw/cospa/activity/LocalPreviewActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v9, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->event_right:Landroid/widget/Button;

    new-instance v10, Landroid/support/v4/dv0;

    invoke-direct {v10, p0}, Landroid/support/v4/dv0;-><init>(Lcom/wsw/cospa/activity/LocalPreviewActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object v9, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->event_right:Landroid/widget/Button;

    invoke-virtual {v9, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v6, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->event_left:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    const/4 v6, 0x1

    :goto_2
    if-eqz v6, :cond_4

    .line 37
    iget-object v6, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    .line 38
    :cond_4
    iget-object v6, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_3
    const-string v6, "double_click_zoom_key"

    const/high16 v7, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_5

    .line 39
    iget-object v8, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mZoomRecyclerView:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 40
    iget-object v8, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 41
    iget-object v4, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mZoomRecyclerView:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    invoke-virtual {v4, v7}, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->setScaleFactor(F)V

    .line 42
    iget-object v4, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mZoomRecyclerView:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v8

    invoke-virtual {v8, v6, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v4, v8}, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->setDoubleTap(Z)V

    .line 43
    iget-object v4, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mZoomRecyclerView:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    invoke-virtual {v4, p0}, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->setTapListenerListener(Lcom/wsw/cospa/widget/view/OnTapGestureListener;)V

    goto :goto_5

    .line 44
    :cond_5
    iget-object v8, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mZoomRecyclerView:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 45
    iget-object v4, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 46
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v4

    const-string v8, "quick_page_key"

    invoke-virtual {v4, v8, v5}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 47
    iget-object v4, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    const v8, 0x358637bd    # 1.0E-6f

    invoke-virtual {v4, v8}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->setScrollSpeed(F)V

    goto :goto_4

    .line 48
    :cond_6
    iget-object v4, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    const v8, 0x3df5c28f    # 0.12f

    invoke-virtual {v4, v8}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->setScrollSpeed(F)V

    .line 49
    :goto_4
    iget-object v4, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    const v8, 0x3e4ccccc    # 0.19999999f

    invoke-virtual {v4, v8}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->setTriggerOffset(F)V

    .line 50
    iget-object v4, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    invoke-virtual {v4, v7}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->setScaleFactor(F)V

    .line 51
    iget-object v4, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v8

    invoke-virtual {v8, v6, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v4, v8}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->setDoubleTap(Z)V

    .line 52
    iget-object v4, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    invoke-virtual {v4, p0}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->setTapListenerListener(Lcom/wsw/cospa/widget/view/OnTapGestureListener;)V

    .line 53
    :goto_5
    new-instance v4, Lcom/wsw/cospa/activity/LocalPreviewActivity$case;

    invoke-direct {v4, p0, p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity$case;-><init>(Lcom/wsw/cospa/activity/LocalPreviewActivity;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->catch:Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    const/4 v8, 0x0

    if-ne v0, v3, :cond_7

    .line 54
    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 55
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    iget-object v3, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->catch:Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    invoke-virtual {v1, v3}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 56
    new-instance v1, Landroidx/recyclerview/widget/PagerSnapHelper;

    invoke-direct {v1}, Landroidx/recyclerview/widget/PagerSnapHelper;-><init>()V

    iput-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->class:Landroidx/recyclerview/widget/PagerSnapHelper;

    .line 57
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    invoke-virtual {v1, v8}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;)V

    .line 58
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->class:Landroidx/recyclerview/widget/PagerSnapHelper;

    iget-object v3, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_6

    :cond_7
    if-ne v0, v1, :cond_8

    .line 59
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 60
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->catch:Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 61
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    iget-object v3, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->catch:Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    invoke-virtual {v1, v3}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 62
    new-instance v1, Landroidx/recyclerview/widget/PagerSnapHelper;

    invoke-direct {v1}, Landroidx/recyclerview/widget/PagerSnapHelper;-><init>()V

    iput-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->class:Landroidx/recyclerview/widget/PagerSnapHelper;

    .line 63
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    invoke-virtual {v1, v8}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;)V

    .line 64
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->class:Landroidx/recyclerview/widget/PagerSnapHelper;

    iget-object v3, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_6

    .line 65
    :cond_8
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 66
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mZoomRecyclerView:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    iget-object v3, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->catch:Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 67
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->class:Landroidx/recyclerview/widget/PagerSnapHelper;

    if-eqz v1, :cond_9

    .line 68
    invoke-virtual {v1, v8}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 69
    :cond_9
    :goto_6
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->a:Lcom/wsw/cospa/widget/MenuSettingDialog;

    invoke-virtual {v1}, Lcom/wsw/cospa/widget/MenuSettingDialog;->initClickTips()V

    .line 70
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->a:Lcom/wsw/cospa/widget/MenuSettingDialog;

    invoke-virtual {v1, v0}, Lcom/wsw/cospa/widget/MenuSettingDialog;->updateReadModeColor(I)V

    .line 71
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->a:Lcom/wsw/cospa/widget/MenuSettingDialog;

    new-instance v3, Lcom/wsw/cospa/activity/LocalPreviewActivity$else;

    invoke-direct {v3, p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity$else;-><init>(Lcom/wsw/cospa/activity/LocalPreviewActivity;)V

    invoke-virtual {v1, v3}, Lcom/wsw/cospa/widget/MenuSettingDialog;->setOnCallbackListener(Lcom/wsw/cospa/widget/MenuSettingDialog$onCallbackListener;)V

    .line 72
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->b:Lcom/wsw/cospa/widget/BrightnessSettingWindow;

    new-instance v3, Lcom/wsw/cospa/activity/LocalPreviewActivity$goto;

    invoke-direct {v3, p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity$goto;-><init>(Lcom/wsw/cospa/activity/LocalPreviewActivity;)V

    invoke-virtual {v1, v3}, Lcom/wsw/cospa/widget/BrightnessSettingWindow;->setOnBrightnessSettingListener(Lcom/wsw/cospa/widget/BrightnessSettingWindow$onBrightnessSettingListener;)V

    if-ne v0, v2, :cond_a

    .line 73
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mZoomRecyclerView:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    goto :goto_7

    .line 74
    :cond_a
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

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
    new-instance v3, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;

    invoke-direct {v3, p0, v0}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->goto:Lcom/wsw/cospa/adapter/LocalPreviewAdapter;

    .line 79
    invoke-virtual {v3, p0}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->setTapGestureListener(Lcom/wsw/cospa/widget/view/OnTapGestureListener;)V

    .line 80
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->goto:Lcom/wsw/cospa/adapter/LocalPreviewAdapter;

    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v3

    const-string v9, "pref_reader_paging"

    invoke-virtual {v3, v9, v5}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->interface(Z)V

    .line 81
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->goto:Lcom/wsw/cospa/adapter/LocalPreviewAdapter;

    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v3

    const-string v9, "pref_reader_paging_reverse"

    invoke-virtual {v3, v9, v5}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->protected(Z)V

    .line 82
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->goto:Lcom/wsw/cospa/adapter/LocalPreviewAdapter;

    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v3

    const-string v9, "pref_reader_white_edge"

    invoke-virtual {v3, v9, v5}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->implements(Z)V

    .line 83
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->goto:Lcom/wsw/cospa/adapter/LocalPreviewAdapter;

    invoke-virtual {v0, v7}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->transient(F)V

    .line 84
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->goto:Lcom/wsw/cospa/adapter/LocalPreviewAdapter;

    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v3

    invoke-virtual {v3, v6, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->volatile(Z)V

    .line 85
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->goto:Lcom/wsw/cospa/adapter/LocalPreviewAdapter;

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->strictfp(Z)V

    .line 86
    invoke-virtual {v1, v8}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 87
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 88
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 89
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->goto:Lcom/wsw/cospa/adapter/LocalPreviewAdapter;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private P()V
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "read_mode_key"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mSeekBarScroll:Lcom/wsw/cospa/widget/view/ReverseSeekBar;

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/wsw/cospa/widget/view/ReverseSeekBar;->setReverse(Z)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mSeekBarScroll:Lcom/wsw/cospa/widget/view/ReverseSeekBar;

    invoke-virtual {v0, p0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setOnProgressChangeListener(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;)V

    return-void
.end method

.method private Q()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->goto:Lcom/wsw/cospa/adapter/LocalPreviewAdapter;

    invoke-virtual {v0}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->catch:Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    .line 3
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->catch:Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

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

.method private synthetic R(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->scroll_mode_event_up_down:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_mode_roll_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic S(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_mode_normal_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic T(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_mode_normal_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic U(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_mode_normal_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic V(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_mode_normal_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic W(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_mode_normal_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic X(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_japan_mode_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic Y(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_japan_mode_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic Z(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_japan_mode_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic a(Lcom/wsw/cospa/activity/LocalPreviewActivity;)Lcom/wsw/cospa/widget/MenuSettingDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->a:Lcom/wsw/cospa/widget/MenuSettingDialog;

    return-object p0
.end method

.method private synthetic a0(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_japan_mode_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic abstract(Lcom/wsw/cospa/activity/LocalPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->l0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/wsw/cospa/activity/LocalPreviewActivity;)Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->catch:Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    return-object p0
.end method

.method private synthetic b0(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_japan_mode_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic c(Lcom/wsw/cospa/activity/LocalPreviewActivity;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->c:Ljava/io/File;

    return-object p0
.end method

.method private synthetic c0(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->scroll_mode_event_up_down:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_mode_roll_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic continue(Lcom/wsw/cospa/activity/LocalPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->a0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/wsw/cospa/activity/LocalPreviewActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->implements:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method private synthetic d0(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_japan_mode_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic default(Lcom/wsw/cospa/activity/LocalPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->W(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/wsw/cospa/activity/LocalPreviewActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->protected:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method private synthetic e0(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_japan_mode_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic extends(Lcom/wsw/cospa/activity/LocalPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->U(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/wsw/cospa/activity/LocalPreviewActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->synchronized:Z

    return p0
.end method

.method private synthetic f0(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->scroll_mode_event_up_down:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_mode_roll_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic finally(Lcom/wsw/cospa/activity/LocalPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->b0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/wsw/cospa/activity/LocalPreviewActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->H0(I)V

    return-void
.end method

.method private synthetic g0(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->scroll_mode_event_up_down:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_mode_roll_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic h(Lcom/wsw/cospa/activity/LocalPreviewActivity;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->M()I

    move-result p0

    return p0
.end method

.method private synthetic h0(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->scroll_mode_event_up_down:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_mode_roll_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic i(Lcom/wsw/cospa/activity/LocalPreviewActivity;)Lcom/gyf/immersionbar/else;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->this:Lcom/gyf/immersionbar/else;

    return-object p0
.end method

.method private synthetic i0(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->scroll_mode_event_up_down:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_mode_roll_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic implements(Lcom/wsw/cospa/activity/LocalPreviewActivity;Lcom/wsw/cospa/bean/RipeFile;Lio/reactivex/SingleEmitter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->m0(Lcom/wsw/cospa/bean/RipeFile;Lio/reactivex/SingleEmitter;)V

    return-void
.end method

.method public static synthetic import(Lcom/wsw/cospa/activity/LocalPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->V(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic instanceof(Lcom/wsw/cospa/activity/LocalPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->h0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic interface(Lcom/wsw/cospa/activity/LocalPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->f0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j(Lcom/wsw/cospa/activity/LocalPreviewActivity;)Lcom/wsw/cospa/activity/LocalPreviewActivity$this;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->e:Lcom/wsw/cospa/activity/LocalPreviewActivity$this;

    return-object p0
.end method

.method private synthetic j0(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->scroll_mode_event_up_down:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_mode_roll_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic k(Lcom/wsw/cospa/activity/LocalPreviewActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->d:Landroid/os/Handler;

    return-object p0
.end method

.method private synthetic k0(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_mode_normal_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic l(Lcom/wsw/cospa/activity/LocalPreviewActivity;)Lcom/wsw/cospa/adapter/LocalPreviewAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->goto:Lcom/wsw/cospa/adapter/LocalPreviewAdapter;

    return-object p0
.end method

.method private synthetic l0(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->ll_click_event:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_mode_normal_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic m(Lcom/wsw/cospa/activity/LocalPreviewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->t0()V

    return-void
.end method

.method private synthetic m0(Lcom/wsw/cospa/bean/RipeFile;Lio/reactivex/SingleEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->n0(Lcom/wsw/cospa/bean/RipeFile;)Lcom/wsw/cospa/bean/FileSnapshot;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->strictfp:Ljava/util/Stack;

    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->continue:Lcom/wsw/cospa/bean/FileSnapshot;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->continue:Lcom/wsw/cospa/bean/FileSnapshot;

    .line 4
    invoke-interface {p2, p1}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "snapshot push failed!"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic n(Lcom/wsw/cospa/activity/LocalPreviewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->I0()V

    return-void
.end method

.method private n0(Lcom/wsw/cospa/bean/RipeFile;)Lcom/wsw/cospa/bean/FileSnapshot;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/RipeFile;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/RipeFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/RipeFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->H([Ljava/io/File;Lcom/wsw/cospa/bean/RipeFile;)Lcom/wsw/cospa/bean/FileSnapshot;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic native(Lcom/wsw/cospa/activity/LocalPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->d0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lcom/wsw/cospa/activity/LocalPreviewActivity;)Lcom/wsw/cospa/activity/LocalPreviewActivity$catch;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->native:Lcom/wsw/cospa/activity/LocalPreviewActivity$catch;

    return-object p0
.end method

.method private o0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->p0()V

    return-void
.end method

.method public static synthetic p(Lcom/wsw/cospa/activity/LocalPreviewActivity;Lcom/wsw/cospa/activity/LocalPreviewActivity$catch;)Lcom/wsw/cospa/activity/LocalPreviewActivity$catch;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->native:Lcom/wsw/cospa/activity/LocalPreviewActivity$catch;

    return-object p1
.end method

.method public static synthetic package(Lcom/wsw/cospa/activity/LocalPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->R(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic private(Lcom/wsw/cospa/activity/LocalPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->T(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic protected(Lcom/wsw/cospa/activity/LocalPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->k0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic public(Lcom/wsw/cospa/activity/LocalPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->j0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Lcom/wsw/cospa/activity/LocalPreviewActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->throws:Z

    return p0
.end method

.method public static synthetic r(Lcom/wsw/cospa/activity/LocalPreviewActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->throws:Z

    return p1
.end method

.method private r0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->q0()V

    return-void
.end method

.method public static synthetic return(Lcom/wsw/cospa/activity/LocalPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->e0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s(Lcom/wsw/cospa/activity/LocalPreviewActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->default:Z

    return p0
.end method

.method public static s0(Landroidx/recyclerview/widget/LinearLayoutManager;Landroidx/recyclerview/widget/RecyclerView;I)V
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

.method public static synthetic static(Lcom/wsw/cospa/activity/LocalPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->S(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic strictfp(Lcom/wsw/cospa/activity/LocalPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->Y(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic switch(Lcom/wsw/cospa/activity/LocalPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->X(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic synchronized(Lcom/wsw/cospa/activity/LocalPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->Z(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic t(Lcom/wsw/cospa/activity/LocalPreviewActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->default:Z

    return p1
.end method

.method private t0()V
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
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->catch:Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    iget-object v2, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->goto:Lcom/wsw/cospa/adapter/LocalPreviewAdapter;

    invoke-virtual {v2}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->o0()V

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mZoomRecyclerView:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    const/4 v2, 0x0

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->L()I

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->goto:Lcom/wsw/cospa/adapter/LocalPreviewAdapter;

    invoke-virtual {v1}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v3

    if-ne v0, v1, :cond_2

    .line 9
    invoke-direct {p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->o0()V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    add-int/2addr v0, v3

    invoke-virtual {v1, v0}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->smoothScrollToPosition(I)V

    :goto_0
    return-void
.end method

.method public static synthetic throws(Lcom/wsw/cospa/activity/LocalPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->g0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic transient(Lcom/wsw/cospa/activity/LocalPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->c0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic u(Lcom/wsw/cospa/activity/LocalPreviewActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->public:I

    return p0
.end method

.method public static synthetic v(Lcom/wsw/cospa/activity/LocalPreviewActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->public:I

    return p1
.end method

.method public static synthetic volatile(Lcom/wsw/cospa/activity/LocalPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->i0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic w(Lcom/wsw/cospa/activity/LocalPreviewActivity;)Lcom/wsw/cospa/bean/RipeFile;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->instanceof:Lcom/wsw/cospa/bean/RipeFile;

    return-object p0
.end method

.method public static synthetic x(Lcom/wsw/cospa/activity/LocalPreviewActivity;Lcom/wsw/cospa/bean/RipeFile;)Lcom/wsw/cospa/bean/RipeFile;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->instanceof:Lcom/wsw/cospa/bean/RipeFile;

    return-object p1
.end method

.method public static synthetic y(Lcom/wsw/cospa/activity/LocalPreviewActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->transient:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method public static synthetic z(Lcom/wsw/cospa/activity/LocalPreviewActivity;)Landroid/support/v4/cq;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->interface:Landroid/support/v4/cq;

    return-object p0
.end method


# virtual methods
.method public A0(Ljava/lang/String;)Ljava/lang/String;
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

.method public B()V
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
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->L()I

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
    iget-object v2, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mZoomRecyclerView:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    const/4 v3, 0x0

    iget v0, v0, Landroid/graphics/Point;->y:I

    neg-int v0, v0

    invoke-virtual {v2, v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    if-nez v1, :cond_4

    .line 6
    invoke-direct {p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->r0()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne v2, v0, :cond_2

    if-nez v1, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->r0()V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->goto:Lcom/wsw/cospa/adapter/LocalPreviewAdapter;

    invoke-virtual {v0}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v4

    if-ne v1, v0, :cond_3

    .line 10
    invoke-direct {p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->o0()V

    goto :goto_0

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    add-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->smoothScrollToPosition(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public C()V
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
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->this:Lcom/gyf/immersionbar/else;

    sget-object v1, Lcom/gyf/immersionbar/if;->FLAG_HIDE_BAR:Lcom/gyf/immersionbar/if;

    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/else;->Z(Lcom/gyf/immersionbar/if;)Lcom/gyf/immersionbar/else;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gyf/immersionbar/else;->b0()V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->this:Lcom/gyf/immersionbar/else;

    sget-object v1, Lcom/gyf/immersionbar/if;->FLAG_HIDE_STATUS_BAR:Lcom/gyf/immersionbar/if;

    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/else;->Z(Lcom/gyf/immersionbar/if;)Lcom/gyf/immersionbar/else;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gyf/immersionbar/else;->b0()V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->this:Lcom/gyf/immersionbar/else;

    sget-object v1, Lcom/gyf/immersionbar/if;->FLAG_HIDE_NAVIGATION_BAR:Lcom/gyf/immersionbar/if;

    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/else;->Z(Lcom/gyf/immersionbar/if;)Lcom/gyf/immersionbar/else;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gyf/immersionbar/else;->b0()V

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->this:Lcom/gyf/immersionbar/else;

    sget-object v1, Lcom/gyf/immersionbar/if;->FLAG_SHOW_BAR:Lcom/gyf/immersionbar/if;

    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/else;->Z(Lcom/gyf/immersionbar/if;)Lcom/gyf/immersionbar/else;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gyf/immersionbar/else;->b0()V

    :goto_0
    return-void
.end method

.method public D()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->b:Lcom/wsw/cospa/widget/BrightnessSettingWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->b:Lcom/wsw/cospa/widget/BrightnessSettingWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public G(Ljava/io/File;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/RipeFile;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5
    invoke-virtual {p1, p0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 6
    array-length v1, p1

    if-lez v1, :cond_3

    .line 7
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 8
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 9
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 10
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 11
    new-instance v5, Lcom/wsw/cospa/bean/RipeFile;

    invoke-direct {v5}, Lcom/wsw/cospa/bean/RipeFile;-><init>()V

    .line 12
    invoke-virtual {v5, v3}, Lcom/wsw/cospa/bean/RipeFile;->setFile(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    .line 13
    invoke-virtual {v5, v2}, Lcom/wsw/cospa/bean/RipeFile;->setIndexPape(I)V

    .line 14
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/wsw/cospa/bean/RipeFile;->setMaxPage(I)V

    if-eqz v4, :cond_0

    .line 15
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 16
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/wsw/cospa/bean/RipeFile;->setParentName(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/wsw/cospa/bean/RipeFile;->setParentPath(Ljava/lang/String;)V

    .line 18
    :cond_0
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_1
    iget v2, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->extends:I

    invoke-direct {p0, v0, v2}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->B0(Ljava/util/List;I)V

    .line 20
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 21
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/bean/RipeFile;

    add-int/lit8 v1, v1, 0x1

    .line 22
    invoke-virtual {v2, v1}, Lcom/wsw/cospa/bean/RipeFile;->setIndexPape(I)V

    .line 23
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/wsw/cospa/bean/RipeFile;->setMaxPage(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    return-object v0

    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-object v0
.end method

.method public G0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    invoke-virtual {v0}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->setVisibility(I)V

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->C()V

    return-void
.end method

.method public H([Ljava/io/File;Lcom/wsw/cospa/bean/RipeFile;)Lcom/wsw/cospa/bean/FileSnapshot;
    .locals 6

    if-eqz p1, :cond_2

    .line 1
    array-length v0, p1

    if-lez v0, :cond_2

    .line 2
    new-instance v0, Lcom/wsw/cospa/bean/FileSnapshot;

    invoke-direct {v0}, Lcom/wsw/cospa/bean/FileSnapshot;-><init>()V

    .line 3
    invoke-virtual {v0, p2}, Lcom/wsw/cospa/bean/FileSnapshot;->setParent(Lcom/wsw/cospa/bean/RipeFile;)V

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 6
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 7
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 8
    new-instance v5, Lcom/wsw/cospa/bean/RipeFile;

    invoke-direct {v5}, Lcom/wsw/cospa/bean/RipeFile;-><init>()V

    .line 9
    invoke-virtual {v5, v4}, Lcom/wsw/cospa/bean/RipeFile;->setFile(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    .line 10
    invoke-virtual {v5, v3}, Lcom/wsw/cospa/bean/RipeFile;->setIndexPape(I)V

    .line 11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/wsw/cospa/bean/RipeFile;->setMaxPage(I)V

    .line 12
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/RipeFile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/wsw/cospa/bean/RipeFile;->setParentName(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/RipeFile;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/wsw/cospa/bean/RipeFile;->setParentPath(Ljava/lang/String;)V

    .line 14
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_0
    iget p2, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->extends:I

    invoke-direct {p0, v1, p2}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->B0(Ljava/util/List;I)V

    .line 16
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v2, p2, :cond_1

    .line 17
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/wsw/cospa/bean/RipeFile;

    add-int/lit8 v2, v2, 0x1

    .line 18
    invoke-virtual {p2, v2}, Lcom/wsw/cospa/bean/RipeFile;->setIndexPape(I)V

    .line 19
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/wsw/cospa/bean/RipeFile;->setMaxPage(I)V

    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/FileSnapshot;->setFiles(Ljava/util/List;)V

    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public I(Ljava/io/File;)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->private:Lcom/wsw/cospa/bean/RipeFile;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/RipeFile;->getCurrPagePath()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p1, p0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4
    array-length v2, v1

    if-lez v2, :cond_2

    const/4 v2, 0x0

    .line 5
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 6
    aget-object v3, v1, v2

    .line 7
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 9
    invoke-virtual {p0, v3}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->I(Ljava/io/File;)V

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 11
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    .line 12
    iput-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->c:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void
.end method

.method public J()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->transient:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->interface:Landroid/support/v4/cq;

    invoke-virtual {v1, v0}, Landroid/support/v4/cq;->remove(Lio/reactivex/disposables/Disposable;)Z

    .line 3
    :cond_0
    new-instance v0, Lcom/wsw/cospa/activity/LocalPreviewActivity$if;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity$if;-><init>(Lcom/wsw/cospa/activity/LocalPreviewActivity;)V

    invoke-static {v0}, Landroid/support/v4/jz1;->switch(Lio/reactivex/SingleOnSubscribe;)Landroid/support/v4/jz1;

    move-result-object v0

    .line 4
    invoke-static {}, Lio/reactivex/schedulers/do;->else()Lio/reactivex/try;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/jz1;->h0(Lio/reactivex/try;)Landroid/support/v4/jz1;

    move-result-object v0

    .line 5
    invoke-static {}, Lio/reactivex/android/schedulers/do;->for()Lio/reactivex/try;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/jz1;->Q(Lio/reactivex/try;)Landroid/support/v4/jz1;

    move-result-object v0

    .line 6
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/jz1;->new(Lio/reactivex/SingleConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/SingleSubscribeProxy;

    new-instance v1, Lcom/wsw/cospa/activity/LocalPreviewActivity$do;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity$do;-><init>(Lcom/wsw/cospa/activity/LocalPreviewActivity;)V

    .line 7
    invoke-interface {v0, v1}, Lcom/uber/autodispose/SingleSubscribeProxy;->subscribe(Lio/reactivex/SingleObserver;)V

    return-void
.end method

.method public K()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->implements:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->interface:Landroid/support/v4/cq;

    invoke-virtual {v1, v0}, Landroid/support/v4/cq;->remove(Lio/reactivex/disposables/Disposable;)Z

    .line 3
    :cond_0
    new-instance v0, Lcom/wsw/cospa/activity/LocalPreviewActivity$new;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity$new;-><init>(Lcom/wsw/cospa/activity/LocalPreviewActivity;)V

    invoke-static {v0}, Landroid/support/v4/jz1;->switch(Lio/reactivex/SingleOnSubscribe;)Landroid/support/v4/jz1;

    move-result-object v0

    .line 4
    invoke-static {}, Lio/reactivex/schedulers/do;->else()Lio/reactivex/try;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/jz1;->h0(Lio/reactivex/try;)Landroid/support/v4/jz1;

    move-result-object v0

    .line 5
    invoke-static {}, Lio/reactivex/android/schedulers/do;->for()Lio/reactivex/try;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/jz1;->Q(Lio/reactivex/try;)Landroid/support/v4/jz1;

    move-result-object v0

    .line 6
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/jz1;->new(Lio/reactivex/SingleConverter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uber/autodispose/SingleSubscribeProxy;

    new-instance v1, Lcom/wsw/cospa/activity/LocalPreviewActivity$for;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity$for;-><init>(Lcom/wsw/cospa/activity/LocalPreviewActivity;)V

    .line 7
    invoke-interface {v0, v1}, Lcom/uber/autodispose/SingleSubscribeProxy;->subscribe(Lio/reactivex/SingleObserver;)V

    return-void
.end method

.method public L()I
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
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->catch:Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    invoke-static {v0}, Landroid/support/v4/zl1;->if(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v0

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    invoke-static {v0}, Landroid/support/v4/zl1;->new(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v0

    :goto_0
    if-gez v0, :cond_2

    const/4 v0, 0x0

    :cond_2
    return v0

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->catch:Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    return v0
.end method

.method public accept(Ljava/io/File;)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_2

    :cond_1
    return v3

    .line 4
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    return v2

    .line 5
    :cond_3
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->package:[Ljava/lang/String;

    array-length v4, p1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_5

    aget-object v6, p1, v5

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    return v2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    return v3
.end method

.method public case()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "RipeFile"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/RipeFile;

    iput-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->private:Lcom/wsw/cospa/bean/RipeFile;

    const-string v1, "POSITION"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->abstract:Ljava/lang/Integer;

    const-string v1, "IS_CONTINUE_READING"

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->synchronized:Z

    .line 5
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->showProgress()V

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->private:Lcom/wsw/cospa/bean/RipeFile;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->v0(Lcom/wsw/cospa/bean/RipeFile;ZZ)V

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
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->error_view:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mIndicatorView:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {v0, v1}, Lcom/wang/avi/AVLoadingIndicatorView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->contentView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->final:Z

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
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->D()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->a:Lcom/wsw/cospa/widget/MenuSettingDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wsw/cospa/widget/MenuSettingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->a:Lcom/wsw/cospa/widget/MenuSettingDialog;

    invoke-virtual {v0}, Lcom/wsw/cospa/widget/MenuSettingDialog;->dismiss()V

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->C()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->isShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->setVisibility(I)V

    .line 7
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->C()V

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

    goto/16 :goto_0

    .line 2
    :sswitch_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->a:Lcom/wsw/cospa/widget/MenuSettingDialog;

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/MenuSettingDialog;->show()V

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->D()V

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->isShow()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->setVisibility(I)V

    .line 6
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->C()V

    goto :goto_0

    .line 7
    :sswitch_1
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->D()V

    .line 8
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->isShow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->setVisibility(I)V

    .line 10
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->C()V

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->a:Lcom/wsw/cospa/widget/MenuSettingDialog;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/MenuSettingDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->a:Lcom/wsw/cospa/widget/MenuSettingDialog;

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/MenuSettingDialog;->dismiss()V

    .line 13
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->C()V

    goto :goto_0

    .line 14
    :sswitch_2
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->z0()V

    .line 15
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->isShow()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 16
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->setVisibility(I)V

    .line 17
    :cond_1
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->C()V

    goto :goto_0

    :sswitch_3
    const/4 p1, 0x1

    .line 18
    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->H0(I)V

    goto :goto_0

    :sswitch_4
    const/4 p1, 0x2

    .line 19
    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->H0(I)V

    goto :goto_0

    :sswitch_5
    const/4 p1, 0x3

    .line 20
    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->H0(I)V

    goto :goto_0

    .line 21
    :sswitch_6
    iget-boolean p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->return:Z

    if-eqz p1, :cond_2

    .line 22
    invoke-direct {p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->F0()V

    goto :goto_0

    .line 23
    :cond_2
    invoke-direct {p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->E0()V

    :cond_3
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09009e -> :sswitch_6
        0x7f090354 -> :sswitch_5
        0x7f090356 -> :sswitch_4
        0x7f090357 -> :sswitch_3
        0x7f090463 -> :sswitch_2
        0x7f090466 -> :sswitch_1
        0x7f0904b0 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->e:Lcom/wsw/cospa/activity/LocalPreviewActivity$this;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->native:Lcom/wsw/cospa/activity/LocalPreviewActivity$catch;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/wsw/cospa/activity/LocalPreviewActivity$catch;->if()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->a:Lcom/wsw/cospa/widget/MenuSettingDialog;

    invoke-virtual {v0}, Lcom/wsw/cospa/widget/MenuSettingDialog;->dismiss()V

    .line 5
    invoke-super {p0}, Lcom/wsw/cospa/base/BaseActivity;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
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
    iget-boolean v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->while:Z

    if-nez v1, :cond_7

    .line 4
    iget v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->super:I

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    int-to-float p1, p1

    cmpl-float v1, v1, p1

    if-gtz v1, :cond_2

    iget v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->throw:I

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
    iput-boolean v2, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->while:Z

    goto :goto_1

    .line 5
    :cond_3
    iget-boolean p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->while:Z

    if-nez p1, :cond_7

    .line 6
    invoke-static {p0}, Landroid/support/v4/j10;->case(Landroid/content/Context;)I

    move-result p1

    .line 7
    iget-object p2, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->import:Landroid/graphics/RectF;

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

    iput-object p2, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->import:Landroid/graphics/RectF;

    .line 10
    :cond_4
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->import:Landroid/graphics/RectF;

    iget p2, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->super:I

    int-to-float p2, p2

    iget v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->throw:I

    int-to-float v1, v1

    invoke-virtual {p1, p2, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 11
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->D()V

    .line 12
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->a:Lcom/wsw/cospa/widget/MenuSettingDialog;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/MenuSettingDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 13
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->a:Lcom/wsw/cospa/widget/MenuSettingDialog;

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/MenuSettingDialog;->dismiss()V

    .line 14
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->C()V

    :cond_5
    return v2

    .line 15
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->super:I

    .line 16
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->throw:I

    .line 17
    iput-boolean v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->while:Z

    :cond_7
    :goto_1
    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->goto:Lcom/wsw/cospa/adapter/LocalPreviewAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/wsw/cospa/adapter/LocalPreviewAdapter;->getItemCount()I

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
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->break:[I

    const/4 v2, 0x4

    aget v0, v0, v2

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->break:[I

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
    invoke-direct {p0, v0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->F(I)V

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
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->w0()V

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->native:Lcom/wsw/cospa/activity/LocalPreviewActivity$catch;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/wsw/cospa/activity/LocalPreviewActivity$catch;->if()V

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
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mZoomRecyclerView:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    :goto_0
    if-eqz p3, :cond_2

    if-ne p1, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->L()I

    move-result p1

    add-int/2addr p1, p2

    iget p2, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->const:I

    sub-int/2addr p1, p2

    .line 5
    iget-object p2, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->catch:Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    invoke-static {p2, v0, p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->s0(Landroidx/recyclerview/widget/LinearLayoutManager;Landroidx/recyclerview/widget/RecyclerView;I)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->L()I

    move-result p1

    add-int/2addr p1, p2

    iget p2, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->const:I

    sub-int/2addr p1, p2

    .line 7
    iget-object p2, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->catch:Lcom/wsw/cospa/widget/view/PreCacheLayoutManager;

    invoke-static {p2, v0, p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->s0(Landroidx/recyclerview/widget/LinearLayoutManager;Landroidx/recyclerview/widget/RecyclerView;I)V

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
    new-instance v0, Lcom/wsw/cospa/activity/LocalPreviewActivity$catch;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity$catch;-><init>(Lcom/wsw/cospa/activity/LocalPreviewActivity;)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->native:Lcom/wsw/cospa/activity/LocalPreviewActivity$catch;

    .line 3
    invoke-virtual {v0}, Lcom/wsw/cospa/activity/LocalPreviewActivity$catch;->do()V

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->C()V

    return-void
.end method

.method public onSingleTap(FF)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->D()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->a:Lcom/wsw/cospa/widget/MenuSettingDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wsw/cospa/widget/MenuSettingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->a:Lcom/wsw/cospa/widget/MenuSettingDialog;

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/MenuSettingDialog;->dismiss()V

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->C()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->isShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->setVisibility(I)V

    .line 7
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->C()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->N(FF)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->F(I)V

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
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->this:Lcom/gyf/immersionbar/else;

    sget-object v0, Lcom/gyf/immersionbar/if;->FLAG_HIDE_BAR:Lcom/gyf/immersionbar/if;

    invoke-virtual {p1, v0}, Lcom/gyf/immersionbar/else;->Z(Lcom/gyf/immersionbar/if;)Lcom/gyf/immersionbar/else;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gyf/immersionbar/else;->b0()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->this:Lcom/gyf/immersionbar/else;

    sget-object v0, Lcom/gyf/immersionbar/if;->FLAG_HIDE_STATUS_BAR:Lcom/gyf/immersionbar/if;

    invoke-virtual {p1, v0}, Lcom/gyf/immersionbar/else;->Z(Lcom/gyf/immersionbar/if;)Lcom/gyf/immersionbar/else;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gyf/immersionbar/else;->b0()V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->this:Lcom/gyf/immersionbar/else;

    sget-object v0, Lcom/gyf/immersionbar/if;->FLAG_HIDE_NAVIGATION_BAR:Lcom/gyf/immersionbar/if;

    invoke-virtual {p1, v0}, Lcom/gyf/immersionbar/else;->Z(Lcom/gyf/immersionbar/if;)Lcom/gyf/immersionbar/else;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gyf/immersionbar/else;->b0()V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->this:Lcom/gyf/immersionbar/else;

    sget-object v0, Lcom/gyf/immersionbar/if;->FLAG_SHOW_BAR:Lcom/gyf/immersionbar/if;

    invoke-virtual {p1, v0}, Lcom/gyf/immersionbar/else;->Z(Lcom/gyf/immersionbar/if;)Lcom/gyf/immersionbar/else;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gyf/immersionbar/else;->b0()V

    :goto_0
    return-void
.end method

.method public p0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->J()V

    return-void
.end method

.method public q0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->K()V

    return-void
.end method

.method public showProgress()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mIndicatorView:Lcom/wang/avi/AVLoadingIndicatorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wang/avi/AVLoadingIndicatorView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->contentView:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->error_view:Landroid/widget/RelativeLayout;

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
    invoke-static {p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->E(Landroid/app/Activity;)V

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

    iput-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->this:Lcom/gyf/immersionbar/else;

    .line 9
    invoke-static {p0}, Landroid/support/v4/j10;->throw(Landroid/app/Activity;)V

    .line 10
    new-instance v0, Lcom/wsw/cospa/widget/MenuSettingDialog;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/widget/MenuSettingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->a:Lcom/wsw/cospa/widget/MenuSettingDialog;

    .line 11
    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/MenuSettingDialog;->hideLongClickMenu(Z)V

    .line 12
    new-instance v0, Lcom/wsw/cospa/widget/BrightnessSettingWindow;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/widget/BrightnessSettingWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->b:Lcom/wsw/cospa/widget/BrightnessSettingWindow;

    .line 13
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v3, "hide_local_comic_status_key"

    invoke-virtual {v0, v3, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v0

    const/16 v3, 0x8

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->comic_status_bar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->comic_status_bar:Landroid/widget/LinearLayout;

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
    iget-object v4, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->rootView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 21
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->tvCatalog:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 22
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->autoPlayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->tvBrightness:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->tvSetting:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mIndicatorRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 26
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v3, "read_mode_key"

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 27
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mZoomRecyclerView:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    goto :goto_3

    .line 28
    :cond_5
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    .line 29
    :goto_3
    new-instance v1, Lcom/wsw/cospa/activity/LocalPreviewActivity$CustomScrollListener;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity$CustomScrollListener;-><init>(Lcom/wsw/cospa/activity/LocalPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 30
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 31
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->initChapterUrl(Z)V

    .line 32
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->initSkipChapter(Z)V

    .line 33
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;->initSaveBookText(Z)V

    .line 34
    invoke-direct {p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->P()V

    .line 35
    invoke-direct {p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->O()V

    return-void
.end method

.method public u0()V
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
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->L()I

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
    iget-object v2, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mZoomRecyclerView:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    const/4 v3, 0x0

    iget v0, v0, Landroid/graphics/Point;->y:I

    neg-int v0, v0

    invoke-virtual {v2, v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    if-nez v1, :cond_2

    .line 6
    invoke-direct {p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->r0()V

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/wsw/cospa/activity/LocalPreviewActivity;->r0()V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->smoothScrollToPosition(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateChapterName(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->statusChapterText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public v0(Lcom/wsw/cospa/bean/RipeFile;ZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->protected:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->interface:Landroid/support/v4/cq;

    invoke-virtual {v1, v0}, Landroid/support/v4/cq;->remove(Lio/reactivex/disposables/Disposable;)Z

    .line 3
    :cond_0
    new-instance v0, Landroid/support/v4/bv0;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/bv0;-><init>(Lcom/wsw/cospa/activity/LocalPreviewActivity;Lcom/wsw/cospa/bean/RipeFile;)V

    invoke-static {v0}, Landroid/support/v4/jz1;->switch(Lio/reactivex/SingleOnSubscribe;)Landroid/support/v4/jz1;

    move-result-object p1

    .line 4
    invoke-static {}, Lio/reactivex/schedulers/do;->else()Lio/reactivex/try;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/jz1;->h0(Lio/reactivex/try;)Landroid/support/v4/jz1;

    move-result-object p1

    .line 5
    invoke-static {}, Lio/reactivex/android/schedulers/do;->for()Lio/reactivex/try;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/jz1;->Q(Lio/reactivex/try;)Landroid/support/v4/jz1;

    move-result-object p1

    .line 6
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/jz1;->new(Lio/reactivex/SingleConverter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uber/autodispose/SingleSubscribeProxy;

    new-instance v0, Lcom/wsw/cospa/activity/LocalPreviewActivity$try;

    invoke-direct {v0, p0, p2, p3}, Lcom/wsw/cospa/activity/LocalPreviewActivity$try;-><init>(Lcom/wsw/cospa/activity/LocalPreviewActivity;ZZ)V

    .line 7
    invoke-interface {p1, v0}, Lcom/uber/autodispose/SingleSubscribeProxy;->subscribe(Lio/reactivex/SingleObserver;)V

    return-void
.end method

.method public w0()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->private:Lcom/wsw/cospa/bean/RipeFile;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/RipeFile;->getPath()Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hw;->catch()Lcom/wsw/cospa/dao/RipeFileDao;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->private:Lcom/wsw/cospa/bean/RipeFile;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/RipeFile;->getRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/RipeFile;

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->private:Lcom/wsw/cospa/bean/RipeFile;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/RipeFile;->getCurrPagePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/RipeFile;->setCurrPagePath(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->instanceof:Lcom/wsw/cospa/bean/RipeFile;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/RipeFile;->getIndexPape()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/RipeFile;->setIndexPape(I)V

    .line 5
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->instanceof:Lcom/wsw/cospa/bean/RipeFile;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/RipeFile;->getMaxPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/RipeFile;->setMaxPage(I)V

    .line 6
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->private:Lcom/wsw/cospa/bean/RipeFile;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/RipeFile;->getRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/RipeFile;->setRootPath(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/hw;->catch()Lcom/wsw/cospa/dao/RipeFileDao;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/wsw/cospa/bean/RipeFile;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v3}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplaceInTx([Ljava/lang/Object;)V

    .line 8
    invoke-static {}, Landroid/support/v4/nm1;->case()Landroid/support/v4/nm1;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Landroid/support/v4/nm1;->if([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public x0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->error_view:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mIndicatorView:Lcom/wang/avi/AVLoadingIndicatorView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/wang/avi/AVLoadingIndicatorView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->contentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->tvErrorView:Landroid/widget/TextView;

    const-string v2, "\u6587\u4ef6\u4e0d\u5b58\u5728,\u8bf7\u68c0\u67e5\u672c\u5730\u6587\u4ef6"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iput-boolean v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->final:Z

    return-void
.end method

.method public y0(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->error_view:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->mIndicatorView:Lcom/wang/avi/AVLoadingIndicatorView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/wang/avi/AVLoadingIndicatorView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->contentView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->tvErrorView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iput-boolean v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->final:Z

    return-void
.end method

.method public z0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->b:Lcom/wsw/cospa/widget/BrightnessSettingWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->b:Lcom/wsw/cospa/widget/BrightnessSettingWindow;

    if-eqz v0, :cond_2

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/activity/LocalPreviewActivity;->rootView:Landroid/widget/RelativeLayout;

    const/16 v2, 0x50

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_2
    return-void
.end method
