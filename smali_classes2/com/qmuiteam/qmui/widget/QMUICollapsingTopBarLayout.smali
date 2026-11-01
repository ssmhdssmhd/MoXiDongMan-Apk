.class public Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/qmuiteam/qmui/widget/IWindowInsetLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$new;,
        Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$for;
    }
.end annotation


# static fields
.field private static final switch:I = 0x258


# instance fields
.field public final break:Landroid/support/v4/eh1;

.field private case:I

.field private catch:Z

.field private class:Landroid/graphics/drawable/Drawable;

.field public const:Landroid/graphics/drawable/Drawable;

.field private do:Z

.field private else:I

.field private final:I

.field private for:Lcom/qmuiteam/qmui/widget/QMUITopBar;

.field private goto:I

.field private if:I

.field private import:I

.field private native:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

.field private new:Landroid/view/View;

.field private public:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field public return:I

.field public static:Ljava/lang/Object;

.field private super:Z

.field private final this:Landroid/graphics/Rect;

.field private throw:Landroid/animation/ValueAnimator;

.field private try:I

.field private while:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->do:Z

    .line 5
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->this:Landroid/graphics/Rect;

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->import:I

    .line 7
    new-instance v2, Landroid/support/v4/eh1;

    invoke-direct {v2, p0}, Landroid/support/v4/eh1;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->break:Landroid/support/v4/eh1;

    .line 8
    sget-object v3, Lcom/qmuiteam/qmui/do;->try:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/support/v4/eh1;->h(Landroid/view/animation/Interpolator;)V

    .line 9
    invoke-static {p1}, Lcom/qmuiteam/qmui/util/for;->if(Landroid/content/Context;)V

    .line 10
    sget-object v3, Lcom/qmuiteam/qmui/R$styleable;->QMUICollapsingTopBarLayout:[I

    const/4 v4, 0x0

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 11
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUICollapsingTopBarLayout_qmui_expandedTitleGravity:I

    const/16 p3, 0x51

    .line 12
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 13
    invoke-virtual {v2, p2}, Landroid/support/v4/eh1;->synchronized(I)V

    .line 14
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUICollapsingTopBarLayout_qmui_collapsedTitleGravity:I

    const p3, 0x800013

    .line 15
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 16
    invoke-virtual {v2, p2}, Landroid/support/v4/eh1;->volatile(I)V

    .line 17
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUICollapsingTopBarLayout_qmui_expandedTitleMargin:I

    .line 18
    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->goto:I

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->else:I

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->case:I

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->try:I

    .line 19
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUICollapsingTopBarLayout_qmui_expandedTitleMarginStart:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 20
    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->try:I

    .line 21
    :cond_0
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUICollapsingTopBarLayout_qmui_expandedTitleMarginEnd:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 22
    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->else:I

    .line 23
    :cond_1
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUICollapsingTopBarLayout_qmui_expandedTitleMarginTop:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 24
    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->case:I

    .line 25
    :cond_2
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUICollapsingTopBarLayout_qmui_expandedTitleMarginBottom:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 26
    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->goto:I

    .line 27
    :cond_3
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUICollapsingTopBarLayout_qmui_titleEnabled:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->catch:Z

    .line 28
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUICollapsingTopBarLayout_qmui_title:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 29
    sget p2, Lcom/qmuiteam/qmui/R$style;->QMUI_CollapsingTopBarLayoutExpanded:I

    invoke-virtual {v2, p2}, Landroid/support/v4/eh1;->implements(I)V

    .line 30
    sget p2, Lcom/qmuiteam/qmui/R$style;->QMUI_CollapsingTopBarLayoutCollapsed:I

    invoke-virtual {v2, p2}, Landroid/support/v4/eh1;->continue(I)V

    .line 31
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUICollapsingTopBarLayout_qmui_expandedTitleTextAppearance:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 32
    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 33
    invoke-virtual {v2, p2}, Landroid/support/v4/eh1;->implements(I)V

    .line 34
    :cond_4
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUICollapsingTopBarLayout_qmui_collapsedTitleTextAppearance:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 35
    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 36
    invoke-virtual {v2, p2}, Landroid/support/v4/eh1;->continue(I)V

    .line 37
    :cond_5
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUICollapsingTopBarLayout_qmui_scrimVisibleHeightTrigger:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->import:I

    .line 38
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUICollapsingTopBarLayout_qmui_scrimAnimationDuration:I

    const/16 p3, 0x258

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->while:J

    .line 39
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUICollapsingTopBarLayout_qmui_contentScrim:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    .line 40
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUICollapsingTopBarLayout_qmui_statusBarScrim:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    .line 41
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUICollapsingTopBarLayout_qmui_topBarId:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->if:I

    .line 42
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 44
    new-instance p1, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$do;

    invoke-direct {p1, p0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$do;-><init>(Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;)V

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public static break(Landroid/view/View;)Landroid/support/v4/zh1;
    .locals 2

    .line 1
    sget v0, Lcom/qmuiteam/qmui/R$id;->qmui_view_offset_helper:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/zh1;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Landroid/support/v4/zh1;

    invoke-direct {v1, p0}, Landroid/support/v4/zh1;-><init>(Landroid/view/View;)V

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method private class(Landroid/view/View;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->new:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->for:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public static synthetic do(Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->super(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method private for(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->new()V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->throw:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->throw:Landroid/animation/ValueAnimator;

    .line 4
    iget-wide v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->while:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->throw:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->final:I

    if-le p1, v1, :cond_0

    sget-object v1, Lcom/qmuiteam/qmui/do;->for:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/qmuiteam/qmui/do;->new:Landroid/view/animation/Interpolator;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->throw:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$if;

    invoke-direct {v1, p0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$if;-><init>(Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 7
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->public:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    if-eqz v0, :cond_2

    .line 8
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->throw:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->throw:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 11
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->throw:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->final:I

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 12
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->throw:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private getWindowInsetTop()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->static:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Landroidx/core/view/WindowInsetsCompat;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    return v0

    .line 4
    :cond_0
    instance-of v1, v0, Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static goto(Landroid/view/View;)I
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p0, v0

    return p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0
.end method

.method public static synthetic if(Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->getWindowInsetTop()I

    move-result p0

    return p0
.end method

.method private new()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->do:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->for:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    .line 3
    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->new:Landroid/view/View;

    .line 4
    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->if:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 5
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/qmuiteam/qmui/widget/QMUITopBar;

    iput-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->for:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    if-eqz v1, :cond_1

    .line 6
    invoke-direct {p0, v1}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->try(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->new:Landroid/view/View;

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->for:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    const/4 v2, 0x0

    if-nez v1, :cond_4

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 9
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 10
    instance-of v5, v4, Lcom/qmuiteam/qmui/widget/QMUITopBar;

    if-eqz v5, :cond_2

    .line 11
    move-object v0, v4

    check-cast v0, Lcom/qmuiteam/qmui/widget/QMUITopBar;

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12
    :cond_3
    :goto_1
    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->for:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    .line 13
    :cond_4
    iput-boolean v2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->do:Z

    return-void
.end method

.method private super(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->applySystemWindowInsets21(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->consumeSystemWindowInsets()Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private try(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eq v0, p0, :cond_1

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 3
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    .line 4
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public applySystemWindowInsets19(Landroid/graphics/Rect;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->static:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/kh1;->else(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->static:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public applySystemWindowInsets21(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->static:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/kh1;->else(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->static:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public case()Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$for;
    .locals 2

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$for;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$for;-><init>(II)V

    return-object v0
.end method

.method public catch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->catch:Z

    return v0
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$for;

    return p1
.end method

.method public const(IIII)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->try:I

    .line 2
    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->case:I

    .line 3
    iput p3, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->else:I

    .line 4
    iput p4, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->goto:I

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->new()V

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->for:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->class:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->final:I

    if-lez v1, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->final:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 5
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->class:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->catch:Z

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->break:Landroid/support/v4/eh1;

    invoke-virtual {v0, p1}, Landroid/support/v4/eh1;->goto(Landroid/graphics/Canvas;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->const:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->final:I

    if-lez v0, :cond_2

    .line 9
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->getWindowInsetTop()I

    move-result v0

    if-lez v0, :cond_2

    .line 10
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->const:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    iget v3, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->return:I

    neg-int v3, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->return:I

    sub-int/2addr v0, v5

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 11
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->const:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->final:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 12
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->const:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->class:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->final:I

    if-lez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->class(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->class:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v3, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->final:I

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->class:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    return v1
.end method

.method public drawableStateChanged()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->const:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v2, v1

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->class:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v2, v1

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->break:Landroid/support/v4/eh1;

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v1, v0}, Landroid/support/v4/eh1;->f([I)Z

    move-result v0

    or-int/2addr v2, v0

    :cond_2
    if-eqz v2, :cond_3

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_3
    return-void
.end method

.method public else(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$for;

    invoke-direct {v0, p1}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$for;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public final(ZZ)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->super:Z

    if-eq v0, p1, :cond_3

    const/16 v0, 0xff

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->for(I)V

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 3
    :goto_1
    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->setScrimAlpha(I)V

    .line 4
    :goto_2
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->super:Z

    :cond_3
    return-void
.end method

.method public fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->applySystemWindowInsets19(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->case()Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$for;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->case()Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$for;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->else(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .line 3
    new-instance v0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$for;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$for;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getCollapsedTitleGravity()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->break:Landroid/support/v4/eh1;

    invoke-virtual {v0}, Landroid/support/v4/eh1;->catch()I

    move-result v0

    return v0
.end method

.method public getCollapsedTitleTypeface()Landroid/graphics/Typeface;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->break:Landroid/support/v4/eh1;

    invoke-virtual {v0}, Landroid/support/v4/eh1;->const()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getContentScrim()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->class:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getExpandedTitleGravity()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->break:Landroid/support/v4/eh1;

    invoke-virtual {v0}, Landroid/support/v4/eh1;->while()I

    move-result v0

    return v0
.end method

.method public getExpandedTitleMarginBottom()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->goto:I

    return v0
.end method

.method public getExpandedTitleMarginEnd()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->else:I

    return v0
.end method

.method public getExpandedTitleMarginStart()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->try:I

    return v0
.end method

.method public getExpandedTitleMarginTop()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->case:I

    return v0
.end method

.method public getExpandedTitleTypeface()Landroid/graphics/Typeface;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->break:Landroid/support/v4/eh1;

    invoke-virtual {v0}, Landroid/support/v4/eh1;->native()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getScrimAlpha()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->final:I

    return v0
.end method

.method public getScrimAnimationDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->while:J

    return-wide v0
.end method

.method public getScrimVisibleHeightTrigger()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->import:I

    if-ltz v0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->getWindowInsetTop()I

    move-result v0

    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getStatusBarScrim()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->const:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->catch:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->break:Landroid/support/v4/eh1;

    invoke-virtual {v0}, Landroid/support/v4/eh1;->return()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v1, :cond_1

    .line 4
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 5
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->native:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$new;

    invoke-direct {v1, p0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$new;-><init>(Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;)V

    iput-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->native:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    .line 7
    :cond_0
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->native:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 8
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->native:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    if-eqz v1, :cond_0

    instance-of v2, v0, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v2, :cond_0

    .line 3
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->removeOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 4
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 8

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->static:Ljava/lang/Object;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->getWindowInsetTop()I

    move-result p1

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 5
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 6
    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    if-ge v4, p1, :cond_0

    .line 8
    invoke-static {v3, p1}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iget-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->catch:Z

    if-eqz p1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->new:Landroid/view/View;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->for:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    :goto_1
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->this(Landroid/view/View;Z)I

    move-result p1

    .line 11
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->for:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->this:Landroid/graphics/Rect;

    invoke-static {p0, v1, v2}, Lcom/qmuiteam/qmui/util/for;->catch(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 12
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->for:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    invoke-virtual {v1}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->getTitleContainerRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->break:Landroid/support/v4/eh1;

    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->this:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v4

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int v6, v3, p1

    iget v7, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    iget v7, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v7

    add-int/2addr v3, p1

    iget p1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, p1

    invoke-virtual {v2, v5, v6, v4, v3}, Landroid/support/v4/eh1;->abstract(IIII)V

    .line 14
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->break:Landroid/support/v4/eh1;

    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->try:I

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->this:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->case:I

    add-int/2addr v2, v3

    sub-int/2addr p4, p2

    iget p2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->else:I

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    iget p2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->goto:I

    sub-int/2addr p5, p2

    invoke-virtual {p1, v1, v2, p4, p5}, Landroid/support/v4/eh1;->transient(IIII)V

    .line 15
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->break:Landroid/support/v4/eh1;

    invoke-virtual {p1}, Landroid/support/v4/eh1;->package()V

    .line 16
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    :goto_2
    if-ge v0, p1, :cond_4

    .line 17
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->break(Landroid/view/View;)Landroid/support/v4/zh1;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/zh1;->else()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 18
    :cond_4
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->for:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    if-eqz p1, :cond_8

    .line 19
    iget-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->catch:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->break:Landroid/support/v4/eh1;

    invoke-virtual {p1}, Landroid/support/v4/eh1;->return()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 20
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->break:Landroid/support/v4/eh1;

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->for:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    invoke-virtual {p2}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v4/eh1;->g(Ljava/lang/CharSequence;)V

    .line 21
    :cond_5
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->new:Landroid/view/View;

    if-eqz p1, :cond_7

    if-ne p1, p0, :cond_6

    goto :goto_3

    .line 22
    :cond_6
    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->goto(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    goto :goto_4

    .line 23
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->for:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->goto(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    .line 24
    :cond_8
    :goto_4
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->throw()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->new()V

    .line 2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->class:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_0

    const/4 p4, 0x0

    .line 3
    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public setCollapsedTitleGravity(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->break:Landroid/support/v4/eh1;

    invoke-virtual {v0, p1}, Landroid/support/v4/eh1;->volatile(I)V

    return-void
.end method

.method public setCollapsedTitleTextAppearance(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->break:Landroid/support/v4/eh1;

    invoke-virtual {v0, p1}, Landroid/support/v4/eh1;->continue(I)V

    return-void
.end method

.method public setCollapsedTitleTextColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->setCollapsedTitleTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCollapsedTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->break:Landroid/support/v4/eh1;

    invoke-virtual {v0, p1}, Landroid/support/v4/eh1;->strictfp(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCollapsedTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->break:Landroid/support/v4/eh1;

    invoke-virtual {v0, p1}, Landroid/support/v4/eh1;->protected(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setContentScrim(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->class:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_3

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->class:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->class:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 6
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->class:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->final:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 7
    :cond_2
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public setContentScrimColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setContentScrimResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setExpandedTitleColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->setExpandedTitleTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setExpandedTitleGravity(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->break:Landroid/support/v4/eh1;

    invoke-virtual {v0, p1}, Landroid/support/v4/eh1;->synchronized(I)V

    return-void
.end method

.method public setExpandedTitleMarginBottom(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->goto:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setExpandedTitleMarginEnd(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->else:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setExpandedTitleMarginStart(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->try:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setExpandedTitleMarginTop(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->case:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setExpandedTitleTextAppearance(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->break:Landroid/support/v4/eh1;

    invoke-virtual {v0, p1}, Landroid/support/v4/eh1;->implements(I)V

    return-void
.end method

.method public setExpandedTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->break:Landroid/support/v4/eh1;

    invoke-virtual {v0, p1}, Landroid/support/v4/eh1;->instanceof(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setExpandedTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->break:Landroid/support/v4/eh1;

    invoke-virtual {v0, p1}, Landroid/support/v4/eh1;->b(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setScrimAlpha(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->final:I

    if-eq p1, v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->class:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->for:Lcom/qmuiteam/qmui/widget/QMUITopBar;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 5
    :cond_0
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->final:I

    .line 6
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setScrimAnimationDuration(J)V
    .locals 0
    .param p1    # J
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 1
    iput-wide p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->while:J

    return-void
.end method

.method public setScrimUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->public:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    if-eq v0, p1, :cond_2

    .line 2
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->throw:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_0

    .line 3
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->public:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    :cond_1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->public:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    if-eqz p1, :cond_2

    .line 6
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->throw:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setScrimVisibleHeightTrigger(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->import:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->import:I

    .line 3
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->throw()V

    :cond_0
    return-void
.end method

.method public setScrimsShown(Z)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->final(ZZ)V

    return-void
.end method

.method public setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->const:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_5

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->const:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 4
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->const:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->const:Landroid/graphics/drawable/Drawable;

    .line 7
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 8
    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 9
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->const:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 10
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->const:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 11
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->const:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->final:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 12
    :cond_4
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public setStatusBarScrimColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setStatusBarScrimResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->break:Landroid/support/v4/eh1;

    invoke-virtual {v0, p1}, Landroid/support/v4/eh1;->g(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->catch:Z

    if-eq p1, v0, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->catch:Z

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->const:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eq v1, p1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->const:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->class:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eq v1, p1, :cond_2

    .line 5
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->class:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_2
    return-void
.end method

.method public final this(Landroid/view/View;Z)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    if-nez p2, :cond_0

    .line 2
    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->break(Landroid/view/View;)Landroid/support/v4/zh1;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Landroid/support/v4/zh1;->if()I

    move-result v0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout$for;

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr v1, p1

    iget p1, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v1, p1

    return v1
.end method

.method public final throw()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->class:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->const:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->return:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->getScrimVisibleHeightTrigger()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->setScrimsShown(Z)V

    :cond_2
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->class:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;->const:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
