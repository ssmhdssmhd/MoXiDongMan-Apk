.class public Lcom/wsw/cospa/web/WebSocketServer;
.super Lfi/iki/elonen/do;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfi/iki/elonen/do;-><init>(I)V

    return-void
.end method


# virtual methods
.method public openWebSocket(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/do$for;
    .locals 2

    .line 1
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getUri()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/sourceDebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/wsw/cospa/web/controller/SourceDebugWebSocket;

    invoke-direct {v0, p1}, Lcom/wsw/cospa/web/controller/SourceDebugWebSocket;-><init>(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
