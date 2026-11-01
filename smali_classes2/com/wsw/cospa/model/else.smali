.class public final synthetic Lcom/wsw/cospa/model/else;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/model/goto;

.field public final synthetic for:Ljava/util/Map;

.field public final synthetic if:Lretrofit2/Response;

.field public final synthetic new:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/wsw/cospa/model/goto;Lretrofit2/Response;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/model/else;->do:Lcom/wsw/cospa/model/goto;

    iput-object p2, p0, Lcom/wsw/cospa/model/else;->if:Lretrofit2/Response;

    iput-object p3, p0, Lcom/wsw/cospa/model/else;->for:Ljava/util/Map;

    iput-object p4, p0, Lcom/wsw/cospa/model/else;->new:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 4

    iget-object v0, p0, Lcom/wsw/cospa/model/else;->do:Lcom/wsw/cospa/model/goto;

    iget-object v1, p0, Lcom/wsw/cospa/model/else;->if:Lretrofit2/Response;

    iget-object v2, p0, Lcom/wsw/cospa/model/else;->for:Ljava/util/Map;

    iget-object v3, p0, Lcom/wsw/cospa/model/else;->new:Ljava/util/Map;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/wsw/cospa/model/goto;->do(Lcom/wsw/cospa/model/goto;Lretrofit2/Response;Ljava/util/Map;Ljava/util/Map;Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
