.class public final enum Lcom/google/protobuf/MessageReflection$MergeTarget$do;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/MessageReflection$MergeTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/protobuf/MessageReflection$MergeTarget$do;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EXTENSION_SET:Lcom/google/protobuf/MessageReflection$MergeTarget$do;

.field public static final enum MESSAGE:Lcom/google/protobuf/MessageReflection$MergeTarget$do;

.field private static final synthetic do:[Lcom/google/protobuf/MessageReflection$MergeTarget$do;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/protobuf/MessageReflection$MergeTarget$do;

    const-string v1, "MESSAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/MessageReflection$MergeTarget$do;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/protobuf/MessageReflection$MergeTarget$do;->MESSAGE:Lcom/google/protobuf/MessageReflection$MergeTarget$do;

    .line 2
    new-instance v1, Lcom/google/protobuf/MessageReflection$MergeTarget$do;

    const-string v3, "EXTENSION_SET"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/protobuf/MessageReflection$MergeTarget$do;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/protobuf/MessageReflection$MergeTarget$do;->EXTENSION_SET:Lcom/google/protobuf/MessageReflection$MergeTarget$do;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/protobuf/MessageReflection$MergeTarget$do;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/google/protobuf/MessageReflection$MergeTarget$do;->do:[Lcom/google/protobuf/MessageReflection$MergeTarget$do;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/MessageReflection$MergeTarget$do;
    .locals 1

    .line 1
    const-class v0, Lcom/google/protobuf/MessageReflection$MergeTarget$do;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/MessageReflection$MergeTarget$do;

    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/MessageReflection$MergeTarget$do;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/MessageReflection$MergeTarget$do;->do:[Lcom/google/protobuf/MessageReflection$MergeTarget$do;

    invoke-virtual {v0}, [Lcom/google/protobuf/MessageReflection$MergeTarget$do;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/MessageReflection$MergeTarget$do;

    return-object v0
.end method
