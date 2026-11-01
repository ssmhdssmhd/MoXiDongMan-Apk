.class public Lcom/wsw/cospa/activity/AppSettingActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private do:Lcom/wsw/cospa/activity/AppSettingActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/AppSettingActivity;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/wsw/cospa/activity/AppSettingActivity_ViewBinding;-><init>(Lcom/wsw/cospa/activity/AppSettingActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/wsw/cospa/activity/AppSettingActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/activity/AppSettingActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/AppSettingActivity;

    .line 4
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f0902ab

    const-string v2, "field \'mToolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AppSettingActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 5
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0901bc

    const-string v2, "field \'filePathView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AppSettingActivity;->filePathView:Landroid/widget/LinearLayout;

    .line 6
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09010c

    const-string v2, "field \'comicSettingView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AppSettingActivity;->comicSettingView:Landroid/widget/LinearLayout;

    .line 7
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0900a5

    const-string v2, "field \'backupSettingView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AppSettingActivity;->backupSettingView:Landroid/widget/LinearLayout;

    .line 8
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090464

    const-string v2, "field \'tvCacheSize\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AppSettingActivity;->tvCacheSize:Landroid/widget/TextView;

    .line 9
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0900fd

    const-string v2, "field \'cleanCacheView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AppSettingActivity;->cleanCacheView:Landroid/widget/LinearLayout;

    .line 10
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090147

    const-string v2, "field \'donateView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AppSettingActivity;->donateView:Landroid/widget/LinearLayout;

    .line 11
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0901b6

    const-string v2, "field \'feedbackView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AppSettingActivity;->feedbackView:Landroid/widget/LinearLayout;

    .line 12
    const-class v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const v1, 0x7f09035c

    const-string v2, "field \'refreshLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AppSettingActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 13
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0901df

    const-string v2, "field \'adManagerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AppSettingActivity;->adManagerView:Landroid/widget/LinearLayout;

    .line 14
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0904dd

    const-string v2, "field \'video_ad_view\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AppSettingActivity;->video_ad_view:Landroid/widget/LinearLayout;

    .line 15
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090287

    const-string v2, "field \'ll_privacy_protocol\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AppSettingActivity;->ll_privacy_protocol:Landroid/widget/LinearLayout;

    .line 16
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09027e

    const-string v2, "field \'ll_dark_mode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AppSettingActivity;->ll_dark_mode:Landroid/widget/LinearLayout;

    const v0, 0x7f0903d7

    const-string v1, "field \'statusBarView\'"

    .line 17
    invoke-static {p2, v0, v1}, Lbutterknife/internal/new;->try(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/wsw/cospa/activity/AppSettingActivity;->statusBarView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/AppSettingActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/AppSettingActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/wsw/cospa/activity/AppSettingActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/AppSettingActivity;

    .line 3
    iput-object v1, v0, Lcom/wsw/cospa/activity/AppSettingActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 4
    iput-object v1, v0, Lcom/wsw/cospa/activity/AppSettingActivity;->filePathView:Landroid/widget/LinearLayout;

    .line 5
    iput-object v1, v0, Lcom/wsw/cospa/activity/AppSettingActivity;->comicSettingView:Landroid/widget/LinearLayout;

    .line 6
    iput-object v1, v0, Lcom/wsw/cospa/activity/AppSettingActivity;->backupSettingView:Landroid/widget/LinearLayout;

    .line 7
    iput-object v1, v0, Lcom/wsw/cospa/activity/AppSettingActivity;->tvCacheSize:Landroid/widget/TextView;

    .line 8
    iput-object v1, v0, Lcom/wsw/cospa/activity/AppSettingActivity;->cleanCacheView:Landroid/widget/LinearLayout;

    .line 9
    iput-object v1, v0, Lcom/wsw/cospa/activity/AppSettingActivity;->donateView:Landroid/widget/LinearLayout;

    .line 10
    iput-object v1, v0, Lcom/wsw/cospa/activity/AppSettingActivity;->feedbackView:Landroid/widget/LinearLayout;

    .line 11
    iput-object v1, v0, Lcom/wsw/cospa/activity/AppSettingActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 12
    iput-object v1, v0, Lcom/wsw/cospa/activity/AppSettingActivity;->adManagerView:Landroid/widget/LinearLayout;

    .line 13
    iput-object v1, v0, Lcom/wsw/cospa/activity/AppSettingActivity;->video_ad_view:Landroid/widget/LinearLayout;

    .line 14
    iput-object v1, v0, Lcom/wsw/cospa/activity/AppSettingActivity;->ll_privacy_protocol:Landroid/widget/LinearLayout;

    .line 15
    iput-object v1, v0, Lcom/wsw/cospa/activity/AppSettingActivity;->ll_dark_mode:Landroid/widget/LinearLayout;

    .line 16
    iput-object v1, v0, Lcom/wsw/cospa/activity/AppSettingActivity;->statusBarView:Landroid/view/View;

    return-void

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
