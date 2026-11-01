.class Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->getOnBottomListener(Landroidx/recyclerview/widget/LinearLayoutManager;)Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;

.field public final synthetic val$layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout$1;->this$0:Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;

    iput-object p2, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout$1;->val$layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout$1;->val$layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p1

    iget-object p2, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout$1;->this$0:Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;

    .line 3
    invoke-static {p2}, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->access$000(Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    iget-object p3, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout$1;->this$0:Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;

    iget v0, p3, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->PRELOAD_SIZE:I

    sub-int/2addr p2, v0

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result p2

    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout$1;->this$0:Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;

    invoke-static {p1}, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;->access$100(Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;)V

    :cond_1
    return-void
.end method
