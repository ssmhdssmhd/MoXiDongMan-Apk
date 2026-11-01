.class public Lcom/wsw/cospa/widget/scroller/FastScrollRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# instance fields
.field private fastScroller:Lcom/wsw/cospa/widget/scroller/FastScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/wsw/cospa/widget/scroller/FastScrollRecyclerView;->layout(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/wsw/cospa/widget/scroller/FastScrollRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/widget/scroller/FastScrollRecyclerView;->layout(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private layout(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/wsw/cospa/widget/scroller/FastScroller;

    invoke-direct {v0, p1, p2}, Lcom/wsw/cospa/widget/scroller/FastScroller;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScrollRecyclerView;->fastScroller:Lcom/wsw/cospa/widget/scroller/FastScroller;

    const p1, 0x7f0901b0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setId(I)V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScrollRecyclerView;->fastScroller:Lcom/wsw/cospa/widget/scroller/FastScroller;

    invoke-virtual {v0, p0}, Lcom/wsw/cospa/widget/scroller/FastScroller;->attachRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScrollRecyclerView;->fastScroller:Lcom/wsw/cospa/widget/scroller/FastScroller;

    invoke-virtual {v0}, Lcom/wsw/cospa/widget/scroller/FastScroller;->detachRecyclerView()V

    .line 2
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onDetachedFromWindow()V

    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 2
    instance-of v0, p1, Lcom/wsw/cospa/widget/scroller/FastScroller$SectionIndexer;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScrollRecyclerView;->fastScroller:Lcom/wsw/cospa/widget/scroller/FastScroller;

    check-cast p1, Lcom/wsw/cospa/widget/scroller/FastScroller$SectionIndexer;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/widget/scroller/FastScroller;->setSectionIndexer(Lcom/wsw/cospa/widget/scroller/FastScroller$SectionIndexer;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/widget/scroller/FastScrollRecyclerView;->fastScroller:Lcom/wsw/cospa/widget/scroller/FastScroller;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/widget/scroller/FastScroller;->setSectionIndexer(Lcom/wsw/cospa/widget/scroller/FastScroller$SectionIndexer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setBubbleColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScrollRecyclerView;->fastScroller:Lcom/wsw/cospa/widget/scroller/FastScroller;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/widget/scroller/FastScroller;->setBubbleColor(I)V

    return-void
.end method

.method public setBubbleTextColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScrollRecyclerView;->fastScroller:Lcom/wsw/cospa/widget/scroller/FastScroller;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/widget/scroller/FastScroller;->setBubbleTextColor(I)V

    return-void
.end method

.method public setBubbleTextSize(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScrollRecyclerView;->fastScroller:Lcom/wsw/cospa/widget/scroller/FastScroller;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/widget/scroller/FastScroller;->setBubbleTextSize(I)V

    return-void
.end method

.method public setBubbleVisible(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScrollRecyclerView;->fastScroller:Lcom/wsw/cospa/widget/scroller/FastScroller;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/widget/scroller/FastScroller;->setBubbleVisible(Z)V

    return-void
.end method

.method public setFastScrollEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScrollRecyclerView;->fastScroller:Lcom/wsw/cospa/widget/scroller/FastScroller;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/widget/scroller/FastScroller;->setEnabled(Z)V

    return-void
.end method

.method public setFastScrollListener(Lcom/wsw/cospa/widget/scroller/FastScroller$FastScrollListener;)V
    .locals 1
    .param p1    # Lcom/wsw/cospa/widget/scroller/FastScroller$FastScrollListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScrollRecyclerView;->fastScroller:Lcom/wsw/cospa/widget/scroller/FastScroller;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/widget/scroller/FastScroller;->setFastScrollListener(Lcom/wsw/cospa/widget/scroller/FastScroller$FastScrollListener;)V

    return-void
.end method

.method public setHandleColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScrollRecyclerView;->fastScroller:Lcom/wsw/cospa/widget/scroller/FastScroller;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/widget/scroller/FastScroller;->setHandleColor(I)V

    return-void
.end method

.method public setHideScrollbar(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScrollRecyclerView;->fastScroller:Lcom/wsw/cospa/widget/scroller/FastScroller;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/widget/scroller/FastScroller;->setHideScrollbar(Z)V

    return-void
.end method

.method public setSectionIndexer(Lcom/wsw/cospa/widget/scroller/FastScroller$SectionIndexer;)V
    .locals 1
    .param p1    # Lcom/wsw/cospa/widget/scroller/FastScroller$SectionIndexer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScrollRecyclerView;->fastScroller:Lcom/wsw/cospa/widget/scroller/FastScroller;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/widget/scroller/FastScroller;->setSectionIndexer(Lcom/wsw/cospa/widget/scroller/FastScroller$SectionIndexer;)V

    return-void
.end method

.method public setTrackColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScrollRecyclerView;->fastScroller:Lcom/wsw/cospa/widget/scroller/FastScroller;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/widget/scroller/FastScroller;->setTrackColor(I)V

    return-void
.end method

.method public setTrackVisible(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScrollRecyclerView;->fastScroller:Lcom/wsw/cospa/widget/scroller/FastScroller;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/widget/scroller/FastScroller;->setTrackVisible(Z)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScrollRecyclerView;->fastScroller:Lcom/wsw/cospa/widget/scroller/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
