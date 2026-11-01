.class public final enum Lfi/iki/elonen/do$try$do;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/do$try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfi/iki/elonen/do$try$do;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AbnormalClosure:Lfi/iki/elonen/do$try$do;

.field public static final enum GoingAway:Lfi/iki/elonen/do$try$do;

.field public static final enum InternalServerError:Lfi/iki/elonen/do$try$do;

.field public static final enum InvalidFramePayloadData:Lfi/iki/elonen/do$try$do;

.field public static final enum MandatoryExt:Lfi/iki/elonen/do$try$do;

.field public static final enum MessageTooBig:Lfi/iki/elonen/do$try$do;

.field public static final enum NoStatusRcvd:Lfi/iki/elonen/do$try$do;

.field public static final enum NormalClosure:Lfi/iki/elonen/do$try$do;

.field public static final enum PolicyViolation:Lfi/iki/elonen/do$try$do;

.field public static final enum ProtocolError:Lfi/iki/elonen/do$try$do;

.field public static final enum TLSHandshake:Lfi/iki/elonen/do$try$do;

.field public static final enum UnsupportedData:Lfi/iki/elonen/do$try$do;

.field private static final synthetic do:[Lfi/iki/elonen/do$try$do;


# instance fields
.field private final code:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lfi/iki/elonen/do$try$do;

    const-string v1, "NormalClosure"

    const/4 v2, 0x0

    const/16 v3, 0x3e8

    invoke-direct {v0, v1, v2, v3}, Lfi/iki/elonen/do$try$do;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/do$try$do;->NormalClosure:Lfi/iki/elonen/do$try$do;

    .line 2
    new-instance v1, Lfi/iki/elonen/do$try$do;

    const-string v3, "GoingAway"

    const/4 v4, 0x1

    const/16 v5, 0x3e9

    invoke-direct {v1, v3, v4, v5}, Lfi/iki/elonen/do$try$do;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lfi/iki/elonen/do$try$do;->GoingAway:Lfi/iki/elonen/do$try$do;

    .line 3
    new-instance v3, Lfi/iki/elonen/do$try$do;

    const-string v5, "ProtocolError"

    const/4 v6, 0x2

    const/16 v7, 0x3ea

    invoke-direct {v3, v5, v6, v7}, Lfi/iki/elonen/do$try$do;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lfi/iki/elonen/do$try$do;->ProtocolError:Lfi/iki/elonen/do$try$do;

    .line 4
    new-instance v5, Lfi/iki/elonen/do$try$do;

    const-string v7, "UnsupportedData"

    const/4 v8, 0x3

    const/16 v9, 0x3eb

    invoke-direct {v5, v7, v8, v9}, Lfi/iki/elonen/do$try$do;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lfi/iki/elonen/do$try$do;->UnsupportedData:Lfi/iki/elonen/do$try$do;

    .line 5
    new-instance v7, Lfi/iki/elonen/do$try$do;

    const-string v9, "NoStatusRcvd"

    const/4 v10, 0x4

    const/16 v11, 0x3ed

    invoke-direct {v7, v9, v10, v11}, Lfi/iki/elonen/do$try$do;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lfi/iki/elonen/do$try$do;->NoStatusRcvd:Lfi/iki/elonen/do$try$do;

    .line 6
    new-instance v9, Lfi/iki/elonen/do$try$do;

    const-string v11, "AbnormalClosure"

    const/4 v12, 0x5

    const/16 v13, 0x3ee

    invoke-direct {v9, v11, v12, v13}, Lfi/iki/elonen/do$try$do;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lfi/iki/elonen/do$try$do;->AbnormalClosure:Lfi/iki/elonen/do$try$do;

    .line 7
    new-instance v11, Lfi/iki/elonen/do$try$do;

    const-string v13, "InvalidFramePayloadData"

    const/4 v14, 0x6

    const/16 v15, 0x3ef

    invoke-direct {v11, v13, v14, v15}, Lfi/iki/elonen/do$try$do;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lfi/iki/elonen/do$try$do;->InvalidFramePayloadData:Lfi/iki/elonen/do$try$do;

    .line 8
    new-instance v13, Lfi/iki/elonen/do$try$do;

    const-string v15, "PolicyViolation"

    const/4 v14, 0x7

    const/16 v12, 0x3f0

    invoke-direct {v13, v15, v14, v12}, Lfi/iki/elonen/do$try$do;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lfi/iki/elonen/do$try$do;->PolicyViolation:Lfi/iki/elonen/do$try$do;

    .line 9
    new-instance v12, Lfi/iki/elonen/do$try$do;

    const-string v15, "MessageTooBig"

    const/16 v14, 0x8

    const/16 v10, 0x3f1

    invoke-direct {v12, v15, v14, v10}, Lfi/iki/elonen/do$try$do;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lfi/iki/elonen/do$try$do;->MessageTooBig:Lfi/iki/elonen/do$try$do;

    .line 10
    new-instance v10, Lfi/iki/elonen/do$try$do;

    const-string v15, "MandatoryExt"

    const/16 v14, 0x9

    const/16 v8, 0x3f2

    invoke-direct {v10, v15, v14, v8}, Lfi/iki/elonen/do$try$do;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lfi/iki/elonen/do$try$do;->MandatoryExt:Lfi/iki/elonen/do$try$do;

    .line 11
    new-instance v8, Lfi/iki/elonen/do$try$do;

    const-string v15, "InternalServerError"

    const/16 v14, 0xa

    const/16 v6, 0x3f3

    invoke-direct {v8, v15, v14, v6}, Lfi/iki/elonen/do$try$do;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lfi/iki/elonen/do$try$do;->InternalServerError:Lfi/iki/elonen/do$try$do;

    .line 12
    new-instance v6, Lfi/iki/elonen/do$try$do;

    const-string v15, "TLSHandshake"

    const/16 v14, 0xb

    const/16 v4, 0x3f7

    invoke-direct {v6, v15, v14, v4}, Lfi/iki/elonen/do$try$do;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lfi/iki/elonen/do$try$do;->TLSHandshake:Lfi/iki/elonen/do$try$do;

    const/16 v4, 0xc

    new-array v4, v4, [Lfi/iki/elonen/do$try$do;

    aput-object v0, v4, v2

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    aput-object v6, v4, v14

    .line 13
    sput-object v4, Lfi/iki/elonen/do$try$do;->do:[Lfi/iki/elonen/do$try$do;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lfi/iki/elonen/do$try$do;->code:I

    return-void
.end method

.method public static find(I)Lfi/iki/elonen/do$try$do;
    .locals 5

    .line 1
    invoke-static {}, Lfi/iki/elonen/do$try$do;->values()[Lfi/iki/elonen/do$try$do;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lfi/iki/elonen/do$try$do;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lfi/iki/elonen/do$try$do;
    .locals 1

    .line 1
    const-class v0, Lfi/iki/elonen/do$try$do;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfi/iki/elonen/do$try$do;

    return-object p0
.end method

.method public static values()[Lfi/iki/elonen/do$try$do;
    .locals 1

    .line 1
    sget-object v0, Lfi/iki/elonen/do$try$do;->do:[Lfi/iki/elonen/do$try$do;

    invoke-virtual {v0}, [Lfi/iki/elonen/do$try$do;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfi/iki/elonen/do$try$do;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lfi/iki/elonen/do$try$do;->code:I

    return v0
.end method
