.class public Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.source "SourceFile"

# interfaces
.implements Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$Callback;
.implements Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout$OnScrollListener;
    }
.end annotation


# static fields
.field public static final super:Ljava/lang/String; = "@qmui_nested_scroll_layout_offset"


# instance fields
.field private break:Z

.field private case:Ljava/lang/Runnable;

.field private catch:I

.field private class:Z

.field private const:F

.field private do:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

.field private else:Z

.field private final:I

.field private for:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

.field private goto:Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;

.field private if:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;

.field private new:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomAreaBehavior;

.field private this:Z

.field private try:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    invoke-direct {p0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->try:Ljava/util/List;

    .line 5
    new-instance p1, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout$do;

    invoke-direct {p1, p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout$do;-><init>(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;)V

    iput-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->case:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->else:Z

    const/4 p2, 0x1

    .line 7
    iput-boolean p2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->this:Z

    .line 8
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->break:Z

    .line 9
    iput p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->catch:I

    .line 10
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->class:Z

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->const:F

    const/4 p1, -0x1

    .line 12
    iput p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->final:I

    return-void
.end method

.method private break()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->goto:Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->else(Landroid/content/Context;)Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;

    move-result-object v0

    iput-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->goto:Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;

    .line 3
    iget-boolean v1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->this:Z

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->setEnableFadeInAndOut(Z)V

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->goto:Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;

    invoke-virtual {v0, p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->setCallback(Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar$Callback;)V

    .line 5
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x5

    .line 6
    iput v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 7
    iget-object v1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->goto:Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public static synthetic do(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;)Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->for:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    return-object p0
.end method

.method public static synthetic for(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;IIIIII)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->goto(IIIIII)V

    return-void
.end method

.method private goto(IIIIII)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->break:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->break()V

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->goto:Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->getCurrentScrollPercent()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->setPercent(F)V

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->goto:Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->do()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->try:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout$OnScrollListener;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    .line 6
    invoke-interface/range {v2 .. v8}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout$OnScrollListener;->onScroll(IIIIII)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic if(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;)Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->if:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;

    return-object p0
.end method

.method public static synthetic new(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;)Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->do:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    return-object p0
.end method

.method private this(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->try:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout$OnScrollListener;

    .line 2
    invoke-interface {v1, p1, p2}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout$OnScrollListener;->onScrollStateChange(IZ)V

    goto :goto_0

    .line 3
    :cond_0
    iput p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->catch:I

    return-void
.end method

.method public static synthetic try(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->this(IZ)V

    return-void
.end method


# virtual methods
.method public addOnScrollListener(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout$OnScrollListener;)V
    .locals 1
    .param p1    # Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout$OnScrollListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->try:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->try:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public case()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->do:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->if:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;

    if-nez v1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;->getCurrentScroll()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->do:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    invoke-interface {v1}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;->getScrollOffsetRange()I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->for:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    invoke-virtual {v2}, Lcom/qmuiteam/qmui/nestedScroll/QMUIViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result v2

    neg-int v2, v2

    .line 5
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->getOffsetRange()I

    move-result v3

    if-gtz v3, :cond_1

    return-void

    :cond_1
    const v4, 0x7fffffff

    if-ge v2, v3, :cond_6

    if-lez v2, :cond_2

    .line 6
    iget-boolean v5, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->else:Z

    if-eqz v5, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    iget-object v3, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->if:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;

    invoke-interface {v3}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;->getCurrentScroll()I

    move-result v3

    if-lez v3, :cond_3

    .line 8
    iget-object v3, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->if:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;

    const/high16 v5, -0x80000000

    invoke-interface {v3, v5}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;->consumeScroll(I)V

    :cond_3
    if-ge v0, v1, :cond_5

    if-lez v2, :cond_5

    sub-int/2addr v1, v0

    if-lt v2, v1, :cond_4

    .line 9
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->do:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    invoke-interface {v0, v4}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;->consumeScroll(I)I

    .line 10
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->for:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;->setTopAndBottomOffset(I)Z

    goto :goto_0

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->do:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    invoke-interface {v0, v2}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;->consumeScroll(I)I

    .line 12
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->for:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;->setTopAndBottomOffset(I)Z

    :cond_5
    :goto_0
    return-void

    .line 13
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->do:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    invoke-interface {v0, v4}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;->consumeScroll(I)I

    .line 14
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->if:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;

    invoke-interface {v0}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;->getCurrentScroll()I

    move-result v0

    if-lez v0, :cond_7

    .line 15
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->for:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    neg-int v1, v3

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;->setTopAndBottomOffset(I)Z

    :cond_7
    :goto_2
    return-void
.end method

.method public catch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->else:Z

    return v0
.end method

.method public class()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->case:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->case:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public const(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->for:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    if-eqz v0, :cond_1

    const-string v0, "@qmui_nested_scroll_layout_offset"

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3
    iget-object v2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->for:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    neg-int v0, v0

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->getOffsetRange()I

    move-result v3

    neg-int v3, v3

    invoke-static {v0, v3, v1}, Landroid/support/v4/kh1;->for(III)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;->setTopAndBottomOffset(I)Z

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->do:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    if-eqz v0, :cond_2

    .line 5
    invoke-interface {v0, p1}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedScrollCommon;->restoreScrollInfo(Landroid/os/Bundle;)V

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->if:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;

    if-eqz v0, :cond_3

    .line 7
    invoke-interface {v0, p1}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedScrollCommon;->restoreScrollInfo(Landroid/os/Bundle;)V

    :cond_3
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->catch:I

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->static()V

    .line 4
    iput-boolean v2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->class:Z

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->const:F

    .line 6
    iget p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->final:I

    if-gez p1, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->final:I

    :cond_0
    return v2

    .line 8
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    iget-boolean v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->class:Z

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->const:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->final:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    .line 10
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    const/4 v2, 0x0

    .line 12
    iget v3, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->const:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 13
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 14
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    :cond_2
    return v2

    .line 15
    :cond_3
    :goto_0
    iput-boolean v1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->class:Z

    .line 16
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public else(Landroid/content/Context;)Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;
    .locals 1

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;

    invoke-direct {v0, p1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->do:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedScrollCommon;->saveScrollInfo(Landroid/os/Bundle;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->if:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedScrollCommon;->saveScrollInfo(Landroid/os/Bundle;)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->getOffsetCurrent()I

    move-result v0

    const-string v1, "@qmui_nested_scroll_layout_offset"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public getBottomAreaBehavior()Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomAreaBehavior;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->new:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomAreaBehavior;

    return-object v0
.end method

.method public getBottomView()Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->if:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;

    return-object v0
.end method

.method public getCurrentScroll()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->do:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;->getCurrentScroll()I

    move-result v0

    add-int/2addr v1, v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->getOffsetCurrent()I

    move-result v0

    add-int/2addr v1, v0

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->if:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;->getCurrentScroll()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    return v1
.end method

.method public getCurrentScrollPercent()F
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->getScrollRange()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->getCurrentScroll()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1
.end method

.method public getOffsetCurrent()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->for:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIViewOffsetBehavior;->getTopAndBottomOffset()I

    move-result v0

    neg-int v0, v0

    :goto_0
    return v0
.end method

.method public getOffsetRange()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->do:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->if:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;->getContentHeight()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->do:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->do:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->if:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getScrollRange()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->do:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;->getScrollOffsetRange()I

    move-result v0

    add-int/2addr v1, v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->getOffsetRange()I

    move-result v0

    add-int/2addr v1, v0

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->if:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;->getScrollOffsetRange()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    return v1
.end method

.method public getTopAreaBehavior()Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->for:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    return-object v0
.end method

.method public getTopView()Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->do:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    return-object v0
.end method

.method public import()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->if:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, v1}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;->consumeScroll(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->do:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->for:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;->setTopAndBottomOffset(I)Z

    .line 5
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->do:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    invoke-interface {v0, v1}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;->consumeScroll(I)I

    :cond_1
    return-void
.end method

.method public native(Landroid/view/View;Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V
    .locals 2
    .param p2    # Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->if:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;

    iput-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->if:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;

    .line 5
    new-instance v1, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout$for;

    invoke-direct {v1, p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout$for;-><init>(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;)V

    invoke-interface {v0, v1}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedScrollCommon;->injectScrollNotifier(Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedScrollCommon$OnScrollNotifier;)V

    if-nez p2, :cond_1

    .line 6
    new-instance p2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    .line 7
    :cond_1
    invoke-virtual {p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 8
    instance-of v1, v0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomAreaBehavior;

    if-eqz v1, :cond_2

    .line 9
    check-cast v0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomAreaBehavior;

    iput-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->new:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomAreaBehavior;

    goto :goto_0

    .line 10
    :cond_2
    new-instance v0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomAreaBehavior;

    invoke-direct {v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomAreaBehavior;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->new:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedBottomAreaBehavior;

    .line 11
    invoke-virtual {p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    :goto_0
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 13
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "bottomView must implement from IQMUIContinuousNestedBottomView"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDragEnd()V
    .locals 0

    return-void
.end method

.method public onDragStarted()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->static()V

    return-void
.end method

.method public onDragToPercent(F)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->getScrollRange()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int p1, v0

    .line 2
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->getCurrentScroll()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->throw(I)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onLayout(ZIIII)V

    .line 2
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->class()V

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onNestedScroll(Landroid/view/View;IIIII)V

    if-lez p5, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->getCurrentScroll()I

    move-result p1

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->getScrollRange()I

    move-result p2

    if-lt p1, p2, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->static()V

    :cond_0
    return-void
.end method

.method public onTopAreaOffset(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->do:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;->getCurrentScroll()I

    move-result v0

    move v3, v0

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->do:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    if-nez v0, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;->getScrollOffsetRange()I

    move-result v0

    move v4, v0

    .line 3
    :goto_1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->if:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;

    if-nez v0, :cond_2

    const/4 v7, 0x0

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;->getCurrentScroll()I

    move-result v0

    move v7, v0

    .line 4
    :goto_2
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->if:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;

    if-nez v0, :cond_3

    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    invoke-interface {v0}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;->getScrollOffsetRange()I

    move-result v1

    move v8, v1

    :goto_3
    neg-int v5, p1

    .line 5
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->getOffsetRange()I

    move-result v6

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->goto(IIIIII)V

    return-void
.end method

.method public onTopBehaviorFlingOrScrollEnd()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->this(IZ)V

    return-void
.end method

.method public onTopBehaviorFlingOrScrollStart()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->this(IZ)V

    return-void
.end method

.method public onTopBehaviorTouchBegin()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0, v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->this(IZ)V

    return-void
.end method

.method public onTopBehaviorTouchEnd()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->this(IZ)V

    return-void
.end method

.method public public(Landroid/view/View;Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V
    .locals 2
    .param p2    # Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->do:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    iput-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->do:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    .line 5
    new-instance v1, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout$if;

    invoke-direct {v1, p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout$if;-><init>(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;)V

    invoke-interface {v0, v1}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedScrollCommon;->injectScrollNotifier(Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedScrollCommon$OnScrollNotifier;)V

    if-nez p2, :cond_1

    .line 6
    new-instance p2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    .line 7
    :cond_1
    invoke-virtual {p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 8
    instance-of v1, v0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    if-eqz v1, :cond_2

    .line 9
    check-cast v0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    iput-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->for:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    goto :goto_0

    .line 10
    :cond_2
    new-instance v0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->for:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    .line 11
    invoke-virtual {p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->for:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    invoke-virtual {v0, p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;->goto(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior$Callback;)V

    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "topView must implement from IQMUIContinuousNestedTopView"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeOnScrollListener(Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout$OnScrollListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->try:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public return(II)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-lez p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->for:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->do:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;->this(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;II)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->if:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0, p1, p2}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;->smoothScrollYBy(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setDraggableScrollBarEnabled(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->break:Z

    if-eq v0, p1, :cond_2

    .line 2
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->break:Z

    if-eqz p1, :cond_0

    .line 3
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->this:Z

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->break()V

    .line 5
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->goto:Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->getCurrentScrollPercent()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->setPercent(F)V

    .line 6
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->goto:Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->do()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->goto:Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 8
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public setEnableScrollBarFadeInOut(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->this:Z

    if-eq v0, p1, :cond_1

    .line 2
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->this:Z

    .line 3
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->break:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->break()V

    .line 5
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->goto:Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->getCurrentScrollPercent()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->setPercent(F)V

    .line 6
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->goto:Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->do()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->goto:Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;->setEnableFadeInAndOut(Z)V

    .line 9
    iget-object p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->goto:Lcom/qmuiteam/qmui/nestedScroll/QMUIDraggableScrollBar;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setKeepBottomAreaStableWhenCheckLayout(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->else:Z

    return-void
.end method

.method public static()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->if:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;->stopScroll()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->for:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;->break()V

    :cond_1
    return-void
.end method

.method public super()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->do:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    if-eqz v0, :cond_0

    const v1, 0x7fffffff

    .line 2
    invoke-interface {v0, v1}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;->consumeScroll(I)I

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->if:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;

    if-eqz v0, :cond_2

    const/high16 v1, -0x80000000

    .line 4
    invoke-interface {v0, v1}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;->consumeScroll(I)V

    .line 5
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->if:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;

    invoke-interface {v0}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;->getContentHeight()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->for:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->do:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr v2, v0

    .line 8
    invoke-virtual {v1, v2}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;->setTopAndBottomOffset(I)Z

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->for:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->if:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->do:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 11
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;->setTopAndBottomOffset(I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public throw(I)V
    .locals 2

    if-lez p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->for:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->do:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, p0, v1, p1}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;->else(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->if:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;->consumeScroll(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public while()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->do:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    const v1, 0x7fffffff

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0, v1}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;->consumeScroll(I)I

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->if:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;->getContentHeight()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 5
    iget-object v2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->do:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    check-cast v2, Landroid/view/View;

    .line 6
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 7
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->for:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;->setTopAndBottomOffset(I)Z

    goto :goto_0

    .line 8
    :cond_0
    iget-object v2, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->for:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    sub-int/2addr v3, v0

    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->do:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr v3, v0

    .line 10
    invoke-virtual {v2, v3}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;->setTopAndBottomOffset(I)Z

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->for:Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->if:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->do:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedTopView;

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 13
    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedTopAreaBehavior;->setTopAndBottomOffset(I)Z

    .line 14
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/nestedScroll/QMUIContinuousNestedScrollLayout;->if:Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;

    if-eqz v0, :cond_3

    .line 15
    invoke-interface {v0, v1}, Lcom/qmuiteam/qmui/nestedScroll/IQMUIContinuousNestedBottomView;->consumeScroll(I)V

    :cond_3
    return-void
.end method
