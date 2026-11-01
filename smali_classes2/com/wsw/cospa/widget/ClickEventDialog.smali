.class public Lcom/wsw/cospa/widget/ClickEventDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bookShelfBean:Lcom/wsw/cospa/bean/ComicShelfBean;

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

.field public ll_click_event:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090276
    .end annotation
.end field

.field public ll_left_right_tips:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090284
    .end annotation
.end field

.field public ll_up_down_tips:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090290
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mView:Landroid/view/View;

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


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/wsw/cospa/bean/ComicShelfBean;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->mContext:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->bookShelfBean:Lcom/wsw/cospa/bean/ComicShelfBean;

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c0028

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->mView:Landroid/view/View;

    .line 5
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->case(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 6
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/ClickEventDialog;->initView()V

    return-void
.end method

.method public static synthetic case(Lcom/wsw/cospa/widget/ClickEventDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/widget/ClickEventDialog;->lambda$initView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/widget/ClickEventDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/widget/ClickEventDialog;->lambda$initView$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic else(Lcom/wsw/cospa/widget/ClickEventDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/widget/ClickEventDialog;->lambda$initView$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic for(Lcom/wsw/cospa/widget/ClickEventDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/widget/ClickEventDialog;->lambda$initView$5(Landroid/view/View;)V

    return-void
.end method

.method private getReadMode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->bookShelfBean:Lcom/wsw/cospa/bean/ComicShelfBean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getReadMode()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->bookShelfBean:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getReadMode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->bookShelfBean:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getReadMode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "read_mode_key"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static synthetic goto(Lcom/wsw/cospa/widget/ClickEventDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/widget/ClickEventDialog;->lambda$initView$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic if(Lcom/wsw/cospa/widget/ClickEventDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/widget/ClickEventDialog;->lambda$initView$3(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$initView$0(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->scroll_mode_event_up_down:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->ll_click_event:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_mode_roll_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$initView$1(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->scroll_mode_event_up_down:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->ll_click_event:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_mode_roll_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$initView$2(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->scroll_mode_event_up_down:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->ll_click_event:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_mode_roll_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$initView$3(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->ll_click_event:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_mode_normal_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$initView$4(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->ll_click_event:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_mode_normal_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$initView$5(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->ll_click_event:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_mode_normal_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$initView$6(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->ll_click_event:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_japan_mode_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$initView$7(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->ll_click_event:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_japan_mode_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$initView$8(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->ll_click_event:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string v0, "show_mode_normal_click_tips"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/v02;->case(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic new(Lcom/wsw/cospa/widget/ClickEventDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/widget/ClickEventDialog;->lambda$initView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic this(Lcom/wsw/cospa/widget/ClickEventDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/widget/ClickEventDialog;->lambda$initView$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic try(Lcom/wsw/cospa/widget/ClickEventDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/widget/ClickEventDialog;->lambda$initView$0(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public initView()V
    .locals 7

    .line 1
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->mView:Landroid/view/View;

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v2, 0x22

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const-string v3, "#00000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->mPopupWindow:Landroid/widget/PopupWindow;

    const v2, 0x7f12035a

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 10
    invoke-direct {p0}, Lcom/wsw/cospa/widget/ClickEventDialog;->getReadMode()I

    move-result v0

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 11
    iget-object v0, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v4, "show_mode_roll_click_tips"

    invoke-virtual {v0, v4, v1}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v1

    .line 12
    iget-object v0, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->scroll_mode_event_up_down:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->ll_click_event:Landroid/widget/RelativeLayout;

    new-instance v4, Landroid/support/v4/hm;

    invoke-direct {v4, p0}, Landroid/support/v4/hm;-><init>(Lcom/wsw/cospa/widget/ClickEventDialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object v0, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->iv_close_up_down_tips:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v4, Landroid/support/v4/im;

    invoke-direct {v4, p0}, Landroid/support/v4/im;-><init>(Lcom/wsw/cospa/widget/ClickEventDialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object v0, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->ll_up_down_tips:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/support/v4/gm;

    invoke-direct {v4, p0}, Landroid/support/v4/gm;-><init>(Lcom/wsw/cospa/widget/ClickEventDialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_0
    const/4 v4, 0x2

    const-string v5, "\u4e0a\u4e00\u9875"

    const-string v6, "\u4e0b\u4e00\u9875"

    if-ne v0, v4, :cond_1

    .line 17
    iget-object v0, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v4, "show_mode_normal_click_tips"

    invoke-virtual {v0, v4, v1}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v1

    .line 18
    iget-object v0, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->scroll_mode_event_up_down:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 20
    iget-object v0, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->ll_click_event:Landroid/widget/RelativeLayout;

    new-instance v4, Landroid/support/v4/em;

    invoke-direct {v4, p0}, Landroid/support/v4/em;-><init>(Lcom/wsw/cospa/widget/ClickEventDialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object v0, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->iv_close_left_right_tips:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v4, Landroid/support/v4/dm;

    invoke-direct {v4, p0}, Landroid/support/v4/dm;-><init>(Lcom/wsw/cospa/widget/ClickEventDialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object v0, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->ll_left_right_tips:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/support/v4/fm;

    invoke-direct {v4, p0}, Landroid/support/v4/fm;-><init>(Lcom/wsw/cospa/widget/ClickEventDialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object v0, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->event_right:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object v0, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->event_left:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    .line 25
    iget-object v0, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v4, "show_japan_mode_click_tips"

    invoke-virtual {v0, v4, v1}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v1

    .line 26
    iget-object v0, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->scroll_mode_event_up_down:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 27
    iget-object v0, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->scroll_mode_event_left_right:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 28
    iget-object v0, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->ll_click_event:Landroid/widget/RelativeLayout;

    new-instance v4, Landroid/support/v4/jm;

    invoke-direct {v4, p0}, Landroid/support/v4/jm;-><init>(Lcom/wsw/cospa/widget/ClickEventDialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object v0, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->iv_close_left_right_tips:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v4, Landroid/support/v4/lm;

    invoke-direct {v4, p0}, Landroid/support/v4/lm;-><init>(Lcom/wsw/cospa/widget/ClickEventDialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object v0, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->ll_left_right_tips:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/support/v4/km;

    invoke-direct {v4, p0}, Landroid/support/v4/km;-><init>(Lcom/wsw/cospa/widget/ClickEventDialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object v0, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->event_right:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->event_left:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 33
    iget-object v0, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->ll_click_event:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 34
    :cond_3
    iget-object v0, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->ll_click_event:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/ClickEventDialog;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1}, Landroid/support/v4/j10;->native(Landroid/widget/PopupWindow;Landroid/view/View;)V

    :cond_0
    return-void
.end method
