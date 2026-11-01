.class public final enum Lcom/google/protobuf/Descriptors$FileDescriptor$do;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Descriptors$FileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/protobuf/Descriptors$FileDescriptor$do;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum PROTO2:Lcom/google/protobuf/Descriptors$FileDescriptor$do;

.field public static final enum PROTO3:Lcom/google/protobuf/Descriptors$FileDescriptor$do;

.field public static final enum UNKNOWN:Lcom/google/protobuf/Descriptors$FileDescriptor$do;

.field private static final synthetic do:[Lcom/google/protobuf/Descriptors$FileDescriptor$do;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/google/protobuf/Descriptors$FileDescriptor$do;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const-string v3, "unknown"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/Descriptors$FileDescriptor$do;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/protobuf/Descriptors$FileDescriptor$do;->UNKNOWN:Lcom/google/protobuf/Descriptors$FileDescriptor$do;

    .line 2
    new-instance v1, Lcom/google/protobuf/Descriptors$FileDescriptor$do;

    const-string v3, "PROTO2"

    const/4 v4, 0x1

    const-string v5, "proto2"

    invoke-direct {v1, v3, v4, v5}, Lcom/google/protobuf/Descriptors$FileDescriptor$do;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/protobuf/Descriptors$FileDescriptor$do;->PROTO2:Lcom/google/protobuf/Descriptors$FileDescriptor$do;

    .line 3
    new-instance v3, Lcom/google/protobuf/Descriptors$FileDescriptor$do;

    const-string v5, "PROTO3"

    const/4 v6, 0x2

    const-string v7, "proto3"

    invoke-direct {v3, v5, v6, v7}, Lcom/google/protobuf/Descriptors$FileDescriptor$do;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/google/protobuf/Descriptors$FileDescriptor$do;->PROTO3:Lcom/google/protobuf/Descriptors$FileDescriptor$do;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/protobuf/Descriptors$FileDescriptor$do;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/google/protobuf/Descriptors$FileDescriptor$do;->do:[Lcom/google/protobuf/Descriptors$FileDescriptor$do;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/google/protobuf/Descriptors$FileDescriptor$do;->name:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/google/protobuf/Descriptors$FileDescriptor$do;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/protobuf/Descriptors$FileDescriptor$do;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$FileDescriptor$do;
    .locals 1

    .line 1
    const-class v0, Lcom/google/protobuf/Descriptors$FileDescriptor$do;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Descriptors$FileDescriptor$do;

    return-object p0
.end method

.method public static values()[Lcom/google/protobuf/Descriptors$FileDescriptor$do;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/Descriptors$FileDescriptor$do;->do:[Lcom/google/protobuf/Descriptors$FileDescriptor$do;

    invoke-virtual {v0}, [Lcom/google/protobuf/Descriptors$FileDescriptor$do;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/Descriptors$FileDescriptor$do;

    return-object v0
.end method
