.class public Lcom/wsw/cospa/activity/SourceFilterView_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private do:Lcom/wsw/cospa/activity/SourceFilterView;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/SourceFilterView;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/activity/SourceFilterView_ViewBinding;->do:Lcom/wsw/cospa/activity/SourceFilterView;

    .line 3
    const-class v0, Lcom/wsw/cospa/widget/view/FlowLayout;

    const v1, 0x7f0901d7

    const-string v2, "field \'mFlowLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/FlowLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/SourceFilterView;->mFlowLayout:Lcom/wsw/cospa/widget/view/FlowLayout;

    .line 4
    const-class v0, Landroidx/appcompat/widget/SearchView;

    const v1, 0x7f090389

    const-string v2, "field \'searchView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SearchView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/SourceFilterView;->searchView:Landroidx/appcompat/widget/SearchView;

    .line 5
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0902a4

    const-string v2, "field \'mRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/SourceFilterView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f090103

    const-string v1, "field \'closePopw\'"

    .line 6
    invoke-static {p2, v0, v1}, Lbutterknife/internal/new;->try(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/wsw/cospa/activity/SourceFilterView;->closePopw:Landroid/view/View;

    .line 7
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0902a1

    const-string v2, "field \'mLoadingRootView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/SourceFilterView;->mLoadingRootView:Landroid/widget/RelativeLayout;

    .line 8
    const-class v0, Lcom/wang/avi/AVLoadingIndicatorView;

    const v1, 0x7f0902a2

    const-string v2, "field \'mIndicatorView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wang/avi/AVLoadingIndicatorView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/SourceFilterView;->mIndicatorView:Lcom/wang/avi/AVLoadingIndicatorView;

    .line 9
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f09016a

    const-string v2, "field \'error_view\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/SourceFilterView;->error_view:Landroid/widget/RelativeLayout;

    .line 10
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09016b

    const-string v2, "field \'tvErrorView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/SourceFilterView;->tvErrorView:Landroid/widget/TextView;

    .line 11
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904a7

    const-string v2, "field \'tvRetry\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/wsw/cospa/activity/SourceFilterView;->tvRetry:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView_ViewBinding;->do:Lcom/wsw/cospa/activity/SourceFilterView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/wsw/cospa/activity/SourceFilterView_ViewBinding;->do:Lcom/wsw/cospa/activity/SourceFilterView;

    .line 3
    iput-object v1, v0, Lcom/wsw/cospa/activity/SourceFilterView;->mFlowLayout:Lcom/wsw/cospa/widget/view/FlowLayout;

    .line 4
    iput-object v1, v0, Lcom/wsw/cospa/activity/SourceFilterView;->searchView:Landroidx/appcompat/widget/SearchView;

    .line 5
    iput-object v1, v0, Lcom/wsw/cospa/activity/SourceFilterView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    iput-object v1, v0, Lcom/wsw/cospa/activity/SourceFilterView;->closePopw:Landroid/view/View;

    .line 7
    iput-object v1, v0, Lcom/wsw/cospa/activity/SourceFilterView;->mLoadingRootView:Landroid/widget/RelativeLayout;

    .line 8
    iput-object v1, v0, Lcom/wsw/cospa/activity/SourceFilterView;->mIndicatorView:Lcom/wang/avi/AVLoadingIndicatorView;

    .line 9
    iput-object v1, v0, Lcom/wsw/cospa/activity/SourceFilterView;->error_view:Landroid/widget/RelativeLayout;

    .line 10
    iput-object v1, v0, Lcom/wsw/cospa/activity/SourceFilterView;->tvErrorView:Landroid/widget/TextView;

    .line 11
    iput-object v1, v0, Lcom/wsw/cospa/activity/SourceFilterView;->tvRetry:Landroid/widget/TextView;

    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
