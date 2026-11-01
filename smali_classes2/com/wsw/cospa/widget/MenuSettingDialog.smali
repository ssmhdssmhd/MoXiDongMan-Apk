.class public Lcom/wsw/cospa/widget/MenuSettingDialog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/widget/MenuSettingDialog$onCallbackListener;
    }
.end annotation


# instance fields
.field private bookShelfBean:Lcom/wsw/cospa/bean/ComicShelfBean;

.field private colorMap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

.field public ll_click_event_position:Landroid/widget/LinearLayout;

.field public ll_comic_bg:Landroid/widget/LinearLayout;

.field public longClickMenuView:Landroid/widget/LinearLayout;

.field private mActivity:Lcom/wsw/cospa/base/BaseActivity;

.field private mContext:Landroid/content/Context;

.field private mView:Landroid/view/View;

.field private onCallbackListener:Lcom/wsw/cospa/widget/MenuSettingDialog$onCallbackListener;

.field public paging_reverse_layout:Landroid/widget/LinearLayout;

.field public readModeJapan:Landroid/widget/LinearLayout;

.field public readModeNormal:Landroid/widget/LinearLayout;

.field public readModeRoll:Landroid/widget/LinearLayout;

.field public reader_paging_layout:Landroid/widget/LinearLayout;

.field public switchComicStatus:Landroid/widget/Switch;

.field public switchEyecareMode:Landroid/widget/Switch;

.field public switchKeepScreen:Landroid/widget/Switch;

.field public switchLongClickMenu:Landroid/widget/Switch;

.field public switchNavigationBar:Landroid/widget/Switch;

.field public switchPagingReverse:Landroid/widget/Switch;

.field public switchReaderPaging:Landroid/widget/Switch;

.field public switchScreen:Landroid/widget/Switch;

.field public switchStatusBar:Landroid/widget/Switch;

.field public switchVolumeKeyPaging:Landroid/widget/Switch;

.field public switchWhiteEdge:Landroid/widget/Switch;

.field public switch_navigation_bar_layout:Landroid/widget/LinearLayout;

.field public tv_comic_bg:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->colorMap:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mContext:Landroid/content/Context;

    .line 4
    check-cast p1, Lcom/wsw/cospa/base/BaseActivity;

    iput-object p1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mActivity:Lcom/wsw/cospa/base/BaseActivity;

    .line 5
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/MenuSettingDialog;->initView()V

    .line 6
    invoke-direct {p0}, Lcom/wsw/cospa/widget/MenuSettingDialog;->initData()V

    return-void
.end method

.method public static synthetic access$000(Lcom/wsw/cospa/widget/MenuSettingDialog;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->colorMap:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/wsw/cospa/widget/MenuSettingDialog;)Lcom/wsw/cospa/widget/MenuSettingDialog$onCallbackListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->onCallbackListener:Lcom/wsw/cospa/widget/MenuSettingDialog$onCallbackListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/wsw/cospa/widget/MenuSettingDialog;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getReadMode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->bookShelfBean:Lcom/wsw/cospa/bean/ComicShelfBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getReadMode()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->bookShelfBean:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getReadMode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->bookShelfBean:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getReadMode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "read_mode_key"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    return v0
.end method

.method private initData()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    iget-object v1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f1200fa

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCancelable(Z)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCanceledOnTouchOutside(Z)V

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extends(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    .line 6
    invoke-static {}, Landroid/support/v4/j10;->goto()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n(I)V

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f12035e

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->colorMap:Ljava/util/List;

    const v1, 0x7f0601b7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->colorMap:Ljava/util/List;

    const v1, 0x7f060141

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->colorMap:Ljava/util/List;

    const v1, 0x7f060380

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mActivity:Lcom/wsw/cospa/base/BaseActivity;

    iget-object v1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-static {v0, v1}, Lcom/gyf/immersionbar/else;->interface(Landroid/app/Activity;Landroid/app/Dialog;)V

    :cond_0
    return-void
.end method

.method public hideLongClickMenu(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->longClickMenuView:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->longClickMenuView:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public initClickTips()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/widget/MenuSettingDialog;->getReadMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->reader_paging_layout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->paging_reverse_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->reader_paging_layout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->paging_reverse_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public initView()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0060

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mView:Landroid/view/View;

    const v1, 0x7f0903fb

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->longClickMenuView:Landroid/widget/LinearLayout;

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mView:Landroid/view/View;

    const v1, 0x7f090356

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->readModeNormal:Landroid/widget/LinearLayout;

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mView:Landroid/view/View;

    const v1, 0x7f090357

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->readModeRoll:Landroid/widget/LinearLayout;

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mView:Landroid/view/View;

    const v1, 0x7f090354

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->readModeJapan:Landroid/widget/LinearLayout;

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mView:Landroid/view/View;

    const v1, 0x7f090358

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->reader_paging_layout:Landroid/widget/LinearLayout;

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mView:Landroid/view/View;

    const v1, 0x7f090403

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->switchReaderPaging:Landroid/widget/Switch;

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mView:Landroid/view/View;

    const v1, 0x7f090318

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->paging_reverse_layout:Landroid/widget/LinearLayout;

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mView:Landroid/view/View;

    const v1, 0x7f090400

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->switchPagingReverse:Landroid/widget/Switch;

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mView:Landroid/view/View;

    const v1, 0x7f09040d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->switchWhiteEdge:Landroid/widget/Switch;

    .line 11
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mView:Landroid/view/View;

    const v1, 0x7f090279

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->ll_comic_bg:Landroid/widget/LinearLayout;

    .line 12
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mView:Landroid/view/View;

    const v1, 0x7f09046d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->tv_comic_bg:Landroid/widget/TextView;

    .line 13
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mView:Landroid/view/View;

    const v1, 0x7f0903f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->switchEyecareMode:Landroid/widget/Switch;

    .line 14
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mView:Landroid/view/View;

    const v1, 0x7f0903f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->switchKeepScreen:Landroid/widget/Switch;

    .line 15
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mView:Landroid/view/View;

    const v1, 0x7f090404

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->switchScreen:Landroid/widget/Switch;

    .line 16
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mView:Landroid/view/View;

    const v1, 0x7f09040c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->switchVolumeKeyPaging:Landroid/widget/Switch;

    .line 17
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mView:Landroid/view/View;

    const v1, 0x7f090407

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->switchStatusBar:Landroid/widget/Switch;

    .line 18
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mView:Landroid/view/View;

    const v1, 0x7f0903fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->switchNavigationBar:Landroid/widget/Switch;

    .line 19
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mView:Landroid/view/View;

    const v1, 0x7f0903fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->switch_navigation_bar_layout:Landroid/widget/LinearLayout;

    .line 20
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mView:Landroid/view/View;

    const v1, 0x7f0903ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->switchComicStatus:Landroid/widget/Switch;

    .line 21
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mView:Landroid/view/View;

    const v1, 0x7f0903fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->switchLongClickMenu:Landroid/widget/Switch;

    .line 22
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mView:Landroid/view/View;

    const v1, 0x7f090277

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->ll_click_event_position:Landroid/widget/LinearLayout;

    .line 23
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->switchKeepScreen:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v1

    const-string v2, "read_keep_screen_on"

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 24
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->switchKeepScreen:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 25
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->switchScreen:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v1

    const-string v2, "read_switc_screen_key"

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 26
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->switchScreen:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 27
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->switchReaderPaging:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 28
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->switchReaderPaging:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v1

    const-string v2, "pref_reader_paging"

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 29
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->switchPagingReverse:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 30
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->switchPagingReverse:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v1

    const-string v2, "pref_reader_paging_reverse"

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 31
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->switchWhiteEdge:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 32
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->switchWhiteEdge:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v1

    const-string v2, "pref_reader_white_edge"

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 33
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->switchVolumeKeyPaging:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 34
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->switchVolumeKeyPaging:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v1

    const-string v2, "scroll_mode_volume_key"

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 35
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->switchStatusBar:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 36
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->switchStatusBar:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v1

    const-string v2, "show_status_bar_key"

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 37
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mActivity:Lcom/wsw/cospa/base/BaseActivity;

    invoke-static {v0}, Lcom/gyf/immersionbar/else;->R(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->switch_navigation_bar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->switch_navigation_bar_layout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 40
    :goto_0
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->switchNavigationBar:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 41
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "hide_navigation_bar_key"

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v0

    .line 42
    iget-object v1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->switchNavigationBar:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 43
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "hide_comic_status_key"

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v0

    .line 44
    iget-object v1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->switchComicStatus:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 45
    iget-object v1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->switchComicStatus:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 46
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->switchLongClickMenu:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 47
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "close_long_click_menu_key"

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v0

    .line 48
    iget-object v1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->switchLongClickMenu:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 49
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->switchEyecareMode:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 50
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "switch_eyecare_mode_key"

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v0

    .line 51
    iget-object v1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->switchEyecareMode:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 52
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->readModeNormal:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->readModeRoll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->readModeJapan:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->ll_comic_bg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->ll_click_event_position:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "comic_background_color_text"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->try(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v0}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 59
    iget-object v1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->tv_comic_bg:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->tv_comic_bg:Landroid/widget/TextView;

    const-string v1, "\u9ed1\u8272"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 2
    :sswitch_0
    iget-object p1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->onCallbackListener:Lcom/wsw/cospa/widget/MenuSettingDialog$onCallbackListener;

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1, p2}, Lcom/wsw/cospa/widget/MenuSettingDialog$onCallbackListener;->onSwitchWhiteEdge(Z)V

    goto/16 :goto_0

    .line 4
    :sswitch_1
    iget-object p1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "scroll_mode_volume_key"

    invoke-virtual {p1, v0, p2}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 5
    :sswitch_2
    iget-object p1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_status_bar_key"

    invoke-virtual {p1, v0, p2}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->onCallbackListener:Lcom/wsw/cospa/widget/MenuSettingDialog$onCallbackListener;

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p1}, Lcom/wsw/cospa/widget/MenuSettingDialog$onCallbackListener;->onSwitchStatusBar()V

    goto/16 :goto_0

    .line 8
    :sswitch_3
    iget-object p1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "read_switc_screen_key"

    invoke-virtual {p1, v0, p2}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    .line 9
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/MenuSettingDialog;->dismiss()V

    if-eqz p2, :cond_0

    .line 10
    iget-object p1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mActivity:Lcom/wsw/cospa/base/BaseActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mActivity:Lcom/wsw/cospa/base/BaseActivity;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 12
    :sswitch_4
    iget-object p1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->onCallbackListener:Lcom/wsw/cospa/widget/MenuSettingDialog$onCallbackListener;

    if-eqz p1, :cond_1

    .line 13
    invoke-interface {p1, p2}, Lcom/wsw/cospa/widget/MenuSettingDialog$onCallbackListener;->onSwitchReaderPaging(Z)V

    goto :goto_0

    .line 14
    :sswitch_5
    iget-object p1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->onCallbackListener:Lcom/wsw/cospa/widget/MenuSettingDialog$onCallbackListener;

    if-eqz p1, :cond_1

    .line 15
    invoke-interface {p1, p2}, Lcom/wsw/cospa/widget/MenuSettingDialog$onCallbackListener;->onSwitchPagingReverse(Z)V

    goto :goto_0

    .line 16
    :sswitch_6
    iget-object p1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "hide_navigation_bar_key"

    invoke-virtual {p1, v0, p2}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    .line 17
    iget-object p1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->onCallbackListener:Lcom/wsw/cospa/widget/MenuSettingDialog$onCallbackListener;

    if-eqz p1, :cond_1

    .line 18
    invoke-interface {p1}, Lcom/wsw/cospa/widget/MenuSettingDialog$onCallbackListener;->onSwitchNavigationBar()V

    goto :goto_0

    .line 19
    :sswitch_7
    iget-object p1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "close_long_click_menu_key"

    invoke-virtual {p1, v0, p2}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    goto :goto_0

    .line 20
    :sswitch_8
    iget-object p1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "read_keep_screen_on"

    invoke-virtual {p1, v0, p2}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    .line 21
    iget-object p1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mActivity:Lcom/wsw/cospa/base/BaseActivity;

    invoke-static {p1}, Landroid/support/v4/j10;->throw(Landroid/app/Activity;)V

    goto :goto_0

    .line 22
    :sswitch_9
    iget-object p1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "switch_eyecare_mode_key"

    invoke-virtual {p1, v0, p2}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    .line 23
    iget-object p1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->onCallbackListener:Lcom/wsw/cospa/widget/MenuSettingDialog$onCallbackListener;

    if-eqz p1, :cond_1

    .line 24
    invoke-interface {p1, p2}, Lcom/wsw/cospa/widget/MenuSettingDialog$onCallbackListener;->onSwitchEyeCareMode(Z)V

    goto :goto_0

    .line 25
    :sswitch_a
    iget-object p1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "hide_comic_status_key"

    invoke-virtual {p1, v0, p2}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    .line 26
    iget-object p1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->onCallbackListener:Lcom/wsw/cospa/widget/MenuSettingDialog$onCallbackListener;

    if-eqz p1, :cond_1

    .line 27
    invoke-interface {p1}, Lcom/wsw/cospa/widget/MenuSettingDialog$onCallbackListener;->onShowComicState()V

    :cond_1
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0903ea -> :sswitch_a
        0x7f0903f0 -> :sswitch_9
        0x7f0903f9 -> :sswitch_8
        0x7f0903fa -> :sswitch_7
        0x7f0903fc -> :sswitch_6
        0x7f090400 -> :sswitch_5
        0x7f090403 -> :sswitch_4
        0x7f090404 -> :sswitch_3
        0x7f090407 -> :sswitch_2
        0x7f09040c -> :sswitch_1
        0x7f09040d -> :sswitch_0
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 2
    :sswitch_0
    iget-object p1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->onCallbackListener:Lcom/wsw/cospa/widget/MenuSettingDialog$onCallbackListener;

    if-eqz p1, :cond_2

    .line 3
    invoke-interface {p1, v1}, Lcom/wsw/cospa/widget/MenuSettingDialog$onCallbackListener;->onReadMode(I)V

    goto :goto_1

    .line 4
    :sswitch_1
    iget-object p1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->onCallbackListener:Lcom/wsw/cospa/widget/MenuSettingDialog$onCallbackListener;

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    .line 5
    invoke-interface {p1, v0}, Lcom/wsw/cospa/widget/MenuSettingDialog$onCallbackListener;->onReadMode(I)V

    goto :goto_1

    .line 6
    :sswitch_2
    iget-object p1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->onCallbackListener:Lcom/wsw/cospa/widget/MenuSettingDialog$onCallbackListener;

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {p1, v0}, Lcom/wsw/cospa/widget/MenuSettingDialog$onCallbackListener;->onReadMode(I)V

    goto :goto_1

    .line 8
    :sswitch_3
    new-instance p1, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;

    iget-object v2, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;-><init>(Landroid/content/Context;)V

    const-string v2, "\u8bbe\u7f6e\u80cc\u666f\u989c\u8272"

    .line 9
    invoke-virtual {p1, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->volatile(Ljava/lang/String;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    const-string v2, "\u7070\u8272"

    const-string v3, "\u9ed1\u8272"

    const-string v4, "\u767d\u8272"

    .line 10
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v3

    const-string v4, "comic_background_color_text"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/v02;->try(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 12
    aget-object v5, v2, v4

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p1, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;->b(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;

    .line 14
    new-instance v0, Lcom/wsw/cospa/widget/MenuSettingDialog$1;

    invoke-direct {v0, p0, v2}, Lcom/wsw/cospa/widget/MenuSettingDialog$1;-><init>(Lcom/wsw/cospa/widget/MenuSettingDialog;[Ljava/lang/String;)V

    invoke-virtual {p1, v2, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;->synchronized([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;

    .line 15
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->this()Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;->show()V

    goto :goto_1

    .line 17
    :sswitch_4
    iget-object p1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->onCallbackListener:Lcom/wsw/cospa/widget/MenuSettingDialog$onCallbackListener;

    if-eqz p1, :cond_2

    .line 18
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/MenuSettingDialog;->dismiss()V

    .line 19
    iget-object p1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->onCallbackListener:Lcom/wsw/cospa/widget/MenuSettingDialog$onCallbackListener;

    invoke-interface {p1}, Lcom/wsw/cospa/widget/MenuSettingDialog$onCallbackListener;->onClickEventPosition()V

    :cond_2
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090277 -> :sswitch_4
        0x7f090279 -> :sswitch_3
        0x7f090354 -> :sswitch_2
        0x7f090356 -> :sswitch_1
        0x7f090357 -> :sswitch_0
    .end sparse-switch
.end method

.method public setComicShelf(Lcom/wsw/cospa/bean/ComicShelfBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->bookShelfBean:Lcom/wsw/cospa/bean/ComicShelfBean;

    return-void
.end method

.method public setOnCallbackListener(Lcom/wsw/cospa/widget/MenuSettingDialog$onCallbackListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->onCallbackListener:Lcom/wsw/cospa/widget/MenuSettingDialog$onCallbackListener;

    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mActivity:Lcom/wsw/cospa/base/BaseActivity;

    iget-object v1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->dialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-static {v0, v1}, Lcom/gyf/immersionbar/else;->l2(Landroid/app/Activity;Landroid/app/Dialog;)Lcom/gyf/immersionbar/else;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gyf/immersionbar/else;->b0()V

    :cond_0
    return-void
.end method

.method public updateReadModeColor(I)V
    .locals 3

    const v0, 0x7f080079

    const v1, 0x7f0801ea

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->readModeNormal:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->readModeRoll:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->readModeJapan:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->readModeNormal:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->readModeRoll:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->readModeJapan:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->readModeNormal:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 8
    iget-object p1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->readModeRoll:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 9
    iget-object p1, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->readModeJapan:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/wsw/cospa/widget/MenuSettingDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
