.class Lcom/wsw/cospa/widget/scroller/FastScroller$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


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
    iput-object p1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller$2;->this$0:Lcom/wsw/cospa/widget/scroller/FastScroller;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller$2;->this$0:Lcom/wsw/cospa/widget/scroller/FastScroller;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller$2;->this$0:Lcom/wsw/cospa/widget/scroller/FastScroller;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/wsw/cospa/widget/scroller/FastScroller$2;->this$0:Lcom/wsw/cospa/widget/scroller/FastScroller;

    invoke-static {p2}, Lcom/wsw/cospa/widget/scroller/FastScroller;->access$700(Lcom/wsw/cospa/widget/scroller/FastScroller;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller$2;->this$0:Lcom/wsw/cospa/widget/scroller/FastScroller;

    invoke-static {p1}, Lcom/wsw/cospa/widget/scroller/FastScroller;->access$800(Lcom/wsw/cospa/widget/scroller/FastScroller;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/wsw/cospa/widget/scroller/FastScroller;->access$900(Lcom/wsw/cospa/widget/scroller/FastScroller;Landroid/view/ViewPropertyAnimator;)V

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller$2;->this$0:Lcom/wsw/cospa/widget/scroller/FastScroller;

    invoke-static {p1}, Lcom/wsw/cospa/widget/scroller/FastScroller;->access$1000(Lcom/wsw/cospa/widget/scroller/FastScroller;)Landroid/view/View;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/wsw/cospa/widget/scroller/FastScroller;->access$1100(Lcom/wsw/cospa/widget/scroller/FastScroller;Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller$2;->this$0:Lcom/wsw/cospa/widget/scroller/FastScroller;

    invoke-static {p1}, Lcom/wsw/cospa/widget/scroller/FastScroller;->access$1200(Lcom/wsw/cospa/widget/scroller/FastScroller;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller$2;->this$0:Lcom/wsw/cospa/widget/scroller/FastScroller;

    invoke-static {p1}, Lcom/wsw/cospa/widget/scroller/FastScroller;->access$1300(Lcom/wsw/cospa/widget/scroller/FastScroller;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller$2;->this$0:Lcom/wsw/cospa/widget/scroller/FastScroller;

    invoke-static {p1}, Lcom/wsw/cospa/widget/scroller/FastScroller;->access$000(Lcom/wsw/cospa/widget/scroller/FastScroller;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result p1

    if-nez p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/wsw/cospa/widget/scroller/FastScroller$2;->this$0:Lcom/wsw/cospa/widget/scroller/FastScroller;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/wsw/cospa/widget/scroller/FastScroller$2;->this$0:Lcom/wsw/cospa/widget/scroller/FastScroller;

    invoke-static {p2}, Lcom/wsw/cospa/widget/scroller/FastScroller;->access$700(Lcom/wsw/cospa/widget/scroller/FastScroller;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p2, p0, Lcom/wsw/cospa/widget/scroller/FastScroller$2;->this$0:Lcom/wsw/cospa/widget/scroller/FastScroller;

    invoke-static {p2}, Lcom/wsw/cospa/widget/scroller/FastScroller;->access$600(Lcom/wsw/cospa/widget/scroller/FastScroller;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
