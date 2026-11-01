.class Lcom/wsw/cospa/widget/scroller/FastScroller$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/widget/scroller/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/wsw/cospa/widget/scroller/FastScroller;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/widget/scroller/FastScroller;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller$1;->this$0:Lcom/wsw/cospa/widget/scroller/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller$1;->this$0:Lcom/wsw/cospa/widget/scroller/FastScroller;

    invoke-static {v0}, Lcom/wsw/cospa/widget/scroller/FastScroller;->access$000(Lcom/wsw/cospa/widget/scroller/FastScroller;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller$1;->this$0:Lcom/wsw/cospa/widget/scroller/FastScroller;

    invoke-static {v0}, Lcom/wsw/cospa/widget/scroller/FastScroller;->access$000(Lcom/wsw/cospa/widget/scroller/FastScroller;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller$1;->this$0:Lcom/wsw/cospa/widget/scroller/FastScroller;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller$1;->this$0:Lcom/wsw/cospa/widget/scroller/FastScroller;

    invoke-static {v0}, Lcom/wsw/cospa/widget/scroller/FastScroller;->access$100(Lcom/wsw/cospa/widget/scroller/FastScroller;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/wsw/cospa/widget/scroller/FastScroller;->access$200(Lcom/wsw/cospa/widget/scroller/FastScroller;Landroidx/recyclerview/widget/RecyclerView;)F

    move-result v2

    invoke-static {v0, v2, v1}, Lcom/wsw/cospa/widget/scroller/FastScroller;->access$300(Lcom/wsw/cospa/widget/scroller/FastScroller;FZ)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller$1;->this$0:Lcom/wsw/cospa/widget/scroller/FastScroller;

    invoke-static {v0}, Lcom/wsw/cospa/widget/scroller/FastScroller;->access$400(Lcom/wsw/cospa/widget/scroller/FastScroller;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/widget/scroller/FastScroller$1;->this$0:Lcom/wsw/cospa/widget/scroller/FastScroller;

    invoke-static {v0}, Lcom/wsw/cospa/widget/scroller/FastScroller;->access$100(Lcom/wsw/cospa/widget/scroller/FastScroller;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/wsw/cospa/widget/scroller/FastScroller;->access$500(Lcom/wsw/cospa/widget/scroller/FastScroller;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)I

    move-result v0

    .line 5
    iget-object v2, p0, Lcom/wsw/cospa/widget/scroller/FastScroller$1;->this$0:Lcom/wsw/cospa/widget/scroller/FastScroller;

    invoke-static {v2}, Lcom/wsw/cospa/widget/scroller/FastScroller;->access$100(Lcom/wsw/cospa/widget/scroller/FastScroller;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/wsw/cospa/widget/scroller/FastScroller$1;->this$0:Lcom/wsw/cospa/widget/scroller/FastScroller;

    invoke-static {v2}, Lcom/wsw/cospa/widget/scroller/FastScroller;->access$100(Lcom/wsw/cospa/widget/scroller/FastScroller;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 6
    :goto_0
    iget-object v3, p0, Lcom/wsw/cospa/widget/scroller/FastScroller$1;->this$0:Lcom/wsw/cospa/widget/scroller/FastScroller;

    invoke-static {v3}, Lcom/wsw/cospa/widget/scroller/FastScroller;->access$400(Lcom/wsw/cospa/widget/scroller/FastScroller;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-result-object v3

    if-nez v0, :cond_2

    if-ltz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {v3, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    :cond_3
    return-void
.end method
