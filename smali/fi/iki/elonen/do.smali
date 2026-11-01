.class public abstract Lfi/iki/elonen/do;
.super Lfi/iki/elonen/NanoHTTPD;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfi/iki/elonen/do$try;,
        Lfi/iki/elonen/do$new;,
        Lfi/iki/elonen/do$for;,
        Lfi/iki/elonen/do$if;
    }
.end annotation


# static fields
.field private static final ALPHABET:[C

.field public static final HEADER_CONNECTION:Ljava/lang/String; = "connection"

.field public static final HEADER_CONNECTION_VALUE:Ljava/lang/String; = "Upgrade"

.field public static final HEADER_UPGRADE:Ljava/lang/String; = "upgrade"

.field public static final HEADER_UPGRADE_VALUE:Ljava/lang/String; = "websocket"

.field public static final HEADER_WEBSOCKET_ACCEPT:Ljava/lang/String; = "sec-websocket-accept"

.field public static final HEADER_WEBSOCKET_KEY:Ljava/lang/String; = "sec-websocket-key"

.field public static final HEADER_WEBSOCKET_PROTOCOL:Ljava/lang/String; = "sec-websocket-protocol"

.field public static final HEADER_WEBSOCKET_VERSION:Ljava/lang/String; = "sec-websocket-version"

.field public static final HEADER_WEBSOCKET_VERSION_VALUE:Ljava/lang/String; = "13"

.field private static final LOG:Ljava/util/logging/Logger;

.field private static final WEBSOCKET_KEY_MAGIC:Ljava/lang/String; = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lfi/iki/elonen/do;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lfi/iki/elonen/do;->LOG:Ljava/util/logging/Logger;

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lfi/iki/elonen/do;->ALPHABET:[C

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfi/iki/elonen/NanoHTTPD;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lfi/iki/elonen/NanoHTTPD;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic access$300()Ljava/util/logging/Logger;
    .locals 1

    .line 1
    sget-object v0, Lfi/iki/elonen/do;->LOG:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private static encodeBase64([B)Ljava/lang/String;
    .locals 13

    .line 1
    array-length v0, p0

    add-int/lit8 v1, v0, 0x2

    .line 2
    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    new-array v1, v1, [C

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x2

    if-ge v3, v0, :cond_2

    add-int/lit8 v6, v3, 0x1

    .line 3
    aget-byte v3, p0, v3

    if-ge v6, v0, :cond_0

    add-int/lit8 v7, v6, 0x1

    .line 4
    aget-byte v6, p0, v6

    goto :goto_1

    :cond_0
    move v7, v6

    const/4 v6, 0x0

    :goto_1
    if-ge v7, v0, :cond_1

    add-int/lit8 v8, v7, 0x1

    .line 5
    aget-byte v7, p0, v7

    move v12, v8

    move v8, v7

    move v7, v12

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    :goto_2
    add-int/lit8 v9, v4, 0x1

    .line 6
    sget-object v10, Lfi/iki/elonen/do;->ALPHABET:[C

    shr-int/lit8 v11, v3, 0x2

    and-int/lit8 v11, v11, 0x3f

    aget-char v11, v10, v11

    aput-char v11, v1, v4

    add-int/lit8 v4, v9, 0x1

    shl-int/lit8 v3, v3, 0x4

    and-int/lit16 v11, v6, 0xff

    shr-int/lit8 v11, v11, 0x4

    or-int/2addr v3, v11

    and-int/lit8 v3, v3, 0x3f

    .line 7
    aget-char v3, v10, v3

    aput-char v3, v1, v9

    add-int/lit8 v3, v4, 0x1

    shl-int/lit8 v5, v6, 0x2

    and-int/lit16 v6, v8, 0xff

    shr-int/lit8 v6, v6, 0x6

    or-int/2addr v5, v6

    and-int/lit8 v5, v5, 0x3f

    .line 8
    aget-char v5, v10, v5

    aput-char v5, v1, v4

    add-int/lit8 v4, v3, 0x1

    and-int/lit8 v5, v8, 0x3f

    .line 9
    aget-char v5, v10, v5

    aput-char v5, v1, v3

    move v3, v7

    goto :goto_0

    .line 10
    :cond_2
    rem-int/lit8 v0, v0, 0x3

    const/16 p0, 0x3d

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    if-eq v0, v5, :cond_4

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, -0x1

    .line 11
    aput-char p0, v1, v4

    :cond_4
    add-int/lit8 v4, v4, -0x1

    .line 12
    aput-char p0, v1, v4

    .line 13
    :goto_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private isWebSocketConnectionHeader(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "connection"

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Upgrade"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static makeAcceptKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "SHA-1"

    .line 1
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Ljava/security/MessageDigest;->update([BII)V

    .line 4
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 5
    invoke-static {p0}, Lfi/iki/elonen/do;->encodeBase64([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public isWebsocketRequested(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v0, "upgrade"

    .line 2
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    invoke-direct {p0, p1}, Lfi/iki/elonen/do;->isWebSocketConnectionHeader(Ljava/util/Map;)Z

    move-result p1

    const-string v1, "websocket"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract openWebSocket(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/do$for;
.end method

.method public serve(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 5

    .line 1
    invoke-interface {p1}, Lfi/iki/elonen/NanoHTTPD$IHTTPSession;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1}, Lfi/iki/elonen/do;->isWebsocketRequested(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "sec-websocket-version"

    .line 3
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "13"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "text/plain"

    if-nez v2, :cond_0

    .line 4
    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$for;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$for;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Websocket-Version "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v3, v0}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v1, "sec-websocket-key"

    .line 5
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$for;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$for;

    const-string v0, "Missing Websocket-Key"

    invoke-static {p1, v3, v0}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    invoke-virtual {p0, p1}, Lfi/iki/elonen/do;->openWebSocket(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/do$for;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lfi/iki/elonen/do$for;->getHandshakeResponse()Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    :try_start_0
    const-string v2, "sec-websocket-accept"

    .line 9
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lfi/iki/elonen/do;->makeAcceptKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lfi/iki/elonen/NanoHTTPD$Response;->if(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "sec-websocket-protocol"

    .line 10
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {p1, v1, v0}, Lfi/iki/elonen/NanoHTTPD$Response;->if(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object p1

    .line 12
    :catch_0
    sget-object p1, Lfi/iki/elonen/NanoHTTPD$Response$for;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$for;

    const-string v0, "The SHA-1 Algorithm required for websockets is not available on the server."

    invoke-static {p1, v3, v0}, Lfi/iki/elonen/NanoHTTPD;->newFixedLengthResponse(Lfi/iki/elonen/NanoHTTPD$Response$IStatus;Ljava/lang/String;Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    .line 13
    :cond_3
    invoke-virtual {p0, p1}, Lfi/iki/elonen/do;->serveHttp(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method

.method public serveHttp(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lfi/iki/elonen/NanoHTTPD;->serve(Lfi/iki/elonen/NanoHTTPD$IHTTPSession;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method

.method public useGzipWhenAccepted(Lfi/iki/elonen/NanoHTTPD$Response;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
