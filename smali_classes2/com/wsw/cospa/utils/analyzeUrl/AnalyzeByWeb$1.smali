.class Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

.field public final synthetic val$e:Lio/reactivex/ObservableEmitter;

.field public final synthetic val$handler:Landroid/os/Handler;

.field public final synthetic val$web:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;

.field public final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;Landroid/webkit/WebView;Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;Lio/reactivex/ObservableEmitter;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$1;->this$0:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;

    iput-object p2, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$1;->val$webView:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$1;->val$web:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;

    iput-object p4, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$1;->val$e:Lio/reactivex/ObservableEmitter;

    iput-object p5, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$1;Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;Lio/reactivex/ObservableEmitter;Landroid/webkit/WebView;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$1;->lambda$run$0(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;Lio/reactivex/ObservableEmitter;Landroid/webkit/WebView;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$run$0(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;Lio/reactivex/ObservableEmitter;Landroid/webkit/WebView;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p5}, Lorg/apache/commons/lang3/catch;->super(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p1, p5}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;->access$102(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;->access$100(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p2}, Lio/reactivex/Emitter;->onComplete()V

    .line 5
    invoke-virtual {p3}, Landroid/webkit/WebView;->destroy()V

    .line 6
    invoke-virtual {p4, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0xc8

    .line 7
    invoke-virtual {p4, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$1;->val$webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$1;->val$web:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;

    invoke-static {v1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;->access$000(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$1;->val$web:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;

    iget-object v5, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$1;->val$e:Lio/reactivex/ObservableEmitter;

    iget-object v6, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$1;->val$webView:Landroid/webkit/WebView;

    iget-object v7, p0, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$1;->val$handler:Landroid/os/Handler;

    new-instance v8, Lcom/wsw/cospa/utils/analyzeUrl/new;

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/wsw/cospa/utils/analyzeUrl/new;-><init>(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$1;Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;Lio/reactivex/ObservableEmitter;Landroid/webkit/WebView;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v8}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method
