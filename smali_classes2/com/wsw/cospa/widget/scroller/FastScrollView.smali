.class public Lcom/wsw/cospa/widget/scroller/FastScrollView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private fastScroller:Lcom/wsw/cospa/widget/scroller/FastScroller;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/wsw/cospa/widget/scroller/FastScrollView;->layout(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

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

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lcom/wsw/cospa/widget/scroller/FastScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/widget/scroller/FastScrollView;->layout(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private layout(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/wsw/cospa/widget/scroller/FastScroller;

    invoke-direct {v0, p1, p2}, Lcom/wsw/cospa/widget/scroller/FastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScrollView;->fastScroller:Lcom/wsw/cospa/widget/scroller/FastScroller;

    const v1, 0x7f0901b0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 3
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScrollView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const p1, 0x7f09035b

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setId(I)V

    return-void
.end method


# virtual methods
.method public getFastScroller()Lcom/wsw/cospa/widget/scroller/FastScroller;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScrollView;->fastScroller:Lcom/wsw/cospa/widget/scroller/FastScroller;

    return-object v0
.end method

.method public getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScrollView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScrollView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScrollView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScrollView;->fastScroller:Lcom/wsw/cospa/widget/scroller/FastScroller;

    iget-object v1, p0, Lcom/wsw/cospa/widget/scroller/FastScrollView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/scroller/FastScroller;->attachRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setNestedScrollingEnabled(Z)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScrollView;->fastScroller:Lcom/wsw/cospa/widget/scroller/FastScroller;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/scroller/FastScroller;->setSwipeRefreshLayout(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScrollView;->fastScroller:Lcom/wsw/cospa/widget/scroller/FastScroller;

    invoke-virtual {v0}, Lcom/wsw/cospa/widget/scroller/FastScroller;->detachRecyclerView()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 3
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScrollView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 2
    instance-of v0, p1, Lcom/wsw/cospa/widget/scroller/FastScroller$SectionIndexer;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScrollView;->fastScroller:Lcom/wsw/cospa/widget/scroller/FastScroller;

    check-cast p1, Lcom/wsw/cospa/widget/scroller/FastScroller$SectionIndexer;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/widget/scroller/FastScroller;->setSectionIndexer(Lcom/wsw/cospa/widget/scroller/FastScroller$SectionIndexer;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/widget/scroller/FastScrollView;->fastScroller:Lcom/wsw/cospa/widget/scroller/FastScroller;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/widget/scroller/FastScroller;->setSectionIndexer(Lcom/wsw/cospa/widget/scroller/FastScroller$SectionIndexer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScrollView;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method
