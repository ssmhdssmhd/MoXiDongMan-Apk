.class public Lcc/shinichi/library/view/helper/FingerDragHelper;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcc/shinichi/library/view/helper/FingerDragHelper$onAlphaChangedListener;
    }
.end annotation


# static fields
.field private static final catch:Ljava/lang/String;

.field private static final class:I = 0x1f4

.field private static final const:J = 0xc8L

.field private static final:I


# instance fields
.field private break:Lcc/shinichi/library/view/helper/FingerDragHelper$onAlphaChangedListener;

.field private case:Z

.field private do:Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;

.field private else:I

.field private for:F

.field private goto:I

.field private if:Lcc/shinichi/library/view/photoview/PhotoView;

.field private new:F

.field private this:I

.field private try:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcc/shinichi/library/view/helper/FingerDragHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcc/shinichi/library/view/helper/FingerDragHelper;->catch:Ljava/lang/String;

    const/16 v0, 0x1f4

    .line 2
    sput v0, Lcc/shinichi/library/view/helper/FingerDragHelper;->final:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcc/shinichi/library/view/helper/FingerDragHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcc/shinichi/library/view/helper/FingerDragHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcc/shinichi/library/view/helper/FingerDragHelper;->case:Z

    .line 5
    sget p1, Lcc/shinichi/library/R$anim;->fade_in_150:I

    iput p1, p0, Lcc/shinichi/library/view/helper/FingerDragHelper;->else:I

    .line 6
    sget p1, Lcc/shinichi/library/R$anim;->fade_out_150:I

    iput p1, p0, Lcc/shinichi/library/view/helper/FingerDragHelper;->goto:I

    .line 7
    invoke-direct {p0}, Lcc/shinichi/library/view/helper/FingerDragHelper;->break()V

    return-void
.end method

.method private break()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    iput v0, p0, Lcc/shinichi/library/view/helper/FingerDragHelper;->this:I

    return-void
.end method

.method public static synthetic case(Lcc/shinichi/library/view/helper/FingerDragHelper;)F
    .locals 0

    .line 1
    iget p0, p0, Lcc/shinichi/library/view/helper/FingerDragHelper;->new:F

    return p0
.end method

.method private catch()V
    .locals 2

    .line 1
    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object v0

    invoke-virtual {v0}, Lcc/shinichi/library/do;->public()Z

    move-result v0

    const/high16 v1, 0x43fa0000    # 500.0f

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lcc/shinichi/library/view/helper/FingerDragHelper;->new:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 3
    iget v0, p0, Lcc/shinichi/library/view/helper/FingerDragHelper;->new:F

    invoke-virtual {p0, v0}, Lcc/shinichi/library/view/helper/FingerDragHelper;->this(F)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcc/shinichi/library/view/helper/FingerDragHelper;->final()V

    goto :goto_0

    .line 5
    :cond_1
    iget v0, p0, Lcc/shinichi/library/view/helper/FingerDragHelper;->new:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 6
    invoke-virtual {p0, v0}, Lcc/shinichi/library/view/helper/FingerDragHelper;->this(F)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-direct {p0}, Lcc/shinichi/library/view/helper/FingerDragHelper;->final()V

    :goto_0
    return-void
.end method

.method private class(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    .line 2
    iget v1, p0, Lcc/shinichi/library/view/helper/FingerDragHelper;->for:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcc/shinichi/library/view/helper/FingerDragHelper;->try:F

    add-float/2addr v0, v1

    iput v0, p0, Lcc/shinichi/library/view/helper/FingerDragHelper;->new:F

    .line 3
    iget-object v1, p0, Lcc/shinichi/library/view/helper/FingerDragHelper;->break:Lcc/shinichi/library/view/helper/FingerDragHelper$onAlphaChangedListener;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1, p1, v0}, Lcc/shinichi/library/view/helper/FingerDragHelper$onAlphaChangedListener;->onTranslationYChanged(Landroid/view/MotionEvent;F)V

    .line 5
    :cond_0
    iget p1, p0, Lcc/shinichi/library/view/helper/FingerDragHelper;->new:F

    float-to-int p1, p1

    neg-int p1, p1

    invoke-static {p0, p1}, Lcc/shinichi/library/view/nine/do;->throws(Landroid/view/View;I)V

    return-void
.end method

.method private const()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/helper/FingerDragHelper;->break:Lcc/shinichi/library/view/helper/FingerDragHelper$onAlphaChangedListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iget v2, p0, Lcc/shinichi/library/view/helper/FingerDragHelper;->new:F

    invoke-interface {v0, v1, v2}, Lcc/shinichi/library/view/helper/FingerDragHelper$onAlphaChangedListener;->onTranslationYChanged(Landroid/view/MotionEvent;F)V

    :cond_0
    return-void
.end method

.method public static synthetic do(Lcc/shinichi/library/view/helper/FingerDragHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcc/shinichi/library/view/helper/FingerDragHelper;->const()V

    return-void
.end method

.method public static synthetic else(Lcc/shinichi/library/view/helper/FingerDragHelper;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcc/shinichi/library/view/helper/FingerDragHelper;->new:F

    return p1
.end method

.method private final()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1
    iget v1, p0, Lcc/shinichi/library/view/helper/FingerDragHelper;->new:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3
    new-instance v1, Lcc/shinichi/library/view/helper/FingerDragHelper$try;

    invoke-direct {v1, p0}, Lcc/shinichi/library/view/helper/FingerDragHelper$try;-><init>(Lcc/shinichi/library/view/helper/FingerDragHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4
    new-instance v1, Lcc/shinichi/library/view/helper/FingerDragHelper$case;

    invoke-direct {v1, p0}, Lcc/shinichi/library/view/helper/FingerDragHelper$case;-><init>(Lcc/shinichi/library/view/helper/FingerDragHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static synthetic for(Lcc/shinichi/library/view/helper/FingerDragHelper;)I
    .locals 0

    .line 1
    iget p0, p0, Lcc/shinichi/library/view/helper/FingerDragHelper;->goto:I

    return p0
.end method

.method public static synthetic goto(Lcc/shinichi/library/view/helper/FingerDragHelper;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcc/shinichi/library/view/helper/FingerDragHelper;->try:F

    return p1
.end method

.method public static synthetic if(Lcc/shinichi/library/view/helper/FingerDragHelper;)I
    .locals 0

    .line 1
    iget p0, p0, Lcc/shinichi/library/view/helper/FingerDragHelper;->else:I

    return p0
.end method

.method public static synthetic new(Lcc/shinichi/library/view/helper/FingerDragHelper;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcc/shinichi/library/view/helper/FingerDragHelper;->case:Z

    return p0
.end method

.method public static synthetic try(Lcc/shinichi/library/view/helper/FingerDragHelper;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcc/shinichi/library/view/helper/FingerDragHelper;->case:Z

    return p1
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;

    iput-object v0, p0, Lcc/shinichi/library/view/helper/FingerDragHelper;->do:Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcc/shinichi/library/view/photoview/PhotoView;

    iput-object v0, p0, Lcc/shinichi/library/view/helper/FingerDragHelper;->if:Lcc/shinichi/library/view/photoview/PhotoView;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    and-int/2addr v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_1

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcc/shinichi/library/view/helper/FingerDragHelper;->for:F

    .line 3
    :cond_1
    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object v0

    invoke-virtual {v0}, Lcc/shinichi/library/do;->native()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4
    iget-object v0, p0, Lcc/shinichi/library/view/helper/FingerDragHelper;->if:Lcc/shinichi/library/view/photoview/PhotoView;

    const v3, 0x3a83126f    # 0.001f

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 5
    iget-object v0, p0, Lcc/shinichi/library/view/helper/FingerDragHelper;->if:Lcc/shinichi/library/view/photoview/PhotoView;

    invoke-virtual {v0}, Lcc/shinichi/library/view/photoview/PhotoView;->getScale()F

    move-result v0

    iget-object v5, p0, Lcc/shinichi/library/view/helper/FingerDragHelper;->if:Lcc/shinichi/library/view/photoview/PhotoView;

    invoke-virtual {v5}, Lcc/shinichi/library/view/photoview/PhotoView;->getMinimumScale()F

    move-result v5

    add-float/2addr v5, v3

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_5

    iget-object v0, p0, Lcc/shinichi/library/view/helper/FingerDragHelper;->if:Lcc/shinichi/library/view/photoview/PhotoView;

    .line 6
    invoke-virtual {v0}, Lcc/shinichi/library/view/photoview/PhotoView;->getMaxTouchCount()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcc/shinichi/library/view/helper/FingerDragHelper;->if:Lcc/shinichi/library/view/photoview/PhotoView;

    invoke-virtual {v0}, Lcc/shinichi/library/view/photoview/PhotoView;->getMaxTouchCount()I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 7
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v0, p0, Lcc/shinichi/library/view/helper/FingerDragHelper;->for:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcc/shinichi/library/view/helper/FingerDragHelper;->this:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    .line 8
    :cond_3
    iget-object v0, p0, Lcc/shinichi/library/view/helper/FingerDragHelper;->do:Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 9
    iget-object v0, p0, Lcc/shinichi/library/view/helper/FingerDragHelper;->do:Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-virtual {v0}, Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;->getScale()F

    move-result v0

    iget-object v5, p0, Lcc/shinichi/library/view/helper/FingerDragHelper;->do:Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-virtual {v5}, Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;->getMinScale()F

    move-result v5

    add-float/2addr v5, v3

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_5

    iget-object v0, p0, Lcc/shinichi/library/view/helper/FingerDragHelper;->do:Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;

    .line 10
    invoke-virtual {v0}, Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;->getMaxTouchCount()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcc/shinichi/library/view/helper/FingerDragHelper;->do:Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;

    invoke-virtual {v0}, Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;->getMaxTouchCount()I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 11
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v0, p0, Lcc/shinichi/library/view/helper/FingerDragHelper;->for:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcc/shinichi/library/view/helper/FingerDragHelper;->this:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    iget-object p1, p0, Lcc/shinichi/library/view/helper/FingerDragHelper;->do:Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;

    iget-boolean p1, p1, Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;->goto:Z

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    :goto_1
    return v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcc/shinichi/library/view/helper/FingerDragHelper;->catch()V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcc/shinichi/library/view/helper/FingerDragHelper;->for:F

    .line 4
    :cond_2
    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object v0

    invoke-virtual {v0}, Lcc/shinichi/library/do;->native()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5
    iget-object v0, p0, Lcc/shinichi/library/view/helper/FingerDragHelper;->if:Lcc/shinichi/library/view/photoview/PhotoView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 6
    invoke-direct {p0, p1}, Lcc/shinichi/library/view/helper/FingerDragHelper;->class(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 7
    :cond_3
    iget-object v0, p0, Lcc/shinichi/library/view/helper/FingerDragHelper;->do:Lcc/shinichi/library/view/helper/SubsamplingScaleImageViewDragClose;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 8
    invoke-direct {p0, p1}, Lcc/shinichi/library/view/helper/FingerDragHelper;->class(Landroid/view/MotionEvent;)V

    :cond_4
    :goto_0
    return v1
.end method

.method public setOnAlphaChangeListener(Lcc/shinichi/library/view/helper/FingerDragHelper$onAlphaChangedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcc/shinichi/library/view/helper/FingerDragHelper;->break:Lcc/shinichi/library/view/helper/FingerDragHelper$onAlphaChangedListener;

    return-void
.end method

.method public this(F)V
    .locals 6

    const-wide/16 v0, 0xc8

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    cmpl-float p1, p1, v5

    if-lez p1, :cond_0

    new-array p1, v4, [F

    .line 1
    iget v4, p0, Lcc/shinichi/library/view/helper/FingerDragHelper;->new:F

    aput v4, p1, v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    aput v3, p1, v2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 2
    new-instance v2, Lcc/shinichi/library/view/helper/FingerDragHelper$do;

    invoke-direct {v2, p0}, Lcc/shinichi/library/view/helper/FingerDragHelper$do;-><init>(Lcc/shinichi/library/view/helper/FingerDragHelper;)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3
    new-instance v2, Lcc/shinichi/library/view/helper/FingerDragHelper$if;

    invoke-direct {v2, p0}, Lcc/shinichi/library/view/helper/FingerDragHelper$if;-><init>(Lcc/shinichi/library/view/helper/FingerDragHelper;)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_0
    new-array p1, v4, [F

    .line 7
    iget v4, p0, Lcc/shinichi/library/view/helper/FingerDragHelper;->new:F

    aput v4, p1, v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    aput v3, p1, v2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 8
    new-instance v2, Lcc/shinichi/library/view/helper/FingerDragHelper$for;

    invoke-direct {v2, p0}, Lcc/shinichi/library/view/helper/FingerDragHelper$for;-><init>(Lcc/shinichi/library/view/helper/FingerDragHelper;)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9
    new-instance v2, Lcc/shinichi/library/view/helper/FingerDragHelper$new;

    invoke-direct {v2, p0}, Lcc/shinichi/library/view/helper/FingerDragHelper$new;-><init>(Lcc/shinichi/library/view/helper/FingerDragHelper;)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 11
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 12
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void
.end method
