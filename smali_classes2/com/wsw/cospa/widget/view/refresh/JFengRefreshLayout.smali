.class public Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;
.super Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "JFengRefreshLayout"


# instance fields
.field public PRELOAD_SIZE:I

.field private canBottomLoad:Z

.field private contentRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private contentView:Landroid/widget/AbsListView;

.field private isLoading:Z

.field public mIsFirstTimeTouchBottom:Z

.field private mLastY:I

.field private mListViewFooter:Landroid/view/View;

.field private mRefreshListener:Lcom/wsw/cospa/widget/view/refresh/JFengRefreshListener;

.field private mTouchSlop:I

.field private mYDown:I

.field private refreshDataView:Landroid/view/View;

.field public xDistance:F

.field public xLast:F

.field public yDistance:F

.field public yLast:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->isLoading:Z

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->canBottomLoad:Z

    .line 5
    iput v0, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->PRELOAD_SIZE:I

    .line 6
    iput-boolean v0, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->mIsFirstTimeTouchBottom:Z

    .line 7
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->mTouchSlop:I

    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0109

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->mListViewFooter:Landroid/view/View;

    const/4 p1, 0x4

    new-array p1, p1, [I

    .line 9
    fill-array-data p1, :array_0

    invoke-virtual {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0601c6
        0x7f0601c7
        0x7f0601c8
        0x7f0601c9
    .end array-data
.end method

.method public static synthetic access$000(Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->contentRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->loadData()V

    return-void
.end method

.method public static synthetic access$200(Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;)Lcom/wsw/cospa/widget/view/refresh/JFengRefreshListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->mRefreshListener:Lcom/wsw/cospa/widget/view/refresh/JFengRefreshListener;

    return-object p0
.end method

.method private canLoad()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->canBottomLoad:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->isBottom()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->isLoading:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->isPullUp()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initListView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->refreshDataView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->refreshDataView:Landroid/view/View;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->refreshDataView:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ListView;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->refreshDataView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->contentView:Landroid/widget/AbsListView;

    goto :goto_0

    .line 7
    :cond_1
    instance-of v1, v0, Landroid/widget/GridView;

    if-eqz v1, :cond_2

    .line 8
    check-cast v0, Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->refreshDataView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->contentView:Landroid/widget/AbsListView;

    goto :goto_0

    .line 10
    :cond_2
    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_3

    .line 11
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->contentRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 12
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 13
    iget-object v1, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->contentRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->getOnBottomListener(Landroidx/recyclerview/widget/LinearLayoutManager;)Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private isBottom()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->contentView:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->contentView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    iget-object v2, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->contentView:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isPullUp()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->mYDown:I

    iget v1, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->mLastY:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->mTouchSlop:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private loadData()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->mRefreshListener:Lcom/wsw/cospa/widget/view/refresh/JFengRefreshListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->startLoading()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->mRefreshListener:Lcom/wsw/cospa/widget/view/refresh/JFengRefreshListener;

    invoke-interface {v0}, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshListener;->onLoad()V

    :cond_0
    return-void
.end method

.method private setLoading(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->contentView:Landroid/widget/AbsListView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->isLoading:Z

    if-eqz p1, :cond_2

    .line 3
    :try_start_0
    instance-of p1, v0, Landroid/widget/ListView;

    if-eqz p1, :cond_1

    .line 4
    check-cast v0, Landroid/widget/ListView;

    iget-object p1, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->mListViewFooter:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    goto :goto_1

    .line 5
    :cond_1
    instance-of p1, v0, Landroid/widget/GridView;

    goto :goto_1

    .line 6
    :cond_2
    instance-of p1, v0, Landroid/widget/ListView;

    if-eqz p1, :cond_3

    .line 7
    check-cast v0, Landroid/widget/ListView;

    iget-object p1, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->mListViewFooter:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_0

    .line 8
    :cond_3
    instance-of p1, v0, Landroid/widget/GridView;

    :goto_0
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->mYDown:I

    .line 10
    iput p1, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->mLastY:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    :goto_1
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->mLastY:I

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->mYDown:I

    .line 4
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public finishLoading()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->setLoading(Z)V

    return-void
.end method

.method public finishRefresh()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public getOnBottomListener(Landroidx/recyclerview/widget/LinearLayoutManager;)Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
    .locals 1

    .line 1
    new-instance v0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout$1;

    invoke-direct {v0, p0, p1}, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout$1;-><init>(Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 4
    iget v2, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->xDistance:F

    iget v3, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->xLast:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->xDistance:F

    .line 5
    iget v2, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->yDistance:F

    iget v3, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->yLast:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->yDistance:F

    .line 6
    iput v0, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->xLast:F

    .line 7
    iput v1, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->yLast:F

    .line 8
    iget v0, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->xDistance:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->yDistance:F

    iput v0, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->xDistance:F

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->xLast:F

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->yLast:F

    .line 12
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->initListView()V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->canLoad()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->loadData()V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method public setCanBottomLoad(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->canBottomLoad:Z

    return-void
.end method

.method public setOnRefreshListener(Lcom/wsw/cospa/widget/view/refresh/JFengRefreshListener;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->mRefreshListener:Lcom/wsw/cospa/widget/view/refresh/JFengRefreshListener;

    return-void
.end method

.method public setRefreshDataView(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->refreshDataView:Landroid/view/View;

    return-void
.end method

.method public startLoading()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->setLoading(Z)V

    return-void
.end method

.method public startRefresh()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout$2;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout$2;-><init>(Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
