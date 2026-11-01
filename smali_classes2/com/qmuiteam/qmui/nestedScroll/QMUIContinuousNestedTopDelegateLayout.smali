.class public Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/NestedScrollingChild2;
.implements Landroidx/core/view/NestedScrollingParent2;
.implements Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;


# static fields
.field public static final const:Ljava/lang/String; = "@qmui_scroll_info_top_dl_offset"


# instance fields
.field private final break:Landroidx/core/view/NestedScrollingParentHelper;

.field private case:Landroid/support/v4/zh1;

.field private final catch:Landroidx/core/view/NestedScrollingChildHelper;

.field private class:Ljava/lang/Runnable;

.field private do:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedScrollCommon$OnScrollNotifier;

.field private else:Landroid/support/v4/zh1;

.field private for:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

.field private goto:I

.field private if:Landroid/view/View;

.field private new:Landroid/view/View;

.field private this:I

.field private try:Landroid/support/v4/zh1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->goto:I

    .line 5
    iput p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->this:I

    .line 6
    new-instance p2, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout$do;

    invoke-direct {p2, p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout$do;-><init>(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;)V

    iput-object p2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->class:Ljava/lang/Runnable;

    .line 7
    new-instance p2, Landroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {p2, p0}, Landroidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->break:Landroidx/core/view/NestedScrollingParentHelper;

    .line 8
    new-instance p2, Landroidx/core/view/NestedScrollingChildHelper;

    invoke-direct {p2, p0}, Landroidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->catch:Landroidx/core/view/NestedScrollingChildHelper;

    const/4 p2, 0x1

    .line 9
    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    return-void
.end method

.method private if(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->goto:I

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->try:Landroid/support/v4/zh1;

    if-eqz v0, :cond_0

    neg-int v1, p1

    .line 3
    invoke-virtual {v0, v1}, Landroid/support/v4/zh1;->catch(I)Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->case:Landroid/support/v4/zh1;

    if-eqz v0, :cond_1

    neg-int v1, p1

    .line 5
    invoke-virtual {v0, v1}, Landroid/support/v4/zh1;->catch(I)Z

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->else:Landroid/support/v4/zh1;

    if-eqz v0, :cond_2

    neg-int p1, p1

    .line 7
    invoke-virtual {v0, p1}, Landroid/support/v4/zh1;->catch(I)Z

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->do:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedScrollCommon$OnScrollNotifier;

    if-eqz p1, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->getCurrentScroll()I

    move-result v0

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->getScrollOffsetRange()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedScrollCommon$OnScrollNotifier;->notify(II)V

    :cond_3
    return-void
.end method


# virtual methods
.method public consumeScroll(I)I
    .locals 5

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->this:I

    if-gtz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->for:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;->consumeScroll(I)I

    move-result p1

    :cond_0
    return p1

    :cond_1
    const/4 v1, 0x0

    if-lez p1, :cond_d

    .line 4
    iget-object v2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->for:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    const v3, 0x7fffffff

    if-nez v2, :cond_5

    if-ne p1, v3, :cond_2

    .line 5
    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->if(I)V

    goto :goto_0

    .line 6
    :cond_2
    iget v2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->goto:I

    add-int v3, v2, p1

    if-gt v3, v0, :cond_3

    add-int/2addr v2, p1

    .line 7
    invoke-direct {p0, v2}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->if(I)V

    return v1

    :cond_3
    if-ge v2, v0, :cond_4

    sub-int v1, v0, v2

    sub-int/2addr p1, v1

    .line 8
    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->if(I)V

    :cond_4
    :goto_0
    return p1

    .line 9
    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    iget-object v4, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->if:Landroid/view/View;

    if-nez v4, :cond_6

    const/4 v4, 0x0

    goto :goto_1

    :cond_6
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    :goto_1
    add-int/2addr v2, v4

    .line 10
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ne p1, v3, :cond_7

    .line 11
    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->if(I)V

    goto :goto_2

    .line 12
    :cond_7
    iget v2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->goto:I

    add-int v4, v2, p1

    if-gt v4, v0, :cond_8

    add-int/2addr v2, p1

    .line 13
    invoke-direct {p0, v2}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->if(I)V

    return v1

    :cond_8
    if-ge v2, v0, :cond_9

    sub-int v2, v0, v2

    sub-int/2addr p1, v2

    .line 14
    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->if(I)V

    .line 15
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->for:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    invoke-interface {v0, p1}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;->consumeScroll(I)I

    move-result p1

    if-gtz p1, :cond_a

    return p1

    :cond_a
    if-ne p1, v3, :cond_b

    .line 16
    iget v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->this:I

    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->if(I)V

    goto/16 :goto_6

    .line 17
    :cond_b
    iget v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->goto:I

    add-int v2, v0, p1

    iget v3, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->this:I

    if-gt v2, v3, :cond_c

    add-int/2addr v0, p1

    .line 18
    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->if(I)V

    return v1

    :cond_c
    sub-int v0, v3, v0

    sub-int/2addr p1, v0

    .line 19
    invoke-direct {p0, v3}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->if(I)V

    return p1

    :cond_d
    if-gez p1, :cond_19

    .line 20
    iget-object v2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->for:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    const/high16 v3, -0x80000000

    if-nez v2, :cond_11

    if-ne p1, v3, :cond_e

    .line 21
    invoke-direct {p0, v1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->if(I)V

    goto :goto_3

    .line 22
    :cond_e
    iget v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->goto:I

    add-int v2, v0, p1

    if-ltz v2, :cond_f

    add-int/2addr v0, p1

    .line 23
    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->if(I)V

    return v1

    :cond_f
    if-lez v0, :cond_10

    add-int/2addr p1, v0

    .line 24
    invoke-direct {p0, v1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->if(I)V

    :cond_10
    :goto_3
    return p1

    .line 25
    :cond_11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->new:Landroid/view/View;

    if-nez v2, :cond_12

    const/4 v2, 0x0

    goto :goto_4

    :cond_12
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    :goto_4
    sub-int/2addr v0, v2

    .line 26
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ne p1, v3, :cond_13

    .line 27
    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->if(I)V

    goto :goto_5

    .line 28
    :cond_13
    iget v2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->goto:I

    add-int v4, v2, p1

    if-le v4, v0, :cond_14

    add-int/2addr v2, p1

    .line 29
    invoke-direct {p0, v2}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->if(I)V

    return v1

    :cond_14
    if-le v2, v0, :cond_15

    sub-int/2addr v2, v0

    add-int/2addr p1, v2

    .line 30
    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->if(I)V

    .line 31
    :cond_15
    :goto_5
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->for:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    invoke-interface {v0, p1}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;->consumeScroll(I)I

    move-result p1

    if-ltz p1, :cond_16

    return p1

    :cond_16
    if-ne p1, v3, :cond_17

    .line 32
    invoke-direct {p0, v1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->if(I)V

    goto :goto_6

    .line 33
    :cond_17
    iget v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->goto:I

    add-int v2, v0, p1

    if-lez v2, :cond_18

    add-int/2addr v0, p1

    .line 34
    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->if(I)V

    return v1

    :cond_18
    if-lez v0, :cond_19

    add-int/2addr p1, v0

    .line 35
    invoke-direct {p0, v1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->if(I)V

    :cond_19
    :goto_6
    return p1
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->catch:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->catch:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->dispatchNestedPreScroll(II[I[II)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->catch:Landroidx/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[II)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 2
    invoke-virtual/range {v0 .. v6}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->dispatchNestedScroll(IIII[II)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[II)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->catch:Landroidx/core/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II)Z

    move-result p1

    return p1
.end method

.method public do()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->if:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->new:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->for:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->getContainerHeaderOffsetRange()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->for:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    invoke-interface {v1}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;->getCurrentScroll()I

    move-result v1

    .line 5
    iget-object v2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->for:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    invoke-interface {v2}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;->getScrollOffsetRange()I

    move-result v2

    if-lez v1, :cond_3

    .line 6
    iget-object v3, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->if:Landroid/view/View;

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->goto:I

    if-ge v3, v0, :cond_3

    sub-int v3, v0, v3

    if-lt v3, v1, :cond_2

    .line 7
    iget-object v3, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->for:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    const/high16 v4, -0x80000000

    invoke-interface {v3, v4}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;->consumeScroll(I)I

    .line 8
    iget v3, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->goto:I

    add-int/2addr v3, v1

    invoke-direct {p0, v3}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->if(I)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v4, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->for:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    neg-int v3, v3

    invoke-interface {v4, v3}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;->consumeScroll(I)I

    .line 10
    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->if(I)V

    .line 11
    :cond_3
    :goto_0
    iget v3, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->goto:I

    if-le v3, v0, :cond_5

    if-ge v1, v2, :cond_5

    iget-object v4, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->new:Landroid/view/View;

    if-eqz v4, :cond_5

    sub-int/2addr v3, v0

    sub-int/2addr v2, v1

    if-lt v3, v2, :cond_4

    .line 12
    iget-object v1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->for:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    const v4, 0x7fffffff

    invoke-interface {v1, v4}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;->consumeScroll(I)I

    add-int/2addr v0, v3

    sub-int/2addr v0, v2

    .line 13
    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->if(I)V

    goto :goto_1

    .line 14
    :cond_4
    iget-object v1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->for:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    invoke-interface {v1, v3}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;->consumeScroll(I)I

    .line 15
    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->if(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public for()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->class:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->class:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getContainerHeaderOffsetRange()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->this:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->if:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->if:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    iget v1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->this:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getContainerOffsetCurrent()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->goto:I

    return v0
.end method

.method public getContainerOffsetRange()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->this:I

    return v0
.end method

.method public getCurrentScroll()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->goto:I

    .line 2
    iget-object v1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->for:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;->getCurrentScroll()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getDelegateView()Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->for:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    return-object v0
.end method

.method public getFooterView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->new:Landroid/view/View;

    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->if:Landroid/view/View;

    return-object v0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->break:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method public getScrollOffsetRange()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->this:I

    .line 2
    iget-object v1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->for:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;->getScrollOffsetRange()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->hasNestedScrollingParent(I)Z

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->catch:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    move-result p1

    return p1
.end method

.method public injectScrollNotifier(Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedScrollCommon$OnScrollNotifier;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->do:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedScrollCommon$OnScrollNotifier;

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->for:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout$if;

    invoke-direct {v1, p0, p1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout$if;-><init>(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedScrollCommon$OnScrollNotifier;)V

    invoke-interface {v0, v1}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedScrollCommon;->injectScrollNotifier(Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedScrollCommon$OnScrollNotifier;)V

    :cond_0
    return-void
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->catch:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 1

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p1

    .line 2
    iget-object p2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->if:Landroid/view/View;

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->if:Landroid/view/View;

    add-int/2addr p2, p1

    invoke-virtual {v0, p3, p1, p4, p2}, Landroid/view/View;->layout(IIII)V

    move p1, p2

    .line 5
    :cond_0
    iget-object p2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->for:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    if-eqz p2, :cond_1

    .line 6
    check-cast p2, Landroid/view/View;

    .line 7
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p1

    .line 8
    invoke-virtual {p2, p3, p1, p4, v0}, Landroid/view/View;->layout(IIII)V

    move p1, v0

    .line 9
    :cond_1
    iget-object p2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->new:Landroid/view/View;

    if-eqz p2, :cond_2

    .line 10
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    .line 11
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->new:Landroid/view/View;

    add-int/2addr p2, p1

    invoke-virtual {v0, p3, p1, p4, p2}, Landroid/view/View;->layout(IIII)V

    move p1, p2

    .line 12
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result p2

    add-int/2addr p1, p2

    sub-int/2addr p1, p5

    .line 13
    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->this:I

    .line 14
    iget-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->try:Landroid/support/v4/zh1;

    if-eqz p1, :cond_3

    .line 15
    invoke-virtual {p1}, Landroid/support/v4/zh1;->else()V

    .line 16
    iget-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->try:Landroid/support/v4/zh1;

    invoke-virtual {p1}, Landroid/support/v4/zh1;->new()I

    move-result p1

    neg-int p1, p1

    iput p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->goto:I

    .line 17
    :cond_3
    iget-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->case:Landroid/support/v4/zh1;

    if-eqz p1, :cond_4

    .line 18
    invoke-virtual {p1}, Landroid/support/v4/zh1;->else()V

    .line 19
    iget-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->case:Landroid/support/v4/zh1;

    invoke-virtual {p1}, Landroid/support/v4/zh1;->new()I

    move-result p1

    neg-int p1, p1

    iput p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->goto:I

    .line 20
    :cond_4
    iget-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->else:Landroid/support/v4/zh1;

    if-eqz p1, :cond_5

    .line 21
    invoke-virtual {p1}, Landroid/support/v4/zh1;->else()V

    .line 22
    iget-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->else:Landroid/support/v4/zh1;

    invoke-virtual {p1}, Landroid/support/v4/zh1;->new()I

    move-result p1

    neg-int p1, p1

    iput p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->goto:I

    .line 23
    :cond_5
    iget p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->goto:I

    iget p2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->this:I

    if-le p1, p2, :cond_6

    .line 24
    invoke-direct {p0, p2}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->if(I)V

    .line 25
    :cond_6
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->for()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->if:Landroid/view/View;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 5
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, p1, v4}, Landroid/view/View;->measure(II)V

    .line 6
    iget-object v2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->if:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->for:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    if-eqz v2, :cond_1

    .line 8
    check-cast v2, Landroid/view/View;

    const/high16 v4, -0x80000000

    .line 9
    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, p1, v4}, Landroid/view/View;->measure(II)V

    .line 10
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 11
    :cond_1
    iget-object v2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->new:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 12
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, p1, v3}, Landroid/view/View;->measure(II)V

    .line 13
    iget-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->new:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr v1, p1

    .line 14
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result p1

    add-int/2addr v1, p1

    if-ge v1, p2, :cond_3

    .line 15
    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {p0, v0, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p3}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->onNestedPreScroll(Landroid/view/View;II[II)V

    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p4

    move v5, p5

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->dispatchNestedPreScroll(II[I[II)Z

    const/4 p1, 0x1

    .line 2
    aget p2, p4, p1

    sub-int/2addr p3, p2

    const/4 p2, 0x0

    if-lez p3, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p5

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->if:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p2

    :goto_0
    add-int/2addr p5, p2

    .line 4
    iget p2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->goto:I

    add-int v0, p2, p3

    if-gt v0, p5, :cond_1

    add-int/2addr p2, p3

    .line 5
    invoke-direct {p0, p2}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->if(I)V

    .line 6
    aget p2, p4, p1

    add-int/2addr p2, p3

    aput p2, p4, p1

    goto :goto_1

    :cond_1
    if-ge p2, p5, :cond_5

    .line 7
    aget p3, p4, p1

    sub-int p2, p5, p2

    add-int/2addr p3, p2

    aput p3, p4, p1

    .line 8
    invoke-direct {p0, p5}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->if(I)V

    goto :goto_1

    :cond_2
    if-gez p3, :cond_5

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result p5

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->new:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p2

    :cond_3
    add-int/2addr p5, p2

    .line 10
    iget p2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->this:I

    sub-int/2addr p2, p5

    .line 11
    iget p5, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->goto:I

    add-int v0, p5, p3

    if-lt v0, p2, :cond_4

    add-int/2addr p5, p3

    .line 12
    invoke-direct {p0, p5}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->if(I)V

    .line 13
    aget p2, p4, p1

    add-int/2addr p2, p3

    aput p2, p4, p1

    goto :goto_1

    :cond_4
    if-le p5, p2, :cond_5

    .line 14
    aget p3, p4, p1

    sub-int p5, p2, p5

    add-int/2addr p3, p5

    aput p3, p4, p1

    .line 15
    invoke-direct {p0, p2}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->if(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 8
    invoke-virtual/range {v0 .. v6}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->onNestedScroll(Landroid/view/View;IIIII)V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .locals 7

    const/4 p1, 0x0

    if-lez p5, :cond_1

    .line 1
    iget p2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->goto:I

    add-int p4, p2, p5

    iget v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->this:I

    if-gt p4, v0, :cond_0

    add-int/2addr p2, p5

    .line 2
    invoke-direct {p0, p2}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->if(I)V

    goto :goto_0

    :cond_0
    if-gt p2, v0, :cond_3

    sub-int p1, v0, p2

    .line 3
    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->if(I)V

    goto :goto_1

    :cond_1
    if-gez p5, :cond_3

    .line 4
    iget p2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->goto:I

    add-int p4, p2, p5

    if-ltz p4, :cond_2

    add-int/2addr p2, p5

    .line 5
    invoke-direct {p0, p2}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->if(I)V

    :goto_0
    move p1, p5

    goto :goto_1

    :cond_2
    if-ltz p2, :cond_3

    neg-int p2, p2

    .line 6
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->if(I)V

    move p1, p2

    :cond_3
    :goto_1
    const/4 v1, 0x0

    add-int v2, p3, p1

    const/4 v3, 0x0

    sub-int v4, p5, p1

    const/4 v5, 0x0

    move-object v0, p0

    move v6, p6

    .line 7
    invoke-virtual/range {v0 .. v6}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->dispatchNestedScroll(IIII[II)Z

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->break:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    const/4 p1, 0x2

    .line 2
    invoke-virtual {p0, p1, p4}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->startNestedScroll(II)Z

    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->onStopNestedScroll(Landroid/view/View;I)V

    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->break:Landroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;I)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->stopNestedScroll(I)V

    return-void
.end method

.method public restoreScrollInfo(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "@qmui_scroll_info_top_dl_offset"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    neg-int v0, v0

    .line 2
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->getContainerOffsetRange()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/support/v4/kh1;->for(III)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->if(I)V

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->for:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedScrollCommon;->restoreScrollInfo(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public saveScrollInfo(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->goto:I

    neg-int v0, v0

    const-string v1, "@qmui_scroll_info_top_dl_offset"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->for:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedScrollCommon;->saveScrollInfo(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public setDelegateView(Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;)V
    .locals 3
    .param p1    # Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->for:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, v1}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedScrollCommon;->injectScrollNotifier(Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedScrollCommon$OnScrollNotifier;)V

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->for:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    .line 5
    check-cast p1, Landroid/view/View;

    .line 6
    new-instance v0, Landroid/support/v4/zh1;

    invoke-direct {v0, p1}, Landroid/support/v4/zh1;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->case:Landroid/support/v4/zh1;

    .line 7
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegateView must be a instance of View"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFooterView(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->new:Landroid/view/View;

    .line 2
    new-instance v0, Landroid/support/v4/zh1;

    invoke-direct {v0, p1}, Landroid/support/v4/zh1;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->else:Landroid/support/v4/zh1;

    .line 3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setHeaderView(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->if:Landroid/view/View;

    .line 2
    new-instance v0, Landroid/support/v4/zh1;

    invoke-direct {v0, p1}, Landroid/support/v4/zh1;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->try:Landroid/support/v4/zh1;

    .line 3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->catch:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->startNestedScroll(II)Z

    move-result p1

    return p1
.end method

.method public startNestedScroll(II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->catch:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->stopNestedScroll(I)V

    return-void
.end method

.method public stopNestedScroll(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopDelegateLayout;->catch:Landroidx/core/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroidx/core/view/NestedScrollingChildHelper;->stopNestedScroll(I)V

    return-void
.end method
