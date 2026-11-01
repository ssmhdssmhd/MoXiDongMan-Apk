.class public Lcom/wsw/cospa/activity/FindComicDetailActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private do:Lcom/wsw/cospa/activity/FindComicDetailActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/FindComicDetailActivity;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/wsw/cospa/activity/FindComicDetailActivity_ViewBinding;-><init>(Lcom/wsw/cospa/activity/FindComicDetailActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/wsw/cospa/activity/FindComicDetailActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/FindComicDetailActivity;

    .line 4
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f0902ab

    const-string v2, "field \'mToolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/wsw/cospa/activity/FindComicDetailActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 5
    const-class v0, Lcom/google/android/material/appbar/AppBarLayout;

    const v1, 0x7f090299

    const-string v2, "field \'mAppBarLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/FindComicDetailActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 6
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0902a4

    const-string v2, "field \'mRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/FindComicDetailActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    const-class v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const v1, 0x7f09035c

    const-string v2, "field \'refreshLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/FindComicDetailActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 8
    const-class v0, Lcom/gaoneng/library/AutoScrollBackLayout;

    const v1, 0x7f090384

    const-string v2, "field \'scrollLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/gaoneng/library/AutoScrollBackLayout;

    iput-object p2, p1, Lcom/wsw/cospa/activity/FindComicDetailActivity;->scrollLayout:Lcom/gaoneng/library/AutoScrollBackLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/FindComicDetailActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/wsw/cospa/activity/FindComicDetailActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/FindComicDetailActivity;

    .line 3
    iput-object v1, v0, Lcom/wsw/cospa/activity/FindComicDetailActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 4
    iput-object v1, v0, Lcom/wsw/cospa/activity/FindComicDetailActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 5
    iput-object v1, v0, Lcom/wsw/cospa/activity/FindComicDetailActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    iput-object v1, v0, Lcom/wsw/cospa/activity/FindComicDetailActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 7
    iput-object v1, v0, Lcom/wsw/cospa/activity/FindComicDetailActivity;->scrollLayout:Lcom/gaoneng/library/AutoScrollBackLayout;

    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
