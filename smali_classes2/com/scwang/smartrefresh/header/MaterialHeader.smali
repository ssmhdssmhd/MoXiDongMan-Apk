.class public Lcom/scwang/smartrefresh/header/MaterialHeader;
.super Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;
.source "SourceFile"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/api/RefreshHeader;


# static fields
.field public static final import:F = 0.8f

.field public static final native:I = 0x28
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final public:I = 0x38
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final super:I = 0x0

.field public static final throw:I = 0x1

.field public static final while:I = -0x50506


# instance fields
.field public break:Landroid/graphics/Path;

.field public case:Landroid/widget/ImageView;

.field public catch:Landroid/graphics/Paint;

.field public class:Landroid/support/v4/qm1;

.field public const:Z

.field public else:Lcom/scwang/smartrefresh/header/internal/do;

.field public final:Z

.field public goto:I

.field public new:Z

.field public this:I

.field public try:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/header/MaterialHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->const:Z

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->final:Z

    .line 5
    sget-object v2, Landroid/support/v4/y02;->goto:Landroid/support/v4/y02;

    iput-object v2, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->if:Landroid/support/v4/y02;

    const/high16 v2, 0x42c80000    # 100.0f

    .line 6
    invoke-static {v2}, Landroid/support/v4/i02;->new(F)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 7
    new-instance v2, Lcom/scwang/smartrefresh/header/internal/do;

    invoke-direct {v2, p0}, Lcom/scwang/smartrefresh/header/internal/do;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->else:Lcom/scwang/smartrefresh/header/internal/do;

    const v3, -0x50506

    .line 8
    invoke-virtual {v2, v3}, Lcom/scwang/smartrefresh/header/internal/do;->try(I)V

    .line 9
    iget-object v2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->else:Lcom/scwang/smartrefresh/header/internal/do;

    const/16 v4, 0xff

    invoke-virtual {v2, v4}, Lcom/scwang/smartrefresh/header/internal/do;->setAlpha(I)V

    .line 10
    iget-object v2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->else:Lcom/scwang/smartrefresh/header/internal/do;

    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-virtual {v2, v4}, Lcom/scwang/smartrefresh/header/internal/do;->case([I)V

    .line 11
    new-instance v2, Lcom/scwang/smartrefresh/header/material/CircleImageView;

    invoke-direct {v2, p1, v3}, Lcom/scwang/smartrefresh/header/material/CircleImageView;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->case:Landroid/widget/ImageView;

    .line 12
    iget-object v3, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->else:Lcom/scwang/smartrefresh/header/internal/do;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13
    iget-object v2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->case:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 14
    iget-object v2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->case:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 16
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x42200000    # 40.0f

    mul-float v2, v2, v4

    float-to-int v2, v2

    iput v2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->try:I

    .line 17
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->break:Landroid/graphics/Path;

    .line 18
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->catch:Landroid/graphics/Paint;

    .line 19
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 20
    iget-object v2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->catch:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 21
    sget-object v2, Lcom/scwang/smartrefresh/header/R$styleable;->MaterialHeader:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 22
    sget p2, Lcom/scwang/smartrefresh/header/R$styleable;->MaterialHeader_mhShowBezierWave:I

    iget-boolean v2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->const:Z

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->const:Z

    .line 23
    sget p2, Lcom/scwang/smartrefresh/header/R$styleable;->MaterialHeader_mhScrollableWhenRefreshing:I

    iget-boolean v2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->final:Z

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->final:Z

    .line 24
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->catch:Landroid/graphics/Paint;

    sget v2, Lcom/scwang/smartrefresh/header/R$styleable;->MaterialHeader_mhPrimaryColor:I

    const v4, -0xee4401

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    sget p2, Lcom/scwang/smartrefresh/header/R$styleable;->MaterialHeader_mhShadowRadius:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 26
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    .line 27
    sget v0, Lcom/scwang/smartrefresh/header/R$styleable;->MaterialHeader_mhShadowColor:I

    const/high16 v2, -0x1000000

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 28
    iget-object v2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->catch:Landroid/graphics/Paint;

    int-to-float p2, p2

    invoke-virtual {v2, p2, v3, v3, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    const/4 p2, 0x0

    .line 29
    invoke-virtual {p0, v1, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 30
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    nop

    :array_0
    .array-data 4
        -0xff6634
        -0xbbbc
        -0x996700
        -0x559934
        -0x7800
    .end array-data
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->const:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->break:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 3
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->break:Landroid/graphics/Path;

    iget v1, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->this:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->break:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    iget v3, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->this:I

    int-to-float v3, v3

    iget v4, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->goto:I

    int-to-float v4, v4

    const v5, 0x3ff33333    # 1.9f

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->this:I

    int-to-float v5, v5

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 5
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->break:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 6
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->break:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->catch:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 7
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public varargs do([I)Lcom/scwang/smartrefresh/header/MaterialHeader;
    .locals 1
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->else:Lcom/scwang/smartrefresh/header/internal/do;

    invoke-virtual {v0, p1}, Lcom/scwang/smartrefresh/header/internal/do;->case([I)V

    return-object p0
.end method

.method public for(Z)Lcom/scwang/smartrefresh/header/MaterialHeader;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->const:Z

    return-object p0
.end method

.method public varargs if([I)Lcom/scwang/smartrefresh/header/MaterialHeader;
    .locals 4
    .param p1    # [I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    array-length v1, p1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 3
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 4
    aget v3, p1, v2

    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, v1}, Lcom/scwang/smartrefresh/header/MaterialHeader;->do([I)Lcom/scwang/smartrefresh/header/MaterialHeader;

    move-result-object p1

    return-object p1
.end method

.method public new(I)Lcom/scwang/smartrefresh/header/MaterialHeader;
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-nez p1, :cond_1

    const/high16 v1, 0x42600000    # 56.0f

    .line 2
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->try:I

    goto :goto_0

    :cond_1
    const/high16 v1, 0x42200000    # 40.0f

    .line 3
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->try:I

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->case:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->else:Lcom/scwang/smartrefresh/header/internal/do;

    invoke-virtual {v0, p1}, Lcom/scwang/smartrefresh/header/internal/do;->final(I)V

    .line 6
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->case:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->else:Lcom/scwang/smartrefresh/header/internal/do;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public onFinish(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Z)I
    .locals 0
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->case:Landroid/widget/ImageView;

    .line 2
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->else:Lcom/scwang/smartrefresh/header/internal/do;

    invoke-virtual {p2}, Lcom/scwang/smartrefresh/header/internal/do;->stop()V

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->new:Z

    const/4 p1, 0x0

    return p1
.end method

.method public onInitialized(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;II)V
    .locals 0
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshKernel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean p3, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->const:Z

    if-nez p3, :cond_0

    const/4 p3, 0x0

    .line 2
    invoke-interface {p1, p0, p3}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->requestDefaultTranslationContentFor(Lcom/scwang/smartrefresh/layout/api/RefreshInternal;Z)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->this:I

    iput p2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->goto:I

    :cond_1
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->case:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p5

    const/4 v0, 0x0

    if-eqz p5, :cond_1

    iget p5, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->this:I

    if-lez p5, :cond_1

    .line 7
    div-int/lit8 v1, p4, 0x2

    sub-int/2addr p5, v1

    .line 8
    div-int/lit8 p2, p2, 0x2

    div-int/lit8 p3, p3, 0x2

    sub-int v1, p2, p3

    add-int/2addr p2, p3

    add-int/2addr p4, p5

    invoke-virtual {p1, v1, p5, p2, p4}, Landroid/view/View;->layout(IIII)V

    .line 9
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->else:Lcom/scwang/smartrefresh/header/internal/do;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/scwang/smartrefresh/header/internal/do;->class(Z)V

    .line 10
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->else:Lcom/scwang/smartrefresh/header/internal/do;

    const/4 p3, 0x0

    const p4, 0x3f4ccccd    # 0.8f

    invoke-virtual {p2, p3, p4}, Lcom/scwang/smartrefresh/header/internal/do;->break(FF)V

    .line 11
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->else:Lcom/scwang/smartrefresh/header/internal/do;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p2, p3}, Lcom/scwang/smartrefresh/header/internal/do;->new(F)V

    .line 12
    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 14
    :cond_1
    div-int/lit8 p2, p2, 0x2

    div-int/lit8 p3, p3, 0x2

    sub-int p5, p2, p3

    neg-int p4, p4

    add-int/2addr p2, p3

    invoke-virtual {p1, p5, p4, p2, v0}, Landroid/view/View;->layout(IIII)V

    :goto_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->setMeasuredDimension(II)V

    .line 2
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->case:Landroid/widget/ImageView;

    .line 3
    iget p2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->try:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget v1, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->try:I

    .line 4
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 5
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public onMoving(ZFIII)V
    .locals 6

    .line 1
    iget-object p2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->class:Landroid/support/v4/qm1;

    sget-object p5, Landroid/support/v4/qm1;->Refreshing:Landroid/support/v4/qm1;

    if-ne p2, p5, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean p2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->const:Z

    if-eqz p2, :cond_1

    .line 3
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->this:I

    const/4 p2, 0x0

    sub-int v0, p3, p4

    .line 4
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->goto:I

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_1
    if-nez p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->else:Lcom/scwang/smartrefresh/header/internal/do;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/header/internal/do;->isRunning()Z

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->new:Z

    if-nez p1, :cond_4

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->class:Landroid/support/v4/qm1;

    const/high16 p2, 0x40800000    # 4.0f

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x40000000    # 2.0f

    if-eq p1, p5, :cond_3

    int-to-float p1, p3

    mul-float p1, p1, v0

    int-to-float p5, p4

    div-float/2addr p1, p5

    .line 8
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-double v2, p1

    const-wide v4, 0x3fd999999999999aL    # 0.4

    .line 9
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v4

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-float p1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    mul-float p1, p1, v2

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr p1, v2

    .line 10
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int/2addr v2, p4

    int-to-float p4, v2

    mul-float v2, p5, v1

    .line 11
    invoke-static {p4, v2}, Ljava/lang/Math;->min(FF)F

    move-result p4

    div-float/2addr p4, p5

    const/4 p5, 0x0

    invoke-static {p5, p4}, Ljava/lang/Math;->max(FF)F

    move-result p4

    div-float/2addr p4, p2

    float-to-double v2, p4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 12
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v4

    double-to-float p4, v2

    mul-float p4, p4, v1

    const v2, 0x3f4ccccd    # 0.8f

    mul-float v3, p1, v2

    .line 13
    iget-object v4, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->else:Lcom/scwang/smartrefresh/header/internal/do;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/scwang/smartrefresh/header/internal/do;->class(Z)V

    .line 14
    iget-object v4, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->else:Lcom/scwang/smartrefresh/header/internal/do;

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {v4, p5, v2}, Lcom/scwang/smartrefresh/header/internal/do;->break(FF)V

    .line 15
    iget-object p5, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->else:Lcom/scwang/smartrefresh/header/internal/do;

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {p5, v2}, Lcom/scwang/smartrefresh/header/internal/do;->new(F)V

    const/high16 p5, -0x41800000    # -0.25f

    const v2, 0x3ecccccd    # 0.4f

    mul-float p1, p1, v2

    add-float/2addr p1, p5

    mul-float p4, p4, v1

    add-float/2addr p1, p4

    const/high16 p4, 0x3f000000    # 0.5f

    mul-float p1, p1, p4

    .line 16
    iget-object p4, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->else:Lcom/scwang/smartrefresh/header/internal/do;

    invoke-virtual {p4, p1}, Lcom/scwang/smartrefresh/header/internal/do;->else(F)V

    .line 17
    :cond_3
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->case:Landroid/widget/ImageView;

    int-to-float p3, p3

    div-float p4, p3, v1

    .line 18
    iget p5, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->try:I

    int-to-float p5, p5

    div-float/2addr p5, v1

    add-float/2addr p4, p5

    .line 19
    invoke-static {p3, p4}, Ljava/lang/Math;->min(FF)F

    move-result p4

    invoke-virtual {p1, p4}, Landroid/view/View;->setTranslationY(F)V

    mul-float p3, p3, p2

    .line 20
    iget p2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->try:I

    int-to-float p2, p2

    div-float/2addr p3, p2

    invoke-static {v0, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    return-void
.end method

.method public onReleased(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;II)V
    .locals 0
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->else:Lcom/scwang/smartrefresh/header/internal/do;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/header/internal/do;->start()V

    return-void
.end method

.method public onStateChanged(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Landroid/support/v4/qm1;Landroid/support/v4/qm1;)V
    .locals 0
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
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->case:Landroid/widget/ImageView;

    .line 2
    iput-object p3, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->class:Landroid/support/v4/qm1;

    .line 3
    sget-object p2, Lcom/scwang/smartrefresh/header/MaterialHeader$do;->do:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/4 p3, 0x2

    if-eq p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->new:Z

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

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
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->catch:Landroid/graphics/Paint;

    const/4 v1, 0x0

    aget p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setProgressBackgroundColorSchemeColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->case:Landroid/widget/ImageView;

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->else:Lcom/scwang/smartrefresh/header/internal/do;

    invoke-virtual {v0, p1}, Lcom/scwang/smartrefresh/header/internal/do;->try(I)V

    return-void
.end method

.method public setProgressBackgroundColorSchemeResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/scwang/smartrefresh/header/MaterialHeader;->setProgressBackgroundColorSchemeColor(I)V

    return-void
.end method

.method public sethScrollableWhenRefreshing(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/MaterialHeader;->final:Z

    return-void
.end method
