.class public Lcom/wsw/cospa/activity/ThemeConfigActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private do:Lcom/wsw/cospa/activity/ThemeConfigActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/ThemeConfigActivity;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/wsw/cospa/activity/ThemeConfigActivity_ViewBinding;-><init>(Lcom/wsw/cospa/activity/ThemeConfigActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/wsw/cospa/activity/ThemeConfigActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/activity/ThemeConfigActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/ThemeConfigActivity;

    .line 4
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f0902ab

    const-string v2, "field \'mToolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ThemeConfigActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 5
    const-class v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const v1, 0x7f09035c

    const-string v2, "field \'refreshLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ThemeConfigActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 6
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09027e

    const-string v2, "field \'ll_dark_mode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ThemeConfigActivity;->ll_dark_mode:Landroid/widget/LinearLayout;

    .line 7
    const-class v0, Lcom/wsw/cospa/widget/view/SwitchButton;

    const v1, 0x7f0903ee

    const-string v2, "field \'switch_drak_mode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/SwitchButton;

    iput-object v0, p1, Lcom/wsw/cospa/activity/ThemeConfigActivity;->switch_drak_mode:Lcom/wsw/cospa/widget/view/SwitchButton;

    .line 8
    const-class v0, Lcom/wsw/cospa/widget/view/SwitchButton;

    const v1, 0x7f0903e3

    const-string v2, "field \'swAutoNightTheme\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/wsw/cospa/widget/view/SwitchButton;

    iput-object p2, p1, Lcom/wsw/cospa/activity/ThemeConfigActivity;->swAutoNightTheme:Lcom/wsw/cospa/widget/view/SwitchButton;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ThemeConfigActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/ThemeConfigActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/wsw/cospa/activity/ThemeConfigActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/ThemeConfigActivity;

    .line 3
    iput-object v1, v0, Lcom/wsw/cospa/activity/ThemeConfigActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 4
    iput-object v1, v0, Lcom/wsw/cospa/activity/ThemeConfigActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 5
    iput-object v1, v0, Lcom/wsw/cospa/activity/ThemeConfigActivity;->ll_dark_mode:Landroid/widget/LinearLayout;

    .line 6
    iput-object v1, v0, Lcom/wsw/cospa/activity/ThemeConfigActivity;->switch_drak_mode:Lcom/wsw/cospa/widget/view/SwitchButton;

    .line 7
    iput-object v1, v0, Lcom/wsw/cospa/activity/ThemeConfigActivity;->swAutoNightTheme:Lcom/wsw/cospa/widget/view/SwitchButton;

    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
