.class public Lcom/wsw/cospa/activity/SourceLoginActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private do:Lcom/wsw/cospa/activity/SourceLoginActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/SourceLoginActivity;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/wsw/cospa/activity/SourceLoginActivity_ViewBinding;-><init>(Lcom/wsw/cospa/activity/SourceLoginActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/wsw/cospa/activity/SourceLoginActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/activity/SourceLoginActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/SourceLoginActivity;

    .line 4
    const-class v0, Landroid/webkit/WebView;

    const v1, 0x7f0904e5

    const-string v2, "field \'webView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/SourceLoginActivity;->webView:Landroid/webkit/WebView;

    .line 5
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f0902ab

    const-string v2, "field \'mToolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/wsw/cospa/activity/SourceLoginActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 6
    const-class v0, Lcom/google/android/material/appbar/AppBarLayout;

    const v1, 0x7f090299

    const-string v2, "field \'mAppBarLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/SourceLoginActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 7
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09027c

    const-string v2, "field \'llContent\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/wsw/cospa/activity/SourceLoginActivity;->llContent:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceLoginActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/SourceLoginActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/wsw/cospa/activity/SourceLoginActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/SourceLoginActivity;

    .line 3
    iput-object v1, v0, Lcom/wsw/cospa/activity/SourceLoginActivity;->webView:Landroid/webkit/WebView;

    .line 4
    iput-object v1, v0, Lcom/wsw/cospa/activity/SourceLoginActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 5
    iput-object v1, v0, Lcom/wsw/cospa/activity/SourceLoginActivity;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    .line 6
    iput-object v1, v0, Lcom/wsw/cospa/activity/SourceLoginActivity;->llContent:Landroid/widget/LinearLayout;

    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
