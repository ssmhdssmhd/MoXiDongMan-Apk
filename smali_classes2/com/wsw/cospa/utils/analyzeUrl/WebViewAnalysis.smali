.class public Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebViewClient;,
        Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient;,
        Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$WebViewBox;
    }
.end annotation


# static fields
.field private static webViewAnalysis:Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;


# instance fields
.field private final TOTAL_TIMES:I

.field private final WAITING_TIMES:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    .line 2
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;->TOTAL_TIMES:I

    const/4 v0, 0x3

    .line 3
    iput v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;->WAITING_TIMES:I

    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebViewClient;Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;->lambda$setWebView$0(Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebViewClient;Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;
    .locals 2

    .line 1
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;->webViewAnalysis:Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;->webViewAnalysis:Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;

    invoke-direct {v1}, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;-><init>()V

    sput-object v1, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;->webViewAnalysis:Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;->webViewAnalysis:Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;

    return-object v0
.end method

.method public static synthetic if(Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$WebViewBox;)V
    .locals 0

    invoke-static {p0}, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;->lambda$setWebView$1(Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$WebViewBox;)V

    return-void
.end method

.method private static initAndGetAppCtxWithReflection()Landroid/content/Context;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DiscouragedPrivateApi",
            "PrivateApi"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityThread"

    .line 1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentApplication"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method private synthetic lambda$setWebView$0(Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebViewClient;Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;->getInstance()Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;->getWebView(Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebViewClient;Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient;Ljava/lang/String;)Landroid/webkit/WebView;

    move-result-object p1

    .line 2
    invoke-static {p4}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 3
    new-instance p2, Lcom/google/gson/GsonBuilder;

    invoke-direct {p2}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 4
    invoke-virtual {p2}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p2

    .line 6
    new-instance p3, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$1;

    invoke-direct {p3, p0}, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$1;-><init>(Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;)V

    .line 7
    invoke-virtual {p3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p3

    .line 8
    invoke-virtual {p2, p4, p3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p1, p5, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1, p5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$setWebView$1(Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$WebViewBox;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$WebViewBox;->getWebView()Landroid/webkit/WebView;

    move-result-object p0

    invoke-static {p0}, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;->release(Landroid/webkit/WebView;)V

    return-void
.end method

.method public static release(Landroid/webkit/WebView;)V
    .locals 6

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    const/4 v5, 0x0

    const-string v2, ""

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v0, p0

    .line 1
    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/webkit/WebView;->stopLoading()V

    .line 3
    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->clearHistory()V

    .line 6
    invoke-virtual {p0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 7
    invoke-virtual {p0}, Landroid/webkit/WebView;->destroy()V

    :cond_1
    return-void
.end method

.method private setWebView(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 12

    move-object v7, p0

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v8, 0x0

    if-ne v0, v1, :cond_0

    return-object v8

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 4
    :cond_1
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 5
    new-instance v2, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebViewClient;

    invoke-direct {v2, p0, v0}, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebViewClient;-><init>(Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;Landroid/webkit/CookieManager;)V

    .line 6
    new-instance v9, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient;

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-direct {v9, p0, v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient;-><init>(Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;II)V

    .line 7
    invoke-static {}, Lcom/wsw/cospa/utils/case;->this()Lcom/wsw/cospa/utils/case;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/utils/case;->throw()Ljava/util/concurrent/Executor;

    move-result-object v10

    new-instance v11, Landroid/support/v4/vf2;

    move-object v0, v11

    move-object v1, p0

    move-object v3, v9

    move-object/from16 v4, p4

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/vf2;-><init>(Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebViewClient;Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v11}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 8
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 9
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 11
    invoke-virtual {v9}, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient;->getHtml()Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$WebViewBox;

    move-result-object v1

    .line 12
    invoke-static {}, Lcom/wsw/cospa/utils/case;->this()Lcom/wsw/cospa/utils/case;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wsw/cospa/utils/case;->throw()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/wsw/cospa/utils/analyzeUrl/try;

    invoke-direct {v3, v1}, Lcom/wsw/cospa/utils/analyzeUrl/try;-><init>(Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$WebViewBox;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_3

    .line 13
    invoke-virtual {v1}, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$WebViewBox;->getHtmls()Ljava/util/List;

    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_2
    return-object v8

    .line 16
    :cond_3
    invoke-virtual {v1}, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$WebViewBox;->getHtmls()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getFinalResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;->getFinalResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFinalResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;->getFinalResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFinalResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v4, 0x14

    const/4 v5, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;->getFinalResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFinalResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 4
    invoke-direct/range {v0 .. v6}, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;->setWebView(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;->getResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;->getResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v4, 0x14

    const/4 v5, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;->getResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 4
    invoke-direct/range {v0 .. v6}, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;->setWebView(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWebView(Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebViewClient;Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient;Ljava/lang/String;)Landroid/webkit/WebView;
    .locals 4

    .line 1
    new-instance v0, Landroid/webkit/WebView;

    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x2

    .line 3
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 5
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    const-string v3, "UTF-8"

    .line 6
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 8
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 9
    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 10
    invoke-static {p3}, Landroid/support/v4/l22;->return(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11
    invoke-virtual {v1, p3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 12
    :cond_0
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 13
    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 14
    invoke-virtual {p2, v0}, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient;->setWebView(Landroid/webkit/WebView;)V

    return-object v0
.end method
