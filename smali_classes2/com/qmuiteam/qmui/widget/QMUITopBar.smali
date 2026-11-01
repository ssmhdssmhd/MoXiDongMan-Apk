.class public Lcom/qmuiteam/qmui/widget/QMUITopBar;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field private static final private:I = -0x1


# instance fields
.field private break:I

.field private case:Landroid/widget/TextView;

.field private catch:I

.field private class:Landroid/graphics/drawable/Drawable;

.field private const:I

.field private default:Landroid/content/res/ColorStateList;

.field private do:I

.field private else:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private extends:I

.field private final:I

.field private finally:I

.field private for:Landroid/view/View;

.field private goto:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private if:I

.field private import:I

.field private native:I

.field private new:Landroid/widget/LinearLayout;

.field private package:Landroid/graphics/Rect;

.field private public:I

.field private return:I

.field private static:I

.field private super:I

.field private switch:I

.field private this:I

.field private throw:I

.field private throws:I

.field private try:Landroid/widget/TextView;

.field private while:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 5
    sget v0, Lcom/qmuiteam/qmui/R$attr;->QMUITopBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->finally:I

    .line 3
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->static()V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->return(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 7
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->finally:I

    .line 9
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->static()V

    if-eqz p2, :cond_0

    .line 10
    sget p2, Lcom/qmuiteam/qmui/R$color;->qmui_config_color_transparent:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 11
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->this:I

    const/4 p2, 0x0

    .line 12
    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->catch:I

    .line 13
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->break:I

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 14
    sget v0, Lcom/qmuiteam/qmui/R$attr;->QMUITopBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->return(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    :goto_0
    return-void
.end method

.method private const()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/qmuiteam/qmui/R$attr;->qmui_topbar_height:I

    invoke-static {v1, v2}, Landroid/support/v4/sh1;->new(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private continue()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->try:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->case:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/kh1;->case(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->try:Landroid/widget/TextView;

    iget v2, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->throw:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->try:Landroid/widget/TextView;

    iget v2, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->super:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    :goto_1
    return-void
.end method

.method private final()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2
    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->const:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return-object v0
.end method

.method private getSubTitleView()Landroid/widget/TextView;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->case:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->case:Landroid/widget/TextView;

    const/16 v1, 0x11

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->case:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 5
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->case:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 6
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->case:Landroid/widget/TextView;

    const/4 v2, 0x0

    iget v3, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->while:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 7
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->case:Landroid/widget/TextView;

    iget v2, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->native:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->final()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/support/v4/ih1;->new(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 10
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->switch()Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->case:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->case:Landroid/widget/TextView;

    return-object v0
.end method

.method private getTopBarHeight()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->finally:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_topbar_height:I

    invoke-static {v0, v1}, Landroid/support/v4/sh1;->new(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->finally:I

    .line 3
    :cond_0
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->finally:I

    return v0
.end method

.method private public(Z)Landroid/widget/TextView;
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->try:Landroid/widget/TextView;

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->try:Landroid/widget/TextView;

    const/16 v0, 0x11

    .line 3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 4
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->try:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 5
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->try:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 6
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->try:Landroid/widget/TextView;

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->import:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->continue()V

    .line 8
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->final()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    .line 9
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->switch()Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->try:Landroid/widget/TextView;

    invoke-virtual {v0, v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->try:Landroid/widget/TextView;

    return-object p1
.end method

.method private return(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/qmuiteam/qmui/R$styleable;->QMUITopBar:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 2
    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUITopBar_qmui_topbar_separator_color:I

    sget v0, Lcom/qmuiteam/qmui/R$color;->qmui_config_color_separator:I

    .line 3
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 4
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->this:I

    .line 5
    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUITopBar_qmui_topbar_separator_height:I

    const/4 v0, 0x1

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->catch:I

    .line 6
    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUITopBar_qmui_topbar_bg_color:I

    const/4 v1, -0x1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->break:I

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->native(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 8
    sget p1, Lcom/qmuiteam/qmui/R$styleable;->QMUITopBar_qmui_topbar_need_separator:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 9
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 10
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->setBackgroundDividerEnabled(Z)V

    return-void
.end method

.method private static()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->do:I

    .line 2
    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->if:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->else:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->goto:Ljava/util/List;

    return-void
.end method

.method private super(I)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;
    .locals 2

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 3
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageResource(I)V

    return-object v0
.end method

.method private switch()Landroid/widget/LinearLayout;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->new:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->new:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->new:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 5
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->new:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->return:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 6
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->new:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->const()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->new:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private while(Ljava/lang/String;)Landroid/widget/Button;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinWidth(I)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinimumWidth(I)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinimumHeight(I)V

    .line 7
    iget v2, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->throws:I

    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/widget/Button;->setPadding(IIII)V

    .line 8
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->default:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 9
    iget v2, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->extends:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V

    const/16 v1, 0x11

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 11
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public abstract(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->try:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 2
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public break(Landroid/view/View;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    instance-of v1, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->catch(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V

    return-void
.end method

.method public case(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->do:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/16 v0, 0x9

    .line 2
    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 4
    :goto_0
    iput-boolean v1, p3, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 5
    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->do:I

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->setId(I)V

    .line 7
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->else:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {p0, p1, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public catch(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->if:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0xb

    .line 2
    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p3, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 5
    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->if:I

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->setId(I)V

    .line 7
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->goto:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {p0, p1, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public class(III)I
    .locals 2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    sub-int/2addr p3, p2

    int-to-float p2, p3

    div-float/2addr p1, p2

    float-to-double p1, p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 1
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    const-wide v0, 0x406fe00000000000L    # 255.0

    mul-double p1, p1, v0

    double-to-int p1, p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->setBackgroundAlpha(I)V

    return p1
.end method

.method public default()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->goto:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->if:I

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->goto:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public do()Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;
    .locals 2

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->final:I

    sget v1, Lcom/qmuiteam/qmui/R$id;->qmui_topbar_item_left_back:I

    invoke-virtual {p0, v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->if(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    return-object v0
.end method

.method public else(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->super(I)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->throw()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->catch(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V

    return-object p1
.end method

.method public extends()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->for:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->for:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 4
    :cond_0
    iput-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->for:Landroid/view/View;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->try:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->try:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 8
    :cond_2
    iput-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->try:Landroid/widget/TextView;

    :cond_3
    return-void
.end method

.method public finally(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->public(Z)Landroid/widget/TextView;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-static {p1}, Landroid/support/v4/kh1;->case(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-object v0
.end method

.method public for(II)Landroid/widget/Button;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->new(Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object p1

    return-object p1
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->try:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitleContainerRect()Landroid/graphics/Rect;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->package:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->package:Landroid/graphics/Rect;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->new:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->package:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->package:Landroid/graphics/Rect;

    invoke-static {p0, v0, v1}, Lcom/qmuiteam/qmui/util/for;->catch(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->package:Landroid/graphics/Rect;

    return-object v0
.end method

.method public goto(II)Landroid/widget/Button;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->this(Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object p1

    return-object p1
.end method

.method public if(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->super(I)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->throw()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->case(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V

    return-object p1
.end method

.method public import()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->switch:I

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->getTopBarHeight()I

    move-result v1

    iget v2, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->switch:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    return-object v0
.end method

.method public native(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 4

    .line 1
    sget v0, Lcom/qmuiteam/qmui/R$styleable;->QMUITopBar_qmui_topbar_left_back_drawable_id:I

    sget v1, Lcom/qmuiteam/qmui/R$drawable;->qmui_icon_topbar_back:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->final:I

    .line 2
    sget v0, Lcom/qmuiteam/qmui/R$styleable;->QMUITopBar_qmui_topbar_title_gravity:I

    const/16 v1, 0x11

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->const:I

    .line 3
    sget v0, Lcom/qmuiteam/qmui/R$styleable;->QMUITopBar_qmui_topbar_title_text_size:I

    invoke-static {p1, v1}, Landroid/support/v4/ih1;->synchronized(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->super:I

    const/16 v1, 0x10

    .line 4
    invoke-static {p1, v1}, Landroid/support/v4/ih1;->synchronized(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->throw:I

    .line 5
    sget v0, Lcom/qmuiteam/qmui/R$styleable;->QMUITopBar_qmui_topbar_subtitle_text_size:I

    const/16 v2, 0xb

    invoke-static {p1, v2}, Landroid/support/v4/ih1;->synchronized(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->while:I

    .line 6
    sget v0, Lcom/qmuiteam/qmui/R$styleable;->QMUITopBar_qmui_topbar_title_color:I

    sget v2, Lcom/qmuiteam/qmui/R$attr;->qmui_config_color_gray_1:I

    invoke-static {p1, v2}, Landroid/support/v4/sh1;->if(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->import:I

    .line 7
    sget v0, Lcom/qmuiteam/qmui/R$styleable;->QMUITopBar_qmui_topbar_subtitle_color:I

    sget v2, Lcom/qmuiteam/qmui/R$attr;->qmui_config_color_gray_4:I

    invoke-static {p1, v2}, Landroid/support/v4/sh1;->if(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->native:I

    .line 8
    sget v0, Lcom/qmuiteam/qmui/R$styleable;->QMUITopBar_qmui_topbar_title_margin_horizontal_when_no_btn_aside:I

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->public:I

    .line 9
    sget v0, Lcom/qmuiteam/qmui/R$styleable;->QMUITopBar_qmui_topbar_title_container_padding_horizontal:I

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->return:I

    .line 10
    sget v0, Lcom/qmuiteam/qmui/R$styleable;->QMUITopBar_qmui_topbar_image_btn_width:I

    const/16 v2, 0x30

    invoke-static {p1, v2}, Landroid/support/v4/ih1;->new(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->static:I

    .line 11
    sget v0, Lcom/qmuiteam/qmui/R$styleable;->QMUITopBar_qmui_topbar_image_btn_height:I

    invoke-static {p1, v2}, Landroid/support/v4/ih1;->new(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->switch:I

    .line 12
    sget v0, Lcom/qmuiteam/qmui/R$styleable;->QMUITopBar_qmui_topbar_text_btn_padding_horizontal:I

    const/16 v2, 0xc

    invoke-static {p1, v2}, Landroid/support/v4/ih1;->new(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->throws:I

    .line 13
    sget v0, Lcom/qmuiteam/qmui/R$styleable;->QMUITopBar_qmui_topbar_text_btn_color_state_list:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->default:Landroid/content/res/ColorStateList;

    .line 14
    sget v0, Lcom/qmuiteam/qmui/R$styleable;->QMUITopBar_qmui_topbar_text_btn_text_size:I

    invoke-static {p1, v1}, Landroid/support/v4/ih1;->synchronized(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->extends:I

    return-void
.end method

.method public new(Ljava/lang/String;I)Landroid/widget/Button;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->while(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->import()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->case(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V

    return-object p1
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 4
    instance-of v1, v0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;

    if-eqz v1, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->switch()Landroid/widget/LinearLayout;

    return-void

    .line 6
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 3

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->new:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_4

    .line 3
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->new:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr p5, p3

    .line 5
    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->new:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p3

    sub-int/2addr p5, p3

    div-int/lit8 p5, p5, 0x2

    .line 6
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result p3

    .line 7
    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->const:I

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sub-int/2addr p4, p2

    .line 8
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->new:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p4, p2

    div-int/lit8 p4, p4, 0x2

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    .line 9
    :goto_0
    iget-object p4, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->else:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge p2, p4, :cond_2

    .line 10
    iget-object p4, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->else:Ljava/util/List;

    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    .line 11
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 12
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p3, p4

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 13
    :cond_2
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->else:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 14
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p4, Lcom/qmuiteam/qmui/R$attr;->qmui_topbar_title_margin_horizontal_when_no_btn_aside:I

    invoke-static {p2, p4}, Landroid/support/v4/sh1;->new(Landroid/content/Context;I)I

    move-result p2

    add-int p4, p3, p2

    goto :goto_1

    :cond_3
    move p4, p3

    .line 15
    :goto_1
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->new:Landroid/widget/LinearLayout;

    add-int/2addr p1, p4

    add-int/2addr v0, p5

    invoke-virtual {p2, p4, p5, p1, v0}, Landroid/widget/LinearLayout;->layout(IIII)V

    :cond_4
    return-void
.end method

.method public onMeasure(II)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->new:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->else:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x8

    if-ge v1, v3, :cond_1

    .line 4
    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->else:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 5
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v4, :cond_0

    .line 6
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 7
    :goto_1
    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->goto:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 8
    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->goto:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 9
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v4, :cond_2

    .line 10
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v1, v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 11
    :cond_3
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->const:I

    and-int/lit8 v0, v0, 0x7

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    if-nez v2, :cond_4

    if-nez v1, :cond_4

    .line 12
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->public:I

    add-int/2addr v2, v0

    add-int/2addr v1, v0

    .line 13
    :cond_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v0

    :goto_2
    sub-int/2addr p1, v0

    goto :goto_3

    :cond_5
    if-nez v2, :cond_6

    .line 14
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->public:I

    add-int/2addr v2, v0

    :cond_6
    if-nez v1, :cond_7

    .line 15
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->public:I

    add-int/2addr v1, v0

    .line 16
    :cond_7
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    sub-int/2addr p1, v2

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v0

    goto :goto_2

    :goto_3
    const/high16 v0, 0x40000000    # 2.0f

    .line 17
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 18
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->new:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->measure(II)V

    :cond_8
    return-void
.end method

.method public package(I)Landroid/widget/TextView;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->private(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method public private(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->public(Z)Landroid/widget/TextView;

    move-result-object v1

    .line 2
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-static {p1}, Landroid/support/v4/kh1;->case(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    .line 4
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-object v1
.end method

.method public setBackgroundAlpha(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setBackgroundDividerEnabled(Z)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->class:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    .line 2
    iget p1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->this:I

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->break:I

    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->catch:I

    const/4 v2, 0x0

    .line 3
    invoke-static {p1, v0, v1, v2}, Landroid/support/v4/jh1;->else(IIIZ)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->class:Landroid/graphics/drawable/Drawable;

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->class:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1}, Lcom/qmuiteam/qmui/util/for;->default(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 5
    :cond_1
    iget p1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->break:I

    invoke-static {p0, p1}, Lcom/qmuiteam/qmui/util/for;->switch(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method public setCenterView(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->for:Landroid/view/View;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 3
    :cond_1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->for:Landroid/view/View;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_2

    .line 5
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :cond_2
    const/16 v1, 0xd

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 7
    invoke-virtual {p0, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setSubTitle(I)V
    .locals 1

    .line 7
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->setSubTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->getSubTitleView()Landroid/widget/TextView;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-static {p1}, Landroid/support/v4/kh1;->case(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    :goto_0
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->continue()V

    return-void
.end method

.method public setTitleGravity(I)V
    .locals 5

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->const:I

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->try:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/16 v0, 0x11

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->try:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->case:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method

.method public this(Ljava/lang/String;I)Landroid/widget/Button;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->while(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->import()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->catch(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V

    return-object p1
.end method

.method public throw()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->static:I

    iget v2, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->switch:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->getTopBarHeight()I

    move-result v1

    iget v2, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->switch:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    return-object v0
.end method

.method public throws()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->else:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->do:I

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->else:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public try(Landroid/view/View;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    instance-of v1, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->case(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V

    return-void
.end method
