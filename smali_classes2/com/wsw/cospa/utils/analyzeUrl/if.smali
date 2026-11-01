.class public final synthetic Lcom/wsw/cospa/utils/analyzeUrl/if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic case:Ljava/lang/String;

.field public final synthetic do:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;

.field public final synthetic for:Lio/reactivex/ObservableEmitter;

.field public final synthetic if:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;

.field public final synthetic new:Landroid/os/Handler;

.field public final synthetic try:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;Lio/reactivex/ObservableEmitter;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/utils/analyzeUrl/if;->do:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;

    iput-object p2, p0, Lcom/wsw/cospa/utils/analyzeUrl/if;->if:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;

    iput-object p3, p0, Lcom/wsw/cospa/utils/analyzeUrl/if;->for:Lio/reactivex/ObservableEmitter;

    iput-object p4, p0, Lcom/wsw/cospa/utils/analyzeUrl/if;->new:Landroid/os/Handler;

    iput-object p5, p0, Lcom/wsw/cospa/utils/analyzeUrl/if;->try:Ljava/lang/String;

    iput-object p6, p0, Lcom/wsw/cospa/utils/analyzeUrl/if;->case:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/wsw/cospa/utils/analyzeUrl/if;->do:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;

    iget-object v1, p0, Lcom/wsw/cospa/utils/analyzeUrl/if;->if:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;

    iget-object v2, p0, Lcom/wsw/cospa/utils/analyzeUrl/if;->for:Lio/reactivex/ObservableEmitter;

    iget-object v3, p0, Lcom/wsw/cospa/utils/analyzeUrl/if;->new:Landroid/os/Handler;

    iget-object v4, p0, Lcom/wsw/cospa/utils/analyzeUrl/if;->try:Ljava/lang/String;

    iget-object v5, p0, Lcom/wsw/cospa/utils/analyzeUrl/if;->case:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;->do(Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb;Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeByWeb$Web;Lio/reactivex/ObservableEmitter;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
