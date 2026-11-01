.class public Lcom/henley/shadowlayout/ShadowLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/henley/shadowlayout/ShadowLayout$do;
    }
.end annotation


# static fields
.field private static final static:I = 0x800033

.field private static final switch:I = -0x1

.field private static final throws:I


# instance fields
.field private break:I

.field private case:Z

.field private catch:F

.field private class:F

.field private const:F

.field private do:Landroid/graphics/drawable/Drawable;

.field private else:Landroid/graphics/Paint;

.field private final:F

.field private for:Landroid/graphics/Rect;

.field private goto:I

.field private if:Landroid/graphics/Rect;

.field private import:I

.field private native:I

.field private new:I

.field private public:I

.field private return:I

.field private super:F

.field private this:I

.field private throw:F

.field private try:Z

.field private while:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/henley/shadowlayout/ShadowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/henley/shadowlayout/ShadowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/henley/shadowlayout/ShadowLayout;->if:Landroid/graphics/Rect;

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/henley/shadowlayout/ShadowLayout;->for:Landroid/graphics/Rect;

    const/16 v0, 0x77

    .line 6
    iput v0, p0, Lcom/henley/shadowlayout/ShadowLayout;->new:I

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/henley/shadowlayout/ShadowLayout;->try:Z

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/henley/shadowlayout/ShadowLayout;->case:Z

    .line 9
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/henley/shadowlayout/ShadowLayout;->else:Landroid/graphics/Paint;

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/henley/shadowlayout/R$styleable;->ShadowLayout:[I

    invoke-virtual {v2, p2, v3, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 11
    sget p3, Lcom/henley/shadowlayout/R$styleable;->ShadowLayout_shadowColor:I

    sget v2, Lcom/henley/shadowlayout/R$color;->shadow_view_default_shadow_color:I

    .line 12
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 13
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/henley/shadowlayout/ShadowLayout;->goto:I

    .line 14
    sget p3, Lcom/henley/shadowlayout/R$styleable;->ShadowLayout_foregroundColor:I

    sget v2, Lcom/henley/shadowlayout/R$color;->shadow_view_foreground_color_dark:I

    .line 15
    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 16
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/henley/shadowlayout/ShadowLayout;->this:I

    .line 17
    sget p1, Lcom/henley/shadowlayout/R$styleable;->ShadowLayout_backgroundColor:I

    const/4 p3, -0x1

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/henley/shadowlayout/ShadowLayout;->break:I

    .line 18
    sget p1, Lcom/henley/shadowlayout/R$styleable;->ShadowLayout_shadowDx:I

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/henley/shadowlayout/ShadowLayout;->class:F

    .line 19
    sget p1, Lcom/henley/shadowlayout/R$styleable;->ShadowLayout_shadowDy:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/henley/shadowlayout/ShadowLayout;->const:F

    .line 20
    sget p1, Lcom/henley/shadowlayout/R$styleable;->ShadowLayout_shadowRadius:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/henley/shadowlayout/ShadowLayout;->catch:F

    .line 21
    sget p1, Lcom/henley/shadowlayout/R$styleable;->ShadowLayout_android_foreground:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 22
    invoke-virtual {p0, p1}, Lcom/henley/shadowlayout/ShadowLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 23
    :cond_0
    sget p1, Lcom/henley/shadowlayout/R$styleable;->ShadowLayout_shadowMargin:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    if-ltz p1, :cond_1

    .line 24
    iput p1, p0, Lcom/henley/shadowlayout/ShadowLayout;->import:I

    .line 25
    iput p1, p0, Lcom/henley/shadowlayout/ShadowLayout;->native:I

    .line 26
    iput p1, p0, Lcom/henley/shadowlayout/ShadowLayout;->public:I

    .line 27
    iput p1, p0, Lcom/henley/shadowlayout/ShadowLayout;->return:I

    goto :goto_0

    .line 28
    :cond_1
    sget p1, Lcom/henley/shadowlayout/R$styleable;->ShadowLayout_shadowMarginTop:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/henley/shadowlayout/ShadowLayout;->import:I

    .line 29
    sget p1, Lcom/henley/shadowlayout/R$styleable;->ShadowLayout_shadowMarginLeft:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/henley/shadowlayout/ShadowLayout;->native:I

    .line 30
    sget p1, Lcom/henley/shadowlayout/R$styleable;->ShadowLayout_shadowMarginRight:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/henley/shadowlayout/ShadowLayout;->public:I

    .line 31
    sget p1, Lcom/henley/shadowlayout/R$styleable;->ShadowLayout_shadowMarginBottom:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/henley/shadowlayout/ShadowLayout;->return:I

    .line 32
    :goto_0
    sget p1, Lcom/henley/shadowlayout/R$styleable;->ShadowLayout_cornerRadius:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    int-to-float p1, p1

    cmpl-float p3, p1, v2

    if-ltz p3, :cond_2

    .line 33
    iput p1, p0, Lcom/henley/shadowlayout/ShadowLayout;->final:F

    .line 34
    iput p1, p0, Lcom/henley/shadowlayout/ShadowLayout;->super:F

    .line 35
    iput p1, p0, Lcom/henley/shadowlayout/ShadowLayout;->throw:F

    .line 36
    iput p1, p0, Lcom/henley/shadowlayout/ShadowLayout;->while:F

    goto :goto_1

    .line 37
    :cond_2
    sget p1, Lcom/henley/shadowlayout/R$styleable;->ShadowLayout_cornerRadiusTL:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/henley/shadowlayout/ShadowLayout;->final:F

    .line 38
    sget p1, Lcom/henley/shadowlayout/R$styleable;->ShadowLayout_cornerRadiusTR:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/henley/shadowlayout/ShadowLayout;->super:F

    .line 39
    sget p1, Lcom/henley/shadowlayout/R$styleable;->ShadowLayout_cornerRadiusBL:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/henley/shadowlayout/ShadowLayout;->throw:F

    .line 40
    sget p1, Lcom/henley/shadowlayout/R$styleable;->ShadowLayout_cornerRadiusBR:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/henley/shadowlayout/ShadowLayout;->while:F

    .line 41
    :goto_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    iget-object p1, p0, Lcom/henley/shadowlayout/ShadowLayout;->else:Landroid/graphics/Paint;

    iget p2, p0, Lcom/henley/shadowlayout/ShadowLayout;->break:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    iget-object p1, p0, Lcom/henley/shadowlayout/ShadowLayout;->else:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    iget-object p1, p0, Lcom/henley/shadowlayout/ShadowLayout;->else:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p1, 0x0

    .line 45
    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 46
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 47
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private case()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/henley/shadowlayout/ShadowLayout;->catch:F

    iget v1, p0, Lcom/henley/shadowlayout/ShadowLayout;->class:F

    iget v2, p0, Lcom/henley/shadowlayout/ShadowLayout;->const:F

    iget v3, p0, Lcom/henley/shadowlayout/ShadowLayout;->goto:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/henley/shadowlayout/ShadowLayout;->else(FFFI)V

    return-void
.end method

.method private do(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/henley/shadowlayout/ShadowLayout;->do:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 2
    iget-boolean v0, p0, Lcom/henley/shadowlayout/ShadowLayout;->case:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/henley/shadowlayout/ShadowLayout;->case:Z

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 6
    iget-boolean v3, p0, Lcom/henley/shadowlayout/ShadowLayout;->try:Z

    if-eqz v3, :cond_0

    .line 7
    iget-object v3, p0, Lcom/henley/shadowlayout/ShadowLayout;->if:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/henley/shadowlayout/ShadowLayout;->if:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    sub-int/2addr v1, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 9
    :goto_0
    iget v0, p0, Lcom/henley/shadowlayout/ShadowLayout;->new:I

    iget-object v1, p0, Lcom/henley/shadowlayout/ShadowLayout;->do:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/henley/shadowlayout/ShadowLayout;->do:Landroid/graphics/drawable/Drawable;

    .line 10
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Lcom/henley/shadowlayout/ShadowLayout;->if:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/henley/shadowlayout/ShadowLayout;->for:Landroid/graphics/Rect;

    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 12
    iget-object v0, p0, Lcom/henley/shadowlayout/ShadowLayout;->do:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/henley/shadowlayout/ShadowLayout;->for:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/henley/shadowlayout/ShadowLayout;->do:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method private else(FFFI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/henley/shadowlayout/ShadowLayout;->else:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private getPaddingBottomWithForeground()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    return v0
.end method

.method private getPaddingLeftWithForeground()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method private getPaddingRightWithForeground()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    return v0
.end method

.method private getPaddingTopWithForeground()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method private getShadowMarginMax()F
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Integer;

    .line 1
    iget v1, p0, Lcom/henley/shadowlayout/ShadowLayout;->native:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/henley/shadowlayout/ShadowLayout;->import:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/henley/shadowlayout/ShadowLayout;->public:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/henley/shadowlayout/ShadowLayout;->return:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private if(IIIIZ)V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2
    invoke-direct {p0}, Lcom/henley/shadowlayout/ShadowLayout;->getPaddingLeftWithForeground()I

    move-result v1

    sub-int/2addr p3, p1

    .line 3
    invoke-direct {p0}, Lcom/henley/shadowlayout/ShadowLayout;->getPaddingRightWithForeground()I

    move-result p1

    sub-int/2addr p3, p1

    .line 4
    invoke-direct {p0}, Lcom/henley/shadowlayout/ShadowLayout;->getPaddingTopWithForeground()I

    move-result p1

    sub-int/2addr p4, p2

    .line 5
    invoke-direct {p0}, Lcom/henley/shadowlayout/ShadowLayout;->getPaddingBottomWithForeground()I

    move-result p2

    sub-int/2addr p4, p2

    const/4 p2, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_9

    .line 6
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_8

    .line 8
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/henley/shadowlayout/ShadowLayout$do;

    .line 9
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 10
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 11
    iget v7, v4, Lcom/henley/shadowlayout/ShadowLayout$do;->do:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    const v7, 0x800033

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v8

    .line 13
    invoke-static {v7, v8}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v8

    and-int/lit8 v7, v7, 0x70

    and-int/lit8 v8, v8, 0x7

    const/4 v9, 0x1

    if-eq v8, v9, :cond_4

    const/4 v9, 0x3

    if-eq v8, v9, :cond_3

    const/4 v9, 0x5

    if-eq v8, v9, :cond_1

    .line 14
    iget v8, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v8, v1

    iget v9, p0, Lcom/henley/shadowlayout/ShadowLayout;->native:I

    :goto_1
    add-int/2addr v8, v9

    goto :goto_3

    :cond_1
    if-nez p5, :cond_2

    sub-int v8, p3, v5

    .line 15
    iget v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/henley/shadowlayout/ShadowLayout;->public:I

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    goto :goto_3

    .line 16
    :cond_3
    iget v8, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v8, v1

    iget v9, p0, Lcom/henley/shadowlayout/ShadowLayout;->native:I

    goto :goto_1

    :cond_4
    sub-int v8, p3, v1

    sub-int/2addr v8, v5

    .line 17
    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v1

    iget v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v8, v9

    iget v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/henley/shadowlayout/ShadowLayout;->native:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/henley/shadowlayout/ShadowLayout;->public:I

    :goto_2
    sub-int/2addr v8, v9

    :goto_3
    const/16 v9, 0x10

    if-eq v7, v9, :cond_7

    const/16 v9, 0x30

    if-eq v7, v9, :cond_6

    const/16 v9, 0x50

    if-eq v7, v9, :cond_5

    .line 18
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, p1

    iget v7, p0, Lcom/henley/shadowlayout/ShadowLayout;->import:I

    goto :goto_4

    :cond_5
    sub-int v7, p4, v6

    .line 19
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v7, v4

    iget v4, p0, Lcom/henley/shadowlayout/ShadowLayout;->return:I

    goto :goto_5

    .line 20
    :cond_6
    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, p1

    iget v7, p0, Lcom/henley/shadowlayout/ShadowLayout;->import:I

    :goto_4
    add-int/2addr v4, v7

    goto :goto_6

    :cond_7
    sub-int v7, p4, p1

    sub-int/2addr v7, v6

    .line 21
    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, p1

    iget v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v7, v9

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v7, v4

    iget v4, p0, Lcom/henley/shadowlayout/ShadowLayout;->import:I

    add-int/2addr v7, v4

    iget v4, p0, Lcom/henley/shadowlayout/ShadowLayout;->return:I

    :goto_5
    sub-int v4, v7, v4

    :goto_6
    add-int/2addr v5, v8

    add-int/2addr v6, v4

    .line 22
    invoke-virtual {v3, v8, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method private try()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/henley/shadowlayout/ShadowLayout;->do:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 3
    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    iget v1, p0, Lcom/henley/shadowlayout/ShadowLayout;->this:I

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 5
    :cond_0
    iget v1, p0, Lcom/henley/shadowlayout/ShadowLayout;->this:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lcom/henley/shadowlayout/ShadowLayout$do;

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    .line 5
    iget v2, p0, Lcom/henley/shadowlayout/ShadowLayout;->native:I

    int-to-float v3, v2

    iget v2, p0, Lcom/henley/shadowlayout/ShadowLayout;->import:I

    int-to-float v4, v2

    iget v2, p0, Lcom/henley/shadowlayout/ShadowLayout;->public:I

    sub-int/2addr v0, v2

    int-to-float v5, v0

    iget v0, p0, Lcom/henley/shadowlayout/ShadowLayout;->return:I

    sub-int/2addr v1, v0

    int-to-float v6, v1

    iget v7, p0, Lcom/henley/shadowlayout/ShadowLayout;->final:F

    iget v8, p0, Lcom/henley/shadowlayout/ShadowLayout;->super:F

    iget v9, p0, Lcom/henley/shadowlayout/ShadowLayout;->while:F

    iget v10, p0, Lcom/henley/shadowlayout/ShadowLayout;->throw:F

    invoke-static/range {v3 .. v10}, Lcom/henley/shadowlayout/do;->do(FFFFFFFF)Landroid/graphics/Path;

    move-result-object v0

    .line 6
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 7
    invoke-direct {p0, p1}, Lcom/henley/shadowlayout/ShadowLayout;->do(Landroid/graphics/Canvas;)V

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->drawableHotspotChanged(FF)V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/henley/shadowlayout/ShadowLayout;->do:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method public drawableStateChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 2
    iget-object v0, p0, Lcom/henley/shadowlayout/ShadowLayout;->do:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/henley/shadowlayout/ShadowLayout;->do:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public for(FFFF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/henley/shadowlayout/ShadowLayout;->final:F

    .line 2
    iput p2, p0, Lcom/henley/shadowlayout/ShadowLayout;->super:F

    .line 3
    iput p3, p0, Lcom/henley/shadowlayout/ShadowLayout;->while:F

    .line 4
    iput p4, p0, Lcom/henley/shadowlayout/ShadowLayout;->throw:F

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Lcom/henley/shadowlayout/ShadowLayout$do;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/henley/shadowlayout/ShadowLayout$do;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 2
    new-instance v0, Lcom/henley/shadowlayout/ShadowLayout$do;

    invoke-direct {v0, p1}, Lcom/henley/shadowlayout/ShadowLayout$do;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    const-class v0, Lcom/henley/shadowlayout/ShadowLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/henley/shadowlayout/ShadowLayout;->break:I

    return v0
.end method

.method public getCornerRadiusBL()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/henley/shadowlayout/ShadowLayout;->throw:F

    return v0
.end method

.method public getCornerRadiusBR()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/henley/shadowlayout/ShadowLayout;->while:F

    return v0
.end method

.method public getCornerRadiusTL()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/henley/shadowlayout/ShadowLayout;->final:F

    return v0
.end method

.method public getCornerRadiusTR()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/henley/shadowlayout/ShadowLayout;->super:F

    return v0
.end method

.method public getForeground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/henley/shadowlayout/ShadowLayout;->do:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getForegroundColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/henley/shadowlayout/ShadowLayout;->this:I

    return v0
.end method

.method public getForegroundGravity()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/henley/shadowlayout/ShadowLayout;->new:I

    return v0
.end method

.method public getShadowColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/henley/shadowlayout/ShadowLayout;->goto:I

    return v0
.end method

.method public getShadowDx()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/henley/shadowlayout/ShadowLayout;->class:F

    return v0
.end method

.method public getShadowDy()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/henley/shadowlayout/ShadowLayout;->const:F

    return v0
.end method

.method public getShadowMarginBottom()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/henley/shadowlayout/ShadowLayout;->return:I

    return v0
.end method

.method public getShadowMarginLeft()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/henley/shadowlayout/ShadowLayout;->native:I

    return v0
.end method

.method public getShadowMarginRight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/henley/shadowlayout/ShadowLayout;->public:I

    return v0
.end method

.method public getShadowMarginTop()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/henley/shadowlayout/ShadowLayout;->import:I

    return v0
.end method

.method public getShadowRadius()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/henley/shadowlayout/ShadowLayout;->catch:F

    invoke-direct {p0}, Lcom/henley/shadowlayout/ShadowLayout;->getShadowMarginMax()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/henley/shadowlayout/ShadowLayout;->getShadowMarginMax()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/henley/shadowlayout/ShadowLayout;->getShadowMarginMax()F

    move-result v0

    return v0

    .line 3
    :cond_0
    iget v0, p0, Lcom/henley/shadowlayout/ShadowLayout;->catch:F

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->jumpDrawablesToCurrentState()V

    .line 2
    iget-object v0, p0, Lcom/henley/shadowlayout/ShadowLayout;->do:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method public new(IIII)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/henley/shadowlayout/ShadowLayout;->native:I

    .line 2
    iput p2, p0, Lcom/henley/shadowlayout/ShadowLayout;->import:I

    .line 3
    iput p3, p0, Lcom/henley/shadowlayout/ShadowLayout;->public:I

    .line 4
    iput p4, p0, Lcom/henley/shadowlayout/ShadowLayout;->return:I

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    .line 4
    iget v2, p0, Lcom/henley/shadowlayout/ShadowLayout;->native:I

    int-to-float v3, v2

    iget v2, p0, Lcom/henley/shadowlayout/ShadowLayout;->import:I

    int-to-float v4, v2

    iget v2, p0, Lcom/henley/shadowlayout/ShadowLayout;->public:I

    sub-int/2addr v0, v2

    int-to-float v5, v0

    iget v0, p0, Lcom/henley/shadowlayout/ShadowLayout;->return:I

    sub-int/2addr v1, v0

    int-to-float v6, v1

    iget v7, p0, Lcom/henley/shadowlayout/ShadowLayout;->final:F

    iget v8, p0, Lcom/henley/shadowlayout/ShadowLayout;->super:F

    iget v9, p0, Lcom/henley/shadowlayout/ShadowLayout;->while:F

    iget v10, p0, Lcom/henley/shadowlayout/ShadowLayout;->throw:F

    invoke-static/range {v3 .. v10}, Lcom/henley/shadowlayout/do;->do(FFFFFFFF)Landroid/graphics/Path;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/henley/shadowlayout/ShadowLayout;->else:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 6
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/henley/shadowlayout/ShadowLayout;->if(IIIIZ)V

    if-eqz p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/henley/shadowlayout/ShadowLayout;->case:Z

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-static {v1, p1}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result v2

    invoke-static {v1, p2}, Landroid/view/ViewGroup;->getDefaultSize(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 3
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 4
    :goto_0
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v0, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/high16 v0, 0x40000000    # 2.0f

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lcom/henley/shadowlayout/ShadowLayout;->public:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/henley/shadowlayout/ShadowLayout;->native:I

    sub-int/2addr v4, v5

    .line 6
    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_2

    :cond_2
    move v4, p1

    :goto_2
    if-eqz v3, :cond_3

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v5

    iget v6, p0, Lcom/henley/shadowlayout/ShadowLayout;->import:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/henley/shadowlayout/ShadowLayout;->return:I

    sub-int/2addr v5, v6

    .line 8
    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_3

    :cond_3
    move v0, p2

    .line 9
    :goto_3
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 10
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_6

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, v11

    move v7, v4

    move v9, v0

    .line 11
    invoke-virtual/range {v5 .. v10}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 12
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/henley/shadowlayout/ShadowLayout$do;

    if-eqz v2, :cond_4

    .line 13
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v6, v7

    iget v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    .line 14
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_4

    .line 15
    :cond_4
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Lcom/henley/shadowlayout/ShadowLayout;->native:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/henley/shadowlayout/ShadowLayout;->public:I

    add-int/2addr v6, v7

    iget v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v6, v7

    iget v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    :goto_4
    if-eqz v3, :cond_5

    .line 16
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v7, v8

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v7, v5

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_5

    .line 17
    :cond_5
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iget v8, p0, Lcom/henley/shadowlayout/ShadowLayout;->import:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/henley/shadowlayout/ShadowLayout;->return:I

    add-int/2addr v7, v8

    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v7, v8

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v7, v5

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 18
    :goto_5
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredState()I

    move-result v7

    invoke-static {v1, v7}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    move v12, v6

    move v6, v1

    move v1, v12

    goto :goto_6

    :cond_6
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 19
    :goto_6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v1, v7

    .line 20
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v5, v7

    .line 21
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 22
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 23
    invoke-virtual {p0}, Lcom/henley/shadowlayout/ShadowLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 24
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 25
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_7
    if-eqz v2, :cond_8

    goto :goto_7

    :cond_8
    move p1, v4

    .line 26
    :goto_7
    invoke-static {v1, p1, v6}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    if-eqz v3, :cond_9

    goto :goto_8

    :cond_9
    move p2, v0

    :goto_8
    shl-int/lit8 v0, v6, 0x10

    .line 27
    invoke-static {v5, p2, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    .line 28
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/henley/shadowlayout/ShadowLayout;->case:Z

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/henley/shadowlayout/ShadowLayout;->break:I

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setCornerRadiusBL(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/henley/shadowlayout/ShadowLayout;->throw:F

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setCornerRadiusBR(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/henley/shadowlayout/ShadowLayout;->while:F

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setCornerRadiusTL(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/henley/shadowlayout/ShadowLayout;->final:F

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setCornerRadiusTR(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/henley/shadowlayout/ShadowLayout;->super:F

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/henley/shadowlayout/ShadowLayout;->do:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3
    iget-object v0, p0, Lcom/henley/shadowlayout/ShadowLayout;->do:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/henley/shadowlayout/ShadowLayout;->do:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-direct {p0}, Lcom/henley/shadowlayout/ShadowLayout;->try()V

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 7
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 8
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 10
    :cond_1
    iget v0, p0, Lcom/henley/shadowlayout/ShadowLayout;->new:I

    const/16 v1, 0x77

    if-ne v0, v1, :cond_2

    .line 11
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 12
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 13
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setForegroundColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/henley/shadowlayout/ShadowLayout;->this:I

    .line 2
    invoke-direct {p0}, Lcom/henley/shadowlayout/ShadowLayout;->try()V

    return-void
.end method

.method public setForegroundGravity(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/henley/shadowlayout/ShadowLayout;->new:I

    if-eq v0, p1, :cond_3

    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const v0, 0x800003

    or-int/2addr p1, v0

    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    or-int/lit8 p1, p1, 0x30

    .line 2
    :cond_1
    iput p1, p0, Lcom/henley/shadowlayout/ShadowLayout;->new:I

    const/16 v0, 0x77

    if-ne p1, v0, :cond_2

    .line 3
    iget-object p1, p0, Lcom/henley/shadowlayout/ShadowLayout;->do:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 4
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 5
    iget-object v0, p0, Lcom/henley/shadowlayout/ShadowLayout;->do:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 6
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_3
    return-void
.end method

.method public setShadowColor(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/henley/shadowlayout/ShadowLayout;->goto:I

    .line 2
    iget v0, p0, Lcom/henley/shadowlayout/ShadowLayout;->catch:F

    iget v1, p0, Lcom/henley/shadowlayout/ShadowLayout;->class:F

    iget v2, p0, Lcom/henley/shadowlayout/ShadowLayout;->const:F

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/henley/shadowlayout/ShadowLayout;->else(FFFI)V

    return-void
.end method

.method public setShadowDx(F)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/henley/shadowlayout/ShadowLayout;->class:F

    .line 2
    iget v0, p0, Lcom/henley/shadowlayout/ShadowLayout;->catch:F

    iget v1, p0, Lcom/henley/shadowlayout/ShadowLayout;->const:F

    iget v2, p0, Lcom/henley/shadowlayout/ShadowLayout;->goto:I

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/henley/shadowlayout/ShadowLayout;->else(FFFI)V

    return-void
.end method

.method public setShadowDy(F)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/henley/shadowlayout/ShadowLayout;->const:F

    .line 2
    iget v0, p0, Lcom/henley/shadowlayout/ShadowLayout;->catch:F

    iget v1, p0, Lcom/henley/shadowlayout/ShadowLayout;->class:F

    iget v2, p0, Lcom/henley/shadowlayout/ShadowLayout;->goto:I

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/henley/shadowlayout/ShadowLayout;->else(FFFI)V

    return-void
.end method

.method public setShadowMarginBottom(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/henley/shadowlayout/ShadowLayout;->return:I

    .line 2
    invoke-direct {p0}, Lcom/henley/shadowlayout/ShadowLayout;->case()V

    return-void
.end method

.method public setShadowMarginLeft(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/henley/shadowlayout/ShadowLayout;->native:I

    .line 2
    invoke-direct {p0}, Lcom/henley/shadowlayout/ShadowLayout;->case()V

    return-void
.end method

.method public setShadowMarginRight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/henley/shadowlayout/ShadowLayout;->public:I

    .line 2
    invoke-direct {p0}, Lcom/henley/shadowlayout/ShadowLayout;->case()V

    return-void
.end method

.method public setShadowMarginTop(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/henley/shadowlayout/ShadowLayout;->import:I

    .line 2
    invoke-direct {p0}, Lcom/henley/shadowlayout/ShadowLayout;->case()V

    return-void
.end method

.method public setShadowRadius(F)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/henley/shadowlayout/ShadowLayout;->getShadowMarginMax()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/henley/shadowlayout/ShadowLayout;->getShadowMarginMax()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/henley/shadowlayout/ShadowLayout;->getShadowMarginMax()F

    move-result p1

    .line 3
    :cond_0
    iput p1, p0, Lcom/henley/shadowlayout/ShadowLayout;->catch:F

    .line 4
    iget v0, p0, Lcom/henley/shadowlayout/ShadowLayout;->class:F

    iget v1, p0, Lcom/henley/shadowlayout/ShadowLayout;->const:F

    iget v2, p0, Lcom/henley/shadowlayout/ShadowLayout;->goto:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/henley/shadowlayout/ShadowLayout;->else(FFFI)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/henley/shadowlayout/ShadowLayout;->do:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
