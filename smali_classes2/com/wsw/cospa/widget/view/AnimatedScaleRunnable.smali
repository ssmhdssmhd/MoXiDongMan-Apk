.class Lcom/wsw/cospa/widget/view/AnimatedScaleRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mFocusX:F

.field private final mFocusY:F

.field private final mListener:Lcom/wsw/cospa/widget/view/OnScaleDragGestureListener;

.field private final mMatrix:Landroid/graphics/Matrix;

.field private final mScaleEnd:F

.field private final mScaleStart:F

.field private final mStartTime:J

.field private final mView:Landroid/view/View;

.field private final mZoomInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(FFFLandroid/view/View;Landroid/graphics/Matrix;Lcom/wsw/cospa/widget/view/OnScaleDragGestureListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/AnimatedScaleRunnable;->mZoomInterpolator:Landroid/view/animation/Interpolator;

    .line 3
    iput p2, p0, Lcom/wsw/cospa/widget/view/AnimatedScaleRunnable;->mFocusX:F

    .line 4
    iput p3, p0, Lcom/wsw/cospa/widget/view/AnimatedScaleRunnable;->mFocusY:F

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/wsw/cospa/widget/view/AnimatedScaleRunnable;->mStartTime:J

    .line 6
    invoke-static {p5}, Lcom/wsw/cospa/widget/view/ViewUtils;->calculateScale(Landroid/graphics/Matrix;)F

    move-result p2

    iput p2, p0, Lcom/wsw/cospa/widget/view/AnimatedScaleRunnable;->mScaleStart:F

    .line 7
    iput p1, p0, Lcom/wsw/cospa/widget/view/AnimatedScaleRunnable;->mScaleEnd:F

    .line 8
    iput-object p4, p0, Lcom/wsw/cospa/widget/view/AnimatedScaleRunnable;->mView:Landroid/view/View;

    .line 9
    iput-object p5, p0, Lcom/wsw/cospa/widget/view/AnimatedScaleRunnable;->mMatrix:Landroid/graphics/Matrix;

    .line 10
    iput-object p6, p0, Lcom/wsw/cospa/widget/view/AnimatedScaleRunnable;->mListener:Lcom/wsw/cospa/widget/view/OnScaleDragGestureListener;

    return-void
.end method

.method private interpolate()F
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/wsw/cospa/widget/view/AnimatedScaleRunnable;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    const/high16 v2, 0x43480000    # 200.0f

    div-float/2addr v0, v2

    .line 2
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/widget/view/AnimatedScaleRunnable;->mZoomInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/AnimatedScaleRunnable;->interpolate()F

    move-result v0

    .line 2
    iget v1, p0, Lcom/wsw/cospa/widget/view/AnimatedScaleRunnable;->mScaleStart:F

    iget v2, p0, Lcom/wsw/cospa/widget/view/AnimatedScaleRunnable;->mScaleEnd:F

    sub-float/2addr v2, v1

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    .line 3
    iget-object v2, p0, Lcom/wsw/cospa/widget/view/AnimatedScaleRunnable;->mMatrix:Landroid/graphics/Matrix;

    invoke-static {v2}, Lcom/wsw/cospa/widget/view/ViewUtils;->calculateScale(Landroid/graphics/Matrix;)F

    move-result v2

    div-float/2addr v1, v2

    .line 4
    iget-object v2, p0, Lcom/wsw/cospa/widget/view/AnimatedScaleRunnable;->mListener:Lcom/wsw/cospa/widget/view/OnScaleDragGestureListener;

    iget v3, p0, Lcom/wsw/cospa/widget/view/AnimatedScaleRunnable;->mFocusX:F

    iget v4, p0, Lcom/wsw/cospa/widget/view/AnimatedScaleRunnable;->mFocusY:F

    invoke-interface {v2, v1, v3, v4}, Lcom/wsw/cospa/widget/view/OnScaleDragGestureListener;->onScale(FFF)V

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/AnimatedScaleRunnable;->mView:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/wsw/cospa/widget/view/ViewUtils;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
