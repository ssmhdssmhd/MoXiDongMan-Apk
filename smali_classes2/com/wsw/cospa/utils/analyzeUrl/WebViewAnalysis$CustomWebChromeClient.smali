.class public Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomWebChromeClient"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient$ClientValueCallback;
    }
.end annotation


# instance fields
.field private final resultCallback:Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient$ClientValueCallback;

.field public final synthetic this$0:Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;II)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient;->this$0:Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 2
    new-instance p1, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient$ClientValueCallback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, p3, v0}, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient$ClientValueCallback;-><init>(Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient;IILcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$1;)V

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient;->resultCallback:Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient$ClientValueCallback;

    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient;Landroid/webkit/WebView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient;->lambda$onProgressChanged$0(Landroid/webkit/WebView;)V

    return-void
.end method

.method private synthetic lambda$onProgressChanged$0(Landroid/webkit/WebView;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient;->resultCallback:Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient$ClientValueCallback;

    const-string v1, "window.document.documentElement.outerHTML;"

    invoke-virtual {p1, v1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method


# virtual methods
.method public getHtml()Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$WebViewBox;
    .locals 5

    .line 1
    new-instance v0, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$WebViewBox;

    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient;->this$0:Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;

    iget-object v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient;->resultCallback:Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient$ClientValueCallback;

    invoke-static {v2}, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient$ClientValueCallback;->access$100(Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient$ClientValueCallback;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient;->webView:Landroid/webkit/WebView;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$WebViewBox;-><init>(Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;Ljava/util/List;Landroid/webkit/WebView;Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$1;)V

    return-object v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 2
    invoke-static {}, Lcom/wsw/cospa/utils/case;->this()Lcom/wsw/cospa/utils/case;

    move-result-object p2

    invoke-virtual {p2}, Lcom/wsw/cospa/utils/case;->throw()Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v0, Landroid/support/v4/wf2;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/wf2;-><init>(Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient;Landroid/webkit/WebView;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setWebView(Landroid/webkit/WebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient;->webView:Landroid/webkit/WebView;

    return-void
.end method
