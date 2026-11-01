.class public final enum Lfi/iki/elonen/do$if;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfi/iki/elonen/do$if;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CLOSED:Lfi/iki/elonen/do$if;

.field public static final enum CLOSING:Lfi/iki/elonen/do$if;

.field public static final enum CONNECTING:Lfi/iki/elonen/do$if;

.field public static final enum OPEN:Lfi/iki/elonen/do$if;

.field public static final enum UNCONNECTED:Lfi/iki/elonen/do$if;

.field private static final synthetic do:[Lfi/iki/elonen/do$if;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lfi/iki/elonen/do$if;

    const-string v1, "UNCONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/do$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfi/iki/elonen/do$if;->UNCONNECTED:Lfi/iki/elonen/do$if;

    .line 2
    new-instance v1, Lfi/iki/elonen/do$if;

    const-string v3, "CONNECTING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lfi/iki/elonen/do$if;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lfi/iki/elonen/do$if;->CONNECTING:Lfi/iki/elonen/do$if;

    .line 3
    new-instance v3, Lfi/iki/elonen/do$if;

    const-string v5, "OPEN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lfi/iki/elonen/do$if;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lfi/iki/elonen/do$if;->OPEN:Lfi/iki/elonen/do$if;

    .line 4
    new-instance v5, Lfi/iki/elonen/do$if;

    const-string v7, "CLOSING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lfi/iki/elonen/do$if;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lfi/iki/elonen/do$if;->CLOSING:Lfi/iki/elonen/do$if;

    .line 5
    new-instance v7, Lfi/iki/elonen/do$if;

    const-string v9, "CLOSED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lfi/iki/elonen/do$if;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lfi/iki/elonen/do$if;->CLOSED:Lfi/iki/elonen/do$if;

    const/4 v9, 0x5

    new-array v9, v9, [Lfi/iki/elonen/do$if;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lfi/iki/elonen/do$if;->do:[Lfi/iki/elonen/do$if;

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

.method public static valueOf(Ljava/lang/String;)Lfi/iki/elonen/do$if;
    .locals 1

    .line 1
    const-class v0, Lfi/iki/elonen/do$if;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfi/iki/elonen/do$if;

    return-object p0
.end method

.method public static values()[Lfi/iki/elonen/do$if;
    .locals 1

    .line 1
    sget-object v0, Lfi/iki/elonen/do$if;->do:[Lfi/iki/elonen/do$if;

    invoke-virtual {v0}, [Lfi/iki/elonen/do$if;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfi/iki/elonen/do$if;

    return-object v0
.end method
