.class public Lcom/wsw/cospa/activity/DownloadTaskActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private do:Lcom/wsw/cospa/activity/DownloadTaskActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/DownloadTaskActivity;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/wsw/cospa/activity/DownloadTaskActivity_ViewBinding;-><init>(Lcom/wsw/cospa/activity/DownloadTaskActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/wsw/cospa/activity/DownloadTaskActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/DownloadTaskActivity;

    .line 4
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f0902ab

    const-string v2, "field \'mToolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/wsw/cospa/activity/DownloadTaskActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 5
    const-class v0, Lcom/wsw/cospa/widget/scroller/FastScrollRecyclerView;

    const v1, 0x7f0902a4

    const-string v2, "field \'mRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/scroller/FastScrollRecyclerView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/DownloadTaskActivity;->mRecyclerView:Lcom/wsw/cospa/widget/scroller/FastScrollRecyclerView;

    .line 6
    const-class v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v1, 0x7f090298

    const-string v2, "field \'mActionButton\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object v0, p1, Lcom/wsw/cospa/activity/DownloadTaskActivity;->mActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 7
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090481

    const-string v2, "field \'tvDownloadTxt\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/DownloadTaskActivity;->tvDownloadTxt:Landroid/widget/TextView;

    .line 8
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904a2

    const-string v2, "field \'tv_pause_all\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/DownloadTaskActivity;->tv_pause_all:Landroid/widget/TextView;

    .line 9
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0903cf

    const-string v2, "field \'startOrPauseView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/DownloadTaskActivity;->startOrPauseView:Landroid/widget/LinearLayout;

    .line 10
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904af

    const-string v2, "field \'tvSelectTask\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/DownloadTaskActivity;->tvSelectTask:Landroid/widget/TextView;

    .line 11
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090478

    const-string v2, "field \'tvDeleteTask\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/DownloadTaskActivity;->tvDeleteTask:Landroid/widget/TextView;

    .line 12
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09012e

    const-string v2, "field \'deleteTaskView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/wsw/cospa/activity/DownloadTaskActivity;->deleteTaskView:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/DownloadTaskActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/wsw/cospa/activity/DownloadTaskActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/DownloadTaskActivity;

    .line 3
    iput-object v1, v0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 4
    iput-object v1, v0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->mRecyclerView:Lcom/wsw/cospa/widget/scroller/FastScrollRecyclerView;

    .line 5
    iput-object v1, v0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->mActionButton:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 6
    iput-object v1, v0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->tvDownloadTxt:Landroid/widget/TextView;

    .line 7
    iput-object v1, v0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->tv_pause_all:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->startOrPauseView:Landroid/widget/LinearLayout;

    .line 9
    iput-object v1, v0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->tvSelectTask:Landroid/widget/TextView;

    .line 10
    iput-object v1, v0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->tvDeleteTask:Landroid/widget/TextView;

    .line 11
    iput-object v1, v0, Lcom/wsw/cospa/activity/DownloadTaskActivity;->deleteTaskView:Landroid/widget/LinearLayout;

    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
