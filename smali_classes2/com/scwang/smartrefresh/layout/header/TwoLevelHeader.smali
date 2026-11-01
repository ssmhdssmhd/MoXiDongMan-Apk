.class public Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;
.super Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;
.source "SourceFile"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/api/RefreshHeader;


# instance fields
.field public break:Z

.field public case:F

.field public catch:I

.field public class:I

.field public const:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

.field public else:F

.field public final:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

.field public goto:F

.field public new:I

.field public super:Lcom/scwang/smartrefresh/layout/api/OnTwoLevelListener;

.field public this:Z

.field public try:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->try:F

    const/high16 v0, 0x40200000    # 2.5f

    .line 4
    iput v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->case:F

    const v0, 0x3ff33333    # 1.9f

    .line 5
    iput v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->else:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    iput v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->goto:F

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->this:Z

    .line 8
    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->break:Z

    const/16 v0, 0x3e8

    .line 9
    iput v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->catch:I

    .line 10
    sget-object v0, Landroid/support/v4/y02;->case:Landroid/support/v4/y02;

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->if:Landroid/support/v4/y02;

    .line 11
    sget-object v0, Lcom/scwang/smartrefresh/layout/R$styleable;->TwoLevelHeader:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 12
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->TwoLevelHeader_srlMaxRage:I

    iget v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->case:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->case:F

    .line 13
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->TwoLevelHeader_srlFloorRage:I

    iget v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->else:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->else:F

    .line 14
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->TwoLevelHeader_srlRefreshRage:I

    iget v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->goto:F

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->goto:F

    .line 15
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->TwoLevelHeader_srlFloorDuration:I

    iget v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->catch:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->catch:I

    .line 16
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->TwoLevelHeader_srlEnableTwoLevel:I

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->this:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->this:Z

    .line 17
    sget p2, Lcom/scwang/smartrefresh/layout/R$styleable;->TwoLevelHeader_srlEnablePullToCloseTwoLevel:I

    iget-boolean v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->break:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->break:Z

    .line 18
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public break(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;)Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;
    .locals 2

    const/4 v0, -0x1

    const/4 v1, -0x2

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->catch(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;II)Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;

    move-result-object p1

    return-object p1
.end method

.method public case(I)Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;
    .locals 0

    .line 1
    iput p1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->catch:I

    return-object p0
.end method

.method public catch(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;II)Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;
    .locals 3

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->const:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Landroid/support/v4/y02;

    move-result-object v0

    sget-object v1, Landroid/support/v4/y02;->case:Landroid/support/v4/y02;

    if-ne v0, v1, :cond_1

    .line 4
    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 6
    :goto_0
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->const:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    .line 7
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->for:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    :cond_2
    return-object p0
.end method

.method public class(F)Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;
    .locals 0

    .line 1
    iput p1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->goto:F

    return-object p0
.end method

.method public do()Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->final:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->finishTwoLevel()Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    :cond_0
    return-object p0
.end method

.method public else(F)Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;
    .locals 0

    .line 1
    iput p1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->else:F

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->const:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public for(Z)Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->final:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->super:Lcom/scwang/smartrefresh/layout/api/OnTwoLevelListener;

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->getRefreshLayout()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/scwang/smartrefresh/layout/api/OnTwoLevelListener;->onTwoLevel(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-interface {v0, p1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->startTwoLevel(Z)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    :cond_2
    return-object p0
.end method

.method public goto(F)Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;
    .locals 1

    .line 1
    iget v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->case:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->case:F

    .line 3
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->final:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->class:I

    .line 5
    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->getRefreshLayout()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object p1

    iget v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->case:F

    invoke-interface {p1, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->setHeaderMaxDragRate(F)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    :cond_0
    return-object p0
.end method

.method public if(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->const:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    .line 2
    iget v1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->new:I

    if-eq v1, p1, :cond_1

    if-eqz v0, :cond_1

    .line 3
    iput p1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->new:I

    .line 4
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Landroid/support/v4/y02;

    move-result-object v1

    .line 5
    sget-object v2, Landroid/support/v4/y02;->new:Landroid/support/v4/y02;

    if-ne v1, v2, :cond_0

    .line 6
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v0

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 7
    :cond_0
    iget-boolean v1, v1, Landroid/support/v4/y02;->for:Z

    if-eqz v1, :cond_1

    .line 8
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public new(Z)Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->final:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 2
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->break:Z

    if-eqz v0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    .line 3
    invoke-interface {v0, p0, p1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->requestNeedTouchEventFor(Lcom/scwang/smartrefresh/layout/api/RefreshInternal;Z)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    :cond_0
    return-object p0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 2
    sget-object v0, Landroid/support/v4/y02;->goto:Landroid/support/v4/y02;

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->if:Landroid/support/v4/y02;

    .line 3
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->const:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->break(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;)Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 2
    sget-object v0, Landroid/support/v4/y02;->case:Landroid/support/v4/y02;

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->if:Landroid/support/v4/y02;

    return-void
.end method

.method public onFinishInflate()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4
    instance-of v3, v2, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    if-eqz v3, :cond_0

    .line 5
    move-object v0, v2

    check-cast v0, Lcom/scwang/smartrefresh/layout/api/RefreshHeader;

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->const:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    .line 6
    move-object v0, v2

    check-cast v0, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/internal/InternalAbstract;->for:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    .line 7
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->const:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-nez v0, :cond_2

    .line 9
    new-instance v0, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/scwang/smartrefresh/layout/header/ClassicsHeader;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->break(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;)Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;

    :cond_2
    return-void
.end method

.method public onInitialized(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;II)V
    .locals 3
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshKernel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->const:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    add-int v2, p3, p2

    int-to-float v2, v2

    mul-float v2, v2, v1

    int-to-float v1, p2

    div-float/2addr v2, v1

    .line 2
    iget v1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->case:F

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->class:I

    if-nez v1, :cond_1

    .line 3
    iput p2, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->class:I

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->const:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    .line 5
    invoke-interface {p1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->getRefreshLayout()Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object v1

    iget v2, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->case:F

    invoke-interface {v1, v2}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->setHeaderMaxDragRate(F)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 6
    iput-object v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->const:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->final:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    if-nez v1, :cond_2

    .line 8
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getSpinnerStyle()Landroid/support/v4/y02;

    move-result-object v1

    sget-object v2, Landroid/support/v4/y02;->new:Landroid/support/v4/y02;

    if-ne v1, v2, :cond_2

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 10
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 11
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v2, p2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 12
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    :cond_2
    iput p2, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->class:I

    .line 14
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->final:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 15
    iget v1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->catch:I

    invoke-interface {p1, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->requestFloorDuration(I)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 16
    iget-boolean v1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->break:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {p1, p0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->requestNeedTouchEventFor(Lcom/scwang/smartrefresh/layout/api/RefreshInternal;Z)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 17
    invoke-interface {v0, p1, p2, p3}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onInitialized(Lcom/scwang/smartrefresh/layout/api/RefreshKernel;II)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->const:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->measure(II)V

    .line 4
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    .line 5
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->setMeasuredDimension(II)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    :goto_0
    return-void
.end method

.method public onMoving(ZFIII)V
    .locals 7

    .line 1
    invoke-virtual {p0, p3}, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->if(I)V

    .line 2
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->const:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    .line 3
    iget-object v6, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->final:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 4
    invoke-interface/range {v0 .. v5}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->onMoving(ZFIII)V

    :cond_0
    if-eqz p1, :cond_4

    .line 5
    iget p1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->try:F

    iget p3, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->else:F

    cmpg-float p4, p1, p3

    if-gez p4, :cond_1

    cmpl-float p4, p2, p3

    if-ltz p4, :cond_1

    iget-boolean p4, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->this:Z

    if-eqz p4, :cond_1

    .line 6
    sget-object p1, Landroid/support/v4/qm1;->ReleaseToTwoLevel:Landroid/support/v4/qm1;

    invoke-interface {v6, p1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Landroid/support/v4/qm1;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_0

    :cond_1
    cmpl-float p4, p1, p3

    if-ltz p4, :cond_2

    .line 7
    iget p4, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->goto:F

    cmpg-float p4, p2, p4

    if-gez p4, :cond_2

    .line 8
    sget-object p1, Landroid/support/v4/qm1;->PullDownToRefresh:Landroid/support/v4/qm1;

    invoke-interface {v6, p1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Landroid/support/v4/qm1;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    goto :goto_0

    :cond_2
    cmpl-float p1, p1, p3

    if-ltz p1, :cond_3

    cmpg-float p1, p2, p3

    if-gez p1, :cond_3

    .line 9
    sget-object p1, Landroid/support/v4/qm1;->ReleaseToRefresh:Landroid/support/v4/qm1;

    invoke-interface {v6, p1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Landroid/support/v4/qm1;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 10
    :cond_3
    :goto_0
    iput p2, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->try:F

    :cond_4
    return-void
.end method

.method public onStateChanged(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Landroid/support/v4/qm1;Landroid/support/v4/qm1;)V
    .locals 4
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v4/qm1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/support/v4/qm1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->const:Lcom/scwang/smartrefresh/layout/api/RefreshInternal;

    if-eqz v0, :cond_6

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/scwang/smartrefresh/layout/listener/OnStateChangedListener;->onStateChanged(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Landroid/support/v4/qm1;Landroid/support/v4/qm1;)V

    .line 3
    sget-object p2, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader$do;->do:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/4 p3, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/4 p1, 0x3

    const/high16 v1, 0x3f800000    # 1.0f

    if-eq p2, p1, :cond_1

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    cmpl-float p1, p1, p3

    if-nez p1, :cond_6

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p1

    if-eq p1, p0, :cond_6

    .line 5
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p1

    if-eq p1, p0, :cond_6

    .line 7
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget p2, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->catch:I

    div-int/lit8 p2, p2, 0x2

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 8
    :cond_2
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p2

    if-eq p2, p0, :cond_3

    .line 9
    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshInternal;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    iget p3, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->catch:I

    div-int/lit8 p3, p3, 0x2

    int-to-long v2, p3

    invoke-virtual {p2, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 10
    :cond_3
    iget-object p2, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->final:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    if-eqz p2, :cond_6

    .line 11
    iget-object p3, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->super:Lcom/scwang/smartrefresh/layout/api/OnTwoLevelListener;

    if-eqz p3, :cond_5

    .line 12
    invoke-interface {p3, p1}, Lcom/scwang/smartrefresh/layout/api/OnTwoLevelListener;->onTwoLevel(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_0
    invoke-interface {p2, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->startTwoLevel(Z)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    :cond_6
    :goto_1
    return-void
.end method

.method public this(Lcom/scwang/smartrefresh/layout/api/OnTwoLevelListener;)Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->super:Lcom/scwang/smartrefresh/layout/api/OnTwoLevelListener;

    return-object p0
.end method

.method public try(Z)Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/scwang/smartrefresh/layout/header/TwoLevelHeader;->this:Z

    return-object p0
.end method
