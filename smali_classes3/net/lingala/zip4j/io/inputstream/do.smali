.class Lnet/lingala/zip4j/io/inputstream/do;
.super Lnet/lingala/zip4j/io/inputstream/if;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/lingala/zip4j/io/inputstream/if<",
        "Lnet/lingala/zip4j/crypto/do;",
        ">;"
    }
.end annotation


# instance fields
.field private break:I

.field private case:[B

.field private catch:I

.field private class:I

.field private const:I

.field private else:[B

.field private final:I

.field private goto:I

.field private this:I


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/io/inputstream/goto;Landroid/support/v4/mu0;[C)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/io/inputstream/if;-><init>(Lnet/lingala/zip4j/io/inputstream/goto;Landroid/support/v4/mu0;[C)V

    const/4 p1, 0x1

    new-array p1, p1, [B

    .line 2
    iput-object p1, p0, Lnet/lingala/zip4j/io/inputstream/do;->case:[B

    const/16 p1, 0x10

    new-array p1, p1, [B

    .line 3
    iput-object p1, p0, Lnet/lingala/zip4j/io/inputstream/do;->else:[B

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lnet/lingala/zip4j/io/inputstream/do;->goto:I

    .line 5
    iput p1, p0, Lnet/lingala/zip4j/io/inputstream/do;->this:I

    .line 6
    iput p1, p0, Lnet/lingala/zip4j/io/inputstream/do;->break:I

    .line 7
    iput p1, p0, Lnet/lingala/zip4j/io/inputstream/do;->catch:I

    .line 8
    iput p1, p0, Lnet/lingala/zip4j/io/inputstream/do;->class:I

    .line 9
    iput p1, p0, Lnet/lingala/zip4j/io/inputstream/do;->const:I

    .line 10
    iput p1, p0, Lnet/lingala/zip4j/io/inputstream/do;->final:I

    return-void
.end method

.method private break([BI)V
    .locals 3

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/io/inputstream/do;->break:I

    iget v1, p0, Lnet/lingala/zip4j/io/inputstream/do;->this:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lnet/lingala/zip4j/io/inputstream/do;->const:I

    .line 2
    iget-object v1, p0, Lnet/lingala/zip4j/io/inputstream/do;->else:[B

    iget v2, p0, Lnet/lingala/zip4j/io/inputstream/do;->goto:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3
    iget p1, p0, Lnet/lingala/zip4j/io/inputstream/do;->const:I

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/io/inputstream/do;->final(I)V

    .line 4
    iget p1, p0, Lnet/lingala/zip4j/io/inputstream/do;->const:I

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/io/inputstream/do;->catch(I)V

    .line 5
    iget p1, p0, Lnet/lingala/zip4j/io/inputstream/do;->class:I

    iget p2, p0, Lnet/lingala/zip4j/io/inputstream/do;->const:I

    add-int/2addr p1, p2

    iput p1, p0, Lnet/lingala/zip4j/io/inputstream/do;->class:I

    .line 6
    iget p1, p0, Lnet/lingala/zip4j/io/inputstream/do;->break:I

    sub-int/2addr p1, p2

    iput p1, p0, Lnet/lingala/zip4j/io/inputstream/do;->break:I

    .line 7
    iget p1, p0, Lnet/lingala/zip4j/io/inputstream/do;->catch:I

    add-int/2addr p1, p2

    iput p1, p0, Lnet/lingala/zip4j/io/inputstream/do;->catch:I

    return-void
.end method

.method private catch(I)V
    .locals 1

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/io/inputstream/do;->this:I

    sub-int/2addr v0, p1

    iput v0, p0, Lnet/lingala/zip4j/io/inputstream/do;->this:I

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lnet/lingala/zip4j/io/inputstream/do;->this:I

    :cond_0
    return-void
.end method

.method private class()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 1
    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/inputstream/if;->this([B)I

    return-object v0
.end method

.method private const(Landroid/support/v4/mu0;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/support/v4/transient;->for()Landroid/support/v4/goto;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/support/v4/transient;->for()Landroid/support/v4/goto;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/support/v4/goto;->for()Landroid/support/v4/w0;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/w0;->getSaltLength()I

    move-result p1

    new-array p1, p1, [B

    .line 4
    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/io/inputstream/if;->this([B)I

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "invalid aes extra data record"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final(I)V
    .locals 1

    .line 1
    iget v0, p0, Lnet/lingala/zip4j/io/inputstream/do;->goto:I

    add-int/2addr v0, p1

    iput v0, p0, Lnet/lingala/zip4j/io/inputstream/do;->goto:I

    const/16 p1, 0xf

    if-lt v0, p1, :cond_0

    .line 2
    iput p1, p0, Lnet/lingala/zip4j/io/inputstream/do;->goto:I

    :cond_0
    return-void
.end method

.method private while([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/lingala/zip4j/io/inputstream/if;->case()Landroid/support/v4/mu0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/transient;->import()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/support/v4/hq;->DEFLATE:Landroid/support/v4/hq;

    .line 2
    invoke-virtual {p0}, Lnet/lingala/zip4j/io/inputstream/if;->case()Landroid/support/v4/mu0;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/mj2;->new(Landroid/support/v4/mu0;)Landroid/support/v4/hq;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lnet/lingala/zip4j/io/inputstream/if;->new()Lnet/lingala/zip4j/crypto/Decrypter;

    move-result-object v0

    check-cast v0, Lnet/lingala/zip4j/crypto/do;

    invoke-virtual {v0}, Lnet/lingala/zip4j/crypto/do;->if()[B

    move-result-object v0

    const/16 v1, 0xa

    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 4
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    invoke-static {p1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 6
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Reached end of data for this entry, but aes verification failed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bridge synthetic goto(Landroid/support/v4/mu0;[C)Lnet/lingala/zip4j/crypto/Decrypter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/lingala/zip4j/io/inputstream/do;->super(Landroid/support/v4/mu0;[C)Lnet/lingala/zip4j/crypto/do;

    move-result-object p1

    return-object p1
.end method

.method public if(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/io/inputstream/do;->throw(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/io/inputstream/do;->while([B)V

    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/do;->case:[B

    invoke-virtual {p0, v0}, Lnet/lingala/zip4j/io/inputstream/do;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/inputstream/do;->case:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnet/lingala/zip4j/io/inputstream/do;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    iput p3, p0, Lnet/lingala/zip4j/io/inputstream/do;->break:I

    .line 5
    iput p2, p0, Lnet/lingala/zip4j/io/inputstream/do;->catch:I

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lnet/lingala/zip4j/io/inputstream/do;->class:I

    .line 7
    iget v1, p0, Lnet/lingala/zip4j/io/inputstream/do;->this:I

    if-eqz v1, :cond_0

    .line 8
    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/io/inputstream/do;->break([BI)V

    .line 9
    iget p2, p0, Lnet/lingala/zip4j/io/inputstream/do;->class:I

    if-ne p2, p3, :cond_0

    return p2

    .line 10
    :cond_0
    iget p2, p0, Lnet/lingala/zip4j/io/inputstream/do;->break:I

    const/16 v1, 0x10

    const/4 v2, -0x1

    if-ge p2, v1, :cond_3

    .line 11
    iget-object p2, p0, Lnet/lingala/zip4j/io/inputstream/do;->else:[B

    array-length v1, p2

    invoke-super {p0, p2, v0, v1}, Lnet/lingala/zip4j/io/inputstream/if;->read([BII)I

    move-result p2

    iput p2, p0, Lnet/lingala/zip4j/io/inputstream/do;->final:I

    .line 12
    iput v0, p0, Lnet/lingala/zip4j/io/inputstream/do;->goto:I

    if-ne p2, v2, :cond_2

    .line 13
    iput v0, p0, Lnet/lingala/zip4j/io/inputstream/do;->this:I

    .line 14
    iget p1, p0, Lnet/lingala/zip4j/io/inputstream/do;->class:I

    if-lez p1, :cond_1

    return p1

    :cond_1
    return v2

    .line 15
    :cond_2
    iput p2, p0, Lnet/lingala/zip4j/io/inputstream/do;->this:I

    .line 16
    iget p2, p0, Lnet/lingala/zip4j/io/inputstream/do;->catch:I

    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/io/inputstream/do;->break([BI)V

    .line 17
    iget p2, p0, Lnet/lingala/zip4j/io/inputstream/do;->class:I

    if-ne p2, p3, :cond_3

    return p2

    .line 18
    :cond_3
    iget p2, p0, Lnet/lingala/zip4j/io/inputstream/do;->catch:I

    iget p3, p0, Lnet/lingala/zip4j/io/inputstream/do;->break:I

    rem-int/lit8 v0, p3, 0x10

    sub-int/2addr p3, v0

    invoke-super {p0, p1, p2, p3}, Lnet/lingala/zip4j/io/inputstream/if;->read([BII)I

    move-result p1

    if-ne p1, v2, :cond_5

    .line 19
    iget p1, p0, Lnet/lingala/zip4j/io/inputstream/do;->class:I

    if-lez p1, :cond_4

    return p1

    :cond_4
    return v2

    .line 20
    :cond_5
    iget p2, p0, Lnet/lingala/zip4j/io/inputstream/do;->class:I

    add-int/2addr p1, p2

    return p1
.end method

.method public super(Landroid/support/v4/mu0;[C)Lnet/lingala/zip4j/crypto/do;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lnet/lingala/zip4j/crypto/do;

    invoke-virtual {p1}, Landroid/support/v4/transient;->for()Landroid/support/v4/goto;

    move-result-object v1

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/io/inputstream/do;->const(Landroid/support/v4/mu0;)[B

    move-result-object p1

    invoke-direct {p0}, Lnet/lingala/zip4j/io/inputstream/do;->class()[B

    move-result-object v2

    invoke-direct {v0, v1, p2, p1, v2}, Lnet/lingala/zip4j/crypto/do;-><init>(Landroid/support/v4/goto;[C[B[B)V

    return-object v0
.end method

.method public throw(Ljava/io/InputStream;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    new-array v1, v0, [B

    .line 1
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-ne p1, v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance p1, Landroid/support/v4/rj2;

    const-string v0, "Invalid AES Mac bytes. Could not read sufficient data"

    invoke-direct {p1, v0}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1
.end method
