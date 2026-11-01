.class public Lcom/wsw/cospa/widget/swipe/ViewDragHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;
    }
.end annotation


# static fields
.field private static final BASE_SETTLE_DURATION:I = 0x100

.field public static final DIRECTION_ALL:I = 0x3

.field public static final DIRECTION_HORIZONTAL:I = 0x1

.field public static final DIRECTION_VERTICAL:I = 0x2

.field public static final EDGE_ALL:I = 0xf

.field public static final EDGE_BOTTOM:I = 0x8

.field public static final EDGE_LEFT:I = 0x1

.field public static final EDGE_RIGHT:I = 0x2

.field public static final EDGE_SIZE:I = 0x14

.field public static final EDGE_TOP:I = 0x4

.field public static final INVALID_POINTER:I = -0x1

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewDragHelper"

.field private static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private final mCallback:Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;

.field private mCapturedView:Landroid/view/View;

.field private mDragState:I

.field private mEdgeDragsInProgress:[I

.field private mEdgeDragsLocked:[I

.field private mEdgeSize:I

.field private mInitialEdgeTouched:[I

.field private mInitialMotionX:[F

.field private mInitialMotionY:[F

.field private mLastMotionX:[F

.field private mLastMotionY:[F

.field private mMaxVelocity:F

.field private mMinVelocity:F

.field private final mParentView:Landroid/view/ViewGroup;

.field private mPointersDown:I

.field private mReleaseInProgress:Z

.field private mScroller:Landroid/widget/Scroller;

.field private final mSetIdleRunnable:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTrackingEdges:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper$1;

    invoke-direct {v0}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper$1;-><init>()V

    sput-object v0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mActivePointerId:I

    .line 3
    new-instance v0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper$2;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper$2;-><init>(Lcom/wsw/cospa/widget/swipe/ViewDragHelper;)V

    iput-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 4
    iput-object p2, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    .line 5
    iput-object p3, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCallback:Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;

    .line 6
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float p3, p3, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p3, v0

    float-to-int p3, p3

    .line 8
    iput p3, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mEdgeSize:I

    .line 9
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    iput p3, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mTouchSlop:I

    .line 10
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mMaxVelocity:F

    .line 11
    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mMinVelocity:F

    .line 12
    new-instance p2, Landroid/widget/Scroller;

    sget-object p3, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p2, p1, p3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p2, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Callback may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parent view may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkNewEdgeDrag(FFII)Z
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 2
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mInitialEdgeTouched:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    const/4 v1, 0x0

    if-ne v0, p4, :cond_2

    iget v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v0, p4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mEdgeDragsLocked:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    if-eq v0, p4, :cond_2

    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    if-eq v0, p4, :cond_2

    iget v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mTouchSlop:I

    int-to-float v2, v0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float p2, p2, v0

    cmpg-float p2, p1, p2

    if-gez p2, :cond_1

    .line 4
    iget-object p2, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCallback:Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;

    invoke-virtual {p2, p4}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;->onEdgeLock(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mEdgeDragsLocked:[I

    aget p2, p1, p3

    or-int/2addr p2, p4

    aput p2, p1, p3

    return v1

    .line 6
    :cond_1
    iget-object p2, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget p2, p2, p3

    and-int/2addr p2, p4

    if-nez p2, :cond_2

    iget p2, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mTouchSlop:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method private checkTouchSlop(Landroid/view/View;FF)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCallback:Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;

    invoke-virtual {v1, p1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCallback:Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;

    invoke-virtual {v3, p1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result p1

    if-lez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    mul-float p2, p2, p2

    mul-float p3, p3, p3

    add-float/2addr p2, p3

    .line 3
    iget p1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mTouchSlop:I

    mul-int p1, p1, p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    :cond_4
    if-eqz v1, :cond_6

    .line 4
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mTouchSlop:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0

    :cond_6
    if-eqz p1, :cond_7

    .line 5
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mTouchSlop:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0
.end method

.method private clampMag(FFF)F
    .locals 2

    .line 2
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float p2, v0, p2

    if-gez p2, :cond_0

    return v1

    :cond_0
    cmpl-float p2, v0, p3

    if-lez p2, :cond_2

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    neg-float p3, p3

    :goto_0
    return p3

    :cond_2
    return p1
.end method

.method private clampMag(III)I
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-le v0, p3, :cond_2

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    neg-int p3, p3

    :goto_0
    return p3

    :cond_2
    return p1
.end method

.method private clearMotionHistory()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mInitialMotionX:[F

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mInitialMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mLastMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mLastMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mInitialEdgeTouched:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mEdgeDragsInProgress:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mEdgeDragsLocked:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 9
    iput v1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mPointersDown:I

    return-void
.end method

.method private clearMotionHistory(I)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mInitialMotionX:[F

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 11
    aput v1, v0, p1

    .line 12
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mInitialMotionY:[F

    aput v1, v0, p1

    .line 13
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mLastMotionX:[F

    aput v1, v0, p1

    .line 14
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mLastMotionY:[F

    aput v1, v0, p1

    .line 15
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mInitialEdgeTouched:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 16
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mEdgeDragsInProgress:[I

    aput v1, v0, p1

    .line 17
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mEdgeDragsLocked:[I

    aput v1, v0, p1

    .line 18
    iget v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mPointersDown:I

    return-void
.end method

.method private computeAxisDuration(III)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 2
    div-int/lit8 v1, v0, 0x2

    .line 3
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v1, v1

    .line 4
    invoke-direct {p0, v2}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->distanceInfluenceForSnapDuration(F)F

    move-result v2

    mul-float v2, v2, v1

    add-float/2addr v1, v2

    .line 5
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lez p2, :cond_1

    const/high16 p1, 0x447a0000    # 1000.0f

    int-to-float p2, p2

    div-float/2addr v1, p2

    .line 6
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float p2, p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    int-to-float p2, p3

    div-float/2addr p1, p2

    add-float/2addr p1, v0

    const/high16 p2, 0x43800000    # 256.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    :goto_0
    const/16 p2, 0x258

    .line 8
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private computeSettleDuration(Landroid/view/View;IIII)I
    .locals 6

    .line 1
    iget v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mMinVelocity:F

    float-to-int v0, v0

    iget v1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mMaxVelocity:F

    float-to-int v1, v1

    invoke-direct {p0, p4, v0, v1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->clampMag(III)I

    move-result p4

    .line 2
    iget v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mMinVelocity:F

    float-to-int v0, v0

    iget v1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mMaxVelocity:F

    float-to-int v1, v1

    invoke-direct {p0, p5, v0, v1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->clampMag(III)I

    move-result p5

    .line 3
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 4
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 5
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 6
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int v4, v2, v3

    add-int v5, v0, v1

    if-eqz p4, :cond_0

    int-to-float v0, v2

    int-to-float v2, v4

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    int-to-float v2, v5

    :goto_0
    div-float/2addr v0, v2

    if-eqz p5, :cond_1

    int-to-float v1, v3

    int-to-float v2, v4

    goto :goto_1

    :cond_1
    int-to-float v1, v1

    int-to-float v2, v5

    :goto_1
    div-float/2addr v1, v2

    .line 7
    iget-object v2, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCallback:Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;

    invoke-virtual {v2, p1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v2

    invoke-direct {p0, p2, p4, v2}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->computeAxisDuration(III)I

    move-result p2

    .line 8
    iget-object p4, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCallback:Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;

    invoke-virtual {p4, p1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result p1

    invoke-direct {p0, p3, p5, p1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->computeAxisDuration(III)I

    move-result p1

    int-to-float p2, p2

    mul-float p2, p2, v0

    int-to-float p1, p1

    mul-float p1, p1, v1

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method public static create(Landroid/view/ViewGroup;FLcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;)Lcom/wsw/cospa/widget/swipe/ViewDragHelper;
    .locals 1

    .line 2
    invoke-static {p0, p2}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->create(Landroid/view/ViewGroup;Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;)Lcom/wsw/cospa/widget/swipe/ViewDragHelper;

    move-result-object p0

    .line 3
    iget p2, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mTouchSlop:I

    int-to-float p2, p2

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    mul-float p2, p2, v0

    float-to-int p1, p2

    iput p1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mTouchSlop:I

    return-object p0
.end method

.method public static create(Landroid/view/ViewGroup;Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;)Lcom/wsw/cospa/widget/swipe/ViewDragHelper;
    .locals 2

    .line 1
    new-instance v0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;)V

    return-object v0
.end method

.method private dispatchViewReleased(FF)V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mReleaseInProgress:Z

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCallback:Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;

    iget-object v2, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1, v2, p1, p2}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mReleaseInProgress:Z

    .line 4
    iget p2, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mDragState:I

    if-ne p2, v0, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->setDragState(I)V

    :cond_0
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float p1, v0

    float-to-double v0, p1

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private dragTo(IIII)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-eqz p3, :cond_0

    .line 3
    iget-object v2, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCallback:Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;

    iget-object v3, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v2, v3, p1, p3}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result p1

    .line 4
    iget-object v2, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v3, p1, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_0
    move v6, p1

    if-eqz p4, :cond_1

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCallback:Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;

    iget-object v2, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {p1, v2, p2, p4}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result p2

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v2, p2, v1

    invoke-virtual {p1, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_1
    move v7, p2

    if-nez p3, :cond_2

    if-eqz p4, :cond_3

    :cond_2
    sub-int v8, v6, v0

    sub-int v9, v7, v1

    .line 7
    iget-object v4, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCallback:Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;

    iget-object v5, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 8
    invoke-virtual/range {v4 .. v9}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    :cond_3
    return-void
.end method

.method private ensureMotionHistorySizeForId(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gt v1, p1, :cond_2

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 2
    new-array v1, p1, [F

    .line 3
    new-array v2, p1, [F

    .line 4
    new-array v3, p1, [F

    .line 5
    new-array v4, p1, [F

    .line 6
    new-array v5, p1, [I

    .line 7
    new-array v6, p1, [I

    .line 8
    new-array p1, p1, [I

    if-eqz v0, :cond_1

    .line 9
    array-length v7, v0

    const/4 v8, 0x0

    invoke-static {v0, v8, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mInitialMotionY:[F

    array-length v7, v0

    invoke-static {v0, v8, v2, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mLastMotionX:[F

    array-length v7, v0

    invoke-static {v0, v8, v3, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mLastMotionY:[F

    array-length v7, v0

    invoke-static {v0, v8, v4, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mInitialEdgeTouched:[I

    array-length v7, v0

    invoke-static {v0, v8, v5, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mEdgeDragsInProgress:[I

    array-length v7, v0

    invoke-static {v0, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mEdgeDragsLocked:[I

    array-length v7, v0

    invoke-static {v0, v8, p1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    :cond_1
    iput-object v1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mInitialMotionX:[F

    .line 17
    iput-object v2, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mInitialMotionY:[F

    .line 18
    iput-object v3, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mLastMotionX:[F

    .line 19
    iput-object v4, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mLastMotionY:[F

    .line 20
    iput-object v5, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mInitialEdgeTouched:[I

    .line 21
    iput-object v6, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mEdgeDragsInProgress:[I

    .line 22
    iput-object p1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mEdgeDragsLocked:[I

    :cond_2
    return-void
.end method

.method private forceSettleCapturedViewAt(IIII)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr p1, v2

    sub-int/2addr p2, v3

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->setDragState(I)V

    return p1

    .line 5
    :cond_0
    iget-object v5, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object v4, p0

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->computeSettleDuration(Landroid/view/View;IIII)I

    move-result v6

    .line 6
    iget-object v1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    const/4 p1, 0x2

    .line 7
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->setDragState(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private getEdgeTouched(II)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    iget v2, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_1

    const/4 v0, 0x4

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget v2, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_2

    const/4 v0, 0x2

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBottom()I

    move-result p1

    iget v1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr p1, v1

    if-le p2, p1, :cond_3

    const/16 v0, 0x8

    :cond_3
    return v0
.end method

.method private releaseViewForPointerUp()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mMaxVelocity:F

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mActivePointerId:I

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    iget v1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mMinVelocity:F

    iget v2, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mMaxVelocity:F

    .line 4
    invoke-direct {p0, v0, v1, v2}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->clampMag(FFF)F

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mActivePointerId:I

    .line 6
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    iget v2, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mMinVelocity:F

    iget v3, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mMaxVelocity:F

    .line 7
    invoke-direct {p0, v1, v2, v3}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->clampMag(FFF)F

    move-result v1

    .line 8
    invoke-direct {p0, v0, v1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->dispatchViewReleased(FF)V

    return-void
.end method

.method private reportNewEdgeDrags(FFI)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v0

    const/4 v1, 0x4

    .line 2
    invoke-direct {p0, p2, p1, p3, v1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x4

    :cond_0
    const/4 v1, 0x2

    .line 3
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    const/16 v1, 0x8

    .line 4
    invoke-direct {p0, p2, p1, p3, v1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result p1

    if-eqz p1, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    if-eqz v0, :cond_3

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget p2, p1, p3

    or-int/2addr p2, v0

    aput p2, p1, p3

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCallback:Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;

    invoke-virtual {p1, v0, p3}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;->onEdgeDragStarted(II)V

    :cond_3
    return-void
.end method

.method private saveInitialMotion(FFI)V
    .locals 2

    .line 1
    invoke-direct {p0, p3}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->ensureMotionHistorySizeForId(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mInitialMotionX:[F

    iget-object v1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mLastMotionX:[F

    aput p1, v1, p3

    aput p1, v0, p3

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mInitialMotionY:[F

    iget-object v1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mLastMotionY:[F

    aput p2, v1, p3

    aput p2, v0, p3

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mInitialEdgeTouched:[I

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->getEdgeTouched(II)I

    move-result p1

    aput p1, v0, p3

    .line 5
    iget p1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mPointersDown:I

    const/4 p2, 0x1

    shl-int/2addr p2, p3

    or-int/2addr p1, p2

    iput p1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mPointersDown:I

    return-void
.end method

.method private saveLastMotion(Landroid/view/MotionEvent;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 4
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 5
    iget-object v5, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mLastMotionX:[F

    aput v3, v5, v2

    .line 6
    iget-object v3, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mLastMotionY:[F

    aput v4, v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->cancel()V

    .line 2
    iget v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mDragState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 5
    iget-object v2, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 6
    iget-object v2, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 7
    iget-object v2, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 8
    iget-object v3, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCallback:Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;

    iget-object v4, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v7, v5, v0

    sub-int v8, v6, v1

    invoke-virtual/range {v3 .. v8}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->setDragState(I)V

    return-void
.end method

.method public canScroll(Landroid/view/View;ZIIII)Z
    .locals 13

    move-object v0, p1

    .line 1
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 5
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_0
    if-ltz v5, :cond_1

    .line 6
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v6, p5, v3

    .line 7
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v6, v8, :cond_0

    .line 8
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v6, v8, :cond_0

    add-int v8, p6, v4

    .line 9
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v8, v9, :cond_0

    .line 10
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v8, v9, :cond_0

    const/4 v9, 0x1

    .line 11
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v11, v6, v10

    .line 12
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v12, v8, v6

    move-object v6, p0

    move v8, v9

    move/from16 v9, p3

    move/from16 v10, p4

    .line 13
    invoke-virtual/range {v6 .. v12}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->canScroll(Landroid/view/View;ZIIII)Z

    move-result v6

    if-eqz v6, :cond_0

    return v2

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    move/from16 v1, p3

    neg-int v1, v1

    .line 14
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v1

    if-nez v1, :cond_3

    move/from16 v1, p4

    neg-int v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_1
    return v2
.end method

.method public cancel()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mActivePointerId:I

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->clearMotionHistory()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method public captureChildView(Landroid/view/View;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCapturedView:Landroid/view/View;

    .line 3
    iput p2, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mActivePointerId:I

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCallback:Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;

    invoke-virtual {v0, p1, p2}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;->onViewCaptured(Landroid/view/View;I)V

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->setDragState(I)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkTouchSlop(I)Z
    .locals 4

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mInitialMotionX:[F

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 7
    invoke-virtual {p0, p1, v2}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->checkTouchSlop(II)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public checkTouchSlop(II)Z
    .locals 6

    .line 8
    invoke-virtual {p0, p2}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    and-int/lit8 v0, p1, 0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x2

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 9
    :goto_1
    iget-object v3, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mLastMotionX:[F

    aget v3, v3, p2

    iget-object v4, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mInitialMotionX:[F

    aget v4, v4, p2

    sub-float/2addr v3, v4

    .line 10
    iget-object v4, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mLastMotionY:[F

    aget v4, v4, p2

    iget-object v5, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mInitialMotionY:[F

    aget p2, v5, p2

    sub-float/2addr v4, p2

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    mul-float v3, v3, v3

    mul-float v4, v4, v4

    add-float/2addr v3, v4

    .line 11
    iget p1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mTouchSlop:I

    mul-int p1, p1, p1

    int-to-float p1, p1

    cmpl-float p1, v3, p1

    if-lez p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    :cond_4
    if-eqz v0, :cond_6

    .line 12
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mTouchSlop:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1

    :cond_6
    if-eqz p1, :cond_7

    .line 13
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mTouchSlop:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_7

    const/4 v1, 0x1

    :cond_7
    return v1
.end method

.method public continueSettling(Z)Z
    .locals 11

    .line 1
    iget v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mDragState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    .line 3
    iget-object v3, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    .line 4
    iget-object v4, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v10

    .line 5
    iget-object v4, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v8, v3, v4

    .line 6
    iget-object v4, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v9, v10, v4

    if-eqz v8, :cond_0

    .line 7
    iget-object v4, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_0
    if-eqz v9, :cond_1

    .line 8
    iget-object v4, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_1
    if-nez v8, :cond_2

    if-eqz v9, :cond_3

    .line 9
    :cond_2
    iget-object v4, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCallback:Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;

    iget-object v5, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move v6, v3

    move v7, v10

    invoke-virtual/range {v4 .. v9}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    :cond_3
    if-eqz v0, :cond_4

    .line 10
    iget-object v4, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getFinalX()I

    move-result v4

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getFinalY()I

    move-result v3

    if-ne v10, v3, :cond_4

    .line 11
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 12
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    :cond_4
    if-nez v0, :cond_6

    if-eqz p1, :cond_5

    .line 13
    iget-object p1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 14
    :cond_5
    invoke-virtual {p0, v1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->setDragState(I)V

    .line 15
    :cond_6
    :goto_0
    iget p1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mDragState:I

    if-ne p1, v2, :cond_7

    const/4 v1, 0x1

    :cond_7
    return v1
.end method

.method public findTopChildUnder(II)Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCallback:Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;

    invoke-virtual {v2, v0}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;->getOrderedChildIndex(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p1, v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge p1, v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt p2, v2, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge p2, v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public flingCapturedView(IIII)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mReleaseInProgress:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v4, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mActivePointerId:I

    .line 3
    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v4, v0

    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mActivePointerId:I

    .line 4
    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    float-to-int v5, v0

    move v6, p1

    move v7, p3

    move v8, p2

    move v9, p4

    .line 5
    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    const/4 p1, 0x2

    .line 6
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->setDragState(I)V

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot flingCapturedView outside of a call to Callback#onViewReleased"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getActivePointerId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mActivePointerId:I

    return v0
.end method

.method public getCapturedView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCapturedView:Landroid/view/View;

    return-object v0
.end method

.method public getEdgeSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mEdgeSize:I

    return v0
.end method

.method public getMinVelocity()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mMinVelocity:F

    return v0
.end method

.method public getTouchSlop()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mTouchSlop:I

    return v0
.end method

.method public getViewDragState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mDragState:I

    return v0
.end method

.method public isCapturedViewUnder(II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public isEdgeTouched(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mInitialEdgeTouched:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    invoke-virtual {p0, p1, v2}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->isEdgeTouched(II)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isEdgeTouched(II)Z
    .locals 1

    .line 3
    invoke-virtual {p0, p2}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->isPointerDown(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mInitialEdgeTouched:[I

    aget p2, v0, p2

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isPointerDown(I)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isViewUnder(Landroid/view/View;II)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge p2, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    if-lt p3, p2, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    if-ge p3, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public processTouchEvent(Landroid/view/MotionEvent;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->cancel()V

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 5
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    const/4 v3, 0x1

    if-eq v0, v3, :cond_10

    const/4 v4, 0x2

    if-eq v0, v4, :cond_b

    const/4 v4, 0x3

    if-eq v0, v4, :cond_9

    const/4 v4, 0x5

    if-eq v0, v4, :cond_7

    const/4 v4, 0x6

    if-eq v0, v4, :cond_2

    goto/16 :goto_5

    .line 7
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 8
    iget v1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mDragState:I

    if-ne v1, v3, :cond_6

    iget v1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mActivePointerId:I

    if-ne v0, v1, :cond_6

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v1, :cond_5

    .line 10
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 11
    iget v5, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mActivePointerId:I

    if-ne v4, v5, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 13
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v5, v5

    float-to-int v6, v6

    .line 14
    invoke-virtual {p0, v5, v6}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v5, v6, :cond_4

    .line 15
    invoke-virtual {p0, v6, v4}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 16
    iget p1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mActivePointerId:I

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const/4 p1, -0x1

    :goto_2
    if-ne p1, v3, :cond_6

    .line 17
    invoke-direct {p0}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->releaseViewForPointerUp()V

    .line 18
    :cond_6
    invoke-direct {p0, v0}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->clearMotionHistory(I)V

    goto/16 :goto_5

    .line 19
    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 20
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 21
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 22
    invoke-direct {p0, v2, p1, v0}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 23
    iget v1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mDragState:I

    if-nez v1, :cond_8

    float-to-int v1, v2

    float-to-int p1, p1

    .line 24
    invoke-virtual {p0, v1, p1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object p1

    .line 25
    invoke-virtual {p0, p1, v0}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 26
    iget-object p1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mInitialEdgeTouched:[I

    aget p1, p1, v0

    .line 27
    iget v1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mTrackingEdges:I

    and-int v2, p1, v1

    if-eqz v2, :cond_13

    .line 28
    iget-object v2, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCallback:Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;

    and-int/2addr p1, v1

    invoke-virtual {v2, p1, v0}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto/16 :goto_5

    :cond_8
    float-to-int v1, v2

    float-to-int p1, p1

    .line 29
    invoke-virtual {p0, v1, p1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->isCapturedViewUnder(II)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 30
    iget-object p1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto/16 :goto_5

    .line 31
    :cond_9
    iget p1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mDragState:I

    if-ne p1, v3, :cond_a

    const/4 p1, 0x0

    .line 32
    invoke-direct {p0, p1, p1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->dispatchViewReleased(FF)V

    .line 33
    :cond_a
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->cancel()V

    goto/16 :goto_5

    .line 34
    :cond_b
    iget v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mDragState:I

    if-ne v0, v3, :cond_c

    .line 35
    iget v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 37
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 38
    iget-object v2, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mLastMotionX:[F

    iget v3, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mActivePointerId:I

    aget v2, v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 39
    iget-object v2, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mLastMotionY:[F

    aget v2, v2, v3

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 40
    iget-object v2, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->dragTo(IIII)V

    .line 41
    invoke-direct {p0, p1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_5

    .line 42
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    :goto_3
    if-ge v2, v0, :cond_f

    .line 43
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 44
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 45
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 46
    iget-object v6, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mInitialMotionX:[F

    aget v6, v6, v1

    sub-float v6, v4, v6

    .line 47
    iget-object v7, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mInitialMotionY:[F

    aget v7, v7, v1

    sub-float v7, v5, v7

    .line 48
    invoke-direct {p0, v6, v7, v1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    .line 49
    iget v8, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mDragState:I

    if-ne v8, v3, :cond_d

    goto :goto_4

    :cond_d
    float-to-int v4, v4

    float-to-int v5, v5

    .line 50
    invoke-virtual {p0, v4, v5}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v4

    .line 51
    invoke-direct {p0, v4, v6, v7}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 52
    invoke-virtual {p0, v4, v1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_4

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 53
    :cond_f
    :goto_4
    invoke-direct {p0, p1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto :goto_5

    .line 54
    :cond_10
    iget p1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mDragState:I

    if-ne p1, v3, :cond_11

    .line 55
    invoke-direct {p0}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->releaseViewForPointerUp()V

    .line 56
    :cond_11
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->cancel()V

    goto :goto_5

    .line 57
    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 59
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    float-to-int v2, v0

    float-to-int v3, v1

    .line 60
    invoke-virtual {p0, v2, v3}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v2

    .line 61
    invoke-direct {p0, v0, v1, p1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 62
    invoke-virtual {p0, v2, p1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 63
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mInitialEdgeTouched:[I

    aget v0, v0, p1

    .line 64
    iget v1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mTrackingEdges:I

    and-int v2, v0, v1

    if-eqz v2, :cond_13

    .line 65
    iget-object v2, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCallback:Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;

    and-int/2addr v0, v1

    invoke-virtual {v2, v0, p1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;->onEdgeTouched(II)V

    :cond_13
    :goto_5
    return-void
.end method

.method public setDragState(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mDragState:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mDragState:I

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCallback:Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;->onViewDragStateChanged(I)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCapturedView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public setEdgeSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mEdgeSize:I

    return-void
.end method

.method public setEdgeTrackingEnabled(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mTrackingEdges:I

    return-void
.end method

.method public setMaxVelocity(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mMaxVelocity:F

    return-void
.end method

.method public setMinVelocity(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mMinVelocity:F

    return-void
.end method

.method public setSensitivity(Landroid/content/Context;F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/4 v1, 0x0

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 2
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p2

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mTouchSlop:I

    return-void
.end method

.method public settleCapturedViewAt(II)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mReleaseInProgress:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mActivePointerId:I

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mActivePointerId:I

    .line 4
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    float-to-int v1, v1

    .line 5
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result p1

    return p1

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->cancel()V

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    .line 5
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_a

    if-eq v0, v4, :cond_9

    if-eq v0, v3, :cond_5

    const/4 v5, 0x3

    if-eq v0, v5, :cond_9

    const/4 v5, 0x5

    if-eq v0, v5, :cond_3

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    goto/16 :goto_2

    .line 7
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    .line 8
    invoke-direct {p0, p1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->clearMotionHistory(I)V

    goto/16 :goto_2

    .line 9
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 10
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 11
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 12
    invoke-direct {p0, v5, p1, v0}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->saveInitialMotion(FFI)V

    .line 13
    iget v1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mDragState:I

    if-nez v1, :cond_4

    .line 14
    iget-object p1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mInitialEdgeTouched:[I

    aget p1, p1, v0

    .line 15
    iget v1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mTrackingEdges:I

    and-int v3, p1, v1

    if-eqz v3, :cond_c

    .line 16
    iget-object v3, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCallback:Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;

    and-int/2addr p1, v1

    invoke-virtual {v3, p1, v0}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto/16 :goto_2

    :cond_4
    if-ne v1, v3, :cond_c

    float-to-int v1, v5

    float-to-int p1, p1

    .line 17
    invoke-virtual {p0, v1, p1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object p1

    .line 18
    iget-object v1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne p1, v1, :cond_c

    .line 19
    invoke-virtual {p0, p1, v0}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto/16 :goto_2

    .line 20
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_8

    .line 21
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 22
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 23
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 24
    iget-object v7, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mInitialMotionX:[F

    aget v7, v7, v3

    sub-float v7, v5, v7

    .line 25
    iget-object v8, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mInitialMotionY:[F

    aget v8, v8, v3

    sub-float v8, v6, v8

    .line 26
    invoke-direct {p0, v7, v8, v3}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    .line 27
    iget v9, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mDragState:I

    if-ne v9, v4, :cond_6

    goto :goto_1

    :cond_6
    float-to-int v5, v5

    float-to-int v6, v6

    .line 28
    invoke-virtual {p0, v5, v6}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 29
    invoke-direct {p0, v5, v7, v8}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 30
    invoke-virtual {p0, v5, v3}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    :cond_8
    :goto_1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 32
    :cond_9
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->cancel()V

    goto :goto_2

    .line 33
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 35
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    .line 36
    invoke-direct {p0, v0, v1, p1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->saveInitialMotion(FFI)V

    float-to-int v0, v0

    float-to-int v1, v1

    .line 37
    invoke-virtual {p0, v0, v1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v0, v1, :cond_b

    iget v1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mDragState:I

    if-ne v1, v3, :cond_b

    .line 39
    invoke-virtual {p0, v0, p1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    .line 40
    :cond_b
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mInitialEdgeTouched:[I

    aget v0, v0, p1

    .line 41
    iget v1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mTrackingEdges:I

    and-int v3, v0, v1

    if-eqz v3, :cond_c

    .line 42
    iget-object v3, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCallback:Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;

    and-int/2addr v0, v1

    invoke-virtual {v3, v0, p1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;->onEdgeTouched(II)V

    .line 43
    :cond_c
    :goto_2
    iget p1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mDragState:I

    if-ne p1, v4, :cond_d

    const/4 v2, 0x1

    :cond_d
    return v2
.end method

.method public smoothSlideViewTo(Landroid/view/View;II)Z
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCapturedView:Landroid/view/View;

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mActivePointerId:I

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p2, p3, p1, p1}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result p1

    return p1
.end method

.method public tryCaptureViewForDrag(Landroid/view/View;I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCapturedView:Landroid/view/View;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mActivePointerId:I

    if-ne v0, p2, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mCallback:Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;

    invoke-virtual {v0, p1, p2}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper$Callback;->tryCaptureView(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iput p2, p0, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->mActivePointerId:I

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/widget/swipe/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
