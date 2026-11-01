.class public Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;
.super Lcom/google/android/material/appbar/AppBarLayout$Behavior;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "overScroll"

.field private static final TARGET_HEIGHT:F = 500.0f


# instance fields
.field private isAnimate:Z

.field private mLastBottom:I

.field private mLastScale:F

.field private mParentHeight:I

.field private mTargetImageView:Landroid/view/View;

.field private mTargetImageViewHeight:I

.field private mTargetLabelView:Landroid/view/View;

.field private mTotalDy:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->mTargetImageView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->mTargetLabelView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->mLastBottom:I

    return p0
.end method

.method public static synthetic access$300(Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->mParentHeight:I

    return p0
.end method

.method private initialImage(Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 2
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->mParentHeight:I

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->mTargetImageView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->mTargetImageViewHeight:I

    return-void
.end method

.method private recovery(Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->mTotalDy:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 2
    iput v1, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->mTotalDy:F

    .line 3
    iget-boolean v0, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->isAnimate:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v2, 0x0

    .line 4
    iget v3, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->mLastScale:F

    aput v3, v0, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior$1;

    invoke-direct {v1, p0, p1}, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior$1;-><init>(Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;Lcom/google/android/material/appbar/AppBarLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->mTargetImageView:Landroid/view/View;

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->mTargetImageView:Landroid/view/View;

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->mTargetLabelView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 10
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 11
    iget-object v0, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->mTargetLabelView:Landroid/view/View;

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 12
    :cond_1
    iget v0, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->mParentHeight:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBottom(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private scale(Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->mTotalDy:F

    neg-int p3, p3

    int-to-float p3, p3

    add-float/2addr v0, p3

    iput v0, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->mTotalDy:F

    const/high16 p3, 0x43fa0000    # 500.0f

    .line 2
    invoke-static {v0, p3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->mTotalDy:F

    div-float/2addr v0, p3

    const/high16 p3, 0x3f800000    # 1.0f

    add-float/2addr v0, p3

    .line 3
    invoke-static {p3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->mLastScale:F

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->mTargetImageView:Landroid/view/View;

    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->mTargetImageView:Landroid/view/View;

    iget v1, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->mLastScale:F

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->mTargetLabelView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 7
    iget v1, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->mLastScale:F

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->mTargetLabelView:Landroid/view/View;

    iget v1, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->mLastScale:F

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 9
    :cond_0
    iget v0, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->mParentHeight:I

    iget v1, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->mTargetImageViewHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->mLastScale:F

    sub-float/2addr v2, p3

    mul-float v1, v1, v2

    float-to-int p3, v1

    add-int/2addr v0, p3

    iput v0, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->mLastBottom:I

    .line 10
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBottom(I)V

    const/4 p1, 0x0

    .line 11
    invoke-virtual {p2, p1}, Landroid/view/View;->setScrollY(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onInterceptTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)Z

    move-result p1

    return p1
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)Z
    .locals 2

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;->onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)Z

    move-result p3

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->mTargetImageView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1100a6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->mTargetImageView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 6
    invoke-direct {p0, p2}, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->initialImage(Lcom/google/android/material/appbar/AppBarLayout;)V

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->mTargetLabelView:Landroid/view/View;

    if-nez p2, :cond_1

    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 8
    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f1100a7

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 9
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->mTargetLabelView:Landroid/view/View;

    :cond_1
    return p3
.end method

.method public bridge synthetic onNestedFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->onNestedFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;FFZ)Z

    move-result p1

    return p1
.end method

.method public onNestedFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;FFZ)Z
    .locals 0

    .line 2
    invoke-super/range {p0 .. p6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onNestedPreFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p5}, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->onNestedPreFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;FF)Z

    move-result p1

    return p1
.end method

.method public onNestedPreFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;FF)Z
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p5, v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->isAnimate:Z

    .line 3
    :cond_0
    invoke-super/range {p0 .. p5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedPreFling(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p6}, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[I)V

    return-void
.end method

.method public onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;II[I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->mTargetImageView:Landroid/view/View;

    if-eqz v0, :cond_2

    if-gez p5, :cond_0

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    iget v1, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->mParentHeight:I

    if-ge v0, v1, :cond_1

    :cond_0
    if-lez p5, :cond_2

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    iget v1, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->mParentHeight:I

    if-le v0, v1, :cond_2

    .line 3
    :cond_1
    invoke-direct {p0, p2, p3, p5}, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->scale(Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I)V

    goto :goto_0

    .line 4
    :cond_2
    invoke-super/range {p0 .. p6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedPreScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p7}, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIII)V

    return-void
.end method

.method public onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;IIII)V
    .locals 0

    .line 2
    invoke-super/range {p0 .. p7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V

    return-void
.end method

.method public bridge synthetic onNestedScrollAccepted(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p5}, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->onNestedScrollAccepted(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 2
    invoke-super/range {p0 .. p5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedScrollAccepted(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    return-void
.end method

.method public bridge synthetic onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual/range {p0 .. p5}, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->isAnimate:Z

    .line 3
    invoke-super/range {p0 .. p5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onStartNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;)V

    return-void
.end method

.method public onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2}, Lcom/wsw/cospa/widget/behavior/AppBarLayoutOverScrollViewBehavior;->recovery(Lcom/google/android/material/appbar/AppBarLayout;)V

    .line 3
    invoke-super {p0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onStopNestedScroll(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->onTouchEvent(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
