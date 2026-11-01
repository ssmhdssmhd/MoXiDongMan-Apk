.class public Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;
.super Landroid/support/v4/o12;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;
    }
.end annotation


# static fields
.field private static final return:J = 0x10L

.field private static final static:I = 0xfa


# instance fields
.field private break:I

.field private case:Landroid/view/animation/Interpolator;

.field private catch:F

.field private class:F

.field private const:I

.field private else:J

.field private final:I

.field private goto:Z

.field public import:Landroid/graphics/Matrix;

.field private native:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

.field private final public:Ljava/lang/Runnable;

.field private super:I

.field private this:Z

.field public throw:Landroid/graphics/Path;

.field private try:F

.field public while:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/res/ColorStateList;I)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/o12;-><init>(Landroid/content/res/ColorStateList;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->try:F

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->goto:Z

    .line 4
    iput-boolean v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->this:Z

    const/16 v0, 0xfa

    .line 5
    iput v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->break:I

    .line 6
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->throw:Landroid/graphics/Path;

    .line 7
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->while:Landroid/graphics/RectF;

    .line 8
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->import:Landroid/graphics/Matrix;

    .line 9
    new-instance v0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$do;

    invoke-direct {v0, p0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$do;-><init>(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;)V

    iput-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->public:Ljava/lang/Runnable;

    .line 10
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->case:Landroid/view/animation/Interpolator;

    int-to-float p2, p2

    .line 11
    iput p2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->catch:F

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 12
    fill-array-data p2, :array_0

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p2

    iput p2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->final:I

    .line 13
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    iput p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->super:I

    return-void

    :array_0
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method

.method public static synthetic break(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->this:Z

    return p1
.end method

.method public static synthetic case(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->break:I

    return p0
.end method

.method public static synthetic catch(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->while()V

    return-void
.end method

.method public static synthetic else(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->case:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method private static final(IIF)I
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 1
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p2

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    .line 2
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    add-float/2addr v2, v3

    .line 3
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v0

    add-float/2addr v3, v4

    .line 4
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float p0, p0, p2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, v0

    add-float/2addr p0, p1

    float-to-int p1, v1

    float-to-int p2, v2

    float-to-int v0, v3

    float-to-int p0, p0

    .line 5
    invoke-static {p1, p2, v0, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static synthetic goto(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->public:Ljava/lang/Runnable;

    return-object p0
.end method

.method private return(F)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->class:F

    .line 2
    iget-boolean v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->goto:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    sub-float/2addr v1, v0

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    .line 3
    iput v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->try:F

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->super(Landroid/graphics/Rect;)V

    .line 5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private super(Landroid/graphics/Rect;)V
    .locals 12

    .line 1
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->try:F

    .line 2
    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->throw:Landroid/graphics/Path;

    .line 3
    iget-object v2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->while:Landroid/graphics/RectF;

    .line 4
    iget-object v3, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->import:Landroid/graphics/Matrix;

    .line 5
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 7
    iget v5, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->catch:F

    int-to-float v4, v4

    sub-float/2addr v4, v5

    mul-float v4, v4, v0

    add-float/2addr v5, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v6, v5, v4

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v0

    mul-float v0, v6, v7

    const/16 v8, 0x8

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput v6, v8, v9

    const/4 v9, 0x1

    aput v6, v8, v9

    const/4 v9, 0x2

    aput v6, v8, v9

    const/4 v9, 0x3

    aput v6, v8, v9

    const/4 v9, 0x4

    aput v6, v8, v9

    const/4 v9, 0x5

    aput v6, v8, v9

    const/4 v9, 0x6

    aput v0, v8, v9

    const/4 v9, 0x7

    aput v0, v8, v9

    .line 8
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v9, v0

    iget v10, p1, Landroid/graphics/Rect;->top:I

    int-to-float v11, v10

    int-to-float v0, v0

    add-float/2addr v0, v5

    int-to-float v10, v10

    add-float/2addr v10, v5

    invoke-virtual {v2, v9, v11, v0, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 9
    sget-object v0, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v8, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 10
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 11
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    add-float/2addr v0, v6

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr v2, v6

    const/high16 v6, -0x3dcc0000    # -45.0f

    invoke-virtual {v3, v6, v0, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 12
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v5

    div-float/2addr v0, v4

    const/4 v2, 0x0

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 13
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    sub-float/2addr p1, v5

    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->const:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    mul-float p1, p1, v7

    .line 14
    invoke-virtual {v3, v2, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 15
    invoke-virtual {v1, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public static synthetic this(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->return(F)V

    return-void
.end method

.method public static synthetic try(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->else:J

    return-wide v0
.end method

.method private while()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->native:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->goto:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;->onClosingComplete()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;->onOpeningComplete()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public class()V
    .locals 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->goto:Z

    .line 2
    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->public:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 3
    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->try:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 4
    iput-boolean v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->this:Z

    .line 5
    iput v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->class:F

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    const/high16 v1, 0x437a0000    # 250.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    rsub-int v0, v0, 0xfa

    .line 6
    iput v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->break:I

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->else:J

    .line 8
    iget-object v2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->public:Ljava/lang/Runnable;

    const-wide/16 v3, 0x10

    add-long/2addr v0, v3

    invoke-virtual {p0, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->while()V

    :goto_0
    return-void
.end method

.method public const()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->public:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->goto:Z

    .line 3
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->try:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    const/4 v2, 0x1

    .line 4
    iput-boolean v2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->this:Z

    .line 5
    iput v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->class:F

    sub-float/2addr v1, v0

    const/high16 v0, 0x437a0000    # 250.0f

    mul-float v1, v1, v0

    float-to-int v0, v1

    .line 6
    iput v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->break:I

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->else:J

    .line 8
    iget-object v2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->public:Ljava/lang/Runnable;

    const-wide/16 v3, 0x10

    add-long/2addr v0, v3

    invoke-virtual {p0, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->while()V

    :goto_0
    return-void
.end method

.method public do(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->throw:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->final:I

    iget v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->super:I

    iget v2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->try:F

    invoke-static {v0, v1, v2}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->final(IIF)I

    move-result v0

    .line 4
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->throw:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public import(II)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->final:I

    .line 2
    iput p2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->super:I

    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->this:Z

    return v0
.end method

.method public native(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->const:I

    return-void
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 2
    invoke-direct {p0, p1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->super(Landroid/graphics/Rect;)V

    return-void
.end method

.method public public(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->native:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->public:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method

.method public throw()Landroid/graphics/Path;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable;->throw:Landroid/graphics/Path;

    return-object v0
.end method
