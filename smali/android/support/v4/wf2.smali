.class public final synthetic Landroid/support/v4/wf2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient;

.field public final synthetic if:Landroid/webkit/WebView;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient;Landroid/webkit/WebView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/wf2;->do:Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient;

    iput-object p2, p0, Landroid/support/v4/wf2;->if:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/wf2;->do:Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient;

    iget-object v1, p0, Landroid/support/v4/wf2;->if:Landroid/webkit/WebView;

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient;->do(Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient;Landroid/webkit/WebView;)V

    return-void
.end method
