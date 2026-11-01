.class public Lnet/lingala/zip4j/crypto/do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/lingala/zip4j/crypto/Decrypter;


# static fields
.field public static final goto:I = 0x2


# instance fields
.field private case:[B

.field private do:Landroid/support/v4/goto;

.field private else:[B

.field private for:Landroid/support/v4/else;

.field private if:[C

.field private new:Lnet/lingala/zip4j/crypto/PBKDF2/if;

.field private try:I


# direct methods
.method public constructor <init>(Landroid/support/v4/goto;[C[B[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lnet/lingala/zip4j/crypto/do;->try:I

    .line 3
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/do;->do:Landroid/support/v4/goto;

    .line 4
    iput-object p2, p0, Lnet/lingala/zip4j/crypto/do;->if:[C

    const/16 p1, 0x10

    new-array p2, p1, [B

    .line 5
    iput-object p2, p0, Lnet/lingala/zip4j/crypto/do;->case:[B

    new-array p1, p1, [B

    .line 6
    iput-object p1, p0, Lnet/lingala/zip4j/crypto/do;->else:[B

    .line 7
    invoke-direct {p0, p3, p4}, Lnet/lingala/zip4j/crypto/do;->for([B[B)V

    return-void
.end method

.method private do([B[CII)[B
    .locals 4

    .line 1
    new-instance v0, Landroid/support/v4/s91;

    const-string v1, "HmacSHA1"

    const-string v2, "ISO-8859-1"

    const/16 v3, 0x3e8

    invoke-direct {v0, v1, v2, p1, v3}, Landroid/support/v4/s91;-><init>(Ljava/lang/String;Ljava/lang/String;[BI)V

    .line 2
    new-instance p1, Lnet/lingala/zip4j/crypto/PBKDF2/for;

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/crypto/PBKDF2/for;-><init>(Landroid/support/v4/s91;)V

    add-int/2addr p3, p4

    add-int/lit8 p3, p3, 0x2

    .line 3
    invoke-virtual {p1, p2, p3}, Lnet/lingala/zip4j/crypto/PBKDF2/for;->else([CI)[B

    move-result-object p1

    return-object p1
.end method

.method private for([B[B)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/do;->do:Landroid/support/v4/goto;

    invoke-virtual {v0}, Landroid/support/v4/goto;->for()Landroid/support/v4/w0;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lnet/lingala/zip4j/crypto/do;->if:[C

    if-eqz v1, :cond_2

    array-length v2, v1

    if-lez v2, :cond_2

    .line 3
    invoke-virtual {v0}, Landroid/support/v4/w0;->getKeyLength()I

    move-result v2

    invoke-virtual {v0}, Landroid/support/v4/w0;->getMacLength()I

    move-result v3

    invoke-direct {p0, p1, v1, v2, v3}, Lnet/lingala/zip4j/crypto/do;->do([B[CII)[B

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    array-length v1, p1

    invoke-virtual {v0}, Landroid/support/v4/w0;->getKeyLength()I

    move-result v2

    invoke-virtual {v0}, Landroid/support/v4/w0;->getMacLength()I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x2

    add-int/2addr v2, v3

    if-ne v1, v2, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/support/v4/w0;->getKeyLength()I

    move-result v1

    new-array v1, v1, [B

    .line 6
    invoke-virtual {v0}, Landroid/support/v4/w0;->getMacLength()I

    move-result v2

    new-array v2, v2, [B

    new-array v4, v3, [B

    .line 7
    invoke-virtual {v0}, Landroid/support/v4/w0;->getKeyLength()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {p1, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    invoke-virtual {v0}, Landroid/support/v4/w0;->getKeyLength()I

    move-result v5

    invoke-virtual {v0}, Landroid/support/v4/w0;->getMacLength()I

    move-result v7

    invoke-static {p1, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    invoke-virtual {v0}, Landroid/support/v4/w0;->getKeyLength()I

    move-result v5

    invoke-virtual {v0}, Landroid/support/v4/w0;->getMacLength()I

    move-result v0

    add-int/2addr v5, v0

    invoke-static {p1, v5, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    invoke-static {p2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 11
    new-instance p1, Landroid/support/v4/else;

    invoke-direct {p1, v1}, Landroid/support/v4/else;-><init>([B)V

    iput-object p1, p0, Lnet/lingala/zip4j/crypto/do;->for:Landroid/support/v4/else;

    .line 12
    new-instance p1, Lnet/lingala/zip4j/crypto/PBKDF2/if;

    const-string p2, "HmacSHA1"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/crypto/PBKDF2/if;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lnet/lingala/zip4j/crypto/do;->new:Lnet/lingala/zip4j/crypto/PBKDF2/if;

    .line 13
    invoke-virtual {p1, v2}, Lnet/lingala/zip4j/crypto/PBKDF2/if;->init([B)V

    return-void

    .line 14
    :cond_0
    new-instance p1, Landroid/support/v4/rj2;

    sget-object p2, Landroid/support/v4/rj2$do;->WRONG_PASSWORD:Landroid/support/v4/rj2$do;

    const-string v0, "Wrong Password"

    invoke-direct {p1, v0, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;Landroid/support/v4/rj2$do;)V

    throw p1

    .line 15
    :cond_1
    new-instance p1, Landroid/support/v4/rj2;

    const-string p2, "invalid derived key"

    invoke-direct {p1, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_2
    new-instance p1, Landroid/support/v4/rj2;

    const-string p2, "empty or null password provided for AES Decryptor"

    invoke-direct {p1, p2}, Landroid/support/v4/rj2;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public decryptData([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/rj2;
        }
    .end annotation

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_2

    add-int/lit8 v2, v0, 0x10

    if-gt v2, v1, :cond_0

    const/16 v1, 0x10

    goto :goto_1

    :cond_0
    sub-int/2addr v1, v0

    .line 1
    :goto_1
    iget-object v3, p0, Lnet/lingala/zip4j/crypto/do;->new:Lnet/lingala/zip4j/crypto/PBKDF2/if;

    invoke-virtual {v3, p1, v0, v1}, Lnet/lingala/zip4j/crypto/PBKDF2/if;->for([BII)V

    .line 2
    iget-object v3, p0, Lnet/lingala/zip4j/crypto/do;->case:[B

    iget v4, p0, Lnet/lingala/zip4j/crypto/do;->try:I

    invoke-static {v3, v4}, Landroid/support/v4/v0;->do([BI)V

    .line 3
    iget-object v3, p0, Lnet/lingala/zip4j/crypto/do;->for:Landroid/support/v4/else;

    iget-object v4, p0, Lnet/lingala/zip4j/crypto/do;->case:[B

    iget-object v5, p0, Lnet/lingala/zip4j/crypto/do;->else:[B

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/else;->try([B[B)I

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_1

    add-int v4, v0, v3

    .line 4
    aget-byte v5, p1, v4

    iget-object v6, p0, Lnet/lingala/zip4j/crypto/do;->else:[B

    aget-byte v6, v6, v3

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 5
    :cond_1
    iget v0, p0, Lnet/lingala/zip4j/crypto/do;->try:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/lingala/zip4j/crypto/do;->try:I

    move v0, v2

    goto :goto_0

    :cond_2
    return p3
.end method

.method public if()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lingala/zip4j/crypto/do;->new:Lnet/lingala/zip4j/crypto/PBKDF2/if;

    invoke-virtual {v0}, Lnet/lingala/zip4j/crypto/PBKDF2/if;->do()[B

    move-result-object v0

    return-object v0
.end method
