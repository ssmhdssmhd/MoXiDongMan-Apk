.class public final synthetic Lcom/wsw/cospa/utils/analyzeUrl/new;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$1;

.field public final synthetic for:Lio/reactivex/ObservableEmitter;

.field public final synthetic if:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;

.field public final synthetic new:Landroid/webkit/WebView;

.field public final synthetic try:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$1;Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;Lio/reactivex/ObservableEmitter;Landroid/webkit/WebView;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/new;->do:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$1;

    iput-object p2, p0, Lcom/wsw/cospa/utils/analyzeUrl/new;->if:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;

    iput-object p3, p0, Lcom/wsw/cospa/utils/analyzeUrl/new;->for:Lio/reactivex/ObservableEmitter;

    iput-object p4, p0, Lcom/wsw/cospa/utils/analyzeUrl/new;->new:Landroid/webkit/WebView;

    iput-object p5, p0, Lcom/wsw/cospa/utils/analyzeUrl/new;->try:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/new;->do:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$1;

    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/new;->if:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;

    iget-object v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/new;->for:Lio/reactivex/ObservableEmitter;

    iget-object v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/new;->new:Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/wsw/cospa/utils/analyzeUrl/new;->try:Landroid/os/Handler;

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$1;->do(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$1;Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;Lio/reactivex/ObservableEmitter;Landroid/webkit/WebView;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method
