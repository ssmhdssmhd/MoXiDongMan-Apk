.class public Lcom/qmuiteam/qmui/widget/webview/QMUIWebViewContainer;
.super Lcom/qmuiteam/qmui/widget/QMUIWindowInsetLayout;
.source "SourceFile"


# instance fields
.field private new:Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;

.field private try:Lcom/qmuiteam/qmui/widget/webview/QMUIWebView$OnScrollChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUIWindowInsetLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/qmuiteam/qmui/widget/QMUIWindowInsetLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic if(Lcom/qmuiteam/qmui/widget/webview/QMUIWebViewContainer;)Lcom/qmuiteam/qmui/widget/webview/QMUIWebView$OnScrollChangeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebViewContainer;->try:Lcom/qmuiteam/qmui/widget/webview/QMUIWebView$OnScrollChangeListener;

    return-object p0
.end method


# virtual methods
.method public applySystemWindowInsets19(Landroid/graphics/Rect;)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getFitsSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 3
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIWindowInsetLayout;->for:Lcom/qmuiteam/qmui/util/new;

    invoke-virtual {p1, p0, v0}, Lcom/qmuiteam/qmui/util/new;->for(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 4
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_0
    invoke-super {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUIWindowInsetLayout;->applySystemWindowInsets19(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public applySystemWindowInsets21(Ljava/lang/Object;)Z
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getFitsSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    instance-of v0, p1, Landroidx/core/view/WindowInsetsCompat;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Landroidx/core/view/WindowInsetsCompat;

    .line 4
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v1

    .line 5
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v0

    .line 6
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v2

    .line 7
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result p1

    goto :goto_0

    .line 8
    :cond_0
    instance-of v0, p1, Landroid/view/WindowInsets;

    if-eqz v0, :cond_1

    .line 9
    check-cast p1, Landroid/view/WindowInsets;

    .line 10
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    .line 11
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v0

    .line 12
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    .line 13
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 14
    :goto_0
    invoke-static {p0}, Landroid/support/v4/ph1;->protected(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 15
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 16
    invoke-static {p0}, Landroid/support/v4/ph1;->native(Landroid/view/View;)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 17
    invoke-static {p0}, Landroid/support/v4/ph1;->switch(Landroid/view/View;)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 18
    :cond_2
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1, v2, v0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 19
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUIWindowInsetLayout;->for:Lcom/qmuiteam/qmui/util/new;

    invoke-virtual {p1, p0, v3}, Lcom/qmuiteam/qmui/util/new;->for(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 20
    iget p1, v3, Landroid/graphics/Rect;->left:I

    iget v0, v3, Landroid/graphics/Rect;->top:I

    iget v1, v3, Landroid/graphics/Rect;->right:I

    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    const/4 p1, 0x1

    return p1

    .line 21
    :cond_3
    invoke-super {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUIWindowInsetLayout;->applySystemWindowInsets21(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public for(Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;Z)V
    .locals 0
    .param p1    # Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebViewContainer;->new:Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;

    .line 2
    invoke-virtual {p1, p2}, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->setNeedDispatchSafeAreaInset(Z)V

    .line 3
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebViewContainer;->new:Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;

    new-instance p2, Lcom/qmuiteam/qmui/widget/webview/QMUIWebViewContainer$do;

    invoke-direct {p2, p0}, Lcom/qmuiteam/qmui/widget/webview/QMUIWebViewContainer$do;-><init>(Lcom/qmuiteam/qmui/widget/webview/QMUIWebViewContainer;)V

    invoke-virtual {p1, p2}, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->addCustomOnScrollChangeListener(Lcom/qmuiteam/qmui/widget/webview/QMUIWebView$OnScrollChangeListener;)V

    .line 4
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebViewContainer;->new:Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/webview/QMUIWebViewContainer;->getWebViewLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getWebViewLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public new()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebViewContainer;->new:Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebViewContainer;->new:Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebViewContainer;->new:Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 5
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebViewContainer;->new:Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->destroy()V

    return-void
.end method

.method public setCustomOnScrollChangeListener(Lcom/qmuiteam/qmui/widget/webview/QMUIWebView$OnScrollChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebViewContainer;->try:Lcom/qmuiteam/qmui/widget/webview/QMUIWebView$OnScrollChangeListener;

    return-void
.end method

.method public setNeedDispatchSafeAreaInset(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebViewContainer;->new:Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->setNeedDispatchSafeAreaInset(Z)V

    :cond_0
    return-void
.end method
