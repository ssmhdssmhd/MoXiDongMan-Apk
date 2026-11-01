.class public final enum Lcom/google/protobuf/volatile$do;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/volatile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/protobuf/volatile$do;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum IMMUTABLE:Lcom/google/protobuf/volatile$do;

.field public static final enum MUTABLE:Lcom/google/protobuf/volatile$do;

.field public static final enum PROTO1:Lcom/google/protobuf/volatile$do;

.field private static final synthetic do:[Lcom/google/protobuf/volatile$do;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/protobuf/volatile$do;

    const-string v1, "IMMUTABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/volatile$do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/protobuf/volatile$do;->IMMUTABLE:Lcom/google/protobuf/volatile$do;

    .line 2
    new-instance v1, Lcom/google/protobuf/volatile$do;

    const-string v3, "MUTABLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/protobuf/volatile$do;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/protobuf/volatile$do;->MUTABLE:Lcom/google/protobuf/volatile$do;

    .line 3
    new-instance v3, Lcom/google/protobuf/volatile$do;

    const-string v5, "PROTO1"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/protobuf/volatile$do;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/protobuf/volatile$do;->PROTO1:Lcom/google/protobuf/volatile$do;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/protobuf/volatile$do;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/google/protobuf/volatile$do;->do:[Lcom/google/protobuf/volatile$do;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/volatile$do;
    .locals 1

    .line 1
    const-class v0, Lcom/google/protobuf/volatile$do;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/volatile$do;

    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/volatile$do;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/volatile$do;->do:[Lcom/google/protobuf/volatile$do;

    invoke-virtual {v0}, [Lcom/google/protobuf/volatile$do;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/volatile$do;

    return-object v0
.end method
