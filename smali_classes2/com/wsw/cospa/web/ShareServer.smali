.class public Lcom/wsw/cospa/web/ShareServer;
.super Lfi/iki/elonen/NanoHTTPD;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/web/ShareServer$Callback;
    }
.end annotation


# instance fields
.field private callback:Lcom/wsw/cospa/web/ShareServer$Callback;


# direct methods
.method public constructor <init>(ILcom/wsw/cospa/web/ShareServer$Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfi/iki/elonen/NanoHTTPD;-><init>(I)V

    .line 2
    iput-object p2, p0, Lcom/wsw/cospa/web/ShareServer;->callback:Lcom/wsw/cospa/web/ShareServer$Callback;

    return-void
.end method


# virtual methods
.method public serve(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 1

    .line 1
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v0, p0, Lcom/wsw/cospa/web/ShareServer;->callback:Lcom/wsw/cospa/web/ShareServer$Callback;

    invoke-interface {v0}, Lcom/wsw/cospa/web/ShareServer$Callback;->getSources()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method
