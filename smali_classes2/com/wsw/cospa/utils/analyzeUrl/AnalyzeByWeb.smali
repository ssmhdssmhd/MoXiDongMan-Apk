.class public Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;
    }
.end annotation


# static fields
.field public static final UA:Ljava/lang/String; = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36"

.field public static final UAMobile:Ljava/lang/String; = "Mozilla/5.0 (Linux; Android 10) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36"


# instance fields
.field private _UA:Ljava/lang/String;

.field private _baseUrl:Ljava/lang/String;

.field private _content:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;->_baseUrl:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;->_UA:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    .line 4
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;->_content:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_0
    instance-of p2, p1, Lorg/jsoup/nodes/Element;

    if-eqz p2, :cond_1

    .line 6
    check-cast p1, Lorg/jsoup/nodes/Element;

    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->outerHtml()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;->_content:Ljava/lang/String;

    goto :goto_0

    .line 7
    :cond_1
    instance-of p2, p1, Landroid/support/v4/ap0;

    if-eqz p2, :cond_3

    .line 8
    check-cast p1, Landroid/support/v4/ap0;

    .line 9
    invoke-virtual {p1}, Landroid/support/v4/ap0;->this()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 10
    invoke-virtual {p1}, Landroid/support/v4/ap0;->new()Lorg/jsoup/nodes/Element;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->outerHtml()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;->_content:Ljava/lang/String;

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p1}, Landroid/support/v4/ap0;->final()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;->_content:Ljava/lang/String;

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;->_content:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;Lio/reactivex/ObservableEmitter;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;->lambda$getResult$1(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;Lio/reactivex/ObservableEmitter;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic for(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;Ljava/lang/String;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;->lambda$getResult$2(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;Ljava/lang/String;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method public static synthetic if(Lio/reactivex/ObservableEmitter;Landroid/os/Handler;Ljava/lang/Runnable;Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;Landroid/webkit/WebView;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;->lambda$getResult$0(Lio/reactivex/ObservableEmitter;Landroid/os/Handler;Ljava/lang/Runnable;Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;Landroid/webkit/WebView;)V

    return-void
.end method

.method private static synthetic lambda$getResult$0(Lio/reactivex/ObservableEmitter;Landroid/os/Handler;Ljava/lang/Runnable;Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;Landroid/webkit/WebView;)V
    .locals 1

    .line 1
    invoke-interface {p0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    invoke-static {p3}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;->access$100(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p0}, Lio/reactivex/Emitter;->onComplete()V

    .line 5
    invoke-virtual {p4}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$getResult$1(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;Lio/reactivex/ObservableEmitter;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    new-instance v6, Landroid/webkit/WebView;

    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->try()Lcom/wsw/cospa/CartoonApplication;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 3
    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 4
    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;->_UA:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/class;->A(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;->_UA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 7
    :cond_0
    new-instance v8, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$1;

    move-object v0, v8

    move-object v1, p0

    move-object v2, v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$1;-><init>(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;Landroid/webkit/WebView;Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;Lio/reactivex/ObservableEmitter;Landroid/os/Handler;)V

    .line 8
    new-instance v9, Lcom/wsw/cospa/utils/analyzeUrl/for;

    move-object v0, v9

    move-object v1, p2

    move-object v2, p3

    move-object v3, v8

    move-object v4, p1

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/wsw/cospa/utils/analyzeUrl/for;-><init>(Lio/reactivex/ObservableEmitter;Landroid/os/Handler;Ljava/lang/Runnable;Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;Landroid/webkit/WebView;)V

    const-wide/16 p1, 0x7530

    .line 9
    invoke-virtual {p3, v9, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10
    new-instance p1, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$2;

    invoke-direct {p1, p0, p3, v8}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$2;-><init>(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;Landroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-virtual {v6, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    if-nez p4, :cond_1

    .line 11
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;->_baseUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;->_content:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "text/html"

    move-object v0, v6

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "@"

    .line 12
    invoke-virtual {p4, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-le p1, p2, :cond_2

    const/4 p2, 0x0

    .line 13
    invoke-virtual {p4, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    add-int/2addr p1, v7

    invoke-virtual {p4, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;->getPostData(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v6, p2, p1}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {v6, p4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$getResult$2(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;Ljava/lang/String;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    new-instance v8, Lcom/wsw/cospa/utils/analyzeUrl/if;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, v7

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/wsw/cospa/utils/analyzeUrl/if;-><init>(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;Lio/reactivex/ObservableEmitter;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static parse(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;
    .locals 1

    .line 1
    new-instance v0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;

    invoke-direct {v0, p0, p1, p2}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getPostData(Ljava/lang/String;)[B
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    return-object p1
.end method

.method public getResult(Ljava/lang/String;)Lio/reactivex/new;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/new<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "html@@"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "utf-8"

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "htmlgbk@@"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v3, 0x9

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "gbk"

    goto :goto_0

    :cond_1
    const-string v0, "result@@"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;->_content:Ljava/lang/String;

    const/16 v0, 0x8

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string v0, "baseUrl@@"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;->_baseUrl:Ljava/lang/String;

    .line 10
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 11
    :cond_3
    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;->_baseUrl:Ljava/lang/String;

    .line 12
    :goto_0
    new-instance v0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;

    const-string v3, "\u52a0\u8f7d\u8d85\u65f6"

    invoke-direct {v0, v3}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 14
    invoke-static {v0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;->access$002(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    :cond_4
    new-instance p1, Lcom/wsw/cospa/utils/analyzeUrl/do;

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/wsw/cospa/utils/analyzeUrl/do;-><init>(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;->getResult(Ljava/lang/String;)Lio/reactivex/new;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/new;->blockingFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public setUA(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;->_UA:Ljava/lang/String;

    return-void
.end method
