.class Lcom/google/protobuf/final$do;
.super Lcom/google/protobuf/final;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/final;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/final;-><init>()V

    return-void
.end method


# virtual methods
.method public do(I)Lcom/google/protobuf/for;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/for;->break(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/for;

    move-result-object p1

    return-object p1
.end method

.method public if(I)Lcom/google/protobuf/for;
    .locals 0

    .line 1
    new-array p1, p1, [B

    invoke-static {p1}, Lcom/google/protobuf/for;->catch([B)Lcom/google/protobuf/for;

    move-result-object p1

    return-object p1
.end method
