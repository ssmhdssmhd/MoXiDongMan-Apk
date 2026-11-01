.class public Lcom/wsw/cospa/fragment/BookShelfFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private do:Lcom/wsw/cospa/fragment/BookShelfFragment;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/fragment/BookShelfFragment;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment_ViewBinding;->do:Lcom/wsw/cospa/fragment/BookShelfFragment;

    .line 3
    const-class v0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    const v1, 0x7f0902a4

    const-string v2, "field \'mRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    iput-object v0, p1, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    .line 4
    const-class v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const v1, 0x7f09035c

    const-string v2, "field \'refreshLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-object v0, p1, Lcom/wsw/cospa/fragment/BookShelfFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 5
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f09016a

    const-string v2, "field \'error_view\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/wsw/cospa/fragment/BookShelfFragment;->error_view:Landroid/widget/RelativeLayout;

    .line 6
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09016b

    const-string v2, "field \'tvErrorView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/fragment/BookShelfFragment;->tvErrorView:Landroid/widget/TextView;

    .line 7
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904a7

    const-string v2, "field \'tvRetry\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/wsw/cospa/fragment/BookShelfFragment;->tvRetry:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/fragment/BookShelfFragment_ViewBinding;->do:Lcom/wsw/cospa/fragment/BookShelfFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment_ViewBinding;->do:Lcom/wsw/cospa/fragment/BookShelfFragment;

    .line 3
    iput-object v1, v0, Lcom/wsw/cospa/fragment/BookShelfFragment;->mRecyclerView:Lcom/jcodecraeer/xrecyclerview/XRecyclerView;

    .line 4
    iput-object v1, v0, Lcom/wsw/cospa/fragment/BookShelfFragment;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 5
    iput-object v1, v0, Lcom/wsw/cospa/fragment/BookShelfFragment;->error_view:Landroid/widget/RelativeLayout;

    .line 6
    iput-object v1, v0, Lcom/wsw/cospa/fragment/BookShelfFragment;->tvErrorView:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/wsw/cospa/fragment/BookShelfFragment;->tvRetry:Landroid/widget/TextView;

    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
