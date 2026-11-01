.class final Lcom/google/protobuf/native$new;
.super Lcom/google/protobuf/native$if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "new"
.end annotation


# instance fields
.field private final catch:Lcom/google/protobuf/throw;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/throw;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/protobuf/native$if;-><init>(I)V

    const-string p2, "out"

    .line 2
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/protobuf/native$new;->catch:Lcom/google/protobuf/throw;

    return-void
.end method

.method private K0()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/native$new;->catch:Lcom/google/protobuf/throw;

    iget-object v1, p0, Lcom/google/protobuf/native$if;->else:[B

    iget v2, p0, Lcom/google/protobuf/native$if;->this:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/protobuf/throw;->for([BII)V

    .line 2
    iput v3, p0, Lcom/google/protobuf/native$if;->this:I

    return-void
.end method

.method private L0(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/protobuf/native$if;->goto:I

    iget v1, p0, Lcom/google/protobuf/native$if;->this:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/native$new;->K0()V

    :cond_0
    return-void
.end method


# virtual methods
.method public A0(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lcom/google/protobuf/c2;->for(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/native$new;->B0(I)V

    return-void
.end method

.method public B0(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/native$new;->L0(I)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/native$if;->I0(I)V

    return-void
.end method

.method public C0(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/native$new;->L0(I)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/native$if;->J0(J)V

    return-void
.end method

.method public O(I[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/google/protobuf/native$new;->P(I[BII)V

    return-void
.end method

.method public P(I[BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/native$new;->A0(II)V

    .line 2
    invoke-virtual {p0, p2, p3, p4}, Lcom/google/protobuf/native$new;->R([BII)V

    return-void
.end method

.method public R([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p3}, Lcom/google/protobuf/native$new;->B0(I)V

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/native$new;->for([BII)V

    return-void
.end method

.method public S(ILjava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/native$new;->A0(II)V

    .line 2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/native$new;->B0(I)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/protobuf/native$new;->n0(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public T(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/native$new;->B0(I)V

    .line 2
    invoke-virtual {p1, p0}, Lcom/google/protobuf/ByteString;->writeTo(Lcom/google/protobuf/throw;)V

    return-void
.end method

.method public W(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/native$new;->L0(I)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/native$if;->E0(I)V

    return-void
.end method

.method public X(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/native$new;->L0(I)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/native$if;->F0(J)V

    return-void
.end method

.method public d0(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/native$new;->B0(I)V

    goto :goto_0

    :cond_0
    int-to-long v0, p1

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/native$new;->C0(J)V

    :goto_0
    return-void
.end method

.method public do(B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/protobuf/native$if;->this:I

    iget v1, p0, Lcom/google/protobuf/native$if;->goto:I

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/native$new;->K0()V

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/protobuf/native$if;->D0(B)V

    return-void
.end method

.method public f0(ILcom/google/protobuf/MessageLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/native$new;->A0(II)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/protobuf/native$new;->h0(Lcom/google/protobuf/MessageLite;)V

    return-void
.end method

.method public for([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/native$new;->y()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/native$new;->catch:Lcom/google/protobuf/throw;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/throw;->for([BII)V

    .line 3
    iget p1, p0, Lcom/google/protobuf/native$if;->break:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/protobuf/native$if;->break:I

    return-void
.end method

.method public g0(ILcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/native$new;->A0(II)V

    .line 2
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/native$new;->i0(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)V

    return-void
.end method

.method public h0(Lcom/google/protobuf/MessageLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/native$new;->B0(I)V

    .line 2
    invoke-interface {p1, p0}, Lcom/google/protobuf/MessageLite;->writeTo(Lcom/google/protobuf/native;)V

    return-void
.end method

.method public i0(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Schema;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/protobuf/AbstractMessageLite;

    invoke-virtual {v0, p2}, Lcom/google/protobuf/AbstractMessageLite;->getSerializedSize(Lcom/google/protobuf/Schema;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/native$new;->B0(I)V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/native;->do:Lcom/google/protobuf/public;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/Schema;->writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    return-void
.end method

.method public if(Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/native$new;->y()V

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/google/protobuf/native$new;->catch:Lcom/google/protobuf/throw;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/throw;->if(Ljava/nio/ByteBuffer;)V

    .line 4
    iget p1, p0, Lcom/google/protobuf/native$if;->break:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/protobuf/native$if;->break:I

    return-void
.end method

.method public j0(ILcom/google/protobuf/MessageLite;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/native$new;->A0(II)V

    const/4 v2, 0x2

    .line 2
    invoke-virtual {p0, v2, p1}, Lcom/google/protobuf/native$new;->writeUInt32(II)V

    .line 3
    invoke-virtual {p0, v1, p2}, Lcom/google/protobuf/native$new;->f0(ILcom/google/protobuf/MessageLite;)V

    const/4 p1, 0x4

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/native$new;->A0(II)V

    return-void
.end method

.method public n0(Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/protobuf/native$new;->for([BII)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/protobuf/native$new;->if(Ljava/nio/ByteBuffer;)V

    :goto_0
    return-void
.end method

.method public new(Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/native$new;->y()V

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/google/protobuf/native$new;->catch:Lcom/google/protobuf/throw;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/throw;->new(Ljava/nio/ByteBuffer;)V

    .line 4
    iget p1, p0, Lcom/google/protobuf/native$if;->break:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/protobuf/native$if;->break:I

    return-void
.end method

.method public s0(ILcom/google/protobuf/ByteString;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/native$new;->A0(II)V

    const/4 v2, 0x2

    .line 2
    invoke-virtual {p0, v2, p1}, Lcom/google/protobuf/native$new;->writeUInt32(II)V

    .line 3
    invoke-virtual {p0, v1, p2}, Lcom/google/protobuf/native$new;->writeBytes(ILcom/google/protobuf/ByteString;)V

    const/4 p1, 0x4

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/google/protobuf/native$new;->A0(II)V

    return-void
.end method

.method public try([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/native$new;->y()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/native$new;->catch:Lcom/google/protobuf/throw;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/throw;->try([BII)V

    .line 3
    iget p1, p0, Lcom/google/protobuf/native$if;->break:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/protobuf/native$if;->break:I

    return-void
.end method

.method public writeBool(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xb

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/native$new;->L0(I)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/native$if;->H0(II)V

    int-to-byte p1, p2

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/protobuf/native$if;->D0(B)V

    return-void
.end method

.method public writeBytes(ILcom/google/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/native$new;->A0(II)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/protobuf/native$new;->T(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public writeFixed32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xe

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/native$new;->L0(I)V

    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/native$if;->H0(II)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/protobuf/native$if;->E0(I)V

    return-void
.end method

.method public writeFixed64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x12

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/native$new;->L0(I)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/native$if;->H0(II)V

    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/native$if;->F0(J)V

    return-void
.end method

.method public writeInt32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/native$new;->L0(I)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/native$if;->H0(II)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/protobuf/native$if;->G0(I)V

    return-void
.end method

.method public writeString(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/native$new;->A0(II)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/protobuf/native$new;->z0(Ljava/lang/String;)V

    return-void
.end method

.method public writeUInt32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/native$new;->L0(I)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/native$if;->H0(II)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/protobuf/native$if;->I0(I)V

    return-void
.end method

.method public writeUInt64(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    .line 1
    invoke-direct {p0, v0}, Lcom/google/protobuf/native$new;->L0(I)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/native$if;->H0(II)V

    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/native$if;->J0(J)V

    return-void
.end method

.method public y()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/protobuf/native$if;->this:I

    if-lez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/protobuf/native$new;->K0()V

    :cond_0
    return-void
.end method

.method public z0(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    .line 2
    invoke-static {v0}, Lcom/google/protobuf/native;->t(I)I

    move-result v1

    add-int v2, v1, v0

    .line 3
    iget v3, p0, Lcom/google/protobuf/native$if;->goto:I

    if-le v2, v3, :cond_0

    .line 4
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 5
    invoke-static {p1, v1, v2, v0}, Lcom/google/protobuf/a2;->this(Ljava/lang/CharSequence;[BII)I

    move-result p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/protobuf/native$new;->B0(I)V

    .line 7
    invoke-virtual {p0, v1, v2, p1}, Lcom/google/protobuf/native$new;->try([BII)V

    return-void

    .line 8
    :cond_0
    iget v0, p0, Lcom/google/protobuf/native$if;->this:I

    sub-int/2addr v3, v0

    if-le v2, v3, :cond_1

    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/native$new;->K0()V

    .line 10
    :cond_1
    iget v0, p0, Lcom/google/protobuf/native$if;->this:I

    .line 11
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/google/protobuf/native;->t(I)I

    move-result v2

    if-ne v2, v1, :cond_2

    add-int v1, v0, v2

    .line 12
    iput v1, p0, Lcom/google/protobuf/native$if;->this:I

    .line 13
    iget-object v3, p0, Lcom/google/protobuf/native$if;->else:[B

    iget v4, p0, Lcom/google/protobuf/native$if;->goto:I

    sub-int/2addr v4, v1

    invoke-static {p1, v3, v1, v4}, Lcom/google/protobuf/a2;->this(Ljava/lang/CharSequence;[BII)I

    move-result v1

    .line 14
    iput v0, p0, Lcom/google/protobuf/native$if;->this:I

    sub-int v3, v1, v0

    sub-int/2addr v3, v2

    .line 15
    invoke-virtual {p0, v3}, Lcom/google/protobuf/native$if;->I0(I)V

    .line 16
    iput v1, p0, Lcom/google/protobuf/native$if;->this:I

    .line 17
    iget v1, p0, Lcom/google/protobuf/native$if;->break:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/protobuf/native$if;->break:I

    goto :goto_0

    .line 18
    :cond_2
    invoke-static {p1}, Lcom/google/protobuf/a2;->catch(Ljava/lang/CharSequence;)I

    move-result v1

    .line 19
    invoke-virtual {p0, v1}, Lcom/google/protobuf/native$if;->I0(I)V

    .line 20
    iget-object v2, p0, Lcom/google/protobuf/native$if;->else:[B

    iget v3, p0, Lcom/google/protobuf/native$if;->this:I

    invoke-static {p1, v2, v3, v1}, Lcom/google/protobuf/a2;->this(Ljava/lang/CharSequence;[BII)I

    move-result v2

    iput v2, p0, Lcom/google/protobuf/native$if;->this:I

    .line 21
    iget v2, p0, Lcom/google/protobuf/native$if;->break:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/protobuf/native$if;->break:I
    :try_end_0
    .catch Lcom/google/protobuf/a2$new; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 22
    new-instance v0, Lcom/google/protobuf/native$case;

    invoke-direct {v0, p1}, Lcom/google/protobuf/native$case;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v1

    .line 23
    iget v2, p0, Lcom/google/protobuf/native$if;->break:I

    iget v3, p0, Lcom/google/protobuf/native$if;->this:I

    sub-int/2addr v3, v0

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/google/protobuf/native$if;->break:I

    .line 24
    iput v0, p0, Lcom/google/protobuf/native$if;->this:I

    .line 25
    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/native;->A(Ljava/lang/String;Lcom/google/protobuf/a2$new;)V

    :goto_0
    return-void
.end method
