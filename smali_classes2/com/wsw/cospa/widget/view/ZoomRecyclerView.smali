.class public Lcom/wsw/cospa/widget/view/ZoomRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClickableViewAccessibility"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/widget/view/ZoomRecyclerView$GestureListener;,
        Lcom/wsw/cospa/widget/view/ZoomRecyclerView$ScaleListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_SCALE_FACTOR:F = 2.0f

.field private static final DEFAULT_MIN_SCALE_FACTOR:F = 0.5f

.field private static final DEFAULT_SCALE_DURATION:I = 0x12c

.field private static final DEFAULT_SCALE_FACTOR:F = 1.0f

.field private static final INVALID_TOUCH_POSITION:F = -1.0f

.field private static final PROPERTY_SCALE:Ljava/lang/String; = "scale"

.field private static final PROPERTY_TRANX:Ljava/lang/String; = "tranX"

.field private static final PROPERTY_TRANY:Ljava/lang/String; = "tranY"

.field private static final TAG:Ljava/lang/String; = "999"


# instance fields
.field public isEnableScale:Z

.field public isScaling:Z

.field public mActivePointerId:I

.field public mDefaultScaleFactor:F

.field public mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

.field public mLastTouchX:F

.field public mLastTouchY:F

.field public mMaxScaleFactor:F

.field public mMaxTranX:F

.field public mMaxTranY:F

.field public mMinScaleFactor:F

.field public mScaleAnimator:Landroid/animation/ValueAnimator;

.field public mScaleCenterX:F

.field public mScaleCenterY:F

.field public mScaleDetector:Landroid/view/ScaleGestureDetector;

.field public mScaleDuration:I

.field public mScaleFactor:F

.field public mTranX:F

.field public mTranY:F

.field public mViewHeight:F

.field public mViewWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mActivePointerId:I

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->isScaling:Z

    .line 4
    iput-boolean p1, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->isEnableScale:Z

    const/4 p1, 0x0

    .line 5
    invoke-direct {p0, p1}, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mActivePointerId:I

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->isScaling:Z

    .line 9
    iput-boolean p1, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->isEnableScale:Z

    .line 10
    invoke-direct {p0, p2}, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 12
    iput p1, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mActivePointerId:I

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->isScaling:Z

    .line 14
    iput-boolean p1, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->isEnableScale:Z

    .line 15
    invoke-direct {p0, p2}, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/wsw/cospa/widget/view/ZoomRecyclerView;FF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->setTranslateXY(FF)V

    return-void
.end method

.method public static synthetic access$300(Lcom/wsw/cospa/widget/view/ZoomRecyclerView;FF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->zoom(FF)V

    return-void
.end method

.method private correctTranslateXY()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mTranX:F

    iget v1, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mTranY:F

    invoke-direct {p0, v0, v1}, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->correctTranslateXY(FF)[F

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    aget v1, v0, v1

    iput v1, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mTranX:F

    const/4 v1, 0x1

    .line 3
    aget v0, v0, v1

    iput v0, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mTranY:F

    return-void
.end method

.method private correctTranslateXY(FF)[F
    .locals 6

    .line 4
    iget v0, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mScaleFactor:F

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_0

    new-array v0, v3, [F

    aput p1, v0, v2

    aput p2, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    cmpl-float v4, p1, v0

    if-lez v4, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 5
    :cond_1
    iget v4, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mMaxTranX:F

    cmpg-float v5, p1, v4

    if-gez v5, :cond_2

    move p1, v4

    :cond_2
    :goto_0
    cmpl-float v4, p2, v0

    if-lez v4, :cond_3

    const/4 p2, 0x0

    goto :goto_1

    .line 6
    :cond_3
    iget v0, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mMaxTranY:F

    cmpg-float v4, p2, v0

    if-gez v4, :cond_4

    move p2, v0

    :cond_4
    :goto_1
    new-array v0, v3, [F

    aput p1, v0, v2

    aput p2, v0, v1

    return-object v0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 7

    .line 1
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/wsw/cospa/widget/view/ZoomRecyclerView$ScaleListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/wsw/cospa/widget/view/ZoomRecyclerView$ScaleListener;-><init>(Lcom/wsw/cospa/widget/view/ZoomRecyclerView;Lcom/wsw/cospa/widget/view/ZoomRecyclerView$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 2
    new-instance v0, Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/wsw/cospa/widget/view/ZoomRecyclerView$GestureListener;

    invoke-direct {v2, p0, v3}, Lcom/wsw/cospa/widget/view/ZoomRecyclerView$GestureListener;-><init>(Lcom/wsw/cospa/widget/view/ZoomRecyclerView;Lcom/wsw/cospa/widget/view/ZoomRecyclerView$1;)V

    invoke-direct {v0, v1, v2}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    const/16 v0, 0x12c

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/wsw/cospa/R$styleable;->ZoomRecyclerView:[I

    const/4 v6, 0x0

    .line 4
    invoke-virtual {v4, p1, v5, v6, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v4, 0x2

    .line 5
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mMinScaleFactor:F

    const/4 v2, 0x1

    .line 6
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mMaxScaleFactor:F

    .line 7
    invoke-virtual {p1, v6, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mDefaultScaleFactor:F

    .line 8
    iput v1, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mScaleFactor:F

    const/4 v1, 0x3

    .line 9
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mScaleDuration:I

    .line 10
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 11
    :cond_0
    iput v3, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mMaxScaleFactor:F

    .line 12
    iput v2, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mMinScaleFactor:F

    .line 13
    iput v1, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mDefaultScaleFactor:F

    .line 14
    iput v1, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mScaleFactor:F

    .line 15
    iput v0, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mScaleDuration:I

    :goto_0
    return-void
.end method

.method private newZoomAnimation()V
    .locals 2

    .line 1
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    .line 2
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/wsw/cospa/widget/view/ZoomRecyclerView$1;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/widget/view/ZoomRecyclerView$1;-><init>(Lcom/wsw/cospa/widget/view/ZoomRecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/wsw/cospa/widget/view/ZoomRecyclerView$2;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/widget/view/ZoomRecyclerView$2;-><init>(Lcom/wsw/cospa/widget/view/ZoomRecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private setTranslateXY(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mTranX:F

    .line 2
    iput p2, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mTranY:F

    return-void
.end method

.method private zoom(FF)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->newZoomAnimation()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget v0, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mViewWidth:F

    mul-float v1, v0, p2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mMaxTranX:F

    .line 5
    iget v0, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mViewHeight:F

    mul-float v1, v0, p2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mMaxTranY:F

    .line 6
    iget v0, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mTranX:F

    .line 7
    iget v1, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mTranY:F

    sub-float v2, p2, p1

    .line 8
    iget v3, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mScaleCenterX:F

    mul-float v3, v3, v2

    sub-float v3, v0, v3

    .line 9
    iget v4, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mScaleCenterY:F

    mul-float v2, v2, v4

    sub-float v2, v1, v2

    .line 10
    invoke-direct {p0, v3, v2}, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->correctTranslateXY(FF)[F

    move-result-object v2

    const/4 v3, 0x0

    .line 11
    aget v4, v2, v3

    const/4 v5, 0x1

    .line 12
    aget v2, v2, v5

    const/4 v6, 0x2

    new-array v7, v6, [F

    aput p1, v7, v3

    aput p2, v7, v5

    const-string p1, "scale"

    .line 13
    invoke-static {p1, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    new-array p2, v6, [F

    aput v0, p2, v3

    aput v4, p2, v5

    const-string v0, "tranX"

    .line 14
    invoke-static {v0, p2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    new-array v0, v6, [F

    aput v1, v0, v3

    aput v2, v0, v5

    const-string v1, "tranY"

    .line 15
    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object p1, v2, v3

    aput-object p2, v2, v5

    aput-object v0, v2, v6

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 17
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    iget p2, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mScaleDuration:I

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 18
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    iget v0, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mTranX:F

    iget v1, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mTranY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3
    iget v0, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mScaleFactor:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public isEnableScale()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->isEnableScale:Z

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onDetachedFromWindow()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mViewWidth:F

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mViewHeight:F

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->isEnableScale:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {v1, p1}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 5
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_9

    const/high16 v4, -0x40800000    # -1.0f

    if-eq v1, v3, :cond_8

    const/4 v5, 0x2

    if-eq v1, v5, :cond_5

    const/4 v5, 0x3

    if-eq v1, v5, :cond_8

    const/4 v4, 0x6

    if-eq v1, v4, :cond_3

    goto/16 :goto_3

    .line 6
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 7
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 8
    iget v5, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mActivePointerId:I

    if-ne v4, v5, :cond_a

    if-nez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 9
    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iput v4, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mLastTouchX:F

    .line 10
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iput v4, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mLastTouchY:F

    .line 11
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mActivePointerId:I

    goto/16 :goto_3

    :cond_5
    const/high16 v1, 0x3f800000    # 1.0f

    .line 12
    :try_start_0
    iget v5, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 13
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 14
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 15
    iget-boolean v7, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->isScaling:Z

    if-nez v7, :cond_6

    iget v7, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mScaleFactor:F

    cmpl-float v7, v7, v1

    if-lez v7, :cond_6

    .line 16
    iget v7, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mLastTouchX:F

    sub-float v7, v6, v7

    .line 17
    iget v8, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mLastTouchY:F

    sub-float v8, v5, v8

    .line 18
    iget v9, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mTranX:F

    add-float/2addr v9, v7

    iget v7, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mTranY:F

    add-float/2addr v7, v8

    invoke-direct {p0, v9, v7}, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->setTranslateXY(FF)V

    .line 19
    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->correctTranslateXY()V

    .line 20
    :cond_6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 21
    iput v6, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mLastTouchX:F

    .line 22
    iput v5, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mLastTouchY:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    nop

    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 25
    iget-boolean v7, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->isScaling:Z

    if-nez v7, :cond_7

    iget v7, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mScaleFactor:F

    cmpl-float v1, v7, v1

    if-lez v1, :cond_7

    iget v1, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mLastTouchX:F

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_7

    sub-float v1, v5, v1

    .line 26
    iget v4, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mLastTouchY:F

    sub-float v4, v6, v4

    .line 27
    iget v7, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mTranX:F

    add-float/2addr v7, v1

    iget v1, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mTranY:F

    add-float/2addr v1, v4

    invoke-direct {p0, v7, v1}, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->setTranslateXY(FF)V

    .line 28
    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->correctTranslateXY()V

    .line 29
    :cond_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 30
    iput v5, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mLastTouchX:F

    .line 31
    iput v6, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mLastTouchY:F

    goto :goto_3

    :cond_8
    const/4 v1, -0x1

    .line 32
    iput v1, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mActivePointerId:I

    .line 33
    iput v4, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mLastTouchX:F

    .line 34
    iput v4, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mLastTouchY:F

    goto :goto_3

    .line 35
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 36
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 37
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 38
    iput v4, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mLastTouchX:F

    .line 39
    iput v1, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mLastTouchY:F

    .line 40
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mActivePointerId:I

    .line 41
    :cond_a
    :goto_3
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_b

    if-eqz v0, :cond_c

    :cond_b
    const/4 v2, 0x1

    :cond_c
    return v2
.end method

.method public setEnableScale(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->isEnableScale:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->isEnableScale:Z

    if-nez p1, :cond_1

    .line 3
    iget p1, p0, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->mScaleFactor:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_1

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/wsw/cospa/widget/view/ZoomRecyclerView;->zoom(FF)V

    :cond_1
    return-void
.end method
