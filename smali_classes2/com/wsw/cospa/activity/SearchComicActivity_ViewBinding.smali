.class public Lcom/wsw/cospa/activity/SearchComicActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private do:Lcom/wsw/cospa/activity/SearchComicActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/SearchComicActivity;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/wsw/cospa/activity/SearchComicActivity_ViewBinding;-><init>(Lcom/wsw/cospa/activity/SearchComicActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/wsw/cospa/activity/SearchComicActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    .line 4
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f090428

    const-string v2, "field \'tbToolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/wsw/cospa/activity/SearchComicActivity;->tbToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 5
    const-class v0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;

    const v1, 0x7f0902a6

    const-string v2, "field \'mRefreshLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/SearchComicActivity;->mRefreshLayout:Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;

    .line 6
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0902a4

    const-string v2, "field \'mRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/SearchComicActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    const-class v0, Lcom/wsw/cospa/widget/view/FlowLayout;

    const v1, 0x7f0901d7

    const-string v2, "field \'mFlowLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/FlowLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/SearchComicActivity;->mFlowLayout:Lcom/wsw/cospa/widget/view/FlowLayout;

    .line 8
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0901d6

    const-string v2, "field \'mFlowView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/SearchComicActivity;->mFlowView:Landroid/widget/LinearLayout;

    .line 9
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090236

    const-string v2, "field \'ivCleanHistory\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/SearchComicActivity;->ivCleanHistory:Landroid/widget/ImageView;

    .line 10
    const-class v0, Lcom/getbase/floatingactionbutton/FloatingActionButton;

    const v1, 0x7f0902a0

    const-string v2, "field \'mFloatingButton\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/getbase/floatingactionbutton/FloatingActionButton;

    iput-object v0, p1, Lcom/wsw/cospa/activity/SearchComicActivity;->mFloatingButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    .line 11
    const-class v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    const v1, 0x7f09029f

    const-string v2, "field \'mFloatingActionsMenu\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    iput-object v0, p1, Lcom/wsw/cospa/activity/SearchComicActivity;->mFloatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    .line 12
    const-class v0, Lcom/gaoneng/library/AutoScrollBackLayout;

    const v1, 0x7f090384

    const-string v2, "field \'scrollLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gaoneng/library/AutoScrollBackLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/SearchComicActivity;->scrollLayout:Lcom/gaoneng/library/AutoScrollBackLayout;

    .line 13
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09027b

    const-string v2, "field \'ll_comic_source\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/SearchComicActivity;->ll_comic_source:Landroid/widget/LinearLayout;

    .line 14
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904b4

    const-string v2, "field \'tv_source_name\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/SearchComicActivity;->tv_source_name:Landroid/widget/TextView;

    .line 15
    const-class v0, Lcom/wsw/cospa/widget/view/SearchEditText;

    const v1, 0x7f090194

    const-string v2, "field \'et_search_comic\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/SearchEditText;

    iput-object v0, p1, Lcom/wsw/cospa/activity/SearchComicActivity;->et_search_comic:Lcom/wsw/cospa/widget/view/SearchEditText;

    .line 16
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09036f

    const-string v2, "field \'root_search_view\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/SearchComicActivity;->root_search_view:Landroid/widget/LinearLayout;

    .line 17
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09027a

    const-string v2, "field \'ll_comic_shelf\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/SearchComicActivity;->ll_comic_shelf:Landroid/widget/LinearLayout;

    .line 18
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0903a2

    const-string v2, "field \'shelfRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/SearchComicActivity;->shelfRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    const-class v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v1, 0x7f0901ab

    const-string v2, "field \'fabSearchStop\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object p2, p1, Lcom/wsw/cospa/activity/SearchComicActivity;->fabSearchStop:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/wsw/cospa/activity/SearchComicActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    .line 3
    iput-object v1, v0, Lcom/wsw/cospa/activity/SearchComicActivity;->tbToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 4
    iput-object v1, v0, Lcom/wsw/cospa/activity/SearchComicActivity;->mRefreshLayout:Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;

    .line 5
    iput-object v1, v0, Lcom/wsw/cospa/activity/SearchComicActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    iput-object v1, v0, Lcom/wsw/cospa/activity/SearchComicActivity;->mFlowLayout:Lcom/wsw/cospa/widget/view/FlowLayout;

    .line 7
    iput-object v1, v0, Lcom/wsw/cospa/activity/SearchComicActivity;->mFlowView:Landroid/widget/LinearLayout;

    .line 8
    iput-object v1, v0, Lcom/wsw/cospa/activity/SearchComicActivity;->ivCleanHistory:Landroid/widget/ImageView;

    .line 9
    iput-object v1, v0, Lcom/wsw/cospa/activity/SearchComicActivity;->mFloatingButton:Lcom/getbase/floatingactionbutton/FloatingActionButton;

    .line 10
    iput-object v1, v0, Lcom/wsw/cospa/activity/SearchComicActivity;->mFloatingActionsMenu:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    .line 11
    iput-object v1, v0, Lcom/wsw/cospa/activity/SearchComicActivity;->scrollLayout:Lcom/gaoneng/library/AutoScrollBackLayout;

    .line 12
    iput-object v1, v0, Lcom/wsw/cospa/activity/SearchComicActivity;->ll_comic_source:Landroid/widget/LinearLayout;

    .line 13
    iput-object v1, v0, Lcom/wsw/cospa/activity/SearchComicActivity;->tv_source_name:Landroid/widget/TextView;

    .line 14
    iput-object v1, v0, Lcom/wsw/cospa/activity/SearchComicActivity;->et_search_comic:Lcom/wsw/cospa/widget/view/SearchEditText;

    .line 15
    iput-object v1, v0, Lcom/wsw/cospa/activity/SearchComicActivity;->root_search_view:Landroid/widget/LinearLayout;

    .line 16
    iput-object v1, v0, Lcom/wsw/cospa/activity/SearchComicActivity;->ll_comic_shelf:Landroid/widget/LinearLayout;

    .line 17
    iput-object v1, v0, Lcom/wsw/cospa/activity/SearchComicActivity;->shelfRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 18
    iput-object v1, v0, Lcom/wsw/cospa/activity/SearchComicActivity;->fabSearchStop:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    return-void

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
