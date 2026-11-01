.class public Lcom/wsw/cospa/activity/ZipFileManagerActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/ZipFileManagerActivity;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/wsw/cospa/activity/ZipFileManagerActivity_ViewBinding;-><init>(Lcom/wsw/cospa/activity/ZipFileManagerActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/wsw/cospa/activity/ZipFileManagerActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/activity/ZipFileManagerActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    .line 4
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f0902ab

    const-string v2, "field \'mToolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904be

    const-string v2, "field \'tvTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->tvTitle:Landroid/widget/TextView;

    .line 6
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0902a4

    const-string v2, "field \'mRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    const-class v0, Landroidx/appcompat/widget/ButtonBarLayout;

    const v1, 0x7f09029b

    const-string v2, "field \'mButtonBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ButtonBarLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->mButtonBar:Landroidx/appcompat/widget/ButtonBarLayout;

    .line 8
    const-class v0, Landroidx/appcompat/widget/AppCompatButton;

    const v1, 0x7f0900a0

    const-string v2, "field \'backButton\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->backButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 9
    const-class v0, Landroidx/appcompat/widget/AppCompatButton;

    const v1, 0x7f0900dd

    const-string v2, "field \'cancelButton\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->cancelButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 10
    const-class v0, Landroidx/appcompat/widget/AppCompatButton;

    const v1, 0x7f09010f

    const-string v2, "field \'confirmButton\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->confirmButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 11
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090474

    const-string v2, "field \'tvCurrentPath\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->tvCurrentPath:Landroid/widget/TextView;

    .line 12
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0901bb

    const-string v2, "field \'mFileManagerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->mFileManagerView:Landroid/widget/LinearLayout;

    .line 13
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09010e

    const-string v2, "field \'comic_status_bar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->comic_status_bar:Landroid/widget/LinearLayout;

    .line 14
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0903db

    const-string v2, "field \'statusChapterText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->statusChapterText:Landroid/widget/TextView;

    .line 15
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0903dc

    const-string v2, "field \'statusTimeText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->statusTimeText:Landroid/widget/TextView;

    .line 16
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0903d9

    const-string v2, "field \'statusBatteryText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->statusBatteryText:Landroid/widget/TextView;

    .line 17
    const-class v0, Lcom/wsw/cospa/widget/view/BatteryView;

    const v1, 0x7f0903da

    const-string v2, "field \'batteryView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/BatteryView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->batteryView:Lcom/wsw/cospa/widget/view/BatteryView;

    .line 18
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0901de

    const-string v2, "field \'mHeadTitleRight\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->mHeadTitleRight:Landroid/widget/TextView;

    .line 19
    const-class v0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    const v1, 0x7f0902ae

    const-string v2, "field \'mZoomRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->mZoomRecyclerView:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    .line 20
    const-class v0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    const v1, 0x7f0902a5

    const-string v2, "field \'mRecyclerViewPager\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    .line 21
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f090115

    const-string v2, "field \'contentView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->contentView:Landroid/widget/RelativeLayout;

    .line 22
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0902a1

    const-string v2, "field \'mIndicatorRoot\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->mIndicatorRoot:Landroid/widget/RelativeLayout;

    .line 23
    const-class v0, Lcom/wang/avi/AVLoadingIndicatorView;

    const v1, 0x7f0902a2

    const-string v2, "field \'mIndicatorView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wang/avi/AVLoadingIndicatorView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->mIndicatorView:Lcom/wang/avi/AVLoadingIndicatorView;

    .line 24
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f09016a

    const-string v2, "field \'error_view\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->error_view:Landroid/widget/RelativeLayout;

    .line 25
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09016b

    const-string v2, "field \'tvErrorView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->tvErrorView:Landroid/widget/TextView;

    .line 26
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904a7

    const-string v2, "field \'tvRetry\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->tvRetry:Landroid/widget/TextView;

    .line 27
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090466

    const-string v2, "field \'tvCatalog\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->tvCatalog:Landroid/widget/TextView;

    .line 28
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090461

    const-string v2, "field \'tvAutoPlay\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->tvAutoPlay:Landroid/widget/TextView;

    .line 29
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090463

    const-string v2, "field \'tvBrightness\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->tvBrightness:Landroid/widget/TextView;

    .line 30
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904b0

    const-string v2, "field \'tvSetting\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->tvSetting:Landroid/widget/TextView;

    .line 31
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09029a

    const-string v2, "field \'mButtomMenu\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->mButtomMenu:Landroid/widget/LinearLayout;

    .line 32
    const-class v0, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    const v1, 0x7f0900d8

    const-string v2, "field \'buttomLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    .line 33
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090233

    const-string v2, "field \'ivAutoPlay\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->ivAutoPlay:Landroid/widget/ImageView;

    .line 34
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09009e

    const-string v2, "field \'autoPlayLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->autoPlayLayout:Landroid/widget/LinearLayout;

    .line 35
    const-class v0, Lcom/xw/repo/BubbleSeekBar;

    const v1, 0x7f0900c4

    const-string v2, "field \'bsb_auto\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xw/repo/BubbleSeekBar;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->bsb_auto:Lcom/xw/repo/BubbleSeekBar;

    .line 36
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090272

    const-string v2, "field \'ll_auto\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->ll_auto:Landroid/widget/LinearLayout;

    .line 37
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09028b

    const-string v2, "field \'ll_seek_progress\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->ll_seek_progress:Landroid/widget/LinearLayout;

    .line 38
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090332

    const-string v2, "field \'preChapter\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->preChapter:Landroid/widget/TextView;

    .line 39
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902fb

    const-string v2, "field \'nextChapter\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->nextChapter:Landroid/widget/TextView;

    .line 40
    const-class v0, Lcom/wsw/cospa/widget/view/ReverseSeekBar;

    const v1, 0x7f0902a8

    const-string v2, "field \'mSeekBarScroll\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/ReverseSeekBar;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->mSeekBarScroll:Lcom/wsw/cospa/widget/view/ReverseSeekBar;

    const v0, 0x7f0904d9

    const-string v1, "field \'v_brightness\'"

    .line 41
    invoke-static {p2, v0, v1}, Lbutterknife/internal/new;->try(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->v_brightness:Landroid/view/View;

    .line 42
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f09010a

    const-string v2, "field \'mComicPreview\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->mComicPreview:Landroid/widget/RelativeLayout;

    .line 43
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090276

    const-string v2, "field \'ll_click_event\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->ll_click_event:Landroid/widget/LinearLayout;

    .line 44
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090290

    const-string v2, "field \'ll_up_down_tips\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->ll_up_down_tips:Landroid/widget/LinearLayout;

    .line 45
    const-class v0, Landroidx/appcompat/widget/AppCompatImageView;

    const v1, 0x7f090239

    const-string v2, "field \'iv_close_up_down_tips\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->iv_close_up_down_tips:Landroidx/appcompat/widget/AppCompatImageView;

    .line 46
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090284

    const-string v2, "field \'ll_left_right_tips\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->ll_left_right_tips:Landroid/widget/LinearLayout;

    .line 47
    const-class v0, Landroidx/appcompat/widget/AppCompatImageView;

    const v1, 0x7f090238

    const-string v2, "field \'iv_close_left_right_tips\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->iv_close_left_right_tips:Landroidx/appcompat/widget/AppCompatImageView;

    .line 48
    const-class v0, Landroid/widget/Button;

    const v1, 0x7f0901a4

    const-string v2, "field \'event_top\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->event_top:Landroid/widget/Button;

    .line 49
    const-class v0, Landroid/widget/Button;

    const v1, 0x7f0901a0

    const-string v2, "field \'event_bottom\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->event_bottom:Landroid/widget/Button;

    .line 50
    const-class v0, Landroid/widget/Button;

    const v1, 0x7f0901a5

    const-string v2, "field \'event_up_down_middle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->event_up_down_middle:Landroid/widget/Button;

    .line 51
    const-class v0, Landroid/widget/Button;

    const v1, 0x7f0901a1

    const-string v2, "field \'event_left\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->event_left:Landroid/widget/Button;

    .line 52
    const-class v0, Landroid/widget/Button;

    const v1, 0x7f0901a2

    const-string v2, "field \'event_middle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->event_middle:Landroid/widget/Button;

    .line 53
    const-class v0, Landroid/widget/Button;

    const v1, 0x7f0901a3

    const-string v2, "field \'event_right\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->event_right:Landroid/widget/Button;

    .line 54
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090386

    const-string v2, "field \'scroll_mode_event_up_down\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->scroll_mode_event_up_down:Landroid/widget/LinearLayout;

    .line 55
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090385

    const-string v2, "field \'scroll_mode_event_left_right\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    .line 56
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090283

    const-string v2, "field \'ll_left_right_content\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->ll_left_right_content:Landroid/widget/LinearLayout;

    .line 57
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09028f

    const-string v2, "field \'ll_up_down_content\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->ll_up_down_content:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ZipFileManagerActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/wsw/cospa/activity/ZipFileManagerActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/ZipFileManagerActivity;

    .line 3
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 4
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->tvTitle:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->mButtonBar:Landroidx/appcompat/widget/ButtonBarLayout;

    .line 7
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->backButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 8
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->cancelButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 9
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->confirmButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 10
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->tvCurrentPath:Landroid/widget/TextView;

    .line 11
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->mFileManagerView:Landroid/widget/LinearLayout;

    .line 12
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->comic_status_bar:Landroid/widget/LinearLayout;

    .line 13
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->statusChapterText:Landroid/widget/TextView;

    .line 14
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->statusTimeText:Landroid/widget/TextView;

    .line 15
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->statusBatteryText:Landroid/widget/TextView;

    .line 16
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->batteryView:Lcom/wsw/cospa/widget/view/BatteryView;

    .line 17
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->mHeadTitleRight:Landroid/widget/TextView;

    .line 18
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->mZoomRecyclerView:Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;

    .line 19
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->mRecyclerViewPager:Lcom/wsw/cospa/widget/view/RecyclerViewPager;

    .line 20
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->contentView:Landroid/widget/RelativeLayout;

    .line 21
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->mIndicatorRoot:Landroid/widget/RelativeLayout;

    .line 22
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->mIndicatorView:Lcom/wang/avi/AVLoadingIndicatorView;

    .line 23
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->error_view:Landroid/widget/RelativeLayout;

    .line 24
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->tvErrorView:Landroid/widget/TextView;

    .line 25
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->tvRetry:Landroid/widget/TextView;

    .line 26
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->tvCatalog:Landroid/widget/TextView;

    .line 27
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->tvAutoPlay:Landroid/widget/TextView;

    .line 28
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->tvBrightness:Landroid/widget/TextView;

    .line 29
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->tvSetting:Landroid/widget/TextView;

    .line 30
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->mButtomMenu:Landroid/widget/LinearLayout;

    .line 31
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->buttomLayout:Lcom/wsw/cospa/widget/view/ButtomMenuLayout;

    .line 32
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->ivAutoPlay:Landroid/widget/ImageView;

    .line 33
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->autoPlayLayout:Landroid/widget/LinearLayout;

    .line 34
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->bsb_auto:Lcom/xw/repo/BubbleSeekBar;

    .line 35
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->ll_auto:Landroid/widget/LinearLayout;

    .line 36
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->ll_seek_progress:Landroid/widget/LinearLayout;

    .line 37
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->preChapter:Landroid/widget/TextView;

    .line 38
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->nextChapter:Landroid/widget/TextView;

    .line 39
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->mSeekBarScroll:Lcom/wsw/cospa/widget/view/ReverseSeekBar;

    .line 40
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->v_brightness:Landroid/view/View;

    .line 41
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->mComicPreview:Landroid/widget/RelativeLayout;

    .line 42
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->ll_click_event:Landroid/widget/LinearLayout;

    .line 43
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->ll_up_down_tips:Landroid/widget/LinearLayout;

    .line 44
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->iv_close_up_down_tips:Landroidx/appcompat/widget/AppCompatImageView;

    .line 45
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->ll_left_right_tips:Landroid/widget/LinearLayout;

    .line 46
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->iv_close_left_right_tips:Landroidx/appcompat/widget/AppCompatImageView;

    .line 47
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->event_top:Landroid/widget/Button;

    .line 48
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->event_bottom:Landroid/widget/Button;

    .line 49
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->event_up_down_middle:Landroid/widget/Button;

    .line 50
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->event_left:Landroid/widget/Button;

    .line 51
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->event_middle:Landroid/widget/Button;

    .line 52
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->event_right:Landroid/widget/Button;

    .line 53
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->scroll_mode_event_up_down:Landroid/widget/LinearLayout;

    .line 54
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    .line 55
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->ll_left_right_content:Landroid/widget/LinearLayout;

    .line 56
    iput-object v1, v0, Lcom/wsw/cospa/activity/ZipFileManagerActivity;->ll_up_down_content:Landroid/widget/LinearLayout;

    return-void

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
