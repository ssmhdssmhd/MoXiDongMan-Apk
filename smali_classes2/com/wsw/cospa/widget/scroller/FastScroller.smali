.class public Lcom/wsw/cospa/widget/scroller/FastScroller;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/widget/scroller/FastScroller$SectionIndexer;,
        Lcom/wsw/cospa/widget/scroller/FastScroller$FastScrollListener;,
        Lcom/wsw/cospa/widget/scroller/FastScroller$Size;
    }
.end annotation


# static fields
.field private static final BUBBLE_ANIM_DURATION:I = 0x64

.field private static final SCROLLBAR_ANIM_DURATION:I = 0x12c

.field private static final SCROLLBAR_HIDE_DELAY:I = 0x3e8

.field private static final TRACK_SNAP_RANGE:I = 0x5


# instance fields
.field private bubbleAnimator:Landroid/view/ViewPropertyAnimator;

.field private bubbleColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private bubbleHeight:I

.field private bubbleImage:Landroid/graphics/drawable/Drawable;

.field private bubbleSize:Lcom/wsw/cospa/widget/scroller/FastScroller$Size;

.field private bubbleView:Landroid/widget/TextView;

.field private fastScrollListener:Lcom/wsw/cospa/widget/scroller/FastScroller$FastScrollListener;

.field private handleColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private handleHeight:I

.field private handleImage:Landroid/graphics/drawable/Drawable;

.field private handleView:Landroid/widget/ImageView;

.field private hideScrollbar:Z

.field private layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private final positionFixer:Ljava/lang/Runnable;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final scrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private scrollbar:Landroid/view/View;

.field private scrollbarAnimator:Landroid/view/ViewPropertyAnimator;

.field private final scrollbarHider:Ljava/lang/Runnable;

.field private sectionIndexer:Lcom/wsw/cospa/widget/scroller/FastScroller$SectionIndexer;

.field private showBubble:Z

.field private swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field private trackImage:Landroid/graphics/drawable/Drawable;

.field private trackView:Landroid/widget/ImageView;

.field private viewHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/wsw/cospa/widget/scroller/FastScroller$Size;->NORMAL:Lcom/wsw/cospa/widget/scroller/FastScroller$Size;

    invoke-direct {p0, p1, v0}, Lcom/wsw/cospa/widget/scroller/FastScroller;-><init>(Landroid/content/Context;Lcom/wsw/cospa/widget/scroller/FastScroller$Size;)V

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

    .line 8
    invoke-direct {p0, p1, p2, v0}, Lcom/wsw/cospa/widget/scroller/FastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    new-instance p3, Landroid/support/v4/ka0;

    invoke-direct {p3, p0}, Landroid/support/v4/ka0;-><init>(Lcom/wsw/cospa/widget/scroller/FastScroller;)V

    iput-object p3, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->scrollbarHider:Ljava/lang/Runnable;

    .line 11
    new-instance p3, Lcom/wsw/cospa/widget/scroller/FastScroller$1;

    invoke-direct {p3, p0}, Lcom/wsw/cospa/widget/scroller/FastScroller$1;-><init>(Lcom/wsw/cospa/widget/scroller/FastScroller;)V

    iput-object p3, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->positionFixer:Ljava/lang/Runnable;

    .line 12
    new-instance p3, Lcom/wsw/cospa/widget/scroller/FastScroller$2;

    invoke-direct {p3, p0}, Lcom/wsw/cospa/widget/scroller/FastScroller$2;-><init>(Lcom/wsw/cospa/widget/scroller/FastScroller;)V

    iput-object p3, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->scrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/widget/scroller/FastScroller;->layout(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/widget/scroller/FastScroller;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/wsw/cospa/widget/scroller/FastScroller$Size;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v0, Landroid/support/v4/ka0;

    invoke-direct {v0, p0}, Landroid/support/v4/ka0;-><init>(Lcom/wsw/cospa/widget/scroller/FastScroller;)V

    iput-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->scrollbarHider:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Lcom/wsw/cospa/widget/scroller/FastScroller$1;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/widget/scroller/FastScroller$1;-><init>(Lcom/wsw/cospa/widget/scroller/FastScroller;)V

    iput-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->positionFixer:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Lcom/wsw/cospa/widget/scroller/FastScroller$2;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/widget/scroller/FastScroller$2;-><init>(Lcom/wsw/cospa/widget/scroller/FastScroller;)V

    iput-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->scrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/widget/scroller/FastScroller;->layout(Landroid/content/Context;Lcom/wsw/cospa/widget/scroller/FastScroller$Size;)V

    .line 7
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    const/4 v0, -0x1

    invoke-direct {p1, p2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/widget/scroller/FastScroller;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/wsw/cospa/widget/scroller/FastScroller;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->handleView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/wsw/cospa/widget/scroller/FastScroller;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/wsw/cospa/widget/scroller/FastScroller;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->scrollbar:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/wsw/cospa/widget/scroller/FastScroller;Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/widget/scroller/FastScroller;->isViewVisible(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1200(Lcom/wsw/cospa/widget/scroller/FastScroller;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/widget/scroller/FastScroller;->showScrollbar()V

    return-void
.end method

.method public static synthetic access$1300(Lcom/wsw/cospa/widget/scroller/FastScroller;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->hideScrollbar:Z

    return p0
.end method

.method public static synthetic access$1400(Lcom/wsw/cospa/widget/scroller/FastScroller;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->bubbleView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$1502(Lcom/wsw/cospa/widget/scroller/FastScroller;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->bubbleAnimator:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/wsw/cospa/widget/scroller/FastScroller;Landroidx/recyclerview/widget/RecyclerView;)F
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/widget/scroller/FastScroller;->getScrollProportion(Landroidx/recyclerview/widget/RecyclerView;)F

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Lcom/wsw/cospa/widget/scroller/FastScroller;FZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/widget/scroller/FastScroller;->setViewPositions(FZ)V

    return-void
.end method

.method public static synthetic access$400(Lcom/wsw/cospa/widget/scroller/FastScroller;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/wsw/cospa/widget/scroller/FastScroller;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/widget/scroller/FastScroller;->findFirstVisibleItemPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$600(Lcom/wsw/cospa/widget/scroller/FastScroller;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->positionFixer:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/wsw/cospa/widget/scroller/FastScroller;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->scrollbarHider:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/wsw/cospa/widget/scroller/FastScroller;)Landroid/view/ViewPropertyAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->scrollbarAnimator:Landroid/view/ViewPropertyAnimator;

    return-object p0
.end method

.method public static synthetic access$802(Lcom/wsw/cospa/widget/scroller/FastScroller;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->scrollbarAnimator:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method public static synthetic access$900(Lcom/wsw/cospa/widget/scroller/FastScroller;Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/widget/scroller/FastScroller;->cancelAnimation(Landroid/view/ViewPropertyAnimator;)V

    return-void
.end method

.method private cancelAnimation(Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/widget/scroller/FastScroller;)V
    .locals 0

    invoke-direct {p0}, Lcom/wsw/cospa/widget/scroller/FastScroller;->hideScrollbar()V

    return-void
.end method

.method private findFirstVisibleItemPosition(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)I
    .locals 2

    .line 1
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    return p1

    .line 3
    :cond_0
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    move-result-object p1

    aget p1, p1, v1

    return p1

    :cond_1
    return v1
.end method

.method private getScrollProportion(Landroidx/recyclerview/widget/RecyclerView;)F
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v1

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result p1

    .line 3
    iget v2, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->viewHeight:I

    sub-int/2addr p1, v2

    int-to-float p1, p1

    int-to-float v1, v1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    div-float/2addr v1, p1

    int-to-float p1, v2

    mul-float p1, p1, v1

    return p1
.end method

.method private getValueInRange(III)I
    .locals 0

    .line 1
    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private hideBubble()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->bubbleView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/wsw/cospa/widget/scroller/FastScroller;->isViewVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->bubbleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/wsw/cospa/widget/scroller/FastScroller$4;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/widget/scroller/FastScroller$4;-><init>(Lcom/wsw/cospa/widget/scroller/FastScroller;)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->bubbleAnimator:Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method

.method private hideScrollbar()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->scrollbar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/wsw/cospa/widget/scroller/FastScroller$6;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/widget/scroller/FastScroller$6;-><init>(Lcom/wsw/cospa/widget/scroller/FastScroller;)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->scrollbarAnimator:Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public static synthetic if(Lcom/wsw/cospa/widget/scroller/FastScroller;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/wsw/cospa/widget/scroller/FastScroller;->lambda$attachRecyclerView$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method private isLayoutReversed(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result p1

    return p1

    .line 3
    :cond_0
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getReverseLayout()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private isViewVisible(Landroid/view/View;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private synthetic lambda$attachRecyclerView$0(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, p1}, Lcom/wsw/cospa/widget/scroller/FastScroller;->getScrollProportion(Landroidx/recyclerview/widget/RecyclerView;)F

    move-result p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/widget/scroller/FastScroller;->setViewPositions(FZ)V

    return-void
.end method

.method private layout(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/wsw/cospa/widget/scroller/FastScroller$Size;->NORMAL:Lcom/wsw/cospa/widget/scroller/FastScroller$Size;

    invoke-direct {p0, p1, p2, v0}, Lcom/wsw/cospa/widget/scroller/FastScroller;->layout(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/wsw/cospa/widget/scroller/FastScroller$Size;)V

    return-void
.end method

.method private layout(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/wsw/cospa/widget/scroller/FastScroller$Size;)V
    .locals 9

    const v0, 0x7f0c007b

    .line 3
    invoke-static {p1, v0, p0}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v1, 0x7f0901b2

    .line 6
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->bubbleView:Landroid/widget/TextView;

    const v1, 0x7f0901b3

    .line 7
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->handleView:Landroid/widget/ImageView;

    const v1, 0x7f0901b5

    .line 8
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->trackView:Landroid/widget/ImageView;

    const v1, 0x7f0901b4

    .line 9
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->scrollbar:Landroid/view/View;

    .line 10
    iput-object p3, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->bubbleSize:Lcom/wsw/cospa/widget/scroller/FastScroller$Size;

    .line 11
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p3, Lcom/wsw/cospa/widget/scroller/FastScroller$Size;->textSizeId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    const/4 v2, 0x1

    const v3, -0x777778

    const v4, -0xbbbbbc

    const v5, -0x333334

    const/4 v6, -0x1

    if-eqz p2, :cond_0

    .line 12
    sget-object v7, Lcom/wsw/cospa/R$styleable;->FastScroller:[I

    invoke-virtual {p1, p2, v7, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 13
    :try_start_0
    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    const/4 p2, 0x4

    .line 14
    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    const/16 p2, 0x8

    .line 15
    invoke-virtual {p1, p2, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    const/4 p2, 0x2

    .line 16
    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    const/4 p2, 0x5

    .line 17
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    const/4 v1, 0x6

    .line 18
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/4 v7, 0x7

    .line 19
    invoke-virtual {p1, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 20
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 21
    invoke-static {p3}, Lcom/wsw/cospa/widget/scroller/FastScroller$Size;->fromOrdinal(I)Lcom/wsw/cospa/widget/scroller/FastScroller$Size;

    move-result-object p3

    iput-object p3, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->bubbleSize:Lcom/wsw/cospa/widget/scroller/FastScroller$Size;

    const/4 p3, 0x3

    .line 22
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v8, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->bubbleSize:Lcom/wsw/cospa/widget/scroller/FastScroller$Size;

    iget v8, v8, Lcom/wsw/cospa/widget/scroller/FastScroller$Size;->textSizeId:I

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 23
    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    move v2, p2

    move p1, v1

    move v1, p3

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 25
    throw p2

    :cond_0
    const/4 p1, 0x1

    const/4 v7, 0x0

    .line 26
    :goto_0
    invoke-virtual {p0, v5}, Lcom/wsw/cospa/widget/scroller/FastScroller;->setTrackColor(I)V

    .line 27
    invoke-virtual {p0, v4}, Lcom/wsw/cospa/widget/scroller/FastScroller;->setHandleColor(I)V

    .line 28
    invoke-virtual {p0, v3}, Lcom/wsw/cospa/widget/scroller/FastScroller;->setBubbleColor(I)V

    .line 29
    invoke-virtual {p0, v6}, Lcom/wsw/cospa/widget/scroller/FastScroller;->setBubbleTextColor(I)V

    .line 30
    invoke-virtual {p0, v2}, Lcom/wsw/cospa/widget/scroller/FastScroller;->setHideScrollbar(Z)V

    .line 31
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/widget/scroller/FastScroller;->setBubbleVisible(Z)V

    .line 32
    invoke-virtual {p0, v7}, Lcom/wsw/cospa/widget/scroller/FastScroller;->setTrackVisible(Z)V

    .line 33
    iget-object p1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->bubbleView:Landroid/widget/TextView;

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method private layout(Landroid/content/Context;Lcom/wsw/cospa/widget/scroller/FastScroller$Size;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lcom/wsw/cospa/widget/scroller/FastScroller;->layout(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/wsw/cospa/widget/scroller/FastScroller$Size;)V

    return-void
.end method

.method private setHandleSelected(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->handleView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->handleImage:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->bubbleColor:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->handleColor:I

    :goto_0
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method private setRecyclerViewPosition(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->handleView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->handleView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v1

    iget v2, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->handleHeight:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->viewHeight:I

    add-int/lit8 v3, v2, -0x5

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    int-to-float v1, v2

    div-float v2, p1, v1

    :goto_0
    int-to-float p1, v0

    mul-float v2, v2, p1

    .line 5
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 6
    iget-object v1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/wsw/cospa/widget/scroller/FastScroller;->isLayoutReversed(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    sub-int p1, v0, p1

    :cond_2
    const/4 v1, 0x0

    add-int/lit8 v0, v0, -0x1

    .line 7
    invoke-direct {p0, v1, v0, p1}, Lcom/wsw/cospa/widget/scroller/FastScroller;->getValueInRange(III)I

    move-result p1

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 10
    :cond_3
    iget-boolean v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->showBubble:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->sectionIndexer:Lcom/wsw/cospa/widget/scroller/FastScroller$SectionIndexer;

    if-eqz v0, :cond_4

    .line 11
    iget-object v1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->bubbleView:Landroid/widget/TextView;

    invoke-interface {v0, p1}, Lcom/wsw/cospa/widget/scroller/FastScroller$SectionIndexer;->getSectionText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method private setViewPositions(FZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->bubbleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->bubbleHeight:I

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->handleView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->handleHeight:I

    .line 3
    iget v1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->viewHeight:I

    iget v2, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->bubbleHeight:I

    sub-int/2addr v1, v2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    int-to-float v0, v2

    sub-float v0, p1, v0

    float-to-int v0, v0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1, v0}, Lcom/wsw/cospa/widget/scroller/FastScroller;->getValueInRange(III)I

    move-result v0

    .line 4
    iget v1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->viewHeight:I

    iget v3, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->handleHeight:I

    sub-int/2addr v1, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr p1, v3

    float-to-int p1, p1

    invoke-direct {p0, v2, v1, p1}, Lcom/wsw/cospa/widget/scroller/FastScroller;->getValueInRange(III)I

    move-result p1

    if-nez p2, :cond_2

    .line 5
    iget-object p2, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p2

    if-nez p2, :cond_1

    .line 7
    iget p1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->viewHeight:I

    iget p2, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->bubbleHeight:I

    sub-int p2, p1, p2

    iget v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->handleHeight:I

    div-int/lit8 v1, v0, 0x2

    sub-int v2, p2, v1

    sub-int/2addr p1, v0

    goto :goto_0

    .line 8
    :cond_1
    iget-object p2, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, -0x1

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    move v2, v0

    .line 9
    :goto_0
    iget-boolean p2, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->showBubble:Z

    if-eqz p2, :cond_3

    .line 10
    iget-object p2, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->bubbleView:Landroid/widget/TextView;

    int-to-float v0, v2

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setY(F)V

    .line 11
    :cond_3
    iget-object p2, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->handleView:Landroid/widget/ImageView;

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setY(F)V

    return-void
.end method

.method private showBubble()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->bubbleView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/wsw/cospa/widget/scroller/FastScroller;->isViewVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->bubbleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->bubbleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/wsw/cospa/widget/scroller/FastScroller$3;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/widget/scroller/FastScroller$3;-><init>(Lcom/wsw/cospa/widget/scroller/FastScroller;)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->bubbleAnimator:Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method

.method private showScrollbar()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v0

    iget v1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->viewHeight:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->scrollbar:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->scrollbar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->scrollbar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/wsw/cospa/widget/scroller/FastScroller$5;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/widget/scroller/FastScroller$5;-><init>(Lcom/wsw/cospa/widget/scroller/FastScroller;)V

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->scrollbarAnimator:Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method

.method private updateViewHeights()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->bubbleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v0}, Landroid/widget/TextView;->measure(II)V

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->bubbleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->bubbleHeight:I

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->handleView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v0}, Landroid/widget/ImageView;->measure(II)V

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->handleView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->handleHeight:I

    return-void
.end method


# virtual methods
.method public attachRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/widget/scroller/FastScroller;->setLayoutParams(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 6
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/wsw/cospa/widget/scroller/FastScroller;->setLayoutParams(Landroid/view/ViewGroup;)V

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->scrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 9
    new-instance v0, Landroid/support/v4/ja0;

    invoke-direct {v0, p0}, Landroid/support/v4/ja0;-><init>(Lcom/wsw/cospa/widget/scroller/FastScroller;)V

    iput-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public detachRecyclerView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->scrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    :cond_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 2
    iput p2, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->viewHeight:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_7

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 4
    invoke-direct {p0, v1}, Lcom/wsw/cospa/widget/scroller/FastScroller;->setHandleSelected(Z)V

    .line 5
    iget-boolean p1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->hideScrollbar:Z

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->scrollbarHider:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/wsw/cospa/widget/scroller/FastScroller;->hideBubble()V

    .line 8
    iget-object p1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->fastScrollListener:Lcom/wsw/cospa/widget/scroller/FastScroller$FastScrollListener;

    if-eqz p1, :cond_2

    .line 9
    invoke-interface {p1, p0}, Lcom/wsw/cospa/widget/scroller/FastScroller$FastScrollListener;->onFastScrollStop(Lcom/wsw/cospa/widget/scroller/FastScroller;)V

    :cond_2
    return v2

    .line 10
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->handleView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->scrollbar:Landroid/view/View;

    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    cmpg-float v0, v0, v3

    if-gez v0, :cond_4

    return v1

    .line 11
    :cond_4
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 12
    invoke-direct {p0, v2}, Lcom/wsw/cospa/widget/scroller/FastScroller;->setHandleSelected(Z)V

    .line 13
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->scrollbarHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->scrollbarAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0, v0}, Lcom/wsw/cospa/widget/scroller/FastScroller;->cancelAnimation(Landroid/view/ViewPropertyAnimator;)V

    .line 15
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->bubbleAnimator:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0, v0}, Lcom/wsw/cospa/widget/scroller/FastScroller;->cancelAnimation(Landroid/view/ViewPropertyAnimator;)V

    .line 16
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->scrollbar:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/wsw/cospa/widget/scroller/FastScroller;->isViewVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 17
    invoke-direct {p0}, Lcom/wsw/cospa/widget/scroller/FastScroller;->showScrollbar()V

    .line 18
    :cond_5
    iget-boolean v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->showBubble:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->sectionIndexer:Lcom/wsw/cospa/widget/scroller/FastScroller$SectionIndexer;

    if-eqz v0, :cond_6

    .line 19
    invoke-direct {p0}, Lcom/wsw/cospa/widget/scroller/FastScroller;->showBubble()V

    .line 20
    :cond_6
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->fastScrollListener:Lcom/wsw/cospa/widget/scroller/FastScroller$FastScrollListener;

    if-eqz v0, :cond_7

    .line 21
    invoke-interface {v0, p0}, Lcom/wsw/cospa/widget/scroller/FastScroller$FastScrollListener;->onFastScrollStart(Lcom/wsw/cospa/widget/scroller/FastScroller;)V

    .line 22
    :cond_7
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v0, :cond_8

    .line 23
    iget-object v1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 25
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 26
    invoke-direct {p0, p1, v2}, Lcom/wsw/cospa/widget/scroller/FastScroller;->setViewPositions(FZ)V

    .line 27
    invoke-direct {p0, p1}, Lcom/wsw/cospa/widget/scroller/FastScroller;->setRecyclerViewPosition(F)V

    return v2
.end method

.method public setBubbleColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->bubbleColor:I

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->bubbleImage:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->bubbleSize:Lcom/wsw/cospa/widget/scroller/FastScroller$Size;

    iget v0, v0, Lcom/wsw/cospa/widget/scroller/FastScroller$Size;->drawableId:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->bubbleImage:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->bubbleImage:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->bubbleColor:I

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 7
    iget-object p1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->bubbleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->bubbleImage:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBubbleTextColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->bubbleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setBubbleTextSize(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->bubbleView:Landroid/widget/TextView;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method

.method public setBubbleVisible(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->showBubble:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 2
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public setFastScrollListener(Lcom/wsw/cospa/widget/scroller/FastScroller$FastScrollListener;)V
    .locals 0
    .param p1    # Lcom/wsw/cospa/widget/scroller/FastScroller$FastScrollListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->fastScrollListener:Lcom/wsw/cospa/widget/scroller/FastScroller$FastScrollListener;

    return-void
.end method

.method public setHandleColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->handleColor:I

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->handleImage:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0800a8

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->handleImage:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->handleImage:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->handleColor:I

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 7
    iget-object p1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->handleView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->handleImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setHideScrollbar(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->hideScrollbar:Z

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->scrollbar:Landroid/view/View;

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1    # Landroid/view/ViewGroup$LayoutParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, -0x2

    .line 1
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup;)V
    .locals 7
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700b4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700b3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    if-eq v0, v1, :cond_5

    .line 6
    instance-of v4, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v5, 0x800005

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 8
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 9
    iput v5, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 10
    invoke-virtual {p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setAnchorId(I)V

    .line 11
    invoke-virtual {p1, v6, v2, v6, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 12
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/widget/scroller/FastScroller;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 13
    :cond_1
    instance-of v4, p1, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_2

    .line 14
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 15
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 16
    iput v5, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 17
    invoke-virtual {p1, v6, v2, v6, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 18
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/widget/scroller/FastScroller;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 19
    :cond_2
    instance-of p1, p1, Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_4

    .line 20
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 21
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v1, v4, :cond_3

    const/16 v1, 0x13

    goto :goto_1

    :cond_3
    const/4 v1, 0x7

    .line 22
    :goto_1
    iput v6, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v4, 0x6

    .line 23
    invoke-virtual {p1, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v4, 0x8

    .line 24
    invoke-virtual {p1, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 25
    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 26
    invoke-virtual {p1, v6, v2, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 27
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/widget/scroller/FastScroller;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    :goto_2
    invoke-direct {p0}, Lcom/wsw/cospa/widget/scroller/FastScroller;->updateViewHeights()V

    return-void

    .line 29
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Parent ViewGroup must be a ConstraintLayout, CoordinatorLayout, FrameLayout, or RelativeLayout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "RecyclerView must have a view ID"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSectionIndexer(Lcom/wsw/cospa/widget/scroller/FastScroller$SectionIndexer;)V
    .locals 0
    .param p1    # Lcom/wsw/cospa/widget/scroller/FastScroller$SectionIndexer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->sectionIndexer:Lcom/wsw/cospa/widget/scroller/FastScroller$SectionIndexer;

    return-void
.end method

.method public setSwipeRefreshLayout(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V
    .locals 0
    .param p1    # Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-void
.end method

.method public setTrackColor(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->trackImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0800a9

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->trackImage:Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->trackImage:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->trackView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->trackImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTrackVisible(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller;->trackView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
