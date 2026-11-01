.class Lcom/wsw/cospa/model/impl/if$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/model/impl/if;->throw(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;Ljava/lang/String;Lio/reactivex/ObservableEmitter;Landroid/os/Handler;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/webkit/WebView;

.field public final synthetic for:Lio/reactivex/ObservableEmitter;

.field public final synthetic if:Ljava/lang/String;

.field public final synthetic new:Landroid/os/Handler;

.field public final synthetic try:Lcom/wsw/cospa/model/impl/if;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/model/impl/if;Landroid/webkit/WebView;Ljava/lang/String;Lio/reactivex/ObservableEmitter;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/model/impl/if$do;->try:Lcom/wsw/cospa/model/impl/if;

    iput-object p2, p0, Lcom/wsw/cospa/model/impl/if$do;->do:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/wsw/cospa/model/impl/if$do;->if:Ljava/lang/String;

    iput-object p4, p0, Lcom/wsw/cospa/model/impl/if$do;->for:Lio/reactivex/ObservableEmitter;

    iput-object p5, p0, Lcom/wsw/cospa/model/impl/if$do;->new:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/model/impl/if$do;Lio/reactivex/ObservableEmitter;Landroid/webkit/WebView;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/wsw/cospa/model/impl/if$do;->if(Lio/reactivex/ObservableEmitter;Landroid/webkit/WebView;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic if(Lio/reactivex/ObservableEmitter;Landroid/webkit/WebView;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p4}, Lorg/apache/commons/lang3/catch;->super(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/model/impl/if$do;->try:Lcom/wsw/cospa/model/impl/if;

    invoke-static {v0, p4}, Lcom/wsw/cospa/model/impl/if;->case(Lcom/wsw/cospa/model/impl/if;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1, p4}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p1}, Lio/reactivex/Emitter;->onComplete()V

    .line 5
    invoke-virtual {p2}, Landroid/webkit/WebView;->destroy()V

    .line 6
    invoke-virtual {p3, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x3e8

    .line 7
    invoke-virtual {p3, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/impl/if$do;->do:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/wsw/cospa/model/impl/if$do;->if:Ljava/lang/String;

    iget-object v2, p0, Lcom/wsw/cospa/model/impl/if$do;->for:Lio/reactivex/ObservableEmitter;

    iget-object v3, p0, Lcom/wsw/cospa/model/impl/if$do;->new:Landroid/os/Handler;

    new-instance v4, Lcom/wsw/cospa/model/impl/do;

    invoke-direct {v4, p0, v2, v0, v3}, Lcom/wsw/cospa/model/impl/do;-><init>(Lcom/wsw/cospa/model/impl/if$do;Lio/reactivex/ObservableEmitter;Landroid/webkit/WebView;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method
