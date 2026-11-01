.class public Lorg/bouncycastle/crypto/tls/goto;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final try:I = 0x400


# instance fields
.field private do:[B

.field private for:I

.field private if:I

.field private new:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/tls/goto;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/tls/goto;->if:I

    iput v0, p0, Lorg/bouncycastle/crypto/tls/goto;->for:I

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/goto;->new:Z

    if-nez p1, :cond_0

    sget-object p1, Lorg/bouncycastle/crypto/tls/l0;->do:[B

    goto :goto_0

    :cond_0
    new-array p1, p1, [B

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/goto;->do:[B

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/tls/goto;->if:I

    iput v0, p0, Lorg/bouncycastle/crypto/tls/goto;->for:I

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/tls/goto;->new:Z

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/goto;->do:[B

    iput p2, p0, Lorg/bouncycastle/crypto/tls/goto;->if:I

    iput p3, p0, Lorg/bouncycastle/crypto/tls/goto;->for:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/tls/goto;->new:Z

    return-void
.end method

.method public static new(I)I
    .locals 1

    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public break()V
    .locals 5

    iget v0, p0, Lorg/bouncycastle/crypto/tls/goto;->for:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lorg/bouncycastle/crypto/tls/l0;->do:[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/goto;->do:[B

    :goto_0
    iput v1, p0, Lorg/bouncycastle/crypto/tls/goto;->if:I

    goto :goto_1

    :cond_0
    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/goto;->new(I)I

    move-result v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/goto;->do:[B

    array-length v3, v2

    if-ge v0, v3, :cond_1

    new-array v0, v0, [B

    iget v3, p0, Lorg/bouncycastle/crypto/tls/goto;->if:I

    iget v4, p0, Lorg/bouncycastle/crypto/tls/goto;->for:I

    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/goto;->do:[B

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public case(I)Ljava/io/ByteArrayInputStream;
    .locals 3

    iget v0, p0, Lorg/bouncycastle/crypto/tls/goto;->for:I

    if-gt p1, v0, :cond_0

    iget v1, p0, Lorg/bouncycastle/crypto/tls/goto;->if:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/bouncycastle/crypto/tls/goto;->for:I

    add-int v0, v1, p1

    iput v0, p0, Lorg/bouncycastle/crypto/tls/goto;->if:I

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/goto;->do:[B

    invoke-direct {v0, v2, v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes, only got "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/bouncycastle/crypto/tls/goto;->for:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public do([BII)V
    .locals 5

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/tls/goto;->new:Z

    if-nez v0, :cond_2

    iget v0, p0, Lorg/bouncycastle/crypto/tls/goto;->if:I

    iget v1, p0, Lorg/bouncycastle/crypto/tls/goto;->for:I

    add-int/2addr v0, v1

    add-int/2addr v0, p3

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/goto;->do:[B

    array-length v2, v2

    if-le v0, v2, :cond_1

    add-int/2addr v1, p3

    invoke-static {v1}, Lorg/bouncycastle/crypto/tls/goto;->new(I)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/goto;->do:[B

    array-length v2, v1

    const/4 v3, 0x0

    if-le v0, v2, :cond_0

    new-array v0, v0, [B

    iget v2, p0, Lorg/bouncycastle/crypto/tls/goto;->if:I

    iget v4, p0, Lorg/bouncycastle/crypto/tls/goto;->for:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/goto;->do:[B

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/tls/goto;->if:I

    iget v2, p0, Lorg/bouncycastle/crypto/tls/goto;->for:I

    invoke-static {v1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iput v3, p0, Lorg/bouncycastle/crypto/tls/goto;->if:I

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/goto;->do:[B

    iget v1, p0, Lorg/bouncycastle/crypto/tls/goto;->if:I

    iget v2, p0, Lorg/bouncycastle/crypto/tls/goto;->for:I

    add-int/2addr v1, v2

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/crypto/tls/goto;->for:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/bouncycastle/crypto/tls/goto;->for:I

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot add data to read-only buffer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public else(I)V
    .locals 3

    iget v0, p0, Lorg/bouncycastle/crypto/tls/goto;->for:I

    if-gt p1, v0, :cond_0

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/bouncycastle/crypto/tls/goto;->for:I

    iget v0, p0, Lorg/bouncycastle/crypto/tls/goto;->if:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/bouncycastle/crypto/tls/goto;->if:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes, only got "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/bouncycastle/crypto/tls/goto;->for:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public for(Ljava/io/OutputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/tls/goto;->for:I

    if-gt p2, v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/goto;->do:[B

    iget v1, p0, Lorg/bouncycastle/crypto/tls/goto;->if:I

    invoke-virtual {p1, v0, v1, p2}, Ljava/io/OutputStream;->write([BII)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot copy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bytes, only got "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lorg/bouncycastle/crypto/tls/goto;->for:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public goto([BIII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/goto;->try([BIII)V

    add-int/2addr p4, p3

    invoke-virtual {p0, p4}, Lorg/bouncycastle/crypto/tls/goto;->else(I)V

    return-void
.end method

.method public if()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/tls/goto;->for:I

    return v0
.end method

.method public this(II)[B
    .locals 2

    new-array v0, p1, [B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/bouncycastle/crypto/tls/goto;->goto([BIII)V

    return-object v0
.end method

.method public try([BIII)V
    .locals 2

    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, p3, :cond_1

    iget v0, p0, Lorg/bouncycastle/crypto/tls/goto;->for:I

    sub-int/2addr v0, p4

    if-lt v0, p3, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/goto;->do:[B

    iget v1, p0, Lorg/bouncycastle/crypto/tls/goto;->if:I

    add-int/2addr v1, p4

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not enough data to read"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Buffer size of "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is too small for a read of "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
