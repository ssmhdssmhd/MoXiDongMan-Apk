.class public Lcom/qmuiteam/qmui/nestedScroll/QMUIViewOffsetBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private do:Landroid/support/v4/zh1;

.field private for:I

.field private if:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIViewOffsetBehavior;->if:I

    .line 3
    iput v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIViewOffsetBehavior;->for:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIViewOffsetBehavior;->if:I

    .line 6
    iput p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIViewOffsetBehavior;->for:I

    return-void
.end method


# virtual methods
.method public do()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIViewOffsetBehavior;->do:Landroid/support/v4/zh1;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/support/v4/zh1;->do()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLeftAndRightOffset()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIViewOffsetBehavior;->do:Landroid/support/v4/zh1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/zh1;->for()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTopAndBottomOffset()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIViewOffsetBehavior;->do:Landroid/support/v4/zh1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/zh1;->new()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public if()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIViewOffsetBehavior;->do:Landroid/support/v4/zh1;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/support/v4/zh1;->if()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isHorizontalOffsetEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIViewOffsetBehavior;->do:Landroid/support/v4/zh1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/zh1;->try()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVerticalOffsetEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIViewOffsetBehavior;->do:Landroid/support/v4/zh1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/zh1;->case()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public layoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    return-void
.end method

.method public onLayoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/nestedScroll/QMUIViewOffsetBehavior;->layoutChild(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    .line 2
    iget-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIViewOffsetBehavior;->do:Landroid/support/v4/zh1;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Landroid/support/v4/zh1;

    invoke-direct {p1, p2}, Landroid/support/v4/zh1;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIViewOffsetBehavior;->do:Landroid/support/v4/zh1;

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIViewOffsetBehavior;->do:Landroid/support/v4/zh1;

    invoke-virtual {p1}, Landroid/support/v4/zh1;->else()V

    .line 5
    iget p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIViewOffsetBehavior;->if:I

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 6
    iget-object p3, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIViewOffsetBehavior;->do:Landroid/support/v4/zh1;

    invoke-virtual {p3, p1}, Landroid/support/v4/zh1;->catch(I)Z

    .line 7
    iput p2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIViewOffsetBehavior;->if:I

    .line 8
    :cond_1
    iget p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIViewOffsetBehavior;->for:I

    if-eqz p1, :cond_2

    .line 9
    iget-object p3, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIViewOffsetBehavior;->do:Landroid/support/v4/zh1;

    invoke-virtual {p3, p1}, Landroid/support/v4/zh1;->this(I)Z

    .line 10
    iput p2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIViewOffsetBehavior;->for:I

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public setHorizontalOffsetEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIViewOffsetBehavior;->do:Landroid/support/v4/zh1;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/support/v4/zh1;->goto(Z)V

    :cond_0
    return-void
.end method

.method public setLeftAndRightOffset(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIViewOffsetBehavior;->do:Landroid/support/v4/zh1;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/support/v4/zh1;->this(I)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iput p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIViewOffsetBehavior;->for:I

    const/4 p1, 0x0

    return p1
.end method

.method public setTopAndBottomOffset(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIViewOffsetBehavior;->do:Landroid/support/v4/zh1;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/support/v4/zh1;->catch(I)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iput p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIViewOffsetBehavior;->if:I

    const/4 p1, 0x0

    return p1
.end method

.method public setVerticalOffsetEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIViewOffsetBehavior;->do:Landroid/support/v4/zh1;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/support/v4/zh1;->class(Z)V

    :cond_0
    return-void
.end method
