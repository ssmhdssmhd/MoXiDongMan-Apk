.class public Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;"
    }
.end annotation


# instance fields
.field private do:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration$Callback<",
            "TVH;>;"
        }
    .end annotation
.end field

.field private for:I

.field private if:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TVH;"
        }
    .end annotation
.end field

.field private new:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private try:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration$Callback;)V
    .locals 1
    .param p2    # Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration$Callback<",
            "TVH;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;->for:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;->try:I

    .line 4
    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;->do:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration$Callback;

    .line 5
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;->new:Ljava/lang/ref/WeakReference;

    .line 6
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;->do:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration$Callback;

    new-instance p2, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration$do;

    invoke-direct {p2, p0}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration$do;-><init>(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;)V

    invoke-interface {p1, p2}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration$Callback;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method

.method private break(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;->new:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    .line 2
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;->do:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration$Callback;

    invoke-interface {v0, p1}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration$Callback;->onHeaderVisibilityChanged(Z)V

    return-void
.end method

.method public static synthetic case(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;->break(Z)V

    return-void
.end method

.method public static synthetic do(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;->for:I

    return p0
.end method

.method private else(Landroid/view/ViewGroup;Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "TVH;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;->do:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration$Callback;

    invoke-interface {v0, p2, p3}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration$Callback;->bindViewHolder(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;I)V

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic for(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;)Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;->if:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;

    return-object p0
.end method

.method private goto(Landroidx/recyclerview/widget/RecyclerView;II)Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "II)TVH;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;->do:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration$Callback;

    invoke-interface {p2, p1, p3}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration$Callback;->createViewHolder(Landroid/view/ViewGroup;I)Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;

    move-result-object p1

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p1, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;->for:Z

    return-object p1
.end method

.method public static synthetic if(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;->for:I

    return p1
.end method

.method public static synthetic new(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;->new:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static synthetic try(Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;Landroid/view/ViewGroup;Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;->else(Landroid/view/ViewGroup;Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;I)V

    return-void
.end method


# virtual methods
.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;->new:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_b

    .line 2
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-nez p3, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    if-nez p3, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    .line 5
    instance-of v0, p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 6
    invoke-direct {p0, v1}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;->break(Z)V

    return-void

    .line 7
    :cond_2
    check-cast p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 8
    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_3

    .line 9
    invoke-direct {p0, v1}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;->break(Z)V

    return-void

    .line 10
    :cond_3
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;->do:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration$Callback;

    invoke-interface {v2, p3}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration$Callback;->getRelativeStickyItemPosition(I)I

    move-result p3

    if-ne p3, v0, :cond_4

    .line 11
    invoke-direct {p0, v1}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;->break(Z)V

    return-void

    .line 12
    :cond_4
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;->do:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration$Callback;

    invoke-interface {v2, p3}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration$Callback;->getItemViewType(I)I

    move-result v2

    if-ne v2, v0, :cond_5

    .line 13
    invoke-direct {p0, v1}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;->break(Z)V

    return-void

    .line 14
    :cond_5
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;->if:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-eq v0, v2, :cond_7

    .line 15
    :cond_6
    invoke-direct {p0, p2, p3, v2}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;->goto(Landroidx/recyclerview/widget/RecyclerView;II)Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;->if:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;

    .line 16
    :cond_7
    iget v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;->for:I

    if-eq v0, p3, :cond_8

    .line 17
    iput p3, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;->for:I

    .line 18
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;->if:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;

    invoke-direct {p0, p1, v0, p3}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;->else(Landroid/view/ViewGroup;Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionAdapter$ViewHolder;I)V

    :cond_8
    const/4 p3, 0x1

    .line 19
    invoke-direct {p0, p3}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;->break(Z)V

    .line 20
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    sub-int/2addr v0, p3

    .line 21
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    int-to-float v0, v0

    invoke-virtual {p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_9

    .line 22
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;->try:I

    .line 23
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTop()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    return-void

    .line 24
    :cond_9
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 25
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;->do:Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration$Callback;

    invoke-interface {v1, v0}, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration$Callback;->isHeaderItem(I)Z

    move-result v1

    if-eqz v1, :cond_a

    if-lez v0, :cond_a

    .line 26
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p3

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    move-result p2

    add-int/2addr p3, p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p2

    sub-int/2addr p3, p2

    iput p3, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;->try:I

    .line 27
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTop()I

    move-result p2

    sub-int/2addr p3, p2

    invoke-static {p1, p3}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    return-void

    .line 28
    :cond_a
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;->try:I

    .line 29
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTop()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    :cond_b
    :goto_0
    return-void
.end method

.method public this()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/section/QMUIStickySectionItemDecoration;->try:I

    return v0
.end method
