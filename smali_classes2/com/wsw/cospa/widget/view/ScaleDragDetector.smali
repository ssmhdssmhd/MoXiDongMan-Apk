.class public Lcom/wsw/cospa/widget/view/ScaleDragDetector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# static fields
.field private static final INVALID_POINTER_ID:I = -0x1


# instance fields
.field private mActivePointerId:I

.field private mActivePointerIndex:I

.field private final mDetector:Landroid/view/ScaleGestureDetector;

.field private mIsDragging:Z

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mListener:Lcom/wsw/cospa/widget/view/OnScaleDragGestureListener;

.field private final mMinimumVelocity:F

.field private final mTouchSlop:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/wsw/cospa/widget/view/OnScaleDragGestureListener;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mActivePointerId:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mActivePointerIndex:I

    .line 4
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mMinimumVelocity:F

    .line 6
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mTouchSlop:F

    .line 7
    iput-object p2, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mListener:Lcom/wsw/cospa/widget/view/OnScaleDragGestureListener;

    .line 8
    new-instance p2, Landroid/view/ScaleGestureDetector;

    invoke-direct {p2, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mDetector:Landroid/view/ScaleGestureDetector;

    .line 9
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt p1, v1, :cond_0

    .line 10
    invoke-virtual {p2, v0}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    :cond_0
    return-void
.end method

.method private getActiveX(Landroid/view/MotionEvent;)F
    .locals 1

    .line 1
    :try_start_0
    iget v0, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mActivePointerIndex:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 2
    :catch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    return p1
.end method

.method private getActiveY(Landroid/view/MotionEvent;)F
    .locals 1

    .line 1
    :try_start_0
    iget v0, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mActivePointerIndex:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 2
    :catch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    return p1
.end method

.method private processTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_8

    const/4 v4, 0x0

    if-eq v0, v2, :cond_6

    const/4 v5, 0x2

    if-eq v0, v5, :cond_3

    const/4 v5, 0x3

    if-eq v0, v5, :cond_2

    const/4 v4, 0x6

    if-eq v0, v4, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v4, 0xff00

    and-int/2addr v0, v4

    shr-int/lit8 v0, v0, 0x8

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 4
    iget v5, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mActivePointerId:I

    if-ne v4, v5, :cond_a

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mActivePointerId:I

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iput v4, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mLastTouchX:F

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mLastTouchY:F

    goto/16 :goto_2

    .line 8
    :cond_2
    iput v1, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mActivePointerId:I

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_a

    .line 10
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 11
    iput-object v4, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_2

    .line 12
    :cond_3
    invoke-direct {p0, p1}, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v0

    .line 13
    invoke-direct {p0, p1}, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v4

    .line 14
    iget v5, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mLastTouchX:F

    sub-float v5, v0, v5

    iget v6, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mLastTouchY:F

    sub-float v6, v4, v6

    .line 15
    iget-boolean v7, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mIsDragging:Z

    if-nez v7, :cond_5

    mul-float v7, v5, v5

    mul-float v8, v6, v6

    add-float/2addr v7, v8

    float-to-double v7, v7

    .line 16
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    iget v9, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mTouchSlop:F

    float-to-double v9, v9

    cmpl-double v11, v7, v9

    if-ltz v11, :cond_4

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    iput-boolean v7, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mIsDragging:Z

    .line 17
    :cond_5
    iget-boolean v7, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mIsDragging:Z

    if-eqz v7, :cond_a

    .line 18
    iget-object v7, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mListener:Lcom/wsw/cospa/widget/view/OnScaleDragGestureListener;

    invoke-interface {v7, v5, v6}, Lcom/wsw/cospa/widget/view/OnScaleDragGestureListener;->onDrag(FF)V

    .line 19
    iput v0, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mLastTouchX:F

    .line 20
    iput v4, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mLastTouchY:F

    .line 21
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_a

    .line 22
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 23
    :cond_6
    iput v1, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mActivePointerId:I

    .line 24
    iget-boolean v0, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mIsDragging:Z

    if-eqz v0, :cond_7

    .line 25
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_7

    .line 26
    invoke-direct {p0, p1}, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mLastTouchX:F

    .line 27
    invoke-direct {p0, p1}, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mLastTouchY:F

    .line 28
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 29
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 30
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    iget-object v5, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 31
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    .line 32
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iget v7, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mMinimumVelocity:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_7

    .line 33
    iget-object v6, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mListener:Lcom/wsw/cospa/widget/view/OnScaleDragGestureListener;

    iget v7, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mLastTouchX:F

    iget v8, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mLastTouchY:F

    neg-float v0, v0

    neg-float v5, v5

    invoke-interface {v6, v7, v8, v0, v5}, Lcom/wsw/cospa/widget/view/OnScaleDragGestureListener;->onFling(FFFF)V

    .line 34
    :cond_7
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_a

    .line 35
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 36
    iput-object v4, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_2

    .line 37
    :cond_8
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mActivePointerId:I

    .line 38
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_9

    .line 39
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 40
    :cond_9
    invoke-direct {p0, p1}, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mLastTouchX:F

    .line 41
    invoke-direct {p0, p1}, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mLastTouchY:F

    .line 42
    iput-boolean v3, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mIsDragging:Z

    .line 43
    :cond_a
    :goto_2
    iget v0, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mActivePointerId:I

    if-eq v0, v1, :cond_b

    move v3, v0

    :cond_b
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    iput p1, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mActivePointerIndex:I

    return v2
.end method


# virtual methods
.method public isDragging()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mIsDragging:Z

    return v0
.end method

.method public isScaling()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    return v0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 2
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mListener:Lcom/wsw/cospa/widget/view/OnScaleDragGestureListener;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    invoke-interface {v1, v0, v2, p1}, Lcom/wsw/cospa/widget/view/OnScaleDragGestureListener;->onScale(FFF)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mListener:Lcom/wsw/cospa/widget/view/OnScaleDragGestureListener;

    invoke-interface {p1}, Lcom/wsw/cospa/widget/view/OnScaleDragGestureListener;->onScaleEnd()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->mDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    invoke-direct {p0, p1}, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->processTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x1

    return p1
.end method
