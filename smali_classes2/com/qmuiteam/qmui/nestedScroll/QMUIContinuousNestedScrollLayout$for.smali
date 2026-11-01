.class Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedScrollCommon$OnScrollNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->native(Landroid/view/View;Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;


# direct methods
.method public constructor <init>(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout$for;->do:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(II)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout$for;->do:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;

    invoke-static {v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->new(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;)Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout$for;->do:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;

    invoke-static {v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->new(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;)Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    move-result-object v0

    invoke-interface {v0}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;->getCurrentScroll()I

    move-result v0

    move v3, v0

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout$for;->do:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;

    invoke-static {v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->new(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;)Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout$for;->do:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;

    invoke-static {v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->new(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;)Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    move-result-object v0

    invoke-interface {v0}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;->getScrollOffsetRange()I

    move-result v0

    move v4, v0

    .line 3
    :goto_1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout$for;->do:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;

    invoke-static {v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->do(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;)Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout$for;->do:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;

    invoke-static {v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->do(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;)Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result v0

    neg-int v1, v0

    move v5, v1

    .line 4
    :goto_2
    iget-object v2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout$for;->do:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;

    invoke-virtual {v2}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->getOffsetRange()I

    move-result v6

    move v7, p1

    move v8, p2

    invoke-static/range {v2 .. v8}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->for(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;IIIIII)V

    return-void
.end method

.method public onScrollStateChange(Landroid/view/View;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout$for;->do:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->try(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;IZ)V

    return-void
.end method
