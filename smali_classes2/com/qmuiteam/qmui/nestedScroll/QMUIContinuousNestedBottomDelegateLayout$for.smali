.class Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "for"
.end annotation


# instance fields
.field public final synthetic case:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout;

.field private do:I

.field public for:Landroid/view/animation/Interpolator;

.field public if:Landroid/widget/OverScroller;

.field private new:Z

.field private try:Z


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout$for;->case:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/qmuiteam/qmui/do;->case:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout$for;->for:Landroid/view/animation/Interpolator;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout$for;->new:Z

    .line 4
    iput-boolean v1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout$for;->try:Z

    .line 5
    new-instance v1, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout$for;->if:Landroid/widget/OverScroller;

    return-void
.end method

.method private if()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout$for;->case:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout$for;->case:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout;

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public do(I)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout$for;->case:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout;->startNestedScroll(II)Z

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout$for;->do:I

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout$for;->for:Landroid/view/animation/Interpolator;

    sget-object v1, Lcom/qmuiteam/qmui/do;->case:Landroid/view/animation/Interpolator;

    if-eq v0, v1, :cond_0

    .line 4
    iput-object v1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout$for;->for:Landroid/view/animation/Interpolator;

    .line 5
    new-instance v0, Landroid/widget/OverScroller;

    iget-object v2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout$for;->case:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout$for;->if:Landroid/widget/OverScroller;

    .line 6
    :cond_0
    iget-object v3, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout$for;->if:Landroid/widget/OverScroller;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    const/high16 v10, -0x80000000

    const v11, 0x7fffffff

    move v7, p1

    invoke-virtual/range {v3 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 7
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout$for;->for()V

    return-void
.end method

.method public for()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout$for;->new:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout$for;->try:Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout$for;->if()V

    :goto_0
    return-void
.end method

.method public new()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout$for;->case:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout$for;->if:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    return-void
.end method

.method public run()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout$for;->try:Z

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout$for;->new:Z

    .line 3
    iget-object v2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout$for;->if:Landroid/widget/OverScroller;

    .line 4
    invoke-virtual {v2}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5
    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v2

    .line 6
    iget v3, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout$for;->do:I

    sub-int v3, v2, v3

    .line 7
    iput v2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout$for;->do:I

    .line 8
    iget-object v2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout$for;->case:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout;

    invoke-static {v2}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout;->for(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;

    if-lez v3, :cond_1

    .line 9
    invoke-interface {v2}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;->getCurrentScroll()I

    move-result v4

    invoke-interface {v2}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;->getScrollOffsetRange()I

    move-result v2

    if-ge v4, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    .line 10
    iget-object v2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout$for;->case:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout;

    invoke-static {v2}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout;->new(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout;)Landroidx/core/view/NestedScrollingChildHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 11
    iget-object v2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout$for;->case:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout;

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout;->startNestedScroll(II)Z

    .line 12
    :cond_2
    iget-object v2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout$for;->case:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout;

    invoke-virtual {v2, v3}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout;->consumeScroll(I)V

    .line 13
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout$for;->for()V

    goto :goto_2

    .line 14
    :cond_3
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout$for;->new()V

    .line 15
    :cond_4
    :goto_2
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout$for;->new:Z

    .line 16
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout$for;->try:Z

    if-eqz v0, :cond_5

    .line 17
    invoke-direct {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout$for;->if()V

    goto :goto_3

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout$for;->case:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout;

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomDelegateLayout;->stopNestedScroll(I)V

    :goto_3
    return-void
.end method
