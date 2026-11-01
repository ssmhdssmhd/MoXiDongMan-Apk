.class public Lcom/scwang/smartrefresh/header/waveswipe/WaveView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# static fields
.field public static final abstract:[[F

.field public static final default:I = 0x3e8

.field public static final extends:F = 0.2f

.field public static final finally:I = -0x67000000

.field public static final package:[[F

.field public static final private:[[F

.field public static final return:J = 0x1f4L

.field public static final static:J = 0x1f4L

.field public static final switch:J = 0x1f4L

.field public static final throws:I = 0xc8


# instance fields
.field public break:I

.field public case:Landroid/graphics/Path;

.field public catch:Z

.field public class:Z

.field public const:I

.field public do:F

.field public else:Landroid/graphics/RectF;

.field public final:Landroid/animation/ValueAnimator;

.field public for:Landroid/graphics/Path;

.field public goto:I

.field public if:Landroid/graphics/Paint;

.field public import:Landroid/animation/ValueAnimator;

.field public native:Landroid/animation/ValueAnimator;

.field public new:Landroid/graphics/Path;

.field public public:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field public super:Landroid/animation/ValueAnimator;

.field public this:F

.field public throw:Landroid/animation/ValueAnimator;

.field public try:Landroid/graphics/Path;

.field public while:Landroid/animation/ValueAnimator;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x6

    new-array v1, v0, [[F

    const/4 v2, 0x2

    new-array v3, v2, [F

    .line 1
    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [F

    fill-array-data v3, :array_1

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v3, v2, [F

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    new-array v3, v2, [F

    fill-array-data v3, :array_3

    const/4 v6, 0x3

    aput-object v3, v1, v6

    new-array v3, v2, [F

    fill-array-data v3, :array_4

    const/4 v7, 0x4

    aput-object v3, v1, v7

    new-array v3, v2, [F

    fill-array-data v3, :array_5

    const/4 v8, 0x5

    aput-object v3, v1, v8

    sput-object v1, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->package:[[F

    new-array v1, v0, [[F

    new-array v3, v2, [F

    .line 2
    fill-array-data v3, :array_6

    aput-object v3, v1, v4

    new-array v3, v2, [F

    fill-array-data v3, :array_7

    aput-object v3, v1, v5

    new-array v3, v2, [F

    fill-array-data v3, :array_8

    aput-object v3, v1, v2

    new-array v3, v2, [F

    fill-array-data v3, :array_9

    aput-object v3, v1, v6

    new-array v3, v2, [F

    fill-array-data v3, :array_a

    aput-object v3, v1, v7

    new-array v3, v2, [F

    fill-array-data v3, :array_b

    aput-object v3, v1, v8

    sput-object v1, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->private:[[F

    new-array v0, v0, [[F

    new-array v1, v2, [F

    .line 3
    fill-array-data v1, :array_c

    aput-object v1, v0, v4

    new-array v1, v2, [F

    fill-array-data v1, :array_d

    aput-object v1, v0, v5

    new-array v1, v2, [F

    fill-array-data v1, :array_e

    aput-object v1, v0, v2

    new-array v1, v2, [F

    fill-array-data v1, :array_f

    aput-object v1, v0, v6

    new-array v1, v2, [F

    fill-array-data v1, :array_10

    aput-object v1, v0, v7

    new-array v1, v2, [F

    fill-array-data v1, :array_11

    aput-object v1, v0, v8

    sput-object v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->abstract:[[F

    return-void

    :array_0
    .array-data 4
        0x3e2978d5    # 0.1655f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3ed66cf4    # 0.4188f
        -0x43cd6a16    # -0.0109f
    .end array-data

    :array_2
    .array-data 4
        0x3eebd3c3    # 0.4606f
        -0x445f6fd2    # -0.0049f
    .end array-data

    :array_3
    .array-data 4
        0x3efa8588    # 0.4893f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x3efa8588    # 0.4893f
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x3f000000    # 0.5f
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x3e2978d5    # 0.1655f
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x3f061134    # 0.5237f
        0x3d628241    # 0.0553f
    .end array-data

    :array_8
    .array-data 4
        0x3ee95183    # 0.4557f
        0x3dbfb15b    # 0.0936f
    .end array-data

    :array_9
    .array-data 4
        0x3ec816f0    # 0.3908f
        0x3e055326    # 0.1302f
    .end array-data

    :array_a
    .array-data 4
        0x3edc5048    # 0.4303f
        0x3e5e83e4    # 0.2173f
    .end array-data

    :array_b
    .array-data 4
        0x3f000000    # 0.5f
        0x3e5e83e4    # 0.2173f
    .end array-data

    :array_c
    .array-data 4
        0x3e2978d5    # 0.1655f
        0x0
    .end array-data

    :array_d
    .array-data 4
        0x3f174539    # 0.5909f
        0x0
    .end array-data

    :array_e
    .array-data 4
        0x3ee95183    # 0.4557f
        0x3e28240b    # 0.1642f
    .end array-data

    :array_f
    .array-data 4
        0x3ec9c77a    # 0.3941f
        0x3e530be1    # 0.2061f
    .end array-data

    :array_10
    .array-data 4
        0x3edc5048    # 0.4303f
        0x3e93eab3    # 0.2889f
    .end array-data

    :array_11
    .array-data 4
        0x3f000000    # 0.5f
        0x3e93eab3    # 0.2889f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x42c80000    # 100.0f

    .line 2
    iput p1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->do:F

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->catch:Z

    .line 4
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->class:Z

    .line 5
    new-instance p1, Lcom/scwang/smartrefresh/header/waveswipe/WaveView$do;

    invoke-direct {p1, p0}, Lcom/scwang/smartrefresh/header/waveswipe/WaveView$do;-><init>(Lcom/scwang/smartrefresh/header/waveswipe/WaveView;)V

    iput-object p1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->public:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 7
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->if:Landroid/graphics/Paint;

    const v1, -0xde690d

    .line 8
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->if:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 10
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->if:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 11
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->if:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    mul-float p1, p1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr p1, v2

    float-to-int p1, p1

    int-to-float p1, p1

    const/4 v2, 0x0

    const/high16 v3, -0x67000000

    invoke-virtual {v0, p1, v2, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 12
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->for:Landroid/graphics/Path;

    .line 13
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->new:Landroid/graphics/Path;

    .line 14
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->try:Landroid/graphics/Path;

    .line 15
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->case:Landroid/graphics/Path;

    .line 16
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->else()V

    .line 17
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->else:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0, v1, p1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method


# virtual methods
.method public break()V
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->import:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1

    .line 2
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->import:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    new-array v1, v0, [F

    .line 4
    iget v2, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v2, v2

    const/high16 v3, 0x44b40000    # 1440.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x43fa0000    # 500.0f

    mul-float v2, v2, v3

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->break:I

    int-to-float v2, v2

    const/4 v4, 0x1

    aput v2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->while:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x1f4

    .line 5
    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->while:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/scwang/smartrefresh/header/waveswipe/WaveView$if;

    invoke-direct {v2, p0}, Lcom/scwang/smartrefresh/header/waveswipe/WaveView$if;-><init>(Lcom/scwang/smartrefresh/header/waveswipe/WaveView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 7
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->while:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->while:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    new-array v1, v0, [F

    const/4 v2, 0x0

    aput v2, v1, v3

    .line 9
    iget v2, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->break:I

    int-to-float v2, v2

    iget v3, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->do:F

    sub-float/2addr v2, v3

    aput v2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->final:Landroid/animation/ValueAnimator;

    .line 10
    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 11
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->final:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->public:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 12
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->final:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    new-array v1, v0, [F

    .line 13
    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->super:Landroid/animation/ValueAnimator;

    .line 14
    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 15
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->super:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->public:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 16
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->super:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/support/v4/j30;

    invoke-direct {v2}, Landroid/support/v4/j30;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 17
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->super:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 18
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->super:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    new-array v0, v0, [F

    .line 19
    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->throw:Landroid/animation/ValueAnimator;

    .line 20
    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 21
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->throw:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->public:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 22
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->throw:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/support/v4/j30;

    invoke-direct {v1}, Landroid/support/v4/j30;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 23
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->throw:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x271

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 24
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->throw:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public case()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->native:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->native:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public catch(F)V
    .locals 2

    const v0, 0x3e4ccccd    # 0.2f

    .line 1
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v0, v0

    mul-float p1, p1, v0

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 2
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->native:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x3e8

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->native:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView$new;

    invoke-direct {v0, p0}, Lcom/scwang/smartrefresh/header/waveswipe/WaveView$new;-><init>(Lcom/scwang/smartrefresh/header/waveswipe/WaveView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->native:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    iget-object p1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->native:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public class(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v0, v0

    const/high16 v1, 0x44b40000    # 1440.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x43fa0000    # 500.0f

    mul-float v0, v0, v1

    int-to-float p1, p1

    cmpl-float v0, v0, p1

    if-lez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->do:F

    sub-float/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->break:I

    .line 3
    iget-boolean p1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->catch:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->catch:Z

    .line 5
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->try()V

    :cond_1
    return-void
.end method

.method public do()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->import:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->break()V

    const v0, 0x3dcccccd    # 0.1f

    .line 3
    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->catch(F)V

    return-void
.end method

.method public else()V
    .locals 3

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->final:Landroid/animation/ValueAnimator;

    new-array v1, v0, [F

    .line 2
    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->super:Landroid/animation/ValueAnimator;

    new-array v1, v0, [F

    .line 3
    fill-array-data v1, :array_2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->throw:Landroid/animation/ValueAnimator;

    new-array v1, v0, [F

    .line 4
    fill-array-data v1, :array_3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->while:Landroid/animation/ValueAnimator;

    .line 5
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    new-array v0, v0, [F

    .line 6
    fill-array-data v0, :array_4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->import:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 8
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->import:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        -0x3b860000    # -1000.0f
        -0x3b860000    # -1000.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public for(F)V
    .locals 28

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->case()V

    .line 2
    iget-object v1, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->for:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3
    iget-object v3, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->for:Landroid/graphics/Path;

    iget v1, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v2, v1

    sget-object v10, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->package:[[F

    const/4 v11, 0x0

    aget-object v4, v10, v11

    aget v4, v4, v11

    mul-float v4, v4, v2

    aget-object v2, v10, v11

    const/4 v12, 0x1

    aget v5, v2, v12

    int-to-float v2, v1

    aget-object v6, v10, v12

    aget v6, v6, v11

    mul-float v6, v6, v2

    int-to-float v2, v1

    aget-object v7, v10, v12

    aget v7, v7, v12

    add-float v7, v7, p1

    mul-float v7, v7, v2

    int-to-float v2, v1

    const/4 v13, 0x2

    aget-object v8, v10, v13

    aget v8, v8, v11

    mul-float v8, v8, v2

    int-to-float v1, v1

    aget-object v2, v10, v13

    aget v2, v2, v12

    add-float v2, v2, p1

    mul-float v9, v1, v2

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 4
    iget-object v14, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->for:Landroid/graphics/Path;

    iget v1, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v2, v1

    const/4 v3, 0x3

    aget-object v4, v10, v3

    aget v4, v4, v11

    mul-float v15, v2, v4

    int-to-float v2, v1

    aget-object v4, v10, v3

    aget v4, v4, v12

    add-float v4, v4, p1

    mul-float v16, v2, v4

    int-to-float v2, v1

    const/4 v4, 0x4

    aget-object v5, v10, v4

    aget v5, v5, v11

    mul-float v17, v2, v5

    int-to-float v2, v1

    aget-object v5, v10, v4

    aget v5, v5, v12

    add-float v5, v5, p1

    mul-float v18, v2, v5

    int-to-float v2, v1

    const/4 v5, 0x5

    aget-object v6, v10, v5

    aget v6, v6, v11

    mul-float v19, v2, v6

    int-to-float v1, v1

    aget-object v2, v10, v5

    aget v2, v2, v12

    add-float v2, v2, p1

    mul-float v20, v1, v2

    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 5
    iget-object v1, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->for:Landroid/graphics/Path;

    iget v2, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v5, v2

    int-to-float v6, v2

    aget-object v7, v10, v4

    aget v7, v7, v11

    mul-float v6, v6, v7

    sub-float v22, v5, v6

    int-to-float v5, v2

    aget-object v4, v10, v4

    aget v4, v4, v12

    add-float v4, v4, p1

    mul-float v23, v5, v4

    int-to-float v4, v2

    int-to-float v5, v2

    aget-object v6, v10, v3

    aget v6, v6, v11

    mul-float v5, v5, v6

    sub-float v24, v4, v5

    int-to-float v4, v2

    aget-object v3, v10, v3

    aget v3, v3, v12

    add-float v3, v3, p1

    mul-float v25, v4, v3

    int-to-float v3, v2

    int-to-float v4, v2

    aget-object v5, v10, v13

    aget v5, v5, v11

    mul-float v4, v4, v5

    sub-float v26, v3, v4

    int-to-float v2, v2

    aget-object v3, v10, v13

    aget v3, v3, v12

    add-float v3, v3, p1

    mul-float v27, v2, v3

    move-object/from16 v21, v1

    invoke-virtual/range {v21 .. v27}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 6
    iget-object v2, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->for:Landroid/graphics/Path;

    iget v1, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v3, v1

    int-to-float v4, v1

    aget-object v5, v10, v12

    aget v5, v5, v11

    mul-float v4, v4, v5

    sub-float/2addr v3, v4

    int-to-float v4, v1

    aget-object v5, v10, v12

    aget v5, v5, v12

    add-float v5, v5, p1

    mul-float v4, v4, v5

    int-to-float v5, v1

    int-to-float v6, v1

    aget-object v7, v10, v11

    aget v7, v7, v11

    mul-float v6, v6, v7

    sub-float/2addr v5, v6

    aget-object v6, v10, v11

    aget v6, v6, v12

    int-to-float v7, v1

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :goto_0
    return-void
.end method

.method public getCurrentCircleCenterY()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->this:F

    return v0
.end method

.method public goto(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->if:Landroid/graphics/Paint;

    int-to-float p1, p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, p2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method

.method public if(FF)V
    .locals 28

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->case()V

    .line 2
    iget-object v1, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->for:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3
    iget-object v3, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->for:Landroid/graphics/Path;

    iget v1, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v2, v1

    sget-object v10, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->private:[[F

    const/4 v11, 0x0

    aget-object v4, v10, v11

    aget v4, v4, v11

    mul-float v4, v4, v2

    int-to-float v2, v1

    aget-object v5, v10, v11

    const/4 v12, 0x1

    aget v5, v5, v12

    mul-float v5, v5, v2

    int-to-float v1, v1

    sget-object v2, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->package:[[F

    aget-object v6, v2, v12

    aget v6, v6, v11

    add-float v6, v6, p2

    aget-object v7, v10, v12

    aget v7, v7, v11

    .line 4
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    mul-float v6, v6, v1

    iget v1, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v1, v1

    aget-object v7, v2, v12

    aget v7, v7, v12

    add-float v7, v7, p1

    sub-float v7, v7, p2

    aget-object v8, v10, v12

    aget v8, v8, v12

    .line 5
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    mul-float v7, v7, v1

    iget v1, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v1, v1

    const/4 v13, 0x2

    aget-object v8, v2, v13

    aget v8, v8, v11

    sub-float v8, v8, p2

    aget-object v9, v10, v13

    aget v9, v9, v11

    .line 6
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    mul-float v8, v8, v1

    iget v1, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v1, v1

    aget-object v9, v2, v13

    aget v9, v9, v12

    add-float v9, v9, p1

    sub-float v9, v9, p2

    aget-object v14, v10, v13

    aget v14, v14, v12

    .line 7
    invoke-static {v9, v14}, Ljava/lang/Math;->max(FF)F

    move-result v9

    mul-float v9, v9, v1

    .line 8
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 9
    iget-object v14, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->for:Landroid/graphics/Path;

    iget v1, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v1, v1

    const/4 v3, 0x3

    aget-object v4, v2, v3

    aget v4, v4, v11

    sub-float v4, v4, p2

    aget-object v5, v10, v3

    aget v5, v5, v11

    .line 10
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float v15, v1, v4

    iget v1, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v1, v1

    aget-object v4, v2, v3

    aget v4, v4, v12

    add-float v4, v4, p1

    add-float v4, v4, p2

    aget-object v5, v10, v3

    aget v5, v5, v12

    .line 11
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float v16, v1, v4

    iget v1, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v1, v1

    const/4 v4, 0x4

    aget-object v5, v2, v4

    aget v5, v5, v11

    sub-float v5, v5, p2

    aget-object v6, v10, v4

    aget v6, v6, v11

    .line 12
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    mul-float v17, v1, v5

    iget v1, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v1, v1

    aget-object v5, v2, v4

    aget v5, v5, v12

    add-float v5, v5, p1

    add-float v5, v5, p2

    aget-object v6, v10, v4

    aget v6, v6, v12

    .line 13
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    mul-float v18, v1, v5

    iget v1, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v5, v1

    const/4 v6, 0x5

    aget-object v7, v10, v6

    aget v7, v7, v11

    mul-float v19, v5, v7

    int-to-float v1, v1

    aget-object v5, v2, v11

    aget v5, v5, v12

    add-float v5, v5, p1

    add-float v5, v5, p2

    aget-object v6, v10, v6

    aget v6, v6, v12

    .line 14
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    mul-float v20, v1, v5

    .line 15
    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 16
    iget-object v1, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->for:Landroid/graphics/Path;

    iget v5, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v6, v5

    int-to-float v5, v5

    aget-object v7, v2, v4

    aget v7, v7, v11

    sub-float v7, v7, p2

    aget-object v8, v10, v4

    aget v8, v8, v11

    .line 17
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    mul-float v5, v5, v7

    sub-float v22, v6, v5

    iget v5, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v5, v5

    aget-object v6, v2, v4

    aget v6, v6, v12

    add-float v6, v6, p1

    add-float v6, v6, p2

    aget-object v4, v10, v4

    aget v4, v4, v12

    .line 18
    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float v23, v5, v4

    iget v4, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v5, v4

    int-to-float v4, v4

    aget-object v6, v2, v3

    aget v6, v6, v11

    sub-float v6, v6, p2

    aget-object v7, v10, v3

    aget v7, v7, v11

    .line 19
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    mul-float v4, v4, v6

    sub-float v24, v5, v4

    iget v4, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v4, v4

    aget-object v5, v2, v3

    aget v5, v5, v12

    add-float v5, v5, p1

    add-float v5, v5, p2

    aget-object v6, v10, v3

    aget v6, v6, v12

    .line 20
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    mul-float v25, v4, v5

    iget v4, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v5, v4

    int-to-float v4, v4

    aget-object v6, v2, v13

    aget v6, v6, v11

    sub-float v6, v6, p2

    aget-object v7, v10, v13

    aget v7, v7, v11

    .line 21
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    mul-float v4, v4, v6

    sub-float v26, v5, v4

    iget v4, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v4, v4

    aget-object v5, v2, v13

    aget v5, v5, v12

    add-float v5, v5, p1

    sub-float v5, v5, p2

    aget-object v6, v10, v13

    aget v6, v6, v12

    .line 22
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    mul-float v27, v4, v5

    move-object/from16 v21, v1

    .line 23
    invoke-virtual/range {v21 .. v27}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 24
    iget-object v13, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->for:Landroid/graphics/Path;

    iget v1, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v4, v1

    int-to-float v1, v1

    aget-object v5, v2, v12

    aget v5, v5, v11

    add-float v5, v5, p2

    aget-object v6, v10, v12

    aget v6, v6, v11

    .line 25
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    mul-float v1, v1, v5

    sub-float v14, v4, v1

    iget v1, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v1, v1

    aget-object v4, v2, v12

    aget v4, v4, v12

    add-float v4, v4, p1

    sub-float v4, v4, p2

    aget-object v5, v10, v12

    aget v5, v5, v12

    .line 26
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float v15, v1, v4

    iget v1, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v4, v1

    int-to-float v5, v1

    aget-object v6, v10, v11

    aget v6, v6, v11

    mul-float v5, v5, v6

    sub-float v16, v4, v5

    int-to-float v4, v1

    aget-object v5, v10, v11

    aget v5, v5, v12

    mul-float v17, v4, v5

    int-to-float v1, v1

    const/16 v19, 0x0

    move/from16 v18, v1

    .line 27
    invoke-virtual/range {v13 .. v19}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 28
    iget v1, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v1, v1

    aget-object v2, v2, v3

    aget v2, v2, v12

    add-float v2, v2, p1

    add-float v2, v2, p2

    aget-object v3, v10, v3

    aget v3, v3, v12

    .line 29
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float v1, v1, v2

    iget v2, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->do:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->this:F

    .line 30
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 31
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :goto_0
    return-void
.end method

.method public new(FFF)V
    .locals 29

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->case()V

    .line 2
    iget-object v1, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->for:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3
    iget-object v3, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->for:Landroid/graphics/Path;

    iget v1, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v2, v1

    sget-object v10, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->abstract:[[F

    const/4 v11, 0x0

    aget-object v4, v10, v11

    aget v4, v4, v11

    mul-float v4, v4, v2

    int-to-float v2, v1

    aget-object v5, v10, v11

    const/4 v12, 0x1

    aget v5, v5, v12

    mul-float v5, v5, v2

    int-to-float v1, v1

    sget-object v2, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->package:[[F

    aget-object v6, v2, v12

    aget v6, v6, v11

    add-float v6, v6, p2

    sget-object v13, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->private:[[F

    aget-object v7, v13, v12

    aget v7, v7, v11

    .line 4
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    add-float v6, v6, p3

    aget-object v7, v10, v12

    aget v7, v7, v11

    .line 5
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    mul-float v6, v6, v1

    iget v1, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v1, v1

    aget-object v7, v2, v12

    aget v7, v7, v12

    add-float v7, v7, p1

    sub-float v7, v7, p2

    aget-object v8, v13, v12

    aget v8, v8, v12

    .line 6
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    sub-float v7, v7, p3

    aget-object v8, v10, v12

    aget v8, v8, v12

    .line 7
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    mul-float v7, v7, v1

    iget v1, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v1, v1

    const/4 v14, 0x2

    aget-object v8, v2, v14

    aget v8, v8, v11

    sub-float v8, v8, p2

    aget-object v9, v10, v14

    aget v9, v9, v11

    .line 8
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    mul-float v8, v8, v1

    iget v1, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v1, v1

    aget-object v9, v2, v14

    aget v9, v9, v12

    add-float v9, v9, p1

    sub-float v9, v9, p2

    aget-object v15, v13, v14

    aget v15, v15, v12

    .line 9
    invoke-static {v9, v15}, Ljava/lang/Math;->max(FF)F

    move-result v9

    add-float v9, v9, p3

    aget-object v15, v10, v14

    aget v15, v15, v12

    .line 10
    invoke-static {v9, v15}, Ljava/lang/Math;->min(FF)F

    move-result v9

    mul-float v9, v9, v1

    .line 11
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 12
    iget-object v15, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->for:Landroid/graphics/Path;

    iget v1, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v1, v1

    const/4 v3, 0x3

    aget-object v4, v2, v3

    aget v4, v4, v11

    sub-float v4, v4, p2

    aget-object v5, v13, v3

    aget v5, v5, v11

    .line 13
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    add-float v4, v4, p3

    aget-object v5, v10, v3

    aget v5, v5, v11

    .line 14
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float v16, v1, v4

    iget v1, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v1, v1

    aget-object v4, v2, v3

    aget v4, v4, v12

    add-float v4, v4, p1

    add-float v4, v4, p2

    aget-object v5, v13, v3

    aget v5, v5, v12

    .line 15
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    add-float v4, v4, p3

    aget-object v5, v10, v3

    aget v5, v5, v12

    .line 16
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float v17, v1, v4

    iget v1, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v1, v1

    const/4 v4, 0x4

    aget-object v5, v2, v4

    aget v5, v5, v11

    sub-float v5, v5, p2

    aget-object v6, v10, v4

    aget v6, v6, v11

    .line 17
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    mul-float v18, v1, v5

    iget v1, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v1, v1

    aget-object v5, v2, v4

    aget v5, v5, v12

    add-float v5, v5, p1

    add-float v5, v5, p2

    aget-object v6, v13, v4

    aget v6, v6, v12

    .line 18
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    add-float v5, v5, p3

    aget-object v6, v10, v4

    aget v6, v6, v12

    .line 19
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    mul-float v19, v1, v5

    iget v1, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v5, v1

    const/4 v6, 0x5

    aget-object v7, v10, v6

    aget v7, v7, v11

    mul-float v20, v5, v7

    int-to-float v1, v1

    aget-object v5, v2, v11

    aget v5, v5, v12

    add-float v5, v5, p1

    add-float v5, v5, p2

    aget-object v7, v13, v6

    aget v7, v7, v12

    .line 20
    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    add-float v5, v5, p3

    aget-object v6, v10, v6

    aget v6, v6, v12

    .line 21
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    mul-float v21, v1, v5

    .line 22
    invoke-virtual/range {v15 .. v21}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 23
    iget-object v1, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->for:Landroid/graphics/Path;

    iget v5, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v6, v5

    int-to-float v5, v5

    aget-object v7, v2, v4

    aget v7, v7, v11

    sub-float v7, v7, p2

    aget-object v8, v10, v4

    aget v8, v8, v11

    .line 24
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    mul-float v5, v5, v7

    sub-float v23, v6, v5

    iget v5, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v5, v5

    aget-object v6, v2, v4

    aget v6, v6, v12

    add-float v6, v6, p1

    add-float v6, v6, p2

    aget-object v7, v13, v4

    aget v7, v7, v12

    .line 25
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    add-float v6, v6, p3

    aget-object v4, v10, v4

    aget v4, v4, v12

    .line 26
    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float v24, v5, v4

    iget v4, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v5, v4

    int-to-float v4, v4

    aget-object v6, v2, v3

    aget v6, v6, v11

    sub-float v6, v6, p2

    aget-object v7, v13, v3

    aget v7, v7, v11

    .line 27
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float v6, v6, p3

    aget-object v7, v10, v3

    aget v7, v7, v11

    .line 28
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    mul-float v4, v4, v6

    sub-float v25, v5, v4

    iget v4, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v4, v4

    aget-object v5, v2, v3

    aget v5, v5, v12

    add-float v5, v5, p1

    add-float v5, v5, p2

    aget-object v6, v13, v3

    aget v6, v6, v12

    .line 29
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    add-float v5, v5, p3

    aget-object v6, v10, v3

    aget v6, v6, v12

    .line 30
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    mul-float v26, v4, v5

    iget v4, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v5, v4

    int-to-float v4, v4

    aget-object v6, v2, v14

    aget v6, v6, v11

    sub-float v6, v6, p2

    aget-object v7, v10, v14

    aget v7, v7, v11

    .line 31
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    mul-float v4, v4, v6

    sub-float v27, v5, v4

    iget v4, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v4, v4

    aget-object v5, v2, v14

    aget v5, v5, v12

    add-float v5, v5, p1

    sub-float v5, v5, p2

    aget-object v6, v13, v14

    aget v6, v6, v12

    .line 32
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    add-float v5, v5, p3

    aget-object v6, v10, v14

    aget v6, v6, v12

    .line 33
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    mul-float v28, v4, v5

    move-object/from16 v22, v1

    .line 34
    invoke-virtual/range {v22 .. v28}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 35
    iget-object v14, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->for:Landroid/graphics/Path;

    iget v1, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v4, v1

    int-to-float v1, v1

    aget-object v5, v2, v12

    aget v5, v5, v11

    add-float v5, v5, p2

    aget-object v6, v13, v12

    aget v6, v6, v11

    .line 36
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    add-float v5, v5, p3

    aget-object v6, v10, v12

    aget v6, v6, v11

    .line 37
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    mul-float v1, v1, v5

    sub-float v15, v4, v1

    iget v1, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v1, v1

    aget-object v4, v2, v12

    aget v4, v4, v12

    add-float v4, v4, p1

    sub-float v4, v4, p2

    aget-object v5, v13, v12

    aget v5, v5, v12

    .line 38
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    sub-float v4, v4, p3

    aget-object v5, v10, v12

    aget v5, v5, v12

    .line 39
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float v16, v1, v4

    iget v1, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v4, v1

    int-to-float v5, v1

    aget-object v6, v10, v11

    aget v6, v6, v11

    mul-float v5, v5, v6

    sub-float v17, v4, v5

    int-to-float v4, v1

    aget-object v5, v10, v11

    aget v5, v5, v12

    mul-float v18, v4, v5

    int-to-float v1, v1

    const/16 v20, 0x0

    move/from16 v19, v1

    .line 40
    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 41
    iget v1, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v1, v1

    aget-object v2, v2, v3

    aget v2, v2, v12

    add-float v2, v2, p1

    add-float v2, v2, p2

    aget-object v4, v13, v3

    aget v4, v4, v12

    .line 42
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    add-float v2, v2, p3

    aget-object v3, v10, v3

    aget v3, v3, v12

    .line 43
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float v1, v1, v2

    iget v2, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->do:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->this:F

    .line 44
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 45
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :goto_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->import:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 3
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->import:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->while:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 6
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->while:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->final:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 9
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->final:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->native:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 12
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->native:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->throw:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 15
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->throw:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->super:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5

    .line 17
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 18
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->super:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 19
    :cond_5
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->for:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->if:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->for:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 5
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->new:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 6
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->try:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->while:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 8
    iget v1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 9
    iget-object v3, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->import:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 10
    iget-object v4, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->super:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 11
    iget-object v5, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->throw:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 12
    iget-object v6, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->else:Landroid/graphics/RectF;

    iget v7, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->do:F

    const/high16 v8, 0x3f800000    # 1.0f

    add-float v9, v4, v8

    mul-float v10, v7, v9

    mul-float v10, v10, v3

    sub-float v10, v1, v10

    mul-float v11, v7, v5

    div-float/2addr v11, v2

    add-float/2addr v10, v11

    add-float/2addr v8, v5

    mul-float v11, v7, v8

    mul-float v11, v11, v3

    add-float/2addr v11, v0

    mul-float v12, v7, v4

    div-float/2addr v12, v2

    sub-float/2addr v11, v12

    mul-float v9, v9, v7

    mul-float v9, v9, v3

    add-float/2addr v9, v1

    mul-float v5, v5, v7

    div-float/2addr v5, v2

    sub-float/2addr v9, v5

    mul-float v8, v8, v7

    mul-float v8, v8, v3

    sub-float v3, v0, v8

    mul-float v7, v7, v4

    div-float/2addr v7, v2

    add-float/2addr v3, v7

    invoke-virtual {v6, v10, v11, v9, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 13
    iget-object v2, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->final:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 14
    iget-object v3, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->new:Landroid/graphics/Path;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 15
    iget v3, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->do:F

    float-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 16
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-float v7, v0, v2

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v7

    float-to-double v7, v0

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    sub-double/2addr v3, v9

    sub-float/2addr v2, v0

    float-to-double v9, v2

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v9

    const-wide/high16 v9, -0x4000000000000000L    # -2.0

    .line 17
    iget v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-double v11, v0

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v9

    div-double/2addr v11, v5

    .line 18
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v7, v3, v7

    .line 19
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    float-to-double v0, v1

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v7, v0

    iget v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->do:F

    float-to-double v0, v0

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double/2addr v7, v0

    neg-double v0, v11

    mul-double v11, v11, v11

    const-wide/high16 v9, 0x4010000000000000L    # 4.0

    mul-double v7, v7, v9

    sub-double/2addr v11, v7

    .line 20
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    add-double/2addr v7, v0

    div-double/2addr v7, v5

    .line 21
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    sub-double/2addr v0, v9

    div-double/2addr v0, v5

    .line 22
    iget-object v2, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->new:Landroid/graphics/Path;

    double-to-float v5, v7

    double-to-float v3, v3

    invoke-virtual {v2, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 23
    iget-object v2, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->new:Landroid/graphics/Path;

    double-to-float v0, v0

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 24
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->new:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 25
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->case:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->new:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 26
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->case:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->else:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 27
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->try:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->else:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 28
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->new:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->if:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 29
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->try:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->if:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public onPreDraw()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->class:Z

    if-eqz v0, :cond_0

    .line 3
    iget v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->const:I

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->class(I)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onSizeChanged(IIII)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->goto:I

    int-to-float v0, p1

    const v1, 0x41666666    # 14.4f

    div-float/2addr v0, v1

    .line 2
    iput v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->do:F

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->do:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->class(I)V

    .line 4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method public setWaveColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->if:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public this()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->import:Landroid/animation/ValueAnimator;

    .line 2
    iget-object v1, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->public:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->import:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->import:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/scwang/smartrefresh/header/waveswipe/WaveView$for;

    invoke-direct {v1, p0}, Lcom/scwang/smartrefresh/header/waveswipe/WaveView$for;-><init>(Lcom/scwang/smartrefresh/header/waveswipe/WaveView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5
    iget-object v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->import:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public try()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->catch:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->catch:Z

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 3
    iget v3, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->break:I

    int-to-float v4, v3

    const/4 v5, 0x0

    aput v4, v2, v5

    int-to-float v3, v3

    aput v3, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->while:Landroid/animation/ValueAnimator;

    .line 4
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    new-array v1, v1, [F

    .line 5
    iget v2, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->break:I

    int-to-float v3, v2

    iget v4, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->do:F

    sub-float/2addr v3, v4

    aput v3, v1, v5

    int-to-float v2, v2

    sub-float/2addr v2, v4

    aput v2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->final:Landroid/animation/ValueAnimator;

    .line 6
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 7
    iget v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->break:I

    int-to-float v0, v0

    iput v0, p0, Lcom/scwang/smartrefresh/header/waveswipe/WaveView;->this:F

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
