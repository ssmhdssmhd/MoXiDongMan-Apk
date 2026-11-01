.class Lcom/google/protobuf/for$do;
.super Lcom/google/protobuf/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/for;->break(Ljava/nio/ByteBuffer;)Lcom/google/protobuf/for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/protobuf/for$do;->do:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/protobuf/for;-><init>()V

    return-void
.end method


# virtual methods
.method public case()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/for$do;->do:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public do()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/for$do;->do:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public else()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/for$do;->do:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public for()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/for$do;->do:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    return v0
.end method

.method public goto(I)Lcom/google/protobuf/for;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/for$do;->do:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public if()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/for$do;->do:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    return v0
.end method

.method public new()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public this()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/for$do;->do:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public try()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/for$do;->do:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    return v0
.end method
