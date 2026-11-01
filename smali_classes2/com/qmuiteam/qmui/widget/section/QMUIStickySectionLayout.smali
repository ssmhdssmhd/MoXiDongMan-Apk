.class public Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;
.super Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$StickySectionWrapViewConfig;
    }
.end annotation


# instance fields
.field private case:I

.field private else:Ljava/lang/Runnable;

.field private for:Landroidx/recyclerview/widget/RecyclerView;

.field private new:Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;

.field private try:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 4
    iput p2, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->case:I

    const/4 p3, 0x0

    .line 5
    iput-object p3, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->else:Ljava/lang/Runnable;

    .line 6
    new-instance p3, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;

    invoke-direct {p3, p1}, Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->new:Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;

    .line 7
    new-instance p3, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p3, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->for:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p3, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->new:Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p3, p2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->new:Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;

    new-instance p2, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$do;

    invoke-direct {p2, p0}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$do;-><init>(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public static synthetic for(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->case:I

    return p1
.end method

.method public static synthetic if(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->case:I

    return p0
.end method

.method public static synthetic new(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->else:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic try(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->else:Ljava/lang/Runnable;

    return-object p1
.end method


# virtual methods
.method public case(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$StickySectionWrapViewConfig;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->new:Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;

    invoke-interface {p1, v0}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$StickySectionWrapViewConfig;->config(Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;)V

    :cond_0
    return-void
.end method

.method public else(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<H::",
            "Lcom/qmuiteam/qmui/widget/section/QMUISection$Model<",
            "TH;>;T::",
            "Lcom/qmuiteam/qmui/widget/section/QMUISection$Model<",
            "TT;>;VH:",
            "Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;",
            ">(",
            "Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter<",
            "TH;TT;TVH;>;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    new-instance p2, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$if;

    invoke-direct {p2, p0, p1}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$if;-><init>(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;)V

    .line 2
    new-instance v0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->new:Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;

    invoke-direct {v0, v1, p2}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;-><init>(Landroid/view/ViewGroup;Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration$Callback;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->try:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;

    .line 3
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->for:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 4
    :cond_0
    invoke-virtual {p1, p0}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;->c(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewCallback;)V

    .line 5
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->for:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->for:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->for:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public getStickySectionView()Landroid/view/View;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->new:Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->new:Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;

    .line 2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->new:Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStickySectionWrapView()Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->new:Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;

    return-object v0
.end method

.method public onLayout(ZIIII)V
    .locals 1

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->try:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->new:Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result p2

    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->try:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;

    .line 4
    invoke-virtual {p3}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;->this()I

    move-result p3

    iget-object p4, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->new:Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;

    .line 5
    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getRight()I

    move-result p4

    iget-object p5, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->try:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;

    .line 6
    invoke-virtual {p5}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;->this()I

    move-result p5

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->new:Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    add-int/2addr p5, v0

    .line 7
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    :cond_0
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->for:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public scrollToPosition(IZZ)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->else:Ljava/lang/Runnable;

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->for:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_5

    if-ltz p1, :cond_5

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->for:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 5
    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_4

    .line 6
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v1

    .line 8
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v2

    const/4 v3, 0x0

    if-nez p2, :cond_2

    .line 9
    iget p2, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->case:I

    if-gtz p2, :cond_1

    .line 10
    new-instance p2, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$for;

    invoke-direct {p2, p0, p1, p3}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout$for;-><init>(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;IZ)V

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->else:Ljava/lang/Runnable;

    .line 11
    :cond_1
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->new:Lcom/qmuiteam/qmui/layout/QMUIFrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    if-lt p1, v1, :cond_3

    if-gt p1, v2, :cond_3

    if-eqz p3, :cond_5

    .line 12
    :cond_3
    invoke-virtual {v0, p1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_0

    .line 13
    :cond_4
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->for:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public setAdapter(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<H::",
            "Lcom/qmuiteam/qmui/widget/section/QMUISection$Model<",
            "TH;>;T::",
            "Lcom/qmuiteam/qmui/widget/section/QMUISection$Model<",
            "TT;>;VH:",
            "Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;",
            ">(",
            "Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter<",
            "TH;TT;TVH;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->else(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter;Z)V

    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionLayout;->for:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method
