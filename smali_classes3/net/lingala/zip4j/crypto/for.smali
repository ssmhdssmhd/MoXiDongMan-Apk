.class public Lnet/lingala/zip4j/crypto/for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/lingala/zip4j/crypto/Decrypter;


# instance fields
.field private do:[C

.field private for:[B

.field private if:[B

.field private new:Landroid/support/v4/qj2;


# direct methods
.method public constructor <init>([C[B[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lnet/lingala/zip4j/crypto/for;->for:[B

    .line 3
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/for;->do:[C

    .line 4
    iput-object p2, p0, Lnet/lingala/zip4j/crypto/for;->if:[B

    .line 5
    new-instance p1, Landroid/support/v4/qj2;

    invoke-direct {p1}, Landroid/support/v4/qj2;-><init>()V

    iput-object p1, p0, Lnet/lingala/zip4j/crypto/for;->new:Landroid/support/v4/qj2;

    .line 6
    invoke-direct {p0, p3}, Lnet/lingala/zip4j/crypto/for;->do([B)V

    return-void
.end method

.method private do([B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/for;->for:[B

    iget-object v1, p0, Lnet/lingala/zip4j/crypto/for;->if:[B

    const/4 v2, 0x3

    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 2
    aget-byte v3, v1, v2

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v4, 0x2

    aput-byte v3, v0, v4

    .line 3
    aget-byte v3, v1, v2

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v5, 0x1

    aput-byte v3, v0, v5

    .line 4
    aget-byte v1, v1, v2

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 5
    aget-byte v1, v0, v4

    if-gtz v1, :cond_3

    aget-byte v1, v0, v5

    if-gtz v1, :cond_3

    aget-byte v0, v0, v2

    if-gtz v0, :cond_3

    .line 6
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/for;->do:[C

    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    .line 7
    iget-object v1, p0, Lnet/lingala/zip4j/crypto/for;->new:Landroid/support/v4/qj2;

    invoke-virtual {v1, v0}, Landroid/support/v4/qj2;->for([C)V

    .line 8
    aget-byte v0, p1, v2

    :cond_0
    :goto_0
    const/16 v1, 0xc

    if-ge v2, v1, :cond_1

    .line 9
    iget-object v3, p0, Lnet/lingala/zip4j/crypto/for;->new:Landroid/support/v4/qj2;

    invoke-virtual {v3}, Landroid/support/v4/qj2;->if()B

    move-result v4

    xor-int/2addr v4, v0

    int-to-byte v4, v4

    invoke-virtual {v3, v4}, Landroid/support/v4/qj2;->new(B)V

    add-int/lit8 v2, v2, 0x1

    if-eq v2, v1, :cond_0

    .line 10
    aget-byte v0, p1, v2

    goto :goto_0

    :cond_1
    return-void

    .line 11
    :cond_2
    new-instance p1, Landroid/support/v4/rj2;

    sget-object v0, Landroid/support/v4/rj2$do;->WRONG_PASSWORD:Landroid/support/v4/rj2$do;

    const-string v1, "Wrong password!"

    invoke-direct {p1, v1, v0}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;Landroid/support/v4/rj2$do;)V

    throw p1

    .line 12
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid CRC in File Header"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public decryptData([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 1
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    .line 2
    iget-object v2, p0, Lnet/lingala/zip4j/crypto/for;->new:Landroid/support/v4/qj2;

    invoke-virtual {v2}, Landroid/support/v4/qj2;->if()B

    move-result v2

    xor-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 3
    iget-object v2, p0, Lnet/lingala/zip4j/crypto/for;->new:Landroid/support/v4/qj2;

    int-to-byte v1, v1

    invoke-virtual {v2, v1}, Landroid/support/v4/qj2;->new(B)V

    .line 4
    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p3

    .line 5
    :cond_1
    new-instance p1, Landroid/support/v4/rj2;

    const-string p2, "one of the input parameters were null in standard decrypt data"

    invoke-direct {p1, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
