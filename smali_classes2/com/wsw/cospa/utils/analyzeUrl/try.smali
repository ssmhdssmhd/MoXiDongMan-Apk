.class public final synthetic Lcom/wsw/cospa/utils/analyzeUrl/try;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$WebViewBox;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$WebViewBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/try;->do:Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$WebViewBox;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/try;->do:Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$WebViewBox;

    invoke-static {v0}, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis;->if(Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$WebViewBox;)V

    return-void
.end method
