.class public final synthetic Landroid/support/v4/j7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic case:Ljava/lang/String;

.field public final synthetic do:Lcom/wsw/cospa/model/impl/if;

.field public final synthetic for:Ljava/lang/String;

.field public final synthetic if:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

.field public final synthetic new:Lio/reactivex/ObservableEmitter;

.field public final synthetic try:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/model/impl/if;Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;Ljava/lang/String;Lio/reactivex/ObservableEmitter;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/j7;->do:Lcom/wsw/cospa/model/impl/if;

    iput-object p2, p0, Landroid/support/v4/j7;->if:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    iput-object p3, p0, Landroid/support/v4/j7;->for:Ljava/lang/String;

    iput-object p4, p0, Landroid/support/v4/j7;->new:Lio/reactivex/ObservableEmitter;

    iput-object p5, p0, Landroid/support/v4/j7;->try:Landroid/os/Handler;

    iput-object p6, p0, Landroid/support/v4/j7;->case:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Landroid/support/v4/j7;->do:Lcom/wsw/cospa/model/impl/if;

    iget-object v1, p0, Landroid/support/v4/j7;->if:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    iget-object v2, p0, Landroid/support/v4/j7;->for:Ljava/lang/String;

    iget-object v3, p0, Landroid/support/v4/j7;->new:Lio/reactivex/ObservableEmitter;

    iget-object v4, p0, Landroid/support/v4/j7;->try:Landroid/os/Handler;

    iget-object v5, p0, Landroid/support/v4/j7;->case:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/wsw/cospa/model/impl/if;->for(Lcom/wsw/cospa/model/impl/if;Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;Ljava/lang/String;Lio/reactivex/ObservableEmitter;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method
