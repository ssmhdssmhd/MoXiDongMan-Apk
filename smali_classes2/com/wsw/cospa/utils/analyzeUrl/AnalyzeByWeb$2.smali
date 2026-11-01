.class Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$2;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;->lambda$getResult$1(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;Lio/reactivex/ObservableEmitter;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;

.field public final synthetic val$handler:Landroid/os/Handler;

.field public final synthetic val$retryRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$2;->this$0:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;

    iput-object p2, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$2;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$2;->val$retryRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$2;->val$handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$2;->val$retryRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 1
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".css"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance p1, Landroid/webkit/WebResourceResponse;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p1

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method
