.class public Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private do:Lcom/qmuiteam/qmui/widget/QMUITopBar;

.field private for:I

.field private if:Landroid/graphics/drawable/Drawable;

.field private new:I

.field private try:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/qmuiteam/qmui/R$attr;->QMUITopBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    sget-object v0, Lcom/qmuiteam/qmui/R$styleable;->QMUITopBar:[I

    sget v1, Lcom/qmuiteam/qmui/R$attr;->QMUITopBarStyle:I

    const/4 v2, 0x0

    invoke-virtual {p3, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 5
    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUITopBar_qmui_topbar_separator_color:I

    sget v0, Lcom/qmuiteam/qmui/R$color;->qmui_config_color_separator:I

    .line 6
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 7
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->for:I

    .line 8
    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUITopBar_qmui_topbar_separator_height:I

    const/4 v0, 0x1

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->try:I

    .line 9
    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUITopBar_qmui_topbar_bg_color:I

    const/4 v1, -0x1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->new:I

    .line 10
    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUITopBar_qmui_topbar_need_separator:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 11
    new-instance v2, Lcom/qmuiteam/qmui/widget/QMUITopBar;

    invoke-direct {v2, p1, v0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->do:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    .line 12
    invoke-virtual {v2, p1, p2}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->native(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 13
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    sget v2, Lcom/qmuiteam/qmui/R$attr;->qmui_topbar_height:I

    .line 14
    invoke-static {p1, v2}, Landroid/support/v4/sh1;->new(Landroid/content/Context;I)I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 15
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->do:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 17
    invoke-virtual {p0, p3}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->setBackgroundDividerEnabled(Z)V

    return-void
.end method


# virtual methods
.method public break(Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->do:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    invoke-virtual {v0, p1, p2}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->break(Landroid/view/View;I)V

    return-void
.end method

.method public case(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->do:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    invoke-virtual {v0, p1, p2, p3}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->case(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V

    return-void
.end method

.method public catch(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->do:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    invoke-virtual {v0, p1, p2, p3}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->catch(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V

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
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->setBackgroundAlpha(I)V

    return p1
.end method

.method public const()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->do:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->throws()V

    return-void
.end method

.method public do()Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->do:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->do()Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    return-object v0
.end method

.method public else(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->do:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    invoke-virtual {v0, p1, p2}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->else(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object p1

    return-object p1
.end method

.method public final()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->do:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->default()V

    return-void
.end method

.method public for(II)Landroid/widget/Button;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->do:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    invoke-virtual {v0, p1, p2}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->for(II)Landroid/widget/Button;

    move-result-object p1

    return-object p1
.end method

.method public goto(II)Landroid/widget/Button;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->do:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    invoke-virtual {v0, p1, p2}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->goto(II)Landroid/widget/Button;

    move-result-object p1

    return-object p1
.end method

.method public if(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->do:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    invoke-virtual {v0, p1, p2}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->if(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object p1

    return-object p1
.end method

.method public import(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->do:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->private(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method public native(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->do:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->abstract(Z)V

    return-void
.end method

.method public new(Ljava/lang/String;I)Landroid/widget/Button;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->do:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    invoke-virtual {v0, p1, p2}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->new(Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object p1

    return-object p1
.end method

.method public setBackgroundAlpha(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setBackgroundDividerEnabled(Z)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->if:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    .line 2
    iget p1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->for:I

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->new:I

    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->try:I

    const/4 v2, 0x0

    .line 3
    invoke-static {p1, v0, v1, v2}, Landroid/support/v4/jh1;->else(IIIZ)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->if:Landroid/graphics/drawable/Drawable;

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->if:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1}, Lcom/qmuiteam/qmui/util/for;->default(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 5
    :cond_1
    iget p1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->new:I

    invoke-static {p0, p1}, Lcom/qmuiteam/qmui/util/for;->switch(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method public setCenterView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->do:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->setCenterView(Landroid/view/View;)V

    return-void
.end method

.method public setSubTitle(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->do:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->setSubTitle(I)V

    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->do:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->setSubTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setTitleGravity(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->do:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->setTitleGravity(I)V

    return-void
.end method

.method public super()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->do:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->extends()V

    return-void
.end method

.method public this(Ljava/lang/String;I)Landroid/widget/Button;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->do:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    invoke-virtual {v0, p1, p2}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->this(Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object p1

    return-object p1
.end method

.method public throw(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->do:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->finally(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method public try(Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->do:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    invoke-virtual {v0, p1, p2}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->try(Landroid/view/View;I)V

    return-void
.end method

.method public while(I)Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;->do:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->package(I)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method
