.class final Lcom/google/protobuf/native$try;
.super Lcom/google/protobuf/native$for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "try"
.end annotation


# instance fields
.field private final catch:Ljava/nio/ByteBuffer;

.field private class:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 4
    invoke-direct {p0, v0, v1, v2}, Lcom/google/protobuf/native$for;-><init>([BII)V

    .line 5
    iput-object p1, p0, Lcom/google/protobuf/native$try;->catch:Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    iput p1, p0, Lcom/google/protobuf/native$try;->class:I

    return-void
.end method


# virtual methods
.method public y()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/native$try;->catch:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/protobuf/native$try;->class:I

    invoke-virtual {p0}, Lcom/google/protobuf/native$for;->z()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-void
.end method
