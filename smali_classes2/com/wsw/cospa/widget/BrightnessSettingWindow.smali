.class public Lcom/wsw/cospa/widget/BrightnessSettingWindow;
.super Landroid/widget/PopupWindow;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/xw/repo/BubbleSeekBar$OnProgressChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/widget/BrightnessSettingWindow$onBrightnessSettingListener;
    }
.end annotation


# instance fields
.field public bsb_brightness:Lcom/xw/repo/BubbleSeekBar;

.field private colorMap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private listener:Lcom/wsw/cospa/widget/BrightnessSettingWindow$onBrightnessSettingListener;

.field public ll_comic_bg:Landroid/widget/LinearLayout;

.field private mActivity:Lcom/wsw/cospa/base/BaseActivity;

.field public switchEyecareMode:Landroid/widget/Switch;

.field public switchKeepScreen:Landroid/widget/Switch;

.field public tv_comic_bg:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 1
    invoke-direct {p0, v0, v1}, Landroid/widget/PopupWindow;-><init>(II)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/widget/BrightnessSettingWindow;->colorMap:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/widget/BrightnessSettingWindow;->context:Landroid/content/Context;

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/wsw/cospa/base/BaseActivity;

    iput-object v0, p0, Lcom/wsw/cospa/widget/BrightnessSettingWindow;->mActivity:Lcom/wsw/cospa/base/BaseActivity;

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c004c

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 7
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    const v0, 0x7f12035e

    .line 11
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 12
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->update()V

    .line 13
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/widget/BrightnessSettingWindow;->initView(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/wsw/cospa/widget/BrightnessSettingWindow;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/BrightnessSettingWindow;->colorMap:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/wsw/cospa/widget/BrightnessSettingWindow;)Lcom/wsw/cospa/widget/BrightnessSettingWindow$onBrightnessSettingListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/BrightnessSettingWindow;->listener:Lcom/wsw/cospa/widget/BrightnessSettingWindow$onBrightnessSettingListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/wsw/cospa/widget/BrightnessSettingWindow;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/BrightnessSettingWindow;->context:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public getProgressOnActionUp(Lcom/xw/repo/BubbleSeekBar;IF)V
    .locals 0

    return-void
.end method

.method public getProgressOnFinally(Lcom/xw/repo/BubbleSeekBar;IFZ)V
    .locals 0

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/BrightnessSettingWindow;->colorMap:Ljava/util/List;

    const v1, 0x7f0601b7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/BrightnessSettingWindow;->colorMap:Ljava/util/List;

    const v1, 0x7f060141

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/widget/BrightnessSettingWindow;->colorMap:Ljava/util/List;

    const v1, 0x7f060380

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x7f0900c5

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xw/repo/BubbleSeekBar;

    iput-object v0, p0, Lcom/wsw/cospa/widget/BrightnessSettingWindow;->bsb_brightness:Lcom/xw/repo/BubbleSeekBar;

    const v0, 0x7f090279

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wsw/cospa/widget/BrightnessSettingWindow;->ll_comic_bg:Landroid/widget/LinearLayout;

    const v0, 0x7f09046d

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wsw/cospa/widget/BrightnessSettingWindow;->tv_comic_bg:Landroid/widget/TextView;

    const v0, 0x7f0903f0

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/wsw/cospa/widget/BrightnessSettingWindow;->switchEyecareMode:Landroid/widget/Switch;

    const v0, 0x7f0903f9

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/wsw/cospa/widget/BrightnessSettingWindow;->switchKeepScreen:Landroid/widget/Switch;

    .line 9
    iget-object p1, p0, Lcom/wsw/cospa/widget/BrightnessSettingWindow;->bsb_brightness:Lcom/xw/repo/BubbleSeekBar;

    invoke-virtual {p1, p0}, Lcom/xw/repo/BubbleSeekBar;->setOnProgressChangedListener(Lcom/xw/repo/BubbleSeekBar$OnProgressChangedListener;)V

    .line 10
    iget-object p1, p0, Lcom/wsw/cospa/widget/BrightnessSettingWindow;->mActivity:Lcom/wsw/cospa/base/BaseActivity;

    invoke-static {p1}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "read_comic_brightness_key"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->try(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/wsw/cospa/widget/BrightnessSettingWindow;->bsb_brightness:Lcom/xw/repo/BubbleSeekBar;

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xw/repo/BubbleSeekBar;->setProgress(F)V

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/widget/BrightnessSettingWindow;->switchKeepScreen:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/wsw/cospa/widget/BrightnessSettingWindow;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "read_keep_screen_on"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 14
    iget-object p1, p0, Lcom/wsw/cospa/widget/BrightnessSettingWindow;->switchKeepScreen:Landroid/widget/Switch;

    invoke-virtual {p1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 15
    iget-object p1, p0, Lcom/wsw/cospa/widget/BrightnessSettingWindow;->switchEyecareMode:Landroid/widget/Switch;

    invoke-virtual {p1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 16
    iget-object p1, p0, Lcom/wsw/cospa/widget/BrightnessSettingWindow;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "switch_eyecare_mode_key"

    invoke-virtual {p1, v0, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result p1

    .line 17
    iget-object v0, p0, Lcom/wsw/cospa/widget/BrightnessSettingWindow;->switchEyecareMode:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 18
    iget-object p1, p0, Lcom/wsw/cospa/widget/BrightnessSettingWindow;->ll_comic_bg:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object p1, p0, Lcom/wsw/cospa/widget/BrightnessSettingWindow;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "comic_background_color_text"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->try(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-static {p1}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 21
    iget-object v0, p0, Lcom/wsw/cospa/widget/BrightnessSettingWindow;->tv_comic_bg:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 22
    :cond_1
    iget-object p1, p0, Lcom/wsw/cospa/widget/BrightnessSettingWindow;->tv_comic_bg:Landroid/widget/TextView;

    const-string v0, "\u9ed1\u8272"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    const v0, 0x7f0903f0

    if-eq p1, v0, :cond_1

    const v0, 0x7f0903f9

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/widget/BrightnessSettingWindow;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "read_keep_screen_on"

    invoke-virtual {p1, v0, p2}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/widget/BrightnessSettingWindow;->mActivity:Lcom/wsw/cospa/base/BaseActivity;

    invoke-static {p1}, Landroid/support/v4/j10;->throw(Landroid/app/Activity;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/wsw/cospa/widget/BrightnessSettingWindow;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "switch_eyecare_mode_key"

    invoke-virtual {p1, v0, p2}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/widget/BrightnessSettingWindow;->listener:Lcom/wsw/cospa/widget/BrightnessSettingWindow$onBrightnessSettingListener;

    if-eqz p1, :cond_2

    .line 6
    invoke-interface {p1, p2}, Lcom/wsw/cospa/widget/BrightnessSettingWindow$onBrightnessSettingListener;->onSwitchEyeCareMode(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090279

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;

    iget-object v0, p0, Lcom/wsw/cospa/widget/BrightnessSettingWindow;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;-><init>(Landroid/content/Context;)V

    const-string v0, "\u8bbe\u7f6e\u80cc\u666f\u989c\u8272"

    .line 3
    invoke-virtual {p1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->volatile(Ljava/lang/String;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    const/4 v0, 0x3

    const-string v1, "\u7070\u8272"

    const-string v2, "\u9ed1\u8272"

    const-string v3, "\u767d\u8272"

    .line 4
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/wsw/cospa/widget/BrightnessSettingWindow;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v2

    const-string v3, "comic_background_color_text"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/v02;->try(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_0
    if-ge v3, v0, :cond_2

    .line 6
    aget-object v5, v1, v3

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p1, v4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;->b(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;

    .line 8
    new-instance v0, Lcom/wsw/cospa/widget/BrightnessSettingWindow$1;

    invoke-direct {v0, p0, v1}, Lcom/wsw/cospa/widget/BrightnessSettingWindow$1;-><init>(Lcom/wsw/cospa/widget/BrightnessSettingWindow;[Ljava/lang/String;)V

    invoke-virtual {p1, v1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;->synchronized([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;

    .line 9
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->this()Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;->show()V

    :goto_1
    return-void
.end method

.method public onProgressChanged(Lcom/xw/repo/BubbleSeekBar;IFZ)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const p2, 0x7f0900c5

    if-ne p1, p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/widget/BrightnessSettingWindow;->listener:Lcom/wsw/cospa/widget/BrightnessSettingWindow$onBrightnessSettingListener;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/widget/BrightnessSettingWindow;->mActivity:Lcom/wsw/cospa/base/BaseActivity;

    invoke-static {p1}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    const-string p4, "read_comic_brightness_key"

    invoke-virtual {p1, p4, p2}, Landroid/support/v4/v02;->this(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/widget/BrightnessSettingWindow;->listener:Lcom/wsw/cospa/widget/BrightnessSettingWindow$onBrightnessSettingListener;

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p3

    invoke-interface {p1, p2}, Lcom/wsw/cospa/widget/BrightnessSettingWindow$onBrightnessSettingListener;->onWindowBrightness(F)V

    :cond_0
    return-void
.end method

.method public setOnBrightnessSettingListener(Lcom/wsw/cospa/widget/BrightnessSettingWindow$onBrightnessSettingListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/BrightnessSettingWindow;->listener:Lcom/wsw/cospa/widget/BrightnessSettingWindow$onBrightnessSettingListener;

    return-void
.end method
