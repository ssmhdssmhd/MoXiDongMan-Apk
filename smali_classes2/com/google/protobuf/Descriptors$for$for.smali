.class final enum Lcom/google/protobuf/Descriptors$for$for;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors$for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "for"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/protobuf/Descriptors$for$for;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AGGREGATES_ONLY:Lcom/google/protobuf/Descriptors$for$for;

.field public static final enum ALL_SYMBOLS:Lcom/google/protobuf/Descriptors$for$for;

.field public static final enum TYPES_ONLY:Lcom/google/protobuf/Descriptors$for$for;

.field private static final synthetic do:[Lcom/google/protobuf/Descriptors$for$for;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/protobuf/Descriptors$for$for;

    const-string v1, "TYPES_ONLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/Descriptors$for$for;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/protobuf/Descriptors$for$for;->TYPES_ONLY:Lcom/google/protobuf/Descriptors$for$for;

    .line 2
    new-instance v1, Lcom/google/protobuf/Descriptors$for$for;

    const-string v3, "AGGREGATES_ONLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/protobuf/Descriptors$for$for;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/protobuf/Descriptors$for$for;->AGGREGATES_ONLY:Lcom/google/protobuf/Descriptors$for$for;

    .line 3
    new-instance v3, Lcom/google/protobuf/Descriptors$for$for;

    const-string v5, "ALL_SYMBOLS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/protobuf/Descriptors$for$for;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/protobuf/Descriptors$for$for;->ALL_SYMBOLS:Lcom/google/protobuf/Descriptors$for$for;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/protobuf/Descriptors$for$for;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/google/protobuf/Descriptors$for$for;->do:[Lcom/google/protobuf/Descriptors$for$for;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$for$for;
    .locals 1

    .line 1
    const-class v0, Lcom/google/protobuf/Descriptors$for$for;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Descriptors$for$for;

    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/Descriptors$for$for;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/Descriptors$for$for;->do:[Lcom/google/protobuf/Descriptors$for$for;

    invoke-virtual {v0}, [Lcom/google/protobuf/Descriptors$for$for;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/Descriptors$for$for;

    return-object v0
.end method
