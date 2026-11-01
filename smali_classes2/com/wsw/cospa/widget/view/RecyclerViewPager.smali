.class public Lcom/wsw/cospa/widget/view/RecyclerViewPager;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/widget/view/OnScaleDragGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Lcom/wsw/cospa/widget/view/FlingRunnable$OnFlingRunningListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/widget/view/RecyclerViewPager$GlobalLayoutListener;,
        Lcom/wsw/cospa/widget/view/RecyclerViewPager$OnPageChangedListener;
    }
.end annotation


# static fields
.field private static final FLING_FACTOR:F = 0.1f

.field public static final MAX_SCALE:F = 3.0f

.field public static final MIN_SCALE:F = 1.0f


# instance fields
.field private isDoubleTap:Z

.field public mCurView:Landroid/view/View;

.field private mCurrentFlingRunnable:Lcom/wsw/cospa/widget/view/FlingRunnable;

.field public mFirstLeftWhenDragging:I

.field public mFirstTopWhenDragging:I

.field private mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

.field private mGlobalLayoutListener:Lcom/wsw/cospa/widget/view/RecyclerViewPager$GlobalLayoutListener;

.field private mHasCalledOnPageChanged:Z

.field private final mMatrix:Landroid/graphics/Matrix;

.field public mMaxLeftWhenDragging:I

.field public mMaxTopWhenDragging:I

.field public mMinLeftWhenDragging:I

.field public mMinTopWhenDragging:I

.field public mNeedAdjust:Z

.field private mOnPageChangedListener:Lcom/wsw/cospa/widget/view/RecyclerViewPager$OnPageChangedListener;

.field private mPositionBeforeScroll:I

.field private mPositionOnTouchDown:I

.field private mScaleDragDetector:Lcom/wsw/cospa/widget/view/ScaleDragDetector;

.field private mScaleFactor:F

.field private mScrollSpeed:Ljava/lang/Float;

.field private mSmoothScrollTargetPosition:I

.field private mTapGestureListener:Lcom/wsw/cospa/widget/view/OnTapGestureListener;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRectF:Landroid/graphics/RectF;

.field private mTouchSpan:F

.field private mTriggerOffset:F

.field private mViewPagerAdapter:Lcom/wsw/cospa/widget/view/RecyclerViewPagerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/wsw/cospa/widget/view/RecyclerViewPagerAdapter<",
            "*>;"
        }
    .end annotation
.end field

.field private reverseLayout:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, -0x80000000

    .line 4
    iput p2, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mMaxLeftWhenDragging:I

    const p3, 0x7fffffff

    .line 5
    iput p3, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mMinLeftWhenDragging:I

    .line 6
    iput p2, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mMaxTopWhenDragging:I

    .line 7
    iput p3, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mMinTopWhenDragging:I

    .line 8
    new-instance p2, Lcom/wsw/cospa/widget/view/RecyclerViewPager$GlobalLayoutListener;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/wsw/cospa/widget/view/RecyclerViewPager$GlobalLayoutListener;-><init>(Lcom/wsw/cospa/widget/view/RecyclerViewPager;Lcom/wsw/cospa/widget/view/RecyclerViewPager$1;)V

    iput-object p2, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mGlobalLayoutListener:Lcom/wsw/cospa/widget/view/RecyclerViewPager$GlobalLayoutListener;

    const/4 p2, -0x1

    .line 9
    iput p2, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mSmoothScrollTargetPosition:I

    .line 10
    iput p2, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mPositionBeforeScroll:I

    const p3, 0x3d4ccccd    # 0.05f

    .line 11
    iput p3, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mTriggerOffset:F

    .line 12
    iput p2, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mPositionOnTouchDown:I

    const/4 p2, 0x1

    .line 13
    iput-boolean p2, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mHasCalledOnPageChanged:Z

    const/4 p3, 0x0

    .line 14
    iput-boolean p3, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->reverseLayout:Z

    .line 15
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mMatrix:Landroid/graphics/Matrix;

    .line 16
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mTempRectF:Landroid/graphics/RectF;

    .line 17
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mTempRect:Landroid/graphics/Rect;

    const/high16 v0, 0x40000000    # 2.0f

    .line 18
    iput v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mScaleFactor:F

    .line 19
    iput-boolean p2, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->isDoubleTap:Z

    .line 20
    new-instance p2, Lcom/wsw/cospa/widget/view/ScaleDragDetector;

    invoke-direct {p2, p1, p0}, Lcom/wsw/cospa/widget/view/ScaleDragDetector;-><init>(Landroid/content/Context;Lcom/wsw/cospa/widget/view/OnScaleDragGestureListener;)V

    iput-object p2, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mScaleDragDetector:Lcom/wsw/cospa/widget/view/ScaleDragDetector;

    .line 21
    new-instance p1, Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/wsw/cospa/widget/view/RecyclerViewPager$1;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/widget/view/RecyclerViewPager$1;-><init>(Lcom/wsw/cospa/widget/view/RecyclerViewPager;)V

    invoke-direct {p1, p2, v0}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    .line 22
    invoke-virtual {p1, p0}, Landroidx/core/view/GestureDetectorCompat;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 23
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public static synthetic access$100(Lcom/wsw/cospa/widget/view/RecyclerViewPager;)Lcom/wsw/cospa/widget/view/OnTapGestureListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mTapGestureListener:Lcom/wsw/cospa/widget/view/OnTapGestureListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/wsw/cospa/widget/view/RecyclerViewPager;)Ljava/lang/Float;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mScrollSpeed:Ljava/lang/Float;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/wsw/cospa/widget/view/RecyclerViewPager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mSmoothScrollTargetPosition:I

    return p0
.end method

.method public static synthetic access$400(Lcom/wsw/cospa/widget/view/RecyclerViewPager;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->getItemCount()I

    move-result p0

    return p0
.end method

.method public static synthetic access$500(Lcom/wsw/cospa/widget/view/RecyclerViewPager;)Lcom/wsw/cospa/widget/view/RecyclerViewPager$OnPageChangedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mOnPageChangedListener:Lcom/wsw/cospa/widget/view/RecyclerViewPager$OnPageChangedListener;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/wsw/cospa/widget/view/RecyclerViewPager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mPositionBeforeScroll:I

    return p0
.end method

.method private getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mTempRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mTempRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mTempRectF:Landroid/graphics/RectF;

    return-object p1
.end method

.method private getFlingCount(II)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-lez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    int-to-double v1, v0

    mul-int p1, p1, v0

    int-to-float p1, p1

    const v0, 0x3dcccccd    # 0.1f

    mul-float p1, p1, v0

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 1
    iget p2, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mTriggerOffset:F

    sub-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, p1

    double-to-int p1, v1

    return p1
.end method

.method private getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mViewPagerAdapter:Lcom/wsw/cospa/widget/view/RecyclerViewPagerAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/wsw/cospa/widget/view/RecyclerViewPagerAdapter;->getItemCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method private safeTargetPosition(II)I
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-lt p1, p2, :cond_1

    add-int/lit8 p2, p2, -0x1

    return p2

    :cond_1
    return p1
.end method

.method private setScale(FFF)V
    .locals 8

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x40400000    # 3.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 1
    new-instance v0, Lcom/wsw/cospa/widget/view/AnimatedScaleRunnable;

    iget-object v6, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mMatrix:Landroid/graphics/Matrix;

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p0

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/wsw/cospa/widget/view/AnimatedScaleRunnable;-><init>(FFFLandroid/view/View;Landroid/graphics/Matrix;Lcom/wsw/cospa/widget/view/OnScaleDragGestureListener;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public adjustPositionX(I)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->reverseLayout:Z

    if-eqz v0, :cond_0

    mul-int/lit8 p1, p1, -0x1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 3
    invoke-static {p0}, Landroid/support/v4/zl1;->if(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 5
    invoke-direct {p0, p1, v1}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->getFlingCount(II)I

    move-result p1

    const/4 v1, 0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v2, -0x1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-nez p1, :cond_1

    move v2, v0

    goto :goto_0

    .line 6
    :cond_1
    iget v2, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mPositionOnTouchDown:I

    add-int/2addr v2, p1

    :goto_0
    const/4 p1, 0x0

    .line 7
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 8
    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-ne p1, v0, :cond_5

    .line 9
    iget v2, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mPositionOnTouchDown:I

    if-ne v2, v0, :cond_5

    .line 10
    invoke-static {p0}, Landroid/support/v4/zl1;->do(Landroidx/recyclerview/widget/RecyclerView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 11
    iget v2, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mTouchSpan:F

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mTriggerOffset:F

    mul-float v3, v3, v4

    mul-float v3, v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    if-eqz p1, :cond_4

    .line 12
    iget-boolean v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->reverseLayout:Z

    if-nez v0, :cond_3

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 13
    :cond_4
    iget v2, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mTouchSpan:F

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mTriggerOffset:F

    neg-float v3, v3

    mul-float v0, v0, v3

    cmpg-float v0, v2, v0

    if-gez v0, :cond_5

    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-eq p1, v0, :cond_5

    .line 14
    iget-boolean v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->reverseLayout:Z

    if-nez v0, :cond_2

    goto :goto_1

    .line 15
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->getItemCount()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->safeTargetPosition(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->startSmoothScroll(I)V

    :cond_6
    return-void
.end method

.method public adjustPositionY(I)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->reverseLayout:Z

    if-eqz v0, :cond_0

    mul-int/lit8 p1, p1, -0x1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 3
    invoke-static {p0}, Landroid/support/v4/zl1;->new(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 5
    invoke-direct {p0, p1, v1}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->getFlingCount(II)I

    move-result p1

    const/4 v1, 0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v2, -0x1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-nez p1, :cond_1

    move v2, v0

    goto :goto_0

    .line 6
    :cond_1
    iget v2, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mPositionOnTouchDown:I

    add-int/2addr v2, p1

    :goto_0
    const/4 p1, 0x0

    .line 7
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 8
    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-ne p1, v0, :cond_5

    .line 9
    iget v2, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mPositionOnTouchDown:I

    if-ne v2, v0, :cond_5

    .line 10
    invoke-static {p0}, Landroid/support/v4/zl1;->for(Landroidx/recyclerview/widget/RecyclerView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 11
    iget v2, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mTouchSpan:F

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mTriggerOffset:F

    mul-float v3, v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    if-eqz p1, :cond_4

    .line 12
    iget-boolean v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->reverseLayout:Z

    if-nez v0, :cond_3

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_3
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 13
    :cond_4
    iget v2, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mTouchSpan:F

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mTriggerOffset:F

    neg-float v3, v3

    mul-float v0, v0, v3

    cmpg-float v0, v2, v0

    if-gez v0, :cond_5

    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-eq p1, v0, :cond_5

    .line 14
    iget-boolean v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->reverseLayout:Z

    if-nez v0, :cond_2

    goto :goto_1

    .line 15
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->getItemCount()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->safeTargetPosition(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->startSmoothScroll(I)V

    :cond_6
    return-void
.end method

.method public checkBounds()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    .line 3
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 4
    invoke-static {p0}, Lcom/wsw/cospa/widget/view/ViewUtils;->getViewHeight(Landroid/view/View;)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    cmpg-float v6, v1, v3

    if-gtz v6, :cond_0

    sub-float/2addr v3, v1

    div-float/2addr v3, v4

    .line 5
    iget v1, v0, Landroid/graphics/RectF;->top:F

    :goto_0
    sub-float/2addr v3, v1

    goto :goto_1

    .line 6
    :cond_0
    iget v1, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v6, v1, v5

    if-lez v6, :cond_1

    neg-float v3, v1

    goto :goto_1

    .line 7
    :cond_1
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v6, v1, v3

    if-gez v6, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 8
    :goto_1
    invoke-static {p0}, Lcom/wsw/cospa/widget/view/ViewUtils;->getViewWidth(Landroid/view/View;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v6, v2, v1

    if-gtz v6, :cond_3

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    .line 9
    iget v0, v0, Landroid/graphics/RectF;->left:F

    :goto_2
    sub-float v5, v1, v0

    goto :goto_3

    .line 10
    :cond_3
    iget v2, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v2, v5

    if-lez v4, :cond_4

    neg-float v5, v2

    goto :goto_3

    .line 11
    :cond_4
    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_5

    goto :goto_2

    .line 12
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v5, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Landroid/support/v4/zl1;->if(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Landroid/support/v4/zl1;->new(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mPositionOnTouchDown:I

    .line 5
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public ensureRecyclerViewPagerAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)Lcom/wsw/cospa/widget/view/RecyclerViewPagerAdapter;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/wsw/cospa/widget/view/RecyclerViewPagerAdapter;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/wsw/cospa/widget/view/RecyclerViewPagerAdapter;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/wsw/cospa/widget/view/RecyclerViewPagerAdapter;

    invoke-direct {v0, p0, p1}, Lcom/wsw/cospa/widget/view/RecyclerViewPagerAdapter;-><init>(Lcom/wsw/cospa/widget/view/RecyclerViewPager;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public fling(II)Z
    .locals 3

    int-to-float v0, p1

    const v1, 0x3dcccccd    # 0.1f

    mul-float v0, v0, v1

    float-to-int v0, v0

    int-to-float v2, p2

    mul-float v2, v2, v1

    float-to-int v1, v2

    .line 1
    invoke-super {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->fling(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->adjustPositionX(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p2}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->adjustPositionY(I)V

    :cond_1
    :goto_0
    return v0
.end method

.method public getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mViewPagerAdapter:Lcom/wsw/cospa/widget/view/RecyclerViewPagerAdapter;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/wsw/cospa/widget/view/RecyclerViewPagerAdapter;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Landroid/support/v4/zl1;->if(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Landroid/support/v4/zl1;->new(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v0

    :goto_0
    if-gez v0, :cond_1

    .line 4
    iget v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mSmoothScrollTargetPosition:I

    :cond_1
    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->isDoubleTap:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mMatrix:Landroid/graphics/Matrix;

    invoke-static {v0}, Lcom/wsw/cospa/widget/view/ViewUtils;->calculateScale(Landroid/graphics/Matrix;)F

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 5
    iget v3, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mScaleFactor:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_0
    invoke-direct {p0, v3, v2, p1}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->setScale(FFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return v1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDrag(FF)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->checkBounds()V

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public onFling(FFFF)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->checkBounds()V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p1}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v1

    .line 3
    new-instance v0, Lcom/wsw/cospa/widget/view/FlingRunnable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, p0, p0}, Lcom/wsw/cospa/widget/view/FlingRunnable;-><init>(Landroid/content/Context;Lcom/wsw/cospa/widget/view/FlingRunnable$OnFlingRunningListener;Landroid/view/View;)V

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mCurrentFlingRunnable:Lcom/wsw/cospa/widget/view/FlingRunnable;

    .line 4
    invoke-static {p0}, Lcom/wsw/cospa/widget/view/ViewUtils;->getViewWidth(Landroid/view/View;)I

    move-result v2

    .line 5
    invoke-static {p0}, Lcom/wsw/cospa/widget/view/ViewUtils;->getViewHeight(Landroid/view/View;)I

    move-result v3

    float-to-int v4, p3

    float-to-int v5, p4

    .line 6
    invoke-virtual/range {v0 .. v5}, Lcom/wsw/cospa/widget/view/FlingRunnable;->fling(Landroid/graphics/RectF;IIII)V

    .line 7
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mCurrentFlingRunnable:Lcom/wsw/cospa/widget/view/FlingRunnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFlingRunning(II)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mMatrix:Landroid/graphics/Matrix;

    int-to-float p1, p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mLayoutState"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mAnchorOffset"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mAnchorPosition"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 6
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 7
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 8
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    if-lez v4, :cond_0

    .line 9
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_1

    .line 11
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    :goto_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onScale(FFF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mMatrix:Landroid/graphics/Matrix;

    invoke-static {v0}, Lcom/wsw/cospa/widget/view/ViewUtils;->calculateScale(Landroid/graphics/Matrix;)F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->checkBounds()V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_1
    return-void
.end method

.method public onScaleEnd()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mMatrix:Landroid/graphics/Matrix;

    invoke-static {v0}, Lcom/wsw/cospa/widget/view/ViewUtils;->calculateScale(Landroid/graphics/Matrix;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->checkBounds()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    .line 4
    new-instance v8, Lcom/wsw/cospa/widget/view/AnimatedScaleRunnable;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget-object v6, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mMatrix:Landroid/graphics/Matrix;

    move-object v1, v8

    move-object v5, p0

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/wsw/cospa/widget/view/AnimatedScaleRunnable;-><init>(FFFLandroid/view/View;Landroid/graphics/Matrix;Lcom/wsw/cospa/widget/view/OnScaleDragGestureListener;)V

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onScrollStateChanged(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    .line 2
    iput-boolean v2, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mNeedAdjust:Z

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Landroid/support/v4/zl1;->do(Landroidx/recyclerview/widget/RecyclerView;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Landroid/support/v4/zl1;->for(Landroidx/recyclerview/widget/RecyclerView;)Landroid/view/View;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mCurView:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 5
    iget-boolean v2, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mHasCalledOnPageChanged:Z

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mPositionBeforeScroll:I

    .line 7
    iput-boolean v1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mHasCalledOnPageChanged:Z

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mCurView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    iput p1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mFirstLeftWhenDragging:I

    .line 9
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mCurView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iput p1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mFirstTopWhenDragging:I

    goto :goto_1

    :cond_2
    const/4 p1, -0x1

    .line 10
    iput p1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mPositionBeforeScroll:I

    .line 11
    :goto_1
    iput v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mTouchSpan:F

    goto/16 :goto_8

    :cond_3
    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne p1, v3, :cond_6

    .line 12
    iput-boolean v1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mNeedAdjust:Z

    .line 13
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mCurView:Landroid/view/View;

    if-eqz p1, :cond_5

    .line 14
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 15
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mCurView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    iget v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mFirstLeftWhenDragging:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mTouchSpan:F

    goto :goto_2

    .line 16
    :cond_4
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mCurView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mFirstTopWhenDragging:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mTouchSpan:F

    goto :goto_2

    .line 17
    :cond_5
    iput v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mTouchSpan:F

    .line 18
    :goto_2
    iput-object v4, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mCurView:Landroid/view/View;

    goto/16 :goto_8

    :cond_6
    if-nez p1, :cond_11

    .line 19
    iget-boolean p1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mNeedAdjust:Z

    if-eqz p1, :cond_e

    .line 20
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {p0}, Landroid/support/v4/zl1;->if(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p1

    goto :goto_3

    .line 21
    :cond_7
    invoke-static {p0}, Landroid/support/v4/zl1;->new(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p1

    .line 22
    :goto_3
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mCurView:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 23
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    .line 24
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 25
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mCurView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mFirstLeftWhenDragging:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 26
    iget-object v1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mCurView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mTriggerOffset:F

    mul-float v1, v1, v2

    cmpl-float v1, v0, v1

    if-lez v1, :cond_8

    iget-object v1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mCurView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mMaxLeftWhenDragging:I

    if-lt v1, v2, :cond_8

    .line 27
    iget-boolean v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->reverseLayout:Z

    if-nez v0, :cond_b

    goto :goto_4

    .line 28
    :cond_8
    iget-object v1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mCurView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mTriggerOffset:F

    neg-float v2, v2

    mul-float v1, v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_d

    iget-object v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mCurView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mMinLeftWhenDragging:I

    if-gt v0, v1, :cond_d

    .line 29
    iget-boolean v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->reverseLayout:Z

    if-nez v0, :cond_a

    goto :goto_5

    .line 30
    :cond_9
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mCurView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mFirstTopWhenDragging:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 31
    iget-object v1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mCurView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mTriggerOffset:F

    mul-float v1, v1, v2

    cmpl-float v1, v0, v1

    if-lez v1, :cond_c

    iget-object v1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mCurView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget v2, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mMaxTopWhenDragging:I

    if-lt v1, v2, :cond_c

    .line 32
    iget-boolean v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->reverseLayout:Z

    if-nez v0, :cond_b

    :cond_a
    :goto_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_6

    :cond_b
    :goto_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    .line 33
    :cond_c
    iget-object v1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mCurView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mTriggerOffset:F

    neg-float v2, v2

    mul-float v1, v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_d

    iget-object v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mCurView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mMinTopWhenDragging:I

    if-gt v0, v1, :cond_d

    .line 34
    iget-boolean v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->reverseLayout:Z

    if-nez v0, :cond_a

    goto :goto_5

    .line 35
    :cond_d
    :goto_6
    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->getItemCount()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->safeTargetPosition(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->startSmoothScroll(I)V

    .line 36
    iput-object v4, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mCurView:Landroid/view/View;

    goto :goto_7

    .line 37
    :cond_e
    iget p1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mSmoothScrollTargetPosition:I

    iget v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mPositionBeforeScroll:I

    if-eq p1, v0, :cond_10

    .line 38
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mOnPageChangedListener:Lcom/wsw/cospa/widget/view/RecyclerViewPager$OnPageChangedListener;

    if-eqz p1, :cond_f

    .line 39
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->getCurrentPosition()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/wsw/cospa/widget/view/RecyclerViewPager$OnPageChangedListener;->OnPageChanged(II)V

    .line 40
    :cond_f
    iput-boolean v2, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mHasCalledOnPageChanged:Z

    .line 41
    iget p1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mSmoothScrollTargetPosition:I

    iput p1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mPositionBeforeScroll:I

    :cond_10
    :goto_7
    const/high16 p1, -0x80000000

    .line 42
    iput p1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mMaxLeftWhenDragging:I

    const v0, 0x7fffffff

    .line 43
    iput v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mMinLeftWhenDragging:I

    .line 44
    iput p1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mMaxTopWhenDragging:I

    .line 45
    iput v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mMinTopWhenDragging:I

    :cond_11
    :goto_8
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mTapGestureListener:Lcom/wsw/cospa/widget/view/OnTapGestureListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/wsw/cospa/widget/view/OnTapGestureListener;->onSingleTap(FF)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mCurView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mMaxLeftWhenDragging:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mMaxLeftWhenDragging:I

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mCurView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mMaxTopWhenDragging:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mMaxTopWhenDragging:I

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mCurView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mMinLeftWhenDragging:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mMinLeftWhenDragging:I

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mCurView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mMinTopWhenDragging:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mMinTopWhenDragging:I

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mScaleDragDetector:Lcom/wsw/cospa/widget/view/ScaleDragDetector;

    invoke-virtual {v0}, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->isScaling()Z

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mScaleDragDetector:Lcom/wsw/cospa/widget/view/ScaleDragDetector;

    invoke-virtual {v1, p1}, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mScaleDragDetector:Lcom/wsw/cospa/widget/view/ScaleDragDetector;

    invoke-virtual {v0}, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->isScaling()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {v0, p1}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public refreshPosition()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->getCurrentPosition()I

    move-result v0

    .line 2
    iget v1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mPositionBeforeScroll:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/2addr v1, v0

    .line 3
    iput v1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mPositionBeforeScroll:I

    .line 4
    :cond_0
    iget v1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mPositionOnTouchDown:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mPositionOnTouchDown:I

    .line 5
    iget v1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mSmoothScrollTargetPosition:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mSmoothScrollTargetPosition:I

    return-void
.end method

.method public scrollToPosition(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mPositionBeforeScroll:I

    .line 2
    iput p1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mSmoothScrollTargetPosition:I

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scrollToPosition position : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecyclerViewPager"

    invoke-static {v1, v0}, Landroid/support/v4/vv0;->if(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 5
    iget p1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mSmoothScrollTargetPosition:I

    if-ltz p1, :cond_0

    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget p1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mSmoothScrollTargetPosition:I

    iget v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mPositionBeforeScroll:I

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mOnPageChangedListener:Lcom/wsw/cospa/widget/view/RecyclerViewPager$OnPageChangedListener;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mGlobalLayoutListener:Lcom/wsw/cospa/widget/view/RecyclerViewPager$GlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->ensureRecyclerViewPagerAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)Lcom/wsw/cospa/widget/view/RecyclerViewPagerAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mViewPagerAdapter:Lcom/wsw/cospa/widget/view/RecyclerViewPagerAdapter;

    .line 2
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setDoubleTap(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->isDoubleTap:Z

    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result p1

    iput-boolean p1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->reverseLayout:Z

    :cond_0
    return-void
.end method

.method public setOnPageChangedListener(Lcom/wsw/cospa/widget/view/RecyclerViewPager$OnPageChangedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mOnPageChangedListener:Lcom/wsw/cospa/widget/view/RecyclerViewPager$OnPageChangedListener;

    return-void
.end method

.method public setScaleFactor(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mScaleFactor:F

    return-void
.end method

.method public setScrollSpeed(F)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mScrollSpeed:Ljava/lang/Float;

    return-void
.end method

.method public setTapListenerListener(Lcom/wsw/cospa/widget/view/OnTapGestureListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mTapGestureListener:Lcom/wsw/cospa/widget/view/OnTapGestureListener;

    return-void
.end method

.method public setTriggerOffset(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mTriggerOffset:F

    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mPositionBeforeScroll:I

    if-gez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mPositionBeforeScroll:I

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->startSmoothScroll(I)V

    .line 4
    iget p1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mSmoothScrollTargetPosition:I

    if-ltz p1, :cond_1

    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget p1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mSmoothScrollTargetPosition:I

    iget v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mPositionBeforeScroll:I

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mOnPageChangedListener:Lcom/wsw/cospa/widget/view/RecyclerViewPager$OnPageChangedListener;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mGlobalLayoutListener:Lcom/wsw/cospa/widget/view/RecyclerViewPager$GlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    return-void
.end method

.method public startSmoothScroll(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mSmoothScrollTargetPosition:I

    .line 2
    new-instance v0, Lcom/wsw/cospa/widget/view/RecyclerViewPager$2;

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/wsw/cospa/widget/view/RecyclerViewPager$2;-><init>(Lcom/wsw/cospa/widget/view/RecyclerViewPager;Landroid/content/Context;)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSmoothScroll position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecyclerViewPager"

    invoke-static {v2, v1}, Landroid/support/v4/vv0;->if(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

.method public swapAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->ensureRecyclerViewPagerAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)Lcom/wsw/cospa/widget/view/RecyclerViewPagerAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/widget/view/RecyclerViewPager;->mViewPagerAdapter:Lcom/wsw/cospa/widget/view/RecyclerViewPagerAdapter;

    .line 2
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->swapAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;Z)V

    return-void
.end method
