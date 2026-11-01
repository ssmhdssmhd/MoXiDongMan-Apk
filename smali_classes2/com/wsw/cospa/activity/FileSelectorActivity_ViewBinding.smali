.class public Lcom/wsw/cospa/activity/FileSelectorActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private do:Lcom/wsw/cospa/activity/FileSelectorActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/FileSelectorActivity;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/wsw/cospa/activity/FileSelectorActivity_ViewBinding;-><init>(Lcom/wsw/cospa/activity/FileSelectorActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/wsw/cospa/activity/FileSelectorActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/activity/FileSelectorActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/FileSelectorActivity;

    .line 4
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f0902ab

    const-string v2, "field \'mToolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/wsw/cospa/activity/FileSelectorActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904be

    const-string v2, "field \'tvTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/FileSelectorActivity;->tvTitle:Landroid/widget/TextView;

    .line 6
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0902a4

    const-string v2, "field \'mRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/FileSelectorActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    const-class v0, Landroidx/appcompat/widget/ButtonBarLayout;

    const v1, 0x7f09029b

    const-string v2, "field \'mButtonBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ButtonBarLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/FileSelectorActivity;->mButtonBar:Landroidx/appcompat/widget/ButtonBarLayout;

    .line 8
    const-class v0, Landroidx/appcompat/widget/AppCompatButton;

    const v1, 0x7f0900a0

    const-string v2, "field \'backButton\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p1, Lcom/wsw/cospa/activity/FileSelectorActivity;->backButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 9
    const-class v0, Landroidx/appcompat/widget/AppCompatButton;

    const v1, 0x7f0900dd

    const-string v2, "field \'cancelButton\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p1, Lcom/wsw/cospa/activity/FileSelectorActivity;->cancelButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 10
    const-class v0, Landroidx/appcompat/widget/AppCompatButton;

    const v1, 0x7f09010f

    const-string v2, "field \'confirmButton\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p1, Lcom/wsw/cospa/activity/FileSelectorActivity;->confirmButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 11
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090474

    const-string v2, "field \'tvCurrentPath\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/FileSelectorActivity;->tvCurrentPath:Landroid/widget/TextView;

    .line 12
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090475

    const-string v2, "field \'tvCurrentPosition\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/FileSelectorActivity;->tvCurrentPosition:Landroid/widget/TextView;

    .line 13
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900c8

    const-string v2, "field \'btnContinueReading\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/FileSelectorActivity;->btnContinueReading:Landroid/widget/TextView;

    .line 14
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09027d

    const-string v2, "field \'llCurrentPosition\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/FileSelectorActivity;->llCurrentPosition:Landroid/widget/LinearLayout;

    .line 15
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0902a1

    const-string v2, "field \'mIndicatorRoot\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/FileSelectorActivity;->mIndicatorRoot:Landroid/widget/RelativeLayout;

    .line 16
    const-class v0, Lcom/wang/avi/AVLoadingIndicatorView;

    const v1, 0x7f0902a2

    const-string v2, "field \'mIndicatorView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wang/avi/AVLoadingIndicatorView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/FileSelectorActivity;->mIndicatorView:Lcom/wang/avi/AVLoadingIndicatorView;

    .line 17
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f09016a

    const-string v2, "field \'error_view\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/FileSelectorActivity;->error_view:Landroid/widget/RelativeLayout;

    .line 18
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09016b

    const-string v2, "field \'tvErrorView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/FileSelectorActivity;->tvErrorView:Landroid/widget/TextView;

    .line 19
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904a7

    const-string v2, "field \'tvRetry\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/wsw/cospa/activity/FileSelectorActivity;->tvRetry:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/FileSelectorActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/FileSelectorActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/wsw/cospa/activity/FileSelectorActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/FileSelectorActivity;

    .line 3
    iput-object v1, v0, Lcom/wsw/cospa/activity/FileSelectorActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 4
    iput-object v1, v0, Lcom/wsw/cospa/activity/FileSelectorActivity;->tvTitle:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/wsw/cospa/activity/FileSelectorActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    iput-object v1, v0, Lcom/wsw/cospa/activity/FileSelectorActivity;->mButtonBar:Landroidx/appcompat/widget/ButtonBarLayout;

    .line 7
    iput-object v1, v0, Lcom/wsw/cospa/activity/FileSelectorActivity;->backButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 8
    iput-object v1, v0, Lcom/wsw/cospa/activity/FileSelectorActivity;->cancelButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 9
    iput-object v1, v0, Lcom/wsw/cospa/activity/FileSelectorActivity;->confirmButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 10
    iput-object v1, v0, Lcom/wsw/cospa/activity/FileSelectorActivity;->tvCurrentPath:Landroid/widget/TextView;

    .line 11
    iput-object v1, v0, Lcom/wsw/cospa/activity/FileSelectorActivity;->tvCurrentPosition:Landroid/widget/TextView;

    .line 12
    iput-object v1, v0, Lcom/wsw/cospa/activity/FileSelectorActivity;->btnContinueReading:Landroid/widget/TextView;

    .line 13
    iput-object v1, v0, Lcom/wsw/cospa/activity/FileSelectorActivity;->llCurrentPosition:Landroid/widget/LinearLayout;

    .line 14
    iput-object v1, v0, Lcom/wsw/cospa/activity/FileSelectorActivity;->mIndicatorRoot:Landroid/widget/RelativeLayout;

    .line 15
    iput-object v1, v0, Lcom/wsw/cospa/activity/FileSelectorActivity;->mIndicatorView:Lcom/wang/avi/AVLoadingIndicatorView;

    .line 16
    iput-object v1, v0, Lcom/wsw/cospa/activity/FileSelectorActivity;->error_view:Landroid/widget/RelativeLayout;

    .line 17
    iput-object v1, v0, Lcom/wsw/cospa/activity/FileSelectorActivity;->tvErrorView:Landroid/widget/TextView;

    .line 18
    iput-object v1, v0, Lcom/wsw/cospa/activity/FileSelectorActivity;->tvRetry:Landroid/widget/TextView;

    return-void

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
