.class public Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"

# interfaces
.implements Lcom/qmuiteam/qmui/layout/IQMUILayout;


# static fields
.field private static final const:I = -0x777778


# instance fields
.field private break:Z

.field private case:I

.field private catch:Landroid/graphics/ColorFilter;

.field private class:Landroid/graphics/ColorFilter;

.field private do:Lcom/qmuiteam/qmui/layout/do;

.field private else:I

.field private for:Z

.field private goto:I

.field private if:Landroid/support/v4/ch1;

.field private new:Z

.field private this:I

.field private try:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->for:Z

    .line 3
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->new:Z

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->break:Z

    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, p1, v1, v0}, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->do(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 6
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->for:Z

    .line 8
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->new:Z

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->break:Z

    .line 10
    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->do(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->for:Z

    .line 13
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->new:Z

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->break:Z

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->do(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private do(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 1
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2
    new-instance v0, Lcom/qmuiteam/qmui/layout/do;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/qmuiteam/qmui/layout/do;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->do:Lcom/qmuiteam/qmui/layout/do;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->setChangeAlphaWhenPress(Z)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->setChangeAlphaWhenDisable(Z)V

    .line 5
    sget-object v1, Lcom/qmuiteam/qmui/R$styleable;->QMUIRadiusImageView2:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 6
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIRadiusImageView2_qmui_border_width:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->try:I

    .line 7
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIRadiusImageView2_qmui_border_color:I

    const p3, -0x777778

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->case:I

    .line 8
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIRadiusImageView2_qmui_selected_border_width:I

    iget p3, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->try:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->else:I

    .line 9
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIRadiusImageView2_qmui_selected_border_color:I

    iget p3, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->case:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->goto:I

    .line 10
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIRadiusImageView2_qmui_selected_mask_color:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->this:I

    if-eqz p2, :cond_0

    .line 11
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    iget p3, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->this:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->class:Landroid/graphics/ColorFilter;

    .line 12
    :cond_0
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIRadiusImageView2_qmui_is_touch_select_mode_enabled:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->break:Z

    .line 13
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIRadiusImageView2_qmui_is_circle:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->for:Z

    if-nez p2, :cond_1

    .line 14
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIRadiusImageView2_qmui_corner_radius:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->setRadius(I)V

    .line 15
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getAlphaViewHelper()Landroid/support/v4/ch1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->if:Landroid/support/v4/ch1;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/support/v4/ch1;

    invoke-direct {v0, p0}, Landroid/support/v4/ch1;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->if:Landroid/support/v4/ch1;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->if:Landroid/support/v4/ch1;

    return-object v0
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->do:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/qmuiteam/qmui/layout/do;->catch(Landroid/graphics/Canvas;II)V

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->do:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/do;->break(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public for()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->break:Z

    return v0
.end method

.method public getBorderColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->case:I

    return v0
.end method

.method public getBorderWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->try:I

    return v0
.end method

.method public getCornerRadius()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->getRadius()I

    move-result v0

    return v0
.end method

.method public getHideRadiusSide()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->do:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/layout/do;->getHideRadiusSide()I

    move-result v0

    return v0
.end method

.method public getRadius()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->do:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/layout/do;->getRadius()I

    move-result v0

    return v0
.end method

.method public getSelectedBorderColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->goto:I

    return v0
.end method

.method public getSelectedBorderWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->else:I

    return v0
.end method

.method public getSelectedMaskColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->this:I

    return v0
.end method

.method public getShadowAlpha()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->do:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/layout/do;->getShadowAlpha()F

    move-result v0

    return v0
.end method

.method public getShadowColor()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->do:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/layout/do;->getShadowColor()I

    move-result v0

    return v0
.end method

.method public getShadowElevation()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->do:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/layout/do;->getShadowElevation()I

    move-result v0

    return v0
.end method

.method public if()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->for:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->new:Z

    return v0
.end method

.method public onMeasure(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->do:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/do;->final(I)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->do:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p2}, Lcom/qmuiteam/qmui/layout/do;->const(I)I

    move-result p2

    .line 3
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->do:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/qmuiteam/qmui/layout/do;->throw(II)I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->do:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, p2, v2}, Lcom/qmuiteam/qmui/layout/do;->super(II)I

    move-result v1

    if-ne p1, v0, :cond_0

    if-eq p2, v1, :cond_1

    .line 6
    :cond_0
    invoke-super {p0, v0, v1}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 7
    :cond_1
    iget-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->for:Z

    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p1

    .line 9
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p2

    .line 10
    div-int/lit8 v0, p2, 0x2

    if-eq p1, p2, :cond_2

    .line 11
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 12
    div-int/lit8 v0, p1, 0x2

    const/high16 p2, 0x40000000    # 2.0f

    .line 13
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 14
    invoke-super {p0, p1, p1}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 15
    :cond_2
    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->setRadius(I)V

    :cond_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->isClickable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->setSelected(Z)V

    .line 3
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->break:Z

    if-nez v0, :cond_1

    .line 5
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/16 v2, 0x8

    if-eq v0, v2, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0, v1}, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->setSelected(Z)V

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {p0, v2}, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->setSelected(Z)V

    .line 9
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onlyShowBottomDivider(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->do:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/qmuiteam/qmui/layout/do;->onlyShowBottomDivider(IIII)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public onlyShowLeftDivider(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->do:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/qmuiteam/qmui/layout/do;->onlyShowLeftDivider(IIII)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public onlyShowRightDivider(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->do:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/qmuiteam/qmui/layout/do;->onlyShowRightDivider(IIII)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public onlyShowTopDivider(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->do:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/qmuiteam/qmui/layout/do;->onlyShowTopDivider(IIII)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setBorderColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->case:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->case:I

    .line 3
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->new:Z

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->do:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/do;->setBorderColor(I)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setBorderWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->try:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->try:I

    .line 3
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->new:Z

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->do:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/do;->setBorderWidth(I)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setBottomDividerAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->do:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/do;->setBottomDividerAlpha(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setChangeAlphaWhenDisable(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->getAlphaViewHelper()Landroid/support/v4/ch1;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/ch1;->for(Z)V

    return-void
.end method

.method public setChangeAlphaWhenPress(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->getAlphaViewHelper()Landroid/support/v4/ch1;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/ch1;->new(Z)V

    return-void
.end method

.method public setCircle(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->for:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->for:Z

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->catch:Landroid/graphics/ColorFilter;

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->catch:Landroid/graphics/ColorFilter;

    .line 3
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->new:Z

    if-nez v0, :cond_1

    .line 4
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    return-void
.end method

.method public setCornerRadius(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->setRadius(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->getAlphaViewHelper()Landroid/support/v4/ch1;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/ch1;->do(Landroid/view/View;Z)V

    return-void
.end method

.method public setFrame(IIII)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result p1

    return p1
.end method

.method public setHeightLimit(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->do:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/do;->setHeightLimit(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public setHideRadiusSide(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->do:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/do;->setHideRadiusSide(I)V

    return-void
.end method

.method public setLeftDividerAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->do:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/do;->setLeftDividerAlpha(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setOuterNormalColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->do:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/do;->setOuterNormalColor(I)V

    return-void
.end method

.method public setOutlineExcludePadding(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->do:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/do;->setOutlineExcludePadding(Z)V

    return-void
.end method

.method public setOutlineInset(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->do:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/qmuiteam/qmui/layout/do;->setOutlineInset(IIII)V

    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 2
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->getAlphaViewHelper()Landroid/support/v4/ch1;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/ch1;->if(Landroid/view/View;Z)V

    return-void
.end method

.method public setRadius(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->do:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/do;->setRadius(I)V

    return-void
.end method

.method public setRadius(II)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->do:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1, p2}, Lcom/qmuiteam/qmui/layout/do;->setRadius(II)V

    return-void
.end method

.method public setRadiusAndShadow(IIF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->do:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1, p2, p3}, Lcom/qmuiteam/qmui/layout/do;->setRadiusAndShadow(IIF)V

    return-void
.end method

.method public setRadiusAndShadow(IIIF)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->do:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/qmuiteam/qmui/layout/do;->setRadiusAndShadow(IIIF)V

    return-void
.end method

.method public setRadiusAndShadow(IIIIF)V
    .locals 6

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->do:Lcom/qmuiteam/qmui/layout/do;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/qmuiteam/qmui/layout/do;->setRadiusAndShadow(IIIIF)V

    return-void
.end method

.method public setRightDividerAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->do:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/do;->setRightDividerAlpha(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setSelected(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->new:Z

    if-eq v0, p1, :cond_3

    .line 3
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->new:Z

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->class:Landroid/graphics/ColorFilter;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->catch:Landroid/graphics/ColorFilter;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 6
    :goto_0
    iget-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->new:Z

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->else:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->try:I

    :goto_1
    if-eqz p1, :cond_2

    .line 7
    iget p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->goto:I

    goto :goto_2

    :cond_2
    iget p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->case:I

    .line 8
    :goto_2
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->do:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v1, v0}, Lcom/qmuiteam/qmui/layout/do;->setBorderWidth(I)V

    .line 9
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->do:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/do;->setBorderColor(I)V

    .line 10
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_3
    return-void
.end method

.method public setSelectedBorderColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->goto:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->goto:I

    .line 3
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->new:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->do:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/do;->setBorderColor(I)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSelectedBorderWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->else:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->else:I

    .line 3
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->new:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->do:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/do;->setBorderWidth(I)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setSelectedColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->class:Landroid/graphics/ColorFilter;

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->class:Landroid/graphics/ColorFilter;

    .line 3
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->new:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    return-void
.end method

.method public setSelectedMaskColor(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->this:I

    if-eq v0, p1, :cond_1

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->this:I

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->this:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->class:Landroid/graphics/ColorFilter;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->class:Landroid/graphics/ColorFilter;

    .line 5
    :goto_0
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->new:Z

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 7
    :cond_1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->this:I

    return-void
.end method

.method public setShadowAlpha(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->do:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/do;->setShadowAlpha(F)V

    return-void
.end method

.method public setShadowColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->do:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/do;->setShadowColor(I)V

    return-void
.end method

.method public setShadowElevation(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->do:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/do;->setShadowElevation(I)V

    return-void
.end method

.method public setShowBorderOnlyBeforeL(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->do:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/do;->setShowBorderOnlyBeforeL(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setTopDividerAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->do:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/do;->setTopDividerAlpha(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setTouchSelectModeEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->break:Z

    return-void
.end method

.method public setUseThemeGeneralShadowElevation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->do:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/layout/do;->setUseThemeGeneralShadowElevation()V

    return-void
.end method

.method public setWidthLimit(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->do:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/do;->setWidthLimit(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public updateBottomDivider(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->do:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/qmuiteam/qmui/layout/do;->updateBottomDivider(IIII)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public updateLeftDivider(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->do:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/qmuiteam/qmui/layout/do;->updateLeftDivider(IIII)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public updateRightDivider(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->do:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/qmuiteam/qmui/layout/do;->updateRightDivider(IIII)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public updateTopDivider(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUIRadiusImageView2;->do:Lcom/qmuiteam/qmui/layout/do;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/qmuiteam/qmui/layout/do;->updateTopDivider(IIII)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
