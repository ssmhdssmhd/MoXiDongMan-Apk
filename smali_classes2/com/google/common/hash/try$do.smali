.class final Lcom/google/common/hash/try$do;
.super Lcom/google/common/hash/new;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "do"
.end annotation


# instance fields
.field public final do:Lcom/google/common/hash/try$if;

.field public final synthetic if:Lcom/google/common/hash/try;


# direct methods
.method public constructor <init>(Lcom/google/common/hash/try;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/hash/try$do;->if:Lcom/google/common/hash/try;

    invoke-direct {p0}, Lcom/google/common/hash/new;-><init>()V

    .line 2
    new-instance p1, Lcom/google/common/hash/try$if;

    invoke-direct {p1, p2}, Lcom/google/common/hash/try$if;-><init>(I)V

    iput-object p1, p0, Lcom/google/common/hash/try$do;->do:Lcom/google/common/hash/try$if;

    return-void
.end method


# virtual methods
.method public hash()Lcom/google/common/hash/class;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/common/hash/try$do;->if:Lcom/google/common/hash/try;

    iget-object v1, p0, Lcom/google/common/hash/try$do;->do:Lcom/google/common/hash/try$if;

    invoke-virtual {v1}, Lcom/google/common/hash/try$if;->do()[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/hash/try$do;->do:Lcom/google/common/hash/try$if;

    invoke-virtual {v2}, Lcom/google/common/hash/try$if;->if()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/common/hash/try;->hashBytes([BII)Lcom/google/common/hash/class;

    move-result-object v0

    return-object v0
.end method

.method public putByte(B)Lcom/google/common/hash/Hasher;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/common/hash/try$do;->do:Lcom/google/common/hash/try$if;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-object p0
.end method

.method public bridge synthetic putByte(B)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/hash/try$do;->putByte(B)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/Hasher;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/common/hash/try$do;->do:Lcom/google/common/hash/try$if;

    invoke-virtual {v0, p1}, Lcom/google/common/hash/try$if;->for(Ljava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public putBytes([BII)Lcom/google/common/hash/Hasher;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/common/hash/try$do;->do:Lcom/google/common/hash/try$if;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-object p0
.end method

.method public bridge synthetic putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/hash/try$do;->putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic putBytes([BII)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/hash/try$do;->putBytes([BII)Lcom/google/common/hash/Hasher;

    move-result-object p1

    return-object p1
.end method
