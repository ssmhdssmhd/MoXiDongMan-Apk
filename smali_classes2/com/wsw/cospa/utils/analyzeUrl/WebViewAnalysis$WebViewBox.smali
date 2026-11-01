.class Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$WebViewBox;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebViewBox"
.end annotation


# instance fields
.field private htmls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method private constructor <init>(Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;Ljava/util/List;Landroid/webkit/WebView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/webkit/WebView;",
            ")V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$WebViewBox;->this$0:Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$WebViewBox;->htmls:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$WebViewBox;->webView:Landroid/webkit/WebView;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;Ljava/util/List;Landroid/webkit/WebView;Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$WebViewBox;-><init>(Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;Ljava/util/List;Landroid/webkit/WebView;)V

    return-void
.end method


# virtual methods
.method public getHtmls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$WebViewBox;->htmls:Ljava/util/List;

    return-object v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$WebViewBox;->webView:Landroid/webkit/WebView;

    return-object v0
.end method
