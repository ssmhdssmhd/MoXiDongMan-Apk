.class public final synthetic Landroid/support/v4/vf2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic case:Ljava/lang/String;

.field public final synthetic do:Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;

.field public final synthetic for:Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient;

.field public final synthetic if:Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebViewClient;

.field public final synthetic new:Ljava/lang/String;

.field public final synthetic try:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebViewClient;Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/vf2;->do:Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;

    iput-object p2, p0, Landroid/support/v4/vf2;->if:Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebViewClient;

    iput-object p3, p0, Landroid/support/v4/vf2;->for:Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient;

    iput-object p4, p0, Landroid/support/v4/vf2;->new:Ljava/lang/String;

    iput-object p5, p0, Landroid/support/v4/vf2;->try:Ljava/lang/String;

    iput-object p6, p0, Landroid/support/v4/vf2;->case:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Landroid/support/v4/vf2;->do:Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;

    iget-object v1, p0, Landroid/support/v4/vf2;->if:Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebViewClient;

    iget-object v2, p0, Landroid/support/v4/vf2;->for:Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient;

    iget-object v3, p0, Landroid/support/v4/vf2;->new:Ljava/lang/String;

    iget-object v4, p0, Landroid/support/v4/vf2;->try:Ljava/lang/String;

    iget-object v5, p0, Landroid/support/v4/vf2;->case:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;->do(Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebViewClient;Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
