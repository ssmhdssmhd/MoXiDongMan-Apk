.class public Lorg/bouncycastle/pqc/crypto/mceliece/try;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/MessageEncryptor;


# static fields
.field public static final break:[B

.field public static final goto:Ljava/lang/String; = "1.3.6.1.4.1.8301.3.1.3.4.2.3"

.field private static final this:Ljava/lang/String; = "SHA1PRNG"


# instance fields
.field private case:I

.field private do:Lorg/bouncycastle/crypto/Digest;

.field private else:Z

.field public for:Landroid/support/v4/ty0;

.field private if:Ljava/security/SecureRandom;

.field private new:I

.field private try:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "a predetermined public constant"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/mceliece/try;->break:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private for(Landroid/support/v4/zy0;)V
    .locals 1

    invoke-virtual {p1}, Landroid/support/v4/ty0;->if()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/mceliece/else;->do(Ljava/lang/String;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/try;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-virtual {p1}, Landroid/support/v4/zy0;->try()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/try;->new:I

    invoke-virtual {p1}, Landroid/support/v4/zy0;->new()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/try;->try:I

    invoke-virtual {p1}, Landroid/support/v4/zy0;->case()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/try;->case:I

    return-void
.end method

.method private if(Landroid/support/v4/xy0;)V
    .locals 1

    invoke-virtual {p1}, Landroid/support/v4/ty0;->if()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/mceliece/else;->do(Ljava/lang/String;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/try;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-virtual {p1}, Landroid/support/v4/xy0;->else()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/try;->new:I

    invoke-virtual {p1}, Landroid/support/v4/xy0;->case()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/try;->try:I

    invoke-virtual {p1}, Landroid/support/v4/xy0;->break()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/try;->case:I

    return-void
.end method


# virtual methods
.method public do(Landroid/support/v4/ty0;)I
    .locals 1

    instance-of v0, p1, Landroid/support/v4/zy0;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/zy0;

    invoke-virtual {p1}, Landroid/support/v4/zy0;->try()I

    move-result p1

    return p1

    :cond_0
    instance-of v0, p1, Landroid/support/v4/xy0;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/support/v4/xy0;

    invoke-virtual {p1}, Landroid/support/v4/xy0;->else()I

    move-result p1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unsupported type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/try;->else:Z

    if-eqz p1, :cond_1

    instance-of p1, p2, Landroid/support/v4/cc1;

    if-eqz p1, :cond_0

    check-cast p2, Landroid/support/v4/cc1;

    invoke-virtual {p2}, Landroid/support/v4/cc1;->if()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/try;->if:Ljava/security/SecureRandom;

    invoke-virtual {p2}, Landroid/support/v4/cc1;->do()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Landroid/support/v4/zy0;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/try;->for:Landroid/support/v4/ty0;

    check-cast p1, Landroid/support/v4/zy0;

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/mceliece/try;->for(Landroid/support/v4/zy0;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/bouncycastle/crypto/for;->case()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/try;->if:Ljava/security/SecureRandom;

    check-cast p2, Landroid/support/v4/zy0;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/try;->for:Landroid/support/v4/ty0;

    check-cast p2, Landroid/support/v4/zy0;

    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/crypto/mceliece/try;->for(Landroid/support/v4/zy0;)V

    goto :goto_0

    :cond_1
    check-cast p2, Landroid/support/v4/xy0;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/try;->for:Landroid/support/v4/ty0;

    check-cast p2, Landroid/support/v4/xy0;

    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/crypto/mceliece/try;->if(Landroid/support/v4/xy0;)V

    :goto_0
    return-void
.end method

.method public messageDecrypt([B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/tn0;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/try;->else:Z

    if-nez v0, :cond_6

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/try;->new:I

    shr-int/lit8 v0, v0, 0x3

    array-length v1, p1

    if-lt v1, v0, :cond_5

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/try;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/try;->try:I

    shr-int/lit8 v2, v2, 0x3

    array-length v3, p1

    sub-int/2addr v3, v0

    const/4 v0, 0x1

    const/4 v4, 0x0

    if-lez v3, :cond_0

    invoke-static {p1, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/if;->catch([BI)[[B

    move-result-object p1

    aget-object v3, p1, v4

    aget-object p1, p1, v0

    goto :goto_0

    :cond_0
    new-array v3, v4, [B

    :goto_0
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/mceliece/try;->new:I

    invoke-static {v5, p1}, Landroid/support/v4/re0;->case(I[B)Landroid/support/v4/re0;

    move-result-object p1

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/mceliece/try;->for:Landroid/support/v4/ty0;

    check-cast v5, Landroid/support/v4/xy0;

    invoke-static {v5, p1}, Lorg/bouncycastle/pqc/crypto/mceliece/if;->do(Landroid/support/v4/xy0;Landroid/support/v4/re0;)[Landroid/support/v4/re0;

    move-result-object p1

    aget-object v5, p1, v4

    invoke-virtual {v5}, Landroid/support/v4/re0;->if()[B

    move-result-object v5

    aget-object p1, p1, v0

    array-length v6, v5

    if-le v6, v2, :cond_1

    invoke-static {v5, v4, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/if;->const([BII)[B

    move-result-object v5

    :cond_1
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/try;->new:I

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/mceliece/try;->case:I

    invoke-static {v2, v6, p1}, Lorg/bouncycastle/pqc/crypto/mceliece/do;->do(IILandroid/support/v4/re0;)[B

    move-result-object p1

    invoke-static {v3, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/if;->if([B[B)[B

    move-result-object p1

    invoke-static {p1, v5}, Lorg/bouncycastle/pqc/math/linearalgebra/if;->if([B[B)[B

    move-result-object p1

    array-length v2, p1

    sub-int/2addr v2, v1

    invoke-static {p1, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/if;->catch([BI)[[B

    move-result-object p1

    aget-object v3, p1, v4

    aget-object p1, p1, v0

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/mceliece/try;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    new-array v5, v5, [B

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/mceliece/try;->do:Lorg/bouncycastle/crypto/Digest;

    array-length v7, p1

    invoke-interface {v6, p1, v4, v7}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/mceliece/try;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v6, v5, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    sub-int/2addr v1, v0

    :goto_1
    if-ltz v1, :cond_2

    aget-byte v6, v5, v1

    aget-byte v7, v3, v1

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    new-instance v1, Landroid/support/v4/y00;

    new-instance v3, Landroid/support/v4/wp1;

    invoke-direct {v3}, Landroid/support/v4/wp1;-><init>()V

    invoke-direct {v1, v3}, Landroid/support/v4/y00;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    invoke-virtual {v1, v5}, Landroid/support/v4/y00;->addSeedMaterial([B)V

    new-array v3, v2, [B

    invoke-virtual {v1, v3}, Landroid/support/v4/y00;->nextBytes([B)V

    add-int/lit8 v1, v2, -0x1

    :goto_2
    if-ltz v1, :cond_3

    aget-byte v5, v3, v1

    aget-byte v6, p1, v1

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_3
    sget-object p1, Lorg/bouncycastle/pqc/crypto/mceliece/try;->break:[B

    array-length v1, p1

    sub-int/2addr v2, v1

    invoke-static {v3, v2}, Lorg/bouncycastle/pqc/math/linearalgebra/if;->catch([BI)[[B

    move-result-object v1

    aget-object v2, v1, v4

    aget-object v0, v1, v0

    invoke-static {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/if;->else([B[B)Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v2

    :cond_4
    new-instance p1, Landroid/support/v4/tn0;

    const-string v0, "Bad Padding: invalid ciphertext"

    invoke-direct {p1, v0}, Landroid/support/v4/tn0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Landroid/support/v4/tn0;

    const-string v0, "Bad Padding: Ciphertext too short."

    invoke-direct {p1, v0}, Landroid/support/v4/tn0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cipher initialised for decryption"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public messageEncrypt([B)[B
    .locals 11

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/try;->else:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/try;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/try;->try:I

    shr-int/lit8 v1, v1, 0x3

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/try;->new:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/mceliece/try;->case:I

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/catch;->do(II)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    shr-int/lit8 v2, v2, 0x3

    add-int v3, v1, v2

    sub-int/2addr v3, v0

    sget-object v4, Lorg/bouncycastle/pqc/crypto/mceliece/try;->break:[B

    array-length v5, v4

    sub-int/2addr v3, v5

    array-length v5, p1

    if-le v5, v3, :cond_0

    array-length v3, p1

    :cond_0
    array-length v5, v4

    add-int/2addr v5, v3

    add-int v6, v5, v0

    sub-int/2addr v6, v1

    sub-int/2addr v6, v2

    new-array v7, v5, [B

    array-length v8, p1

    const/4 v9, 0x0

    invoke-static {p1, v9, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, v4

    invoke-static {v4, v9, v7, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array p1, v0, [B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/mceliece/try;->if:Ljava/security/SecureRandom;

    invoke-virtual {v3, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v3, Landroid/support/v4/y00;

    new-instance v4, Landroid/support/v4/wp1;

    invoke-direct {v4}, Landroid/support/v4/wp1;-><init>()V

    invoke-direct {v3, v4}, Landroid/support/v4/y00;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    invoke-virtual {v3, p1}, Landroid/support/v4/y00;->addSeedMaterial([B)V

    new-array v4, v5, [B

    invoke-virtual {v3, v4}, Landroid/support/v4/y00;->nextBytes([B)V

    add-int/lit8 v3, v5, -0x1

    :goto_0
    if-ltz v3, :cond_1

    aget-byte v8, v4, v3

    aget-byte v10, v7, v3

    xor-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, v4, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/mceliece/try;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v3, v3, [B

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/mceliece/try;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v7, v4, v9, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/mceliece/try;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5, v3, v9}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    aget-byte v5, v3, v0

    aget-byte v7, p1, v0

    xor-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    invoke-static {v3, v4}, Lorg/bouncycastle/pqc/math/linearalgebra/if;->if([B[B)[B

    move-result-object p1

    new-array v0, v9, [B

    if-lez v6, :cond_3

    new-array v0, v6, [B

    invoke-static {p1, v9, v0, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    new-array v3, v2, [B

    invoke-static {p1, v6, v3, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v4, v1, [B

    add-int/2addr v2, v6

    invoke-static {p1, v2, v4, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/try;->try:I

    invoke-static {p1, v4}, Landroid/support/v4/re0;->case(I[B)Landroid/support/v4/re0;

    move-result-object p1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/try;->new:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/try;->case:I

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/mceliece/do;->if(II[B)Landroid/support/v4/re0;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/try;->for:Landroid/support/v4/ty0;

    check-cast v2, Landroid/support/v4/zy0;

    invoke-static {v2, p1, v1}, Lorg/bouncycastle/pqc/crypto/mceliece/if;->if(Landroid/support/v4/zy0;Landroid/support/v4/re0;Landroid/support/v4/re0;)Landroid/support/v4/re0;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/re0;->if()[B

    move-result-object p1

    if-lez v6, :cond_4

    invoke-static {v0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/if;->if([B[B)[B

    move-result-object p1

    :cond_4
    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cipher initialised for decryption"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
