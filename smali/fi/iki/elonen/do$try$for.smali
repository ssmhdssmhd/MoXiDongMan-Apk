.class public final enum Lfi/iki/elonen/do$try$for;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/do$try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfi/iki/elonen/do$try$for;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Binary:Lfi/iki/elonen/do$try$for;

.field public static final enum Close:Lfi/iki/elonen/do$try$for;

.field public static final enum Continuation:Lfi/iki/elonen/do$try$for;

.field public static final enum Ping:Lfi/iki/elonen/do$try$for;

.field public static final enum Pong:Lfi/iki/elonen/do$try$for;

.field public static final enum Text:Lfi/iki/elonen/do$try$for;

.field private static final synthetic do:[Lfi/iki/elonen/do$try$for;


# instance fields
.field private final code:B


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lfi/iki/elonen/do$try$for;

    const-string v1, "Continuation"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lfi/iki/elonen/do$try$for;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfi/iki/elonen/do$try$for;->Continuation:Lfi/iki/elonen/do$try$for;

    .line 2
    new-instance v1, Lfi/iki/elonen/do$try$for;

    const-string v3, "Text"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lfi/iki/elonen/do$try$for;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lfi/iki/elonen/do$try$for;->Text:Lfi/iki/elonen/do$try$for;

    .line 3
    new-instance v3, Lfi/iki/elonen/do$try$for;

    const-string v5, "Binary"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lfi/iki/elonen/do$try$for;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lfi/iki/elonen/do$try$for;->Binary:Lfi/iki/elonen/do$try$for;

    .line 4
    new-instance v5, Lfi/iki/elonen/do$try$for;

    const-string v7, "Close"

    const/4 v8, 0x3

    const/16 v9, 0x8

    invoke-direct {v5, v7, v8, v9}, Lfi/iki/elonen/do$try$for;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lfi/iki/elonen/do$try$for;->Close:Lfi/iki/elonen/do$try$for;

    .line 5
    new-instance v7, Lfi/iki/elonen/do$try$for;

    const-string v9, "Ping"

    const/4 v10, 0x4

    const/16 v11, 0x9

    invoke-direct {v7, v9, v10, v11}, Lfi/iki/elonen/do$try$for;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lfi/iki/elonen/do$try$for;->Ping:Lfi/iki/elonen/do$try$for;

    .line 6
    new-instance v9, Lfi/iki/elonen/do$try$for;

    const-string v11, "Pong"

    const/4 v12, 0x5

    const/16 v13, 0xa

    invoke-direct {v9, v11, v12, v13}, Lfi/iki/elonen/do$try$for;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lfi/iki/elonen/do$try$for;->Pong:Lfi/iki/elonen/do$try$for;

    const/4 v11, 0x6

    new-array v11, v11, [Lfi/iki/elonen/do$try$for;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lfi/iki/elonen/do$try$for;->do:[Lfi/iki/elonen/do$try$for;

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

    int-to-byte p1, p3

    .line 2
    iput-byte p1, p0, Lfi/iki/elonen/do$try$for;->code:B

    return-void
.end method

.method public static find(B)Lfi/iki/elonen/do$try$for;
    .locals 5

    .line 1
    invoke-static {}, Lfi/iki/elonen/do$try$for;->values()[Lfi/iki/elonen/do$try$for;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lfi/iki/elonen/do$try$for;->getValue()B

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

.method public static valueOf(Ljava/lang/String;)Lfi/iki/elonen/do$try$for;
    .locals 1

    .line 1
    const-class v0, Lfi/iki/elonen/do$try$for;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfi/iki/elonen/do$try$for;

    return-object p0
.end method

.method public static values()[Lfi/iki/elonen/do$try$for;
    .locals 1

    .line 1
    sget-object v0, Lfi/iki/elonen/do$try$for;->do:[Lfi/iki/elonen/do$try$for;

    invoke-virtual {v0}, [Lfi/iki/elonen/do$try$for;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfi/iki/elonen/do$try$for;

    return-object v0
.end method


# virtual methods
.method public getValue()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lfi/iki/elonen/do$try$for;->code:B

    return v0
.end method

.method public isControlFrame()Z
    .locals 1

    .line 1
    sget-object v0, Lfi/iki/elonen/do$try$for;->Close:Lfi/iki/elonen/do$try$for;

    if-eq p0, v0, :cond_1

    sget-object v0, Lfi/iki/elonen/do$try$for;->Ping:Lfi/iki/elonen/do$try$for;

    if-eq p0, v0, :cond_1

    sget-object v0, Lfi/iki/elonen/do$try$for;->Pong:Lfi/iki/elonen/do$try$for;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
