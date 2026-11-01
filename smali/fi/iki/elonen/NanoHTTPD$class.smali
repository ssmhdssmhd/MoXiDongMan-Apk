.class public final enum Lfi/iki/elonen/NanoHTTPD$class;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "class"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfi/iki/elonen/NanoHTTPD$class;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CONNECT:Lfi/iki/elonen/NanoHTTPD$class;

.field public static final enum COPY:Lfi/iki/elonen/NanoHTTPD$class;

.field public static final enum DELETE:Lfi/iki/elonen/NanoHTTPD$class;

.field public static final enum GET:Lfi/iki/elonen/NanoHTTPD$class;

.field public static final enum HEAD:Lfi/iki/elonen/NanoHTTPD$class;

.field public static final enum LOCK:Lfi/iki/elonen/NanoHTTPD$class;

.field public static final enum MKCOL:Lfi/iki/elonen/NanoHTTPD$class;

.field public static final enum MOVE:Lfi/iki/elonen/NanoHTTPD$class;

.field public static final enum OPTIONS:Lfi/iki/elonen/NanoHTTPD$class;

.field public static final enum PATCH:Lfi/iki/elonen/NanoHTTPD$class;

.field public static final enum POST:Lfi/iki/elonen/NanoHTTPD$class;

.field public static final enum PROPFIND:Lfi/iki/elonen/NanoHTTPD$class;

.field public static final enum PROPPATCH:Lfi/iki/elonen/NanoHTTPD$class;

.field public static final enum PUT:Lfi/iki/elonen/NanoHTTPD$class;

.field public static final enum TRACE:Lfi/iki/elonen/NanoHTTPD$class;

.field public static final enum UNLOCK:Lfi/iki/elonen/NanoHTTPD$class;

.field private static final synthetic do:[Lfi/iki/elonen/NanoHTTPD$class;


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v0, Lfi/iki/elonen/NanoHTTPD$class;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$class;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$class;->GET:Lfi/iki/elonen/NanoHTTPD$class;

    .line 2
    new-instance v1, Lfi/iki/elonen/NanoHTTPD$class;

    const-string v3, "PUT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lfi/iki/elonen/NanoHTTPD$class;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lfi/iki/elonen/NanoHTTPD$class;->PUT:Lfi/iki/elonen/NanoHTTPD$class;

    .line 3
    new-instance v3, Lfi/iki/elonen/NanoHTTPD$class;

    const-string v5, "POST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lfi/iki/elonen/NanoHTTPD$class;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lfi/iki/elonen/NanoHTTPD$class;->POST:Lfi/iki/elonen/NanoHTTPD$class;

    .line 4
    new-instance v5, Lfi/iki/elonen/NanoHTTPD$class;

    const-string v7, "DELETE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lfi/iki/elonen/NanoHTTPD$class;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lfi/iki/elonen/NanoHTTPD$class;->DELETE:Lfi/iki/elonen/NanoHTTPD$class;

    .line 5
    new-instance v7, Lfi/iki/elonen/NanoHTTPD$class;

    const-string v9, "HEAD"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lfi/iki/elonen/NanoHTTPD$class;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lfi/iki/elonen/NanoHTTPD$class;->HEAD:Lfi/iki/elonen/NanoHTTPD$class;

    .line 6
    new-instance v9, Lfi/iki/elonen/NanoHTTPD$class;

    const-string v11, "OPTIONS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lfi/iki/elonen/NanoHTTPD$class;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lfi/iki/elonen/NanoHTTPD$class;->OPTIONS:Lfi/iki/elonen/NanoHTTPD$class;

    .line 7
    new-instance v11, Lfi/iki/elonen/NanoHTTPD$class;

    const-string v13, "TRACE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lfi/iki/elonen/NanoHTTPD$class;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lfi/iki/elonen/NanoHTTPD$class;->TRACE:Lfi/iki/elonen/NanoHTTPD$class;

    .line 8
    new-instance v13, Lfi/iki/elonen/NanoHTTPD$class;

    const-string v15, "CONNECT"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lfi/iki/elonen/NanoHTTPD$class;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lfi/iki/elonen/NanoHTTPD$class;->CONNECT:Lfi/iki/elonen/NanoHTTPD$class;

    .line 9
    new-instance v15, Lfi/iki/elonen/NanoHTTPD$class;

    const-string v14, "PATCH"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lfi/iki/elonen/NanoHTTPD$class;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lfi/iki/elonen/NanoHTTPD$class;->PATCH:Lfi/iki/elonen/NanoHTTPD$class;

    .line 10
    new-instance v14, Lfi/iki/elonen/NanoHTTPD$class;

    const-string v12, "PROPFIND"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lfi/iki/elonen/NanoHTTPD$class;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lfi/iki/elonen/NanoHTTPD$class;->PROPFIND:Lfi/iki/elonen/NanoHTTPD$class;

    .line 11
    new-instance v12, Lfi/iki/elonen/NanoHTTPD$class;

    const-string v10, "PROPPATCH"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lfi/iki/elonen/NanoHTTPD$class;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lfi/iki/elonen/NanoHTTPD$class;->PROPPATCH:Lfi/iki/elonen/NanoHTTPD$class;

    .line 12
    new-instance v10, Lfi/iki/elonen/NanoHTTPD$class;

    const-string v8, "MKCOL"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lfi/iki/elonen/NanoHTTPD$class;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lfi/iki/elonen/NanoHTTPD$class;->MKCOL:Lfi/iki/elonen/NanoHTTPD$class;

    .line 13
    new-instance v8, Lfi/iki/elonen/NanoHTTPD$class;

    const-string v6, "MOVE"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lfi/iki/elonen/NanoHTTPD$class;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lfi/iki/elonen/NanoHTTPD$class;->MOVE:Lfi/iki/elonen/NanoHTTPD$class;

    .line 14
    new-instance v6, Lfi/iki/elonen/NanoHTTPD$class;

    const-string v4, "COPY"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lfi/iki/elonen/NanoHTTPD$class;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lfi/iki/elonen/NanoHTTPD$class;->COPY:Lfi/iki/elonen/NanoHTTPD$class;

    .line 15
    new-instance v4, Lfi/iki/elonen/NanoHTTPD$class;

    const-string v2, "LOCK"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lfi/iki/elonen/NanoHTTPD$class;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lfi/iki/elonen/NanoHTTPD$class;->LOCK:Lfi/iki/elonen/NanoHTTPD$class;

    .line 16
    new-instance v2, Lfi/iki/elonen/NanoHTTPD$class;

    const-string v6, "UNLOCK"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lfi/iki/elonen/NanoHTTPD$class;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lfi/iki/elonen/NanoHTTPD$class;->UNLOCK:Lfi/iki/elonen/NanoHTTPD$class;

    const/16 v6, 0x10

    new-array v6, v6, [Lfi/iki/elonen/NanoHTTPD$class;

    const/16 v16, 0x0

    aput-object v0, v6, v16

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v8, v6, v0

    const/16 v0, 0xd

    aput-object v17, v6, v0

    const/16 v0, 0xe

    aput-object v18, v6, v0

    aput-object v2, v6, v4

    .line 17
    sput-object v6, Lfi/iki/elonen/NanoHTTPD$class;->do:[Lfi/iki/elonen/NanoHTTPD$class;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static lookup(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$class;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    :try_start_0
    invoke-static {p0}, Lfi/iki/elonen/NanoHTTPD$class;->valueOf(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$class;
    .locals 1

    .line 1
    const-class v0, Lfi/iki/elonen/NanoHTTPD$class;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfi/iki/elonen/NanoHTTPD$class;

    return-object p0
.end method

.method public static values()[Lfi/iki/elonen/NanoHTTPD$class;
    .locals 1

    .line 1
    sget-object v0, Lfi/iki/elonen/NanoHTTPD$class;->do:[Lfi/iki/elonen/NanoHTTPD$class;

    invoke-virtual {v0}, [Lfi/iki/elonen/NanoHTTPD$class;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfi/iki/elonen/NanoHTTPD$class;

    return-object v0
.end method
