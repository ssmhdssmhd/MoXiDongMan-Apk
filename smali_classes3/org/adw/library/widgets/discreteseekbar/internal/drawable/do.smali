.class public Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;
.super Landroid/support/v4/o12;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field private static final import:J = 0x10L

.field private static final native:I = 0xfa

.field private static final public:F = 0.0f

.field private static final return:F = 1.0f


# instance fields
.field private break:I

.field private case:Landroid/view/animation/Interpolator;

.field private catch:F

.field private class:I

.field private const:I

.field private else:J

.field private final:I

.field private goto:Z

.field private super:I

.field private this:Z

.field private throw:I

.field private try:F

.field private final while:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/o12;-><init>(Landroid/content/res/ColorStateList;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->try:F

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->goto:Z

    .line 4
    iput-boolean v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->this:Z

    const/16 v0, 0xfa

    .line 5
    iput v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->break:I

    .line 6
    new-instance v0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do$do;

    invoke-direct {v0, p0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do$do;-><init>(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;)V

    iput-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->while:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->case:Landroid/view/animation/Interpolator;

    .line 8
    invoke-virtual {p0, p1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->super(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static synthetic break(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->this:Z

    return p1
.end method

.method public static synthetic case(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->break:I

    return p0
.end method

.method private const(I)I
    .locals 0

    mul-int/lit8 p1, p1, 0x64

    shr-int/lit8 p1, p1, 0x8

    return p1
.end method

.method public static synthetic else(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->case:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method private static final(II)I
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    shr-int/lit8 v1, p0, 0x7

    add-int/2addr p0, v1

    mul-int v0, v0, p0

    shr-int/lit8 p0, v0, 0x8

    .line 2
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {p0, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static synthetic goto(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->while:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic this(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->throw(F)V

    return-void
.end method

.method private throw(F)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->catch:F

    .line 2
    iget-boolean v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->goto:Z

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
    iput v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->try:F

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public static synthetic try(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->else:J

    return-wide v0
.end method


# virtual methods
.method public catch()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->while:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 2
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->try:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->goto:Z

    .line 4
    iput-boolean v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->this:Z

    .line 5
    iput v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->catch:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    const/high16 v2, -0x40800000    # -1.0f

    div-float/2addr v0, v2

    sub-float/2addr v1, v0

    const/high16 v0, 0x437a0000    # 250.0f

    mul-float v1, v1, v0

    float-to-int v0, v1

    .line 6
    iput v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->break:I

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->else:J

    .line 8
    iget-object v2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->while:Ljava/lang/Runnable;

    const-wide/16 v3, 0x10

    add-long/2addr v0, v3

    invoke-virtual {p0, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public class()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->while:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 2
    iget v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->try:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    const/4 v2, 0x0

    .line 3
    iput-boolean v2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->goto:Z

    const/4 v2, 0x1

    .line 4
    iput-boolean v2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->this:Z

    .line 5
    iput v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->catch:F

    const/4 v2, 0x0

    sub-float/2addr v0, v2

    div-float/2addr v0, v1

    sub-float/2addr v1, v0

    const/high16 v0, 0x437a0000    # 250.0f

    mul-float v1, v1, v0

    float-to-int v0, v1

    .line 6
    iput v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->break:I

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->else:J

    .line 8
    iget-object v2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->while:Ljava/lang/Runnable;

    const-wide/16 v3, 0x10

    add-long/2addr v0, v3

    invoke-virtual {p0, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public do(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3
    iget v2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->try:F

    .line 4
    iget v3, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->super:I

    .line 5
    iget v4, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->throw:I

    .line 6
    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    mul-float v5, v1, v2

    const/4 v6, 0x0

    cmpl-float v2, v2, v6

    if-lez v2, :cond_1

    if-eqz v4, :cond_0

    .line 7
    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-direct {p0, v2}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->const(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 9
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v2, v4, v1, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_0
    if-eqz v3, :cond_1

    .line 10
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v4/o12;->if(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 12
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0, v5, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->this:Z

    return v0
.end method

.method public setState([I)Z
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const v5, 0x10100a7

    const/4 v6, 0x1

    if-ge v3, v1, :cond_1

    aget v7, v0, v3

    if-ne v7, v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/o12;->setState([I)Z

    .line 4
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v1, v0, :cond_5

    aget v9, p1, v1

    const v10, 0x101009c

    if-ne v9, v10, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    if-ne v9, v5, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const v10, 0x101009e

    if-ne v9, v10, :cond_4

    const/4 v3, 0x0

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_6

    .line 5
    iget-object p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->while:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 6
    iget p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->final:I

    iput p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->super:I

    .line 7
    iput v2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->throw:I

    const/high16 p1, 0x3f000000    # 0.5f

    .line 8
    iput p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->try:F

    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_3

    :cond_6
    if-eqz v7, :cond_7

    .line 10
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->class()V

    .line 11
    iget p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->class:I

    iput p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->throw:I

    iput p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->super:I

    goto :goto_3

    :cond_7
    if-eqz v4, :cond_8

    .line 12
    iget p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->class:I

    iput p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->throw:I

    iput p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->super:I

    .line 13
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->catch()V

    goto :goto_3

    :cond_8
    if-eqz v8, :cond_9

    .line 14
    iget p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->const:I

    iput p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->super:I

    .line 15
    iput v2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->throw:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 16
    iput p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->try:F

    .line 17
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_3

    .line 18
    :cond_9
    iput v2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->super:I

    .line 19
    iput v2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->throw:I

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->try:F

    .line 21
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_3
    return v6
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public stop()V
    .locals 0

    return-void
.end method

.method public super(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 2
    fill-array-data v2, :array_0

    invoke-virtual {p1, v2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iput v2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->const:I

    new-array v1, v1, [I

    .line 3
    fill-array-data v1, :array_1

    invoke-virtual {p1, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->class:I

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, -0x101009e

    aput v3, v1, v2

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iput p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->final:I

    .line 5
    iget p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->const:I

    const/16 v0, 0x82

    invoke-static {v0, p1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->final(II)I

    move-result p1

    iput p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->const:I

    .line 6
    iget p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->class:I

    invoke-static {v0, p1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->final(II)I

    move-result p1

    iput p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->class:I

    .line 7
    iget p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->final:I

    invoke-static {v0, p1}, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->final(II)I

    move-result p1

    iput p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/drawable/do;->final:I

    return-void

    nop

    :array_0
    .array-data 4
        0x101009e
        0x101009c
    .end array-data

    :array_1
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method
