.class public Lcom/wsw/cospa/activity/WebViewActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private do:Lcom/wsw/cospa/activity/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/WebViewActivity;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/wsw/cospa/activity/WebViewActivity_ViewBinding;-><init>(Lcom/wsw/cospa/activity/WebViewActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/wsw/cospa/activity/WebViewActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/activity/WebViewActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/WebViewActivity;

    .line 4
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f0902ab

    const-string v2, "field \'mToolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/wsw/cospa/activity/WebViewActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 5
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904be

    const-string v2, "field \'tvTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/WebViewActivity;->tvTitle:Landroid/widget/TextView;

    .line 6
    const-class v0, Landroid/webkit/WebView;

    const v1, 0x7f0902ad

    const-string v2, "field \'mWebView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    .line 7
    const-class v0, Lcom/wang/avi/AVLoadingIndicatorView;

    const v1, 0x7f0902a2

    const-string v2, "field \'mIndicatorView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wang/avi/AVLoadingIndicatorView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/WebViewActivity;->mIndicatorView:Lcom/wang/avi/AVLoadingIndicatorView;

    .line 8
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f09016a

    const-string v2, "field \'error_view\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/WebViewActivity;->error_view:Landroid/widget/RelativeLayout;

    .line 9
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904a7

    const-string v2, "field \'tvRetry\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/WebViewActivity;->tvRetry:Landroid/widget/TextView;

    .line 10
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f09016b

    const-string v2, "field \'tvErrorView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/wsw/cospa/activity/WebViewActivity;->tvErrorView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/WebViewActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/WebViewActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/wsw/cospa/activity/WebViewActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/WebViewActivity;

    .line 3
    iput-object v1, v0, Lcom/wsw/cospa/activity/WebViewActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 4
    iput-object v1, v0, Lcom/wsw/cospa/activity/WebViewActivity;->tvTitle:Landroid/widget/TextView;

    .line 5
    iput-object v1, v0, Lcom/wsw/cospa/activity/WebViewActivity;->mWebView:Landroid/webkit/WebView;

    .line 6
    iput-object v1, v0, Lcom/wsw/cospa/activity/WebViewActivity;->mIndicatorView:Lcom/wang/avi/AVLoadingIndicatorView;

    .line 7
    iput-object v1, v0, Lcom/wsw/cospa/activity/WebViewActivity;->error_view:Landroid/widget/RelativeLayout;

    .line 8
    iput-object v1, v0, Lcom/wsw/cospa/activity/WebViewActivity;->tvRetry:Landroid/widget/TextView;

    .line 9
    iput-object v1, v0, Lcom/wsw/cospa/activity/WebViewActivity;->tvErrorView:Landroid/widget/TextView;

    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
