.class public abstract Lfi/iki/elonen/do$for;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "for"
.end annotation


# instance fields
.field private final continuousFrames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfi/iki/elonen/do$try;",
            ">;"
        }
    .end annotation
.end field

.field private continuousOpCode:Lfi/iki/elonen/do$try$for;

.field private final handshakeRequest:Lfi/iki/elonen/NanoHTTPD$IHTTPSession;

.field private final handshakeResponse:Lfi/iki/elonen/NanoHTTPD$Response;

.field private final in:Ljava/io/InputStream;

.field private out:Ljava/io/OutputStream;

.field private state:Lfi/iki/elonen/do$if;


# direct methods
.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lfi/iki/elonen/do$for;->continuousOpCode:Lfi/iki/elonen/do$try$for;

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lfi/iki/elonen/do$for;->continuousFrames:Ljava/util/List;

    .line 4
    sget-object v0, Lfi/iki/elonen/do$if;->UNCONNECTED:Lfi/iki/elonen/do$if;

    iput-object v0, p0, Lfi/iki/elonen/do$for;->state:Lfi/iki/elonen/do$if;

    .line 5
    new-instance v0, Lfi/iki/elonen/do$for$do;

    sget-object v3, Lfi/iki/elonen/NanoHTTPD$Response$for;->SWITCH_PROTOCOL:Lfi/iki/elonen/NanoHTTPD$Response$for;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lfi/iki/elonen/do$for$do;-><init>(Lfi/iki/elonen/do$for;Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/io/InputStream;J)V

    iput-object v0, p0, Lfi/iki/elonen/do$for;->handshakeResponse:Lfi/iki/elonen/NanoHTTPD$Response;

    .line 6
    iput-object p1, p0, Lfi/iki/elonen/do$for;->handshakeRequest:Lfi/iki/elonen/NanoHTTPD$IHTTPSession;

    .line 7
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lfi/iki/elonen/do$for;->in:Ljava/io/InputStream;

    const-string p1, "upgrade"

    const-string v1, "websocket"

    .line 8
    invoke-virtual {v0, p1, v1}, Lfi/iki/elonen/NanoHTTPD$Response;->if(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "connection"

    const-string v1, "Upgrade"

    .line 9
    invoke-virtual {v0, p1, v1}, Lfi/iki/elonen/NanoHTTPD$Response;->if(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$002(Lfi/iki/elonen/do$for;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 0

    .line 1
    iput-object p1, p0, Lfi/iki/elonen/do$for;->out:Ljava/io/OutputStream;

    return-object p1
.end method

.method public static synthetic access$102(Lfi/iki/elonen/do$for;Lfi/iki/elonen/do$if;)Lfi/iki/elonen/do$if;
    .locals 0

    .line 1
    iput-object p1, p0, Lfi/iki/elonen/do$for;->state:Lfi/iki/elonen/do$if;

    return-object p1
.end method

.method public static synthetic access$200(Lfi/iki/elonen/do$for;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfi/iki/elonen/do$for;->readWebsocket()V

    return-void
.end method

.method private doClose(Lfi/iki/elonen/do$try$do;Ljava/lang/String;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lfi/iki/elonen/do$for;->state:Lfi/iki/elonen/do$if;

    sget-object v1, Lfi/iki/elonen/do$if;->CLOSED:Lfi/iki/elonen/do$if;

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lfi/iki/elonen/do$for;->in:Ljava/io/InputStream;

    const-string v1, "close failed"

    if-eqz v0, :cond_1

    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-static {}, Lfi/iki/elonen/do;->access$300()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3, v1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lfi/iki/elonen/do$for;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    .line 6
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 7
    invoke-static {}, Lfi/iki/elonen/do;->access$300()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3, v1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    :cond_2
    :goto_1
    sget-object v0, Lfi/iki/elonen/do$if;->CLOSED:Lfi/iki/elonen/do$if;

    iput-object v0, p0, Lfi/iki/elonen/do$for;->state:Lfi/iki/elonen/do$if;

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lfi/iki/elonen/do$for;->onClose(Lfi/iki/elonen/do$try$do;Ljava/lang/String;Z)V

    return-void
.end method

.method private handleCloseFrame(Lfi/iki/elonen/do$try;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lfi/iki/elonen/do$try$do;->NormalClosure:Lfi/iki/elonen/do$try$do;

    .line 2
    instance-of v1, p1, Lfi/iki/elonen/do$try$if;

    if-eqz v1, :cond_0

    .line 3
    check-cast p1, Lfi/iki/elonen/do$try$if;

    invoke-virtual {p1}, Lfi/iki/elonen/do$try$if;->switch()Lfi/iki/elonen/do$try$do;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lfi/iki/elonen/do$try$if;->throws()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 5
    :goto_0
    iget-object v1, p0, Lfi/iki/elonen/do$for;->state:Lfi/iki/elonen/do$if;

    sget-object v2, Lfi/iki/elonen/do$if;->CLOSING:Lfi/iki/elonen/do$if;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 6
    invoke-direct {p0, v0, p1, v1}, Lfi/iki/elonen/do$for;->doClose(Lfi/iki/elonen/do$try$do;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    .line 7
    invoke-virtual {p0, v0, p1, v1}, Lfi/iki/elonen/do$for;->close(Lfi/iki/elonen/do$try$do;Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method private handleFrameFragment(Lfi/iki/elonen/do$try;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lfi/iki/elonen/do$try;->case()Lfi/iki/elonen/do$try$for;

    move-result-object v0

    sget-object v1, Lfi/iki/elonen/do$try$for;->Continuation:Lfi/iki/elonen/do$try$for;

    if-eq v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lfi/iki/elonen/do$for;->continuousOpCode:Lfi/iki/elonen/do$try$for;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lfi/iki/elonen/do$try;->case()Lfi/iki/elonen/do$try$for;

    move-result-object v0

    iput-object v0, p0, Lfi/iki/elonen/do$for;->continuousOpCode:Lfi/iki/elonen/do$try$for;

    .line 4
    iget-object v0, p0, Lfi/iki/elonen/do$for;->continuousFrames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iget-object v0, p0, Lfi/iki/elonen/do$for;->continuousFrames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lfi/iki/elonen/do$new;

    sget-object v0, Lfi/iki/elonen/do$try$do;->ProtocolError:Lfi/iki/elonen/do$try$do;

    const-string v1, "Previous continuous frame sequence not completed."

    invoke-direct {p1, v0, v1}, Lfi/iki/elonen/do$new;-><init>(Lfi/iki/elonen/do$try$do;Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    invoke-virtual {p1}, Lfi/iki/elonen/do$try;->goto()Z

    move-result v0

    const-string v1, "Continuous frame sequence was not started."

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lfi/iki/elonen/do$for;->continuousOpCode:Lfi/iki/elonen/do$try$for;

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lfi/iki/elonen/do$for;->continuousFrames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance p1, Lfi/iki/elonen/do$try;

    iget-object v0, p0, Lfi/iki/elonen/do$for;->continuousOpCode:Lfi/iki/elonen/do$try$for;

    iget-object v1, p0, Lfi/iki/elonen/do$for;->continuousFrames:Ljava/util/List;

    invoke-direct {p1, v0, v1}, Lfi/iki/elonen/do$try;-><init>(Lfi/iki/elonen/do$try$for;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lfi/iki/elonen/do$for;->onMessage(Lfi/iki/elonen/do$try;)V

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lfi/iki/elonen/do$for;->continuousOpCode:Lfi/iki/elonen/do$try$for;

    .line 12
    iget-object p1, p0, Lfi/iki/elonen/do$for;->continuousFrames:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 13
    :cond_2
    new-instance p1, Lfi/iki/elonen/do$new;

    sget-object v0, Lfi/iki/elonen/do$try$do;->ProtocolError:Lfi/iki/elonen/do$try$do;

    invoke-direct {p1, v0, v1}, Lfi/iki/elonen/do$new;-><init>(Lfi/iki/elonen/do$try$do;Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_3
    iget-object v0, p0, Lfi/iki/elonen/do$for;->continuousOpCode:Lfi/iki/elonen/do$try$for;

    if-eqz v0, :cond_4

    .line 15
    iget-object v0, p0, Lfi/iki/elonen/do$for;->continuousFrames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    .line 16
    :cond_4
    new-instance p1, Lfi/iki/elonen/do$new;

    sget-object v0, Lfi/iki/elonen/do$try$do;->ProtocolError:Lfi/iki/elonen/do$try$do;

    invoke-direct {p1, v0, v1}, Lfi/iki/elonen/do$new;-><init>(Lfi/iki/elonen/do$try$do;Ljava/lang/String;)V

    throw p1
.end method

.method private handleWebsocketFrame(Lfi/iki/elonen/do$try;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lfi/iki/elonen/do$for;->debugFrameReceived(Lfi/iki/elonen/do$try;)V

    .line 2
    invoke-virtual {p1}, Lfi/iki/elonen/do$try;->case()Lfi/iki/elonen/do$try$for;

    move-result-object v0

    sget-object v1, Lfi/iki/elonen/do$try$for;->Close:Lfi/iki/elonen/do$try$for;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lfi/iki/elonen/do$for;->handleCloseFrame(Lfi/iki/elonen/do$try;)V

    goto :goto_2

    .line 4
    :cond_0
    invoke-virtual {p1}, Lfi/iki/elonen/do$try;->case()Lfi/iki/elonen/do$try$for;

    move-result-object v0

    sget-object v1, Lfi/iki/elonen/do$try$for;->Ping:Lfi/iki/elonen/do$try$for;

    if-ne v0, v1, :cond_1

    .line 5
    new-instance v0, Lfi/iki/elonen/do$try;

    sget-object v1, Lfi/iki/elonen/do$try$for;->Pong:Lfi/iki/elonen/do$try$for;

    const/4 v2, 0x1

    invoke-virtual {p1}, Lfi/iki/elonen/do$try;->new()[B

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lfi/iki/elonen/do$try;-><init>(Lfi/iki/elonen/do$try$for;Z[B)V

    invoke-virtual {p0, v0}, Lfi/iki/elonen/do$for;->sendFrame(Lfi/iki/elonen/do$try;)V

    goto :goto_2

    .line 6
    :cond_1
    invoke-virtual {p1}, Lfi/iki/elonen/do$try;->case()Lfi/iki/elonen/do$try$for;

    move-result-object v0

    sget-object v1, Lfi/iki/elonen/do$try$for;->Pong:Lfi/iki/elonen/do$try$for;

    if-ne v0, v1, :cond_2

    .line 7
    invoke-virtual {p0, p1}, Lfi/iki/elonen/do$for;->onPong(Lfi/iki/elonen/do$try;)V

    goto :goto_2

    .line 8
    :cond_2
    invoke-virtual {p1}, Lfi/iki/elonen/do$try;->goto()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lfi/iki/elonen/do$try;->case()Lfi/iki/elonen/do$try$for;

    move-result-object v0

    sget-object v1, Lfi/iki/elonen/do$try$for;->Continuation:Lfi/iki/elonen/do$try$for;

    if-ne v0, v1, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    iget-object v0, p0, Lfi/iki/elonen/do$for;->continuousOpCode:Lfi/iki/elonen/do$try$for;

    if-nez v0, :cond_6

    .line 10
    invoke-virtual {p1}, Lfi/iki/elonen/do$try;->case()Lfi/iki/elonen/do$try$for;

    move-result-object v0

    sget-object v1, Lfi/iki/elonen/do$try$for;->Text:Lfi/iki/elonen/do$try$for;

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Lfi/iki/elonen/do$try;->case()Lfi/iki/elonen/do$try$for;

    move-result-object v0

    sget-object v1, Lfi/iki/elonen/do$try$for;->Binary:Lfi/iki/elonen/do$try$for;

    if-ne v0, v1, :cond_4

    goto :goto_0

    .line 11
    :cond_4
    new-instance p1, Lfi/iki/elonen/do$new;

    sget-object v0, Lfi/iki/elonen/do$try$do;->ProtocolError:Lfi/iki/elonen/do$try$do;

    const-string v1, "Non control or continuous frame expected."

    invoke-direct {p1, v0, v1}, Lfi/iki/elonen/do$new;-><init>(Lfi/iki/elonen/do$try$do;Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_5
    :goto_0
    invoke-virtual {p0, p1}, Lfi/iki/elonen/do$for;->onMessage(Lfi/iki/elonen/do$try;)V

    goto :goto_2

    .line 13
    :cond_6
    new-instance p1, Lfi/iki/elonen/do$new;

    sget-object v0, Lfi/iki/elonen/do$try$do;->ProtocolError:Lfi/iki/elonen/do$try$do;

    const-string v1, "Continuous frame sequence not completed."

    invoke-direct {p1, v0, v1}, Lfi/iki/elonen/do$new;-><init>(Lfi/iki/elonen/do$try$do;Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_7
    :goto_1
    invoke-direct {p0, p1}, Lfi/iki/elonen/do$for;->handleFrameFragment(Lfi/iki/elonen/do$try;)V

    :goto_2
    return-void
.end method

.method private readWebsocket()V
    .locals 4

    const-string v0, "Handler terminated without closing the connection."

    :goto_0
    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lfi/iki/elonen/do$for;->state:Lfi/iki/elonen/do$if;

    sget-object v3, Lfi/iki/elonen/do$if;->OPEN:Lfi/iki/elonen/do$if;

    if-ne v2, v3, :cond_0

    .line 2
    iget-object v2, p0, Lfi/iki/elonen/do$for;->in:Ljava/io/InputStream;

    invoke-static {v2}, Lfi/iki/elonen/do$try;->catch(Ljava/io/InputStream;)Lfi/iki/elonen/do$try;

    move-result-object v2

    invoke-direct {p0, v2}, Lfi/iki/elonen/do$for;->handleWebsocketFrame(Lfi/iki/elonen/do$try;)V
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3
    :cond_0
    :goto_1
    sget-object v2, Lfi/iki/elonen/do$try$do;->InternalServerError:Lfi/iki/elonen/do$try$do;

    invoke-direct {p0, v2, v0, v1}, Lfi/iki/elonen/do$for;->doClose(Lfi/iki/elonen/do$try$do;Ljava/lang/String;Z)V

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_0
    move-exception v2

    .line 4
    :try_start_1
    invoke-virtual {p0, v2}, Lfi/iki/elonen/do$for;->onException(Ljava/io/IOException;)V

    .line 5
    instance-of v3, v2, Lfi/iki/elonen/do$new;

    if-eqz v3, :cond_0

    .line 6
    move-object v3, v2

    check-cast v3, Lfi/iki/elonen/do$new;

    invoke-virtual {v3}, Lfi/iki/elonen/do$new;->getCode()Lfi/iki/elonen/do$try$do;

    move-result-object v3

    check-cast v2, Lfi/iki/elonen/do$new;

    invoke-virtual {v2}, Lfi/iki/elonen/do$new;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2, v1}, Lfi/iki/elonen/do$for;->doClose(Lfi/iki/elonen/do$try$do;Ljava/lang/String;Z)V

    goto :goto_1

    :catch_1
    move-exception v2

    .line 7
    invoke-virtual {p0, v2}, Lfi/iki/elonen/do$for;->onException(Ljava/io/IOException;)V

    .line 8
    sget-object v3, Lfi/iki/elonen/do$try$do;->InvalidFramePayloadData:Lfi/iki/elonen/do$try$do;

    invoke-virtual {v2}, Ljava/nio/charset/CharacterCodingException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2, v1}, Lfi/iki/elonen/do$for;->doClose(Lfi/iki/elonen/do$try$do;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    .line 9
    :goto_3
    sget-object v3, Lfi/iki/elonen/do$try$do;->InternalServerError:Lfi/iki/elonen/do$try$do;

    invoke-direct {p0, v3, v0, v1}, Lfi/iki/elonen/do$for;->doClose(Lfi/iki/elonen/do$try$do;Ljava/lang/String;Z)V

    goto :goto_5

    :goto_4
    throw v2

    :goto_5
    goto :goto_4
.end method


# virtual methods
.method public close(Lfi/iki/elonen/do$try$do;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfi/iki/elonen/do$for;->state:Lfi/iki/elonen/do$if;

    .line 2
    sget-object v1, Lfi/iki/elonen/do$if;->CLOSING:Lfi/iki/elonen/do$if;

    iput-object v1, p0, Lfi/iki/elonen/do$for;->state:Lfi/iki/elonen/do$if;

    .line 3
    sget-object v1, Lfi/iki/elonen/do$if;->OPEN:Lfi/iki/elonen/do$if;

    if-ne v0, v1, :cond_0

    .line 4
    new-instance p3, Lfi/iki/elonen/do$try$if;

    invoke-direct {p3, p1, p2}, Lfi/iki/elonen/do$try$if;-><init>(Lfi/iki/elonen/do$try$do;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lfi/iki/elonen/do$for;->sendFrame(Lfi/iki/elonen/do$try;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lfi/iki/elonen/do$for;->doClose(Lfi/iki/elonen/do$try$do;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public debugFrameReceived(Lfi/iki/elonen/do$try;)V
    .locals 0

    return-void
.end method

.method public debugFrameSent(Lfi/iki/elonen/do$try;)V
    .locals 0

    return-void
.end method

.method public getHandshakeRequest()Lfi/iki/elonen/NanoHTTPD$IHTTPSession;
    .locals 1

    .line 1
    iget-object v0, p0, Lfi/iki/elonen/do$for;->handshakeRequest:Lfi/iki/elonen/NanoHTTPD$IHTTPSession;

    return-object v0
.end method

.method public getHandshakeResponse()Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 1

    .line 1
    iget-object v0, p0, Lfi/iki/elonen/do$for;->handshakeResponse:Lfi/iki/elonen/NanoHTTPD$Response;

    return-object v0
.end method

.method public isOpen()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lfi/iki/elonen/do$for;->state:Lfi/iki/elonen/do$if;

    sget-object v1, Lfi/iki/elonen/do$if;->OPEN:Lfi/iki/elonen/do$if;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract onClose(Lfi/iki/elonen/do$try$do;Ljava/lang/String;Z)V
.end method

.method public abstract onException(Ljava/io/IOException;)V
.end method

.method public abstract onMessage(Lfi/iki/elonen/do$try;)V
.end method

.method public abstract onOpen()V
.end method

.method public abstract onPong(Lfi/iki/elonen/do$try;)V
.end method

.method public ping([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lfi/iki/elonen/do$try;

    sget-object v1, Lfi/iki/elonen/do$try$for;->Ping:Lfi/iki/elonen/do$try$for;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lfi/iki/elonen/do$try;-><init>(Lfi/iki/elonen/do$try$for;Z[B)V

    invoke-virtual {p0, v0}, Lfi/iki/elonen/do$for;->sendFrame(Lfi/iki/elonen/do$try;)V

    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lfi/iki/elonen/do$try;

    sget-object v1, Lfi/iki/elonen/do$try$for;->Text:Lfi/iki/elonen/do$try$for;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lfi/iki/elonen/do$try;-><init>(Lfi/iki/elonen/do$try$for;ZLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lfi/iki/elonen/do$for;->sendFrame(Lfi/iki/elonen/do$try;)V

    return-void
.end method

.method public send([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lfi/iki/elonen/do$try;

    sget-object v1, Lfi/iki/elonen/do$try$for;->Binary:Lfi/iki/elonen/do$try$for;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lfi/iki/elonen/do$try;-><init>(Lfi/iki/elonen/do$try$for;Z[B)V

    invoke-virtual {p0, v0}, Lfi/iki/elonen/do$for;->sendFrame(Lfi/iki/elonen/do$try;)V

    return-void
.end method

.method public declared-synchronized sendFrame(Lfi/iki/elonen/do$try;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lfi/iki/elonen/do$for;->debugFrameSent(Lfi/iki/elonen/do$try;)V

    .line 2
    iget-object v0, p0, Lfi/iki/elonen/do$for;->out:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Lfi/iki/elonen/do$try;->return(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
