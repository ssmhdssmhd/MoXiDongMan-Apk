.class public Lcom/scwang/smartrefresh/header/WaterDropHeader;
.super Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;
.source "SourceFile"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/api/RefreshHeader;


# static fields
.field public static final this:F = 0.8f


# instance fields
.field public case:Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;

.field public else:Landroid/support/v4/rf1;

.field public goto:Lcom/scwang/smartrefresh/header/internal/do;

.field public new:Landroid/support/v4/qm1;

.field public try:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/header/WaterDropHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    sget-object p2, Landroid/support/v4/y02;->this:[Landroid/support/v4/y02;

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p2, v2

    .line 4
    iget-boolean v4, v3, Landroid/support/v4/y02;->for:Z

    if-eqz v4, :cond_0

    .line 5
    iput-object v3, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->if:Landroid/support/v4/y02;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    new-instance p2, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;

    invoke-direct {p2, p1}, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->case:Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;

    .line 7
    invoke-virtual {p2, v0}, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->new(I)V

    .line 8
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->case:Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;

    const/4 v1, -0x1

    invoke-virtual {p0, p2, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 9
    new-instance p2, Landroid/support/v4/rf1;

    invoke-direct {p2}, Landroid/support/v4/rf1;-><init>()V

    iput-object p2, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->else:Landroid/support/v4/rf1;

    .line 10
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/high16 v2, 0x41a00000    # 20.0f

    .line 11
    invoke-static {v2}, Landroid/support/v4/i02;->new(F)I

    move-result v3

    invoke-static {v2}, Landroid/support/v4/i02;->new(F)I

    move-result v2

    invoke-virtual {p2, v0, v0, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 12
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->try:Landroid/widget/ImageView;

    .line 13
    new-instance p1, Lcom/scwang/smartrefresh/header/internal/do;

    iget-object p2, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->try:Landroid/widget/ImageView;

    invoke-direct {p1, p2}, Lcom/scwang/smartrefresh/header/internal/do;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->goto:Lcom/scwang/smartrefresh/header/internal/do;

    .line 14
    invoke-virtual {p1, v1}, Lcom/scwang/smartrefresh/header/internal/do;->try(I)V

    .line 15
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->goto:Lcom/scwang/smartrefresh/header/internal/do;

    const/16 p2, 0xff

    invoke-virtual {p1, p2}, Lcom/scwang/smartrefresh/header/internal/do;->setAlpha(I)V

    .line 16
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->goto:Lcom/scwang/smartrefresh/header/internal/do;

    const/4 p2, 0x6

    new-array p2, p2, [I

    fill-array-data p2, :array_0

    invoke-virtual {p1, p2}, Lcom/scwang/smartrefresh/header/internal/do;->case([I)V

    .line 17
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->try:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->goto:Lcom/scwang/smartrefresh/header/internal/do;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 18
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->try:Landroid/widget/ImageView;

    const/high16 p2, 0x41f00000    # 30.0f

    invoke-static {p2}, Landroid/support/v4/i02;->new(F)I

    move-result v0

    invoke-static {p2}, Landroid/support/v4/i02;->new(F)I

    move-result p2

    invoke-virtual {p0, p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-void

    :array_0
    .array-data 4
        -0x1
        -0xff6634
        -0xbbbc
        -0x996700
        -0x559934
        -0x7800
    .end array-data
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->case:Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;

    .line 3
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->else:Landroid/support/v4/rf1;

    .line 4
    iget-object v2, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->new:Landroid/support/v4/qm1;

    sget-object v3, Landroid/support/v4/qm1;->Refreshing:Landroid/support/v4/qm1;

    if-ne v2, v3, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    iget-object v4, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->case:Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;

    .line 7
    invoke-virtual {v4}, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->getMaxCircleRadius()I

    move-result v4

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int/2addr v4, v0

    int-to-float v0, v4

    .line 9
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    sub-float/2addr v0, v4

    .line 10
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 11
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 12
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I
    .locals 0
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->else:Landroid/support/v4/rf1;

    invoke-virtual {p1}, Landroid/support/v4/rf1;->stop()V

    const/4 p1, 0x0

    return p1
.end method

.method public onLayout(ZIIII)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->try:Landroid/widget/ImageView;

    .line 2
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->case:Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    .line 6
    div-int/lit8 p3, p3, 0x2

    div-int/lit8 v0, p4, 0x2

    sub-int v1, p3, v0

    add-int v2, v1, p4

    const/4 v3, 0x0

    add-int/2addr p5, v3

    .line 7
    invoke-virtual {p2, v1, v3, v2, p5}, Landroid/view/View;->layout(IIII)V

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 10
    div-int/lit8 v2, p5, 0x2

    sub-int/2addr p3, v2

    sub-int/2addr v0, v2

    add-int v2, v0, v1

    .line 11
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr p4, p5

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr v3, p4

    if-le v2, v3, :cond_0

    .line 12
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    sub-int/2addr p2, p4

    sub-int v0, p2, v1

    :cond_0
    add-int/2addr p5, p3

    add-int/2addr v1, v0

    .line 13
    invoke-virtual {p1, p3, v0, p5, v1}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->try:Landroid/widget/ImageView;

    .line 3
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->case:Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 5
    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/high16 v4, 0x40000000    # 2.0f

    .line 6
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget v2, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 7
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 8
    invoke-virtual {v0, v3, v2}, Landroid/view/View;->measure(II)V

    .line 9
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 10
    invoke-virtual {v1, v2, p2}, Landroid/view/View;->measure(II)V

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 13
    invoke-static {v2, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onMoving(ZFIII)V
    .locals 4

    if-nez p1, :cond_0

    .line 1
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->new:Landroid/support/v4/qm1;

    sget-object v0, Landroid/support/v4/qm1;->Refreshing:Landroid/support/v4/qm1;

    if-eq p2, v0, :cond_1

    sget-object v0, Landroid/support/v4/qm1;->RefreshReleased:Landroid/support/v4/qm1;

    if-eq p2, v0, :cond_1

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->case:Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;

    const/4 v0, 0x0

    .line 3
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr p5, p4

    invoke-virtual {p2, v0, p5}, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->try(II)V

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->postInvalidate()V

    :cond_1
    if-eqz p1, :cond_2

    int-to-float p1, p3

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float p1, p1, p2

    int-to-float p5, p4

    div-float/2addr p1, p5

    .line 5
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-double v0, p1

    const-wide v2, 0x3fd999999999999aL    # 0.4

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-float p1, v0

    const/high16 v0, 0x40a00000    # 5.0f

    mul-float p1, p1, v0

    const/high16 v0, 0x40400000    # 3.0f

    div-float/2addr p1, v0

    .line 7
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    sub-int/2addr p3, p4

    int-to-float p3, p3

    const/high16 p4, 0x40000000    # 2.0f

    mul-float v0, p5, p4

    .line 8
    invoke-static {p3, v0}, Ljava/lang/Math;->min(FF)F

    move-result p3

    div-float/2addr p3, p5

    const/4 p5, 0x0

    invoke-static {p5, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    const/high16 v0, 0x40800000    # 4.0f

    div-float/2addr p3, v0

    float-to-double v0, p3

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 9
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v2

    double-to-float p3, v0

    mul-float p3, p3, p4

    const v0, 0x3f4ccccd    # 0.8f

    mul-float v1, p1, v0

    const/high16 v2, -0x41800000    # -0.25f

    const v3, 0x3ecccccd    # 0.4f

    mul-float v3, v3, p1

    add-float/2addr v3, v2

    mul-float p3, p3, p4

    add-float/2addr v3, p3

    const/high16 p3, 0x3f000000    # 0.5f

    mul-float v3, v3, p3

    .line 10
    iget-object p3, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->goto:Lcom/scwang/smartrefresh/header/internal/do;

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Lcom/scwang/smartrefresh/header/internal/do;->class(Z)V

    .line 11
    iget-object p3, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->goto:Lcom/scwang/smartrefresh/header/internal/do;

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p4

    invoke-virtual {p3, p5, p4}, Lcom/scwang/smartrefresh/header/internal/do;->break(FF)V

    .line 12
    iget-object p3, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->goto:Lcom/scwang/smartrefresh/header/internal/do;

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p3, p1}, Lcom/scwang/smartrefresh/header/internal/do;->new(F)V

    .line 13
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->goto:Lcom/scwang/smartrefresh/header/internal/do;

    invoke-virtual {p1, v3}, Lcom/scwang/smartrefresh/header/internal/do;->else(F)V

    :cond_2
    return-void
.end method

.method public onReleased(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V
    .locals 2
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->try:Landroid/widget/ImageView;

    .line 2
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->case:Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;

    .line 3
    iget-object p3, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->else:Landroid/support/v4/rf1;

    invoke-virtual {p3}, Landroid/support/v4/rf1;->start()V

    const/16 p3, 0x8

    .line 4
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->case:Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->do()Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 6
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p3, Lcom/scwang/smartrefresh/header/WaterDropHeader$do;

    invoke-direct {p3, p0, p2}, Lcom/scwang/smartrefresh/header/WaterDropHeader$do;-><init>(Lcom/scwang/smartrefresh/header/WaterDropHeader;Landroid/view/View;)V

    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public onStateChanged(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Landroid/support/v4/qm1;Landroid/support/v4/qm1;)V
    .locals 2
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/qm1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/support/v4/qm1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->case:Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;

    .line 2
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->try:Landroid/widget/ImageView;

    .line 3
    iput-object p3, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->new:Landroid/support/v4/qm1;

    .line 4
    sget-object v0, Lcom/scwang/smartrefresh/header/WaterDropHeader$if;->do:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p3, v0, :cond_3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    const/4 v0, 0x4

    if-eq p3, v0, :cond_1

    const/4 v0, 0x6

    if-eq p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p3, 0x8

    .line 5
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public varargs setPrimaryColors([I)V
    .locals 2
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    array-length v0, p1

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/WaterDropHeader;->case:Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;

    const/4 v1, 0x0

    aget p1, p1, v1

    invoke-virtual {v0, p1}, Lcom/scwang/smartrefresh/header/waterdrop/WaterDropView;->setIndicatorColor(I)V

    :cond_0
    return-void
.end method
