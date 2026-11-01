.class public final synthetic Landroid/support/v4/h7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/model/impl/if;

.field public final synthetic for:Ljava/lang/String;

.field public final synthetic if:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

.field public final synthetic new:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/model/impl/if;Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/h7;->do:Lcom/wsw/cospa/model/impl/if;

    iput-object p2, p0, Landroid/support/v4/h7;->if:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    iput-object p3, p0, Landroid/support/v4/h7;->for:Ljava/lang/String;

    iput-object p4, p0, Landroid/support/v4/h7;->new:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/h7;->do:Lcom/wsw/cospa/model/impl/if;

    iget-object v1, p0, Landroid/support/v4/h7;->if:Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;

    iget-object v2, p0, Landroid/support/v4/h7;->for:Ljava/lang/String;

    iget-object v3, p0, Landroid/support/v4/h7;->new:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/wsw/cospa/model/impl/if;->do(Lcom/wsw/cospa/model/impl/if;Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeUrl;Ljava/lang/String;Ljava/lang/String;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
