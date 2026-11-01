.class public final synthetic Lcom/wsw/cospa/utils/analyzeUrl/for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lio/reactivex/ObservableEmitter;

.field public final synthetic for:Ljava/lang/Runnable;

.field public final synthetic if:Landroid/os/Handler;

.field public final synthetic new:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;

.field public final synthetic try:Landroid/webkit/WebView;


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/ObservableEmitter;Landroid/os/Handler;Ljava/lang/Runnable;Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;Landroid/webkit/WebView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/for;->do:Lio/reactivex/ObservableEmitter;

    iput-object p2, p0, Lcom/wsw/cospa/utils/analyzeUrl/for;->if:Landroid/os/Handler;

    iput-object p3, p0, Lcom/wsw/cospa/utils/analyzeUrl/for;->for:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/wsw/cospa/utils/analyzeUrl/for;->new:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;

    iput-object p5, p0, Lcom/wsw/cospa/utils/analyzeUrl/for;->try:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/for;->do:Lio/reactivex/ObservableEmitter;

    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/for;->if:Landroid/os/Handler;

    iget-object v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/for;->for:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/for;->new:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;

    iget-object v4, p0, Lcom/wsw/cospa/utils/analyzeUrl/for;->try:Landroid/webkit/WebView;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;->if(Lio/reactivex/ObservableEmitter;Landroid/os/Handler;Ljava/lang/Runnable;Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;Landroid/webkit/WebView;)V

    return-void
.end method
