.class public final enum Lcom/google/protobuf/volatile$if;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/volatile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/protobuf/volatile$if;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum PROTO1:Lcom/google/protobuf/volatile$if;

.field public static final enum PROTO2:Lcom/google/protobuf/volatile$if;

.field private static final synthetic do:[Lcom/google/protobuf/volatile$if;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/protobuf/volatile$if;

    const-string v1, "PROTO1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/volatile$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/protobuf/volatile$if;->PROTO1:Lcom/google/protobuf/volatile$if;

    .line 2
    new-instance v1, Lcom/google/protobuf/volatile$if;

    const-string v3, "PROTO2"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/protobuf/volatile$if;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/protobuf/volatile$if;->PROTO2:Lcom/google/protobuf/volatile$if;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/protobuf/volatile$if;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/google/protobuf/volatile$if;->do:[Lcom/google/protobuf/volatile$if;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/volatile$if;
    .locals 1

    .line 1
    const-class v0, Lcom/google/protobuf/volatile$if;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/volatile$if;

    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/volatile$if;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/volatile$if;->do:[Lcom/google/protobuf/volatile$if;

    invoke-virtual {v0}, [Lcom/google/protobuf/volatile$if;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/volatile$if;

    return-object v0
.end method
