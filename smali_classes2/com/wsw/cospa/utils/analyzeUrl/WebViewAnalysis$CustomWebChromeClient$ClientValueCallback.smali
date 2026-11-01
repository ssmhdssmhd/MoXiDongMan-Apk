.class Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient$ClientValueCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClientValueCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final html:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTime:I

.field private mWait:I

.field public final synthetic this$1:Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient;


# direct methods
.method private constructor <init>(Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient;II)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient$ClientValueCallback;->this$1:Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x14

    .line 3
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient$ClientValueCallback;->mTime:I

    const/4 p1, 0x3

    .line 4
    iput p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient$ClientValueCallback;->mWait:I

    .line 5
    iput p2, p0, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient$ClientValueCallback;->mTime:I

    .line 6
    iput p3, p0, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient$ClientValueCallback;->mWait:I

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient$ClientValueCallback;->html:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient;IILcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient$ClientValueCallback;-><init>(Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient;II)V

    return-void
.end method

.method public static synthetic access$100(Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient$ClientValueCallback;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient$ClientValueCallback;->getHtml()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getHtml()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient$ClientValueCallback;->html:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    :cond_0
    const/4 v4, 0x0

    .line 2
    :goto_0
    iget v5, p0, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient$ClientValueCallback;->mTime:I

    if-ge v3, v5, :cond_2

    if-eqz v0, :cond_1

    if-lt v2, v0, :cond_1

    iget v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient$ClientValueCallback;->mWait:I

    if-ge v4, v0, :cond_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient$ClientValueCallback;->html:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const-wide/16 v5, 0x3e8

    .line 4
    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 6
    :goto_1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient$ClientValueCallback;->html:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient$ClientValueCallback;->html:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient$ClientValueCallback;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/WebViewAnalysis$CustomWebChromeClient$ClientValueCallback;->html:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
