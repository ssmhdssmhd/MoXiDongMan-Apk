.class public Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"

# interfaces
.implements Lcom/qmuiteam/qmui/widget/IWindowInsetLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/widget/webview/QMUIWebView$OnScrollChangeListener;,
        Lcom/qmuiteam/qmui/widget/webview/QMUIWebView$Callback;
    }
.end annotation


# static fields
.field private static break:Z = false

.field private static final this:Ljava/lang/String; = "QMUIWebView"


# instance fields
.field private case:Lcom/qmuiteam/qmui/widget/webview/QMUIWebView$Callback;

.field private do:Ljava/lang/Object;

.field private else:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qmuiteam/qmui/widget/webview/QMUIWebView$OnScrollChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private for:Ljava/lang/reflect/Method;

.field private goto:Lcom/qmuiteam/qmui/util/new;

.field private if:Ljava/lang/Object;

.field private new:Landroid/graphics/Rect;

.field private try:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->try:Z

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->else:Ljava/util/List;

    .line 4
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->this()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->try:Z

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->else:Ljava/util/List;

    .line 8
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->this()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->try:Z

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->else:Ljava/util/List;

    .line 12
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->this()V

    return-void
.end method

.method private do()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->break:Z

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->case:Lcom/qmuiteam/qmui/widget/webview/QMUIWebView$Callback;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView$Callback;->onSureNotSupportChangeCssEnv()V

    :cond_0
    return-void
.end method

.method private else(Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setDisplayCutoutSafeArea"

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Landroid/graphics/Rect;

    aput-object v5, v4, v0

    .line 2
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    return-object v2

    .line 3
    :catch_0
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    .line 4
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_1

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    if-ne v5, v1, :cond_1

    .line 5
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    aget-object v5, v5, v0

    const-class v6, Landroid/graphics/Rect;

    if-ne v5, v6, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private goto(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mWebContents"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 4
    :catch_0
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 5
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 6
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WebContentsImpl"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    return-object v4

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private if(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mAwContents"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 4
    :catch_0
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 5
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 6
    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AwContents"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    return-object v4

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private setStyleDisplayCutoutSafeArea(Landroid/graphics/Rect;)V
    .locals 8
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-boolean v0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->break:Z

    if-nez v0, :cond_7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-gt v0, v1, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->new:Landroid/graphics/Rect;

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    if-nez v0, :cond_2

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->new:Landroid/graphics/Rect;

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 6
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->do:Ljava/lang/Object;

    const-string v3, "setStyleDisplayCutoutSafeArea error: "

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->if:Ljava/lang/Object;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->for:Ljava/lang/reflect/Method;

    if-nez v2, :cond_6

    .line 7
    :cond_3
    :try_start_0
    const-class v2, Landroid/webkit/WebView;

    const-string v5, "mProvider"

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 8
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 9
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 10
    invoke-direct {p0, v2}, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->if(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->do:Ljava/lang/Object;

    if-nez v2, :cond_4

    return-void

    .line 11
    :cond_4
    invoke-direct {p0, v2}, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->goto(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->if:Ljava/lang/Object;

    if-nez v2, :cond_5

    return-void

    .line 12
    :cond_5
    invoke-direct {p0, v2}, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->else(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->for:Ljava/lang/reflect/Method;

    if-nez v2, :cond_6

    .line 13
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->do()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    .line 14
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->do()V

    .line 15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    :cond_6
    :try_start_1
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->for:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 17
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->for:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->if:Ljava/lang/Object;

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 18
    sput-boolean v4, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->break:Z

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisplayCutoutSafeArea speed time: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_7
    :goto_2
    return-void
.end method

.method private this()V
    .locals 1

    const-string v0, "searchBoxJavaBridge_"

    .line 1
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "accessibility"

    .line 2
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "accessibilityTraversal"

    .line 3
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/qmuiteam/qmui/util/new;

    invoke-direct {v0, p0, p0}, Lcom/qmuiteam/qmui/util/new;-><init>(Landroid/view/ViewGroup;Lcom/qmuiteam/qmui/widget/IWindowInsetLayout;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->goto:Lcom/qmuiteam/qmui/util/new;

    return-void
.end method


# virtual methods
.method public addCustomOnScrollChangeListener(Lcom/qmuiteam/qmui/widget/webview/QMUIWebView$OnScrollChangeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->else:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->else:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public applySystemWindowInsets19(Landroid/graphics/Rect;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public applySystemWindowInsets21(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->try:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/ih1;->goto(Landroid/content/Context;)F

    move-result v0

    .line 3
    invoke-static {}, Landroid/support/v4/ph1;->interface()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    check-cast p1, Landroid/view/WindowInsets;

    .line 5
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    .line 6
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    .line 7
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    .line 8
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p1

    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Landroidx/core/view/WindowInsetsCompat;

    .line 10
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v1

    .line 11
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v2

    .line 12
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v3

    .line 13
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result p1

    .line 14
    :goto_0
    new-instance v4, Landroid/graphics/Rect;

    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 15
    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->new(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v1, v5

    float-to-int v1, v1

    int-to-float v2, v2

    div-float/2addr v2, v0

    .line 16
    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->case(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v2, v5

    float-to-int v2, v2

    int-to-float v3, v3

    div-float/2addr v3, v0

    .line 17
    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->try(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    float-to-int v3, v3

    int-to-float p1, p1

    div-float/2addr p1, v0

    .line 18
    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->for(F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    float-to-int p1, p1

    invoke-direct {v4, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 19
    invoke-direct {p0, v4}, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->setStyleDisplayCutoutSafeArea(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    return p1
.end method

.method public break()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->try:Z

    return v0
.end method

.method public case(F)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public catch()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->break:Z

    return v0
.end method

.method public class()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->else:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->do:Ljava/lang/Object;

    .line 2
    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->if:Ljava/lang/Object;

    .line 3
    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->for:Ljava/lang/reflect/Method;

    .line 4
    invoke-virtual {p0}, Landroid/webkit/WebView;->stopLoading()V

    .line 5
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public for(F)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public new(F)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 2
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    return-void
.end method

.method public onScrollChanged(IIII)V
    .locals 8

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->else:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView$OnScrollChangeListener;

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    .line 3
    invoke-interface/range {v2 .. v7}, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView$OnScrollChangeListener;->onScrollChange(Landroid/webkit/WebView;IIII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeOnScrollChangeListener(Lcom/qmuiteam/qmui/widget/webview/QMUIWebView$OnScrollChangeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->else:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCallback(Lcom/qmuiteam/qmui/widget/webview/QMUIWebView$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->case:Lcom/qmuiteam/qmui/widget/webview/QMUIWebView$Callback;

    return-void
.end method

.method public setCustomOnScrollChangeListener(Lcom/qmuiteam/qmui/widget/webview/QMUIWebView$OnScrollChangeListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->addCustomOnScrollChangeListener(Lcom/qmuiteam/qmui/widget/webview/QMUIWebView$OnScrollChangeListener;)V

    return-void
.end method

.method public setNeedDispatchSafeAreaInset(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->try:Z

    if-eq v0, p1, :cond_1

    .line 2
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->try:Z

    .line 3
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/webview/QMUIWebView;->setStyleDisplayCutoutSafeArea(Landroid/graphics/Rect;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    instance-of v0, p1, Lcom/qmuiteam/qmui/widget/webview/do;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "must use the instance of QMUIWebViewClient"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public try(F)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
