.class public Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/widget/view/OnScaleDragGestureListener;
.implements Lcom/wsw/cospa/widget/view/FlingRunnable$OnFlingRunningListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# static fields
.field public static final MAX_SCALE:F = 3.0f

.field public static final MIN_SCALE:F = 1.0f


# instance fields
.field private isDoubleTap:Z

.field private isVertical:Z

.field private mCurrentFlingRunnable:Lcom/wsw/cospa/widget/view/FlingRunnable;

.field private mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

.field private final mMatrix:Landroid/graphics/Matrix;

.field private mScaleDragDetector:Lcom/wsw/cospa/widget/view/ScaleDragDetector;

.field private mScaleFactor:F

.field private mTapGestureListener:Lcom/wsw/cospa/widget/view/OnTapGestureListener;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->mMatrix:Landroid/graphics/Matrix;

    .line 5
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->mTempRectF:Landroid/graphics/RectF;

    .line 6
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->mTempRect:Landroid/graphics/Rect;

    const/high16 p2, 0x40000000    # 2.0f

    .line 7
    iput p2, p0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->mScaleFactor:F

    const/4 p2, 0x1

    .line 8
    iput-boolean p2, p0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->isVertical:Z

    .line 9
    iput-boolean p2, p0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->isDoubleTap:Z

    .line 10
    new-instance p2, Lcom/wsw/cospa/widget/view/ScaleDragDetector;

    invoke-direct {p2, p1, p0}, Lcom/wsw/cospa/widget/view/ScaleDragDetector;-><init>(Landroid/content/Context;Lcom/wsw/cospa/widget/view/OnScaleDragGestureListener;)V

    iput-object p2, p0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->mScaleDragDetector:Lcom/wsw/cospa/widget/view/ScaleDragDetector;

    .line 11
    new-instance p1, Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView$1;

    invoke-direct {p3, p0}, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView$1;-><init>(Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;)V

    invoke-direct {p1, p2, p3}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    .line 12
    invoke-virtual {p1, p0}, Landroidx/core/view/GestureDetectorCompat;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;)Lcom/wsw/cospa/widget/view/OnTapGestureListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->mTapGestureListener:Lcom/wsw/cospa/widget/view/OnTapGestureListener;

    return-object p0
.end method

.method private cancelFling()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->mCurrentFlingRunnable:Lcom/wsw/cospa/widget/view/FlingRunnable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/wsw/cospa/widget/view/FlingRunnable;->cancelFling()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->mCurrentFlingRunnable:Lcom/wsw/cospa/widget/view/FlingRunnable;

    :cond_0
    return-void
.end method

.method private getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->mTempRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->mTempRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->mTempRectF:Landroid/graphics/RectF;

    return-object p1
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

    iget-object v6, p0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->mMatrix:Landroid/graphics/Matrix;

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
.method public checkBounds()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->mMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

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
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v5, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->isDoubleTap:Z

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->mMatrix:Landroid/graphics/Matrix;

    invoke-static {v0}, Lcom/wsw/cospa/widget/view/ViewUtils;->calculateScale(Landroid/graphics/Matrix;)F

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 5
    iget v2, p0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->mScaleFactor:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    invoke-direct {p0, v2, v1, p1}, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->setScale(FFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDrag(FF)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->isVertical:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->checkBounds()V

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public onFling(FFFF)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->checkBounds()V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->mMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p1}, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v1

    .line 3
    new-instance v0, Lcom/wsw/cospa/widget/view/FlingRunnable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, p0, p0}, Lcom/wsw/cospa/widget/view/FlingRunnable;-><init>(Landroid/content/Context;Lcom/wsw/cospa/widget/view/FlingRunnable$OnFlingRunningListener;Landroid/view/View;)V

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->mCurrentFlingRunnable:Lcom/wsw/cospa/widget/view/FlingRunnable;

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
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->mCurrentFlingRunnable:Lcom/wsw/cospa/widget/view/FlingRunnable;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFlingRunning(II)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->isVertical:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->mMatrix:Landroid/graphics/Matrix;

    int-to-float p1, p1

    invoke-virtual {p2, p1, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->mMatrix:Landroid/graphics/Matrix;

    int-to-float p2, p2

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public onScale(FFF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->mMatrix:Landroid/graphics/Matrix;

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
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->checkBounds()V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_1
    return-void
.end method

.method public onScaleEnd()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->mMatrix:Landroid/graphics/Matrix;

    invoke-static {v0}, Lcom/wsw/cospa/widget/view/ViewUtils;->calculateScale(Landroid/graphics/Matrix;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->checkBounds()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->mMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    .line 4
    new-instance v8, Lcom/wsw/cospa/widget/view/AnimatedScaleRunnable;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget-object v6, p0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->mMatrix:Landroid/graphics/Matrix;

    move-object v1, v8

    move-object v5, p0

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/wsw/cospa/widget/view/AnimatedScaleRunnable;-><init>(FFFLandroid/view/View;Landroid/graphics/Matrix;Lcom/wsw/cospa/widget/view/OnScaleDragGestureListener;)V

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->mTapGestureListener:Lcom/wsw/cospa/widget/view/OnTapGestureListener;

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
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->cancelFling()V

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->mScaleDragDetector:Lcom/wsw/cospa/widget/view/ScaleDragDetector;

    invoke-virtual {v0}, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->isScaling()Z

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->mScaleDragDetector:Lcom/wsw/cospa/widget/view/ScaleDragDetector;

    invoke-virtual {v1, p1}, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->mScaleDragDetector:Lcom/wsw/cospa/widget/view/ScaleDragDetector;

    invoke-virtual {v0}, Lcom/wsw/cospa/widget/view/ScaleDragDetector;->isScaling()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->mGestureDetector:Landroidx/core/view/GestureDetectorCompat;

    invoke-virtual {v0, p1}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public setDoubleTap(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->isDoubleTap:Z

    return-void
.end method

.method public setScaleFactor(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->mScaleFactor:F

    return-void
.end method

.method public setTapListenerListener(Lcom/wsw/cospa/widget/view/OnTapGestureListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->mTapGestureListener:Lcom/wsw/cospa/widget/view/OnTapGestureListener;

    return-void
.end method

.method public setVertical(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/widget/view/ZoomableRecyclerView;->isVertical:Z

    return-void
.end method
