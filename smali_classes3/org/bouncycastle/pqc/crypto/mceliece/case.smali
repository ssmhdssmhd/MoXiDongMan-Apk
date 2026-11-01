.class public Lorg/bouncycastle/pqc/crypto/mceliece/case;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/MessageEncryptor;


# static fields
.field public static final goto:Ljava/lang/String; = "1.3.6.1.4.1.8301.3.1.3.4.2.2"


# instance fields
.field public case:Landroid/support/v4/ty0;

.field private do:Lorg/bouncycastle/crypto/Digest;

.field private else:Z

.field private for:I

.field private if:Ljava/security/SecureRandom;

.field private new:I

.field private try:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private new(Landroid/support/v4/xy0;)V
    .locals 1

    invoke-virtual {p1}, Landroid/support/v4/ty0;->if()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/mceliece/else;->do(Ljava/lang/String;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/case;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-virtual {p1}, Landroid/support/v4/xy0;->else()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/case;->for:I

    invoke-virtual {p1}, Landroid/support/v4/xy0;->case()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/case;->new:I

    invoke-virtual {p1}, Landroid/support/v4/xy0;->break()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/case;->try:I

    return-void
.end method

.method private try(Landroid/support/v4/zy0;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/case;->if:Ljava/security/SecureRandom;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/bouncycastle/crypto/for;->case()Ljava/security/SecureRandom;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/case;->if:Ljava/security/SecureRandom;

    invoke-virtual {p1}, Landroid/support/v4/ty0;->if()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/mceliece/else;->do(Ljava/lang/String;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/case;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-virtual {p1}, Landroid/support/v4/zy0;->try()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/case;->for:I

    invoke-virtual {p1}, Landroid/support/v4/zy0;->new()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/case;->new:I

    invoke-virtual {p1}, Landroid/support/v4/zy0;->case()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/case;->try:I

    return-void
.end method


# virtual methods
.method public do(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public for(Landroid/support/v4/ty0;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

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

.method public if(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/case;->else:Z

    if-eqz p1, :cond_1

    instance-of p1, p2, Landroid/support/v4/cc1;

    if-eqz p1, :cond_0

    check-cast p2, Landroid/support/v4/cc1;

    invoke-virtual {p2}, Landroid/support/v4/cc1;->if()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/case;->if:Ljava/security/SecureRandom;

    invoke-virtual {p2}, Landroid/support/v4/cc1;->do()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Landroid/support/v4/zy0;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/case;->case:Landroid/support/v4/ty0;

    check-cast p1, Landroid/support/v4/zy0;

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/mceliece/case;->try(Landroid/support/v4/zy0;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/bouncycastle/crypto/for;->case()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/case;->if:Ljava/security/SecureRandom;

    check-cast p2, Landroid/support/v4/zy0;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/case;->case:Landroid/support/v4/ty0;

    check-cast p2, Landroid/support/v4/zy0;

    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/crypto/mceliece/case;->try(Landroid/support/v4/zy0;)V

    goto :goto_0

    :cond_1
    check-cast p2, Landroid/support/v4/xy0;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/case;->case:Landroid/support/v4/ty0;

    check-cast p2, Landroid/support/v4/xy0;

    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/crypto/mceliece/case;->new(Landroid/support/v4/xy0;)V

    :goto_0
    return-void
.end method

.method public messageDecrypt([B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/tn0;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/case;->else:Z

    if-nez v0, :cond_2

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/case;->for:I

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-static {p1, v0}, Lorg/bouncycastle/pqc/math/linearalgebra/if;->catch([BI)[[B

    move-result-object p1

    const/4 v0, 0x0

    aget-object v2, p1, v0

    const/4 v3, 0x1

    aget-object p1, p1, v3

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/mceliece/case;->for:I

    invoke-static {v4, v2}, Landroid/support/v4/re0;->case(I[B)Landroid/support/v4/re0;

    move-result-object v2

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/mceliece/case;->case:Landroid/support/v4/ty0;

    check-cast v4, Landroid/support/v4/xy0;

    invoke-static {v4, v2}, Lorg/bouncycastle/pqc/crypto/mceliece/if;->do(Landroid/support/v4/xy0;Landroid/support/v4/re0;)[Landroid/support/v4/re0;

    move-result-object v2

    aget-object v4, v2, v0

    invoke-virtual {v4}, Landroid/support/v4/re0;->if()[B

    move-result-object v4

    aget-object v2, v2, v3

    new-instance v3, Landroid/support/v4/y00;

    new-instance v5, Landroid/support/v4/wp1;

    invoke-direct {v5}, Landroid/support/v4/wp1;-><init>()V

    invoke-direct {v3, v5}, Landroid/support/v4/y00;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/y00;->addSeedMaterial([B)V

    new-array v4, v1, [B

    invoke-virtual {v3, v4}, Landroid/support/v4/y00;->nextBytes([B)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v5, v4, v3

    aget-byte v6, p1, v3

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/case;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1, v4, v0, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/case;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    new-array p1, p1, [B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/mceliece/case;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3, p1, v0}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/mceliece/case;->for:I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/mceliece/case;->try:I

    invoke-static {v3, v5, p1}, Lorg/bouncycastle/pqc/crypto/mceliece/do;->if(II[B)Landroid/support/v4/re0;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/support/v4/re0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/case;->new:I

    shr-int/lit8 p1, p1, 0x3

    sub-int/2addr v1, p1

    invoke-static {v4, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/if;->catch([BI)[[B

    move-result-object p1

    aget-object p1, p1, v0

    return-object p1

    :cond_1
    new-instance p1, Landroid/support/v4/tn0;

    const-string v0, "Bad Padding: Invalid ciphertext."

    invoke-direct {p1, v0}, Landroid/support/v4/tn0;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cipher initialised for decryption"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public messageEncrypt([B)[B
    .locals 8

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/case;->else:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/case;->new:I

    shr-int/lit8 v0, v0, 0x3

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/case;->if:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v2, Landroid/support/v4/re0;

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/mceliece/case;->new:I

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/mceliece/case;->if:Ljava/security/SecureRandom;

    invoke-direct {v2, v3, v4}, Landroid/support/v4/re0;-><init>(ILjava/security/SecureRandom;)V

    invoke-virtual {v2}, Landroid/support/v4/re0;->if()[B

    move-result-object v3

    invoke-static {p1, v1}, Lorg/bouncycastle/pqc/math/linearalgebra/if;->if([B[B)[B

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/mceliece/case;->do:Lorg/bouncycastle/crypto/Digest;

    array-length v6, v4

    const/4 v7, 0x0

    invoke-interface {v5, v4, v7, v6}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/mceliece/case;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    new-array v4, v4, [B

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/mceliece/case;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5, v4, v7}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/mceliece/case;->for:I

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/mceliece/case;->try:I

    invoke-static {v5, v6, v4}, Lorg/bouncycastle/pqc/crypto/mceliece/do;->if(II[B)Landroid/support/v4/re0;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/mceliece/case;->case:Landroid/support/v4/ty0;

    check-cast v5, Landroid/support/v4/zy0;

    invoke-static {v5, v2, v4}, Lorg/bouncycastle/pqc/crypto/mceliece/if;->if(Landroid/support/v4/zy0;Landroid/support/v4/re0;Landroid/support/v4/re0;)Landroid/support/v4/re0;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/re0;->if()[B

    move-result-object v2

    new-instance v4, Landroid/support/v4/y00;

    new-instance v5, Landroid/support/v4/wp1;

    invoke-direct {v5}, Landroid/support/v4/wp1;-><init>()V

    invoke-direct {v4, v5}, Landroid/support/v4/y00;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    invoke-virtual {v4, v3}, Landroid/support/v4/y00;->addSeedMaterial([B)V

    array-length v3, p1

    add-int/2addr v3, v0

    new-array v3, v3, [B

    invoke-virtual {v4, v3}, Landroid/support/v4/y00;->nextBytes([B)V

    const/4 v4, 0x0

    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_0

    aget-byte v5, v3, v4

    aget-byte v6, p1, v4

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v7, v0, :cond_1

    array-length v4, p1

    add-int/2addr v4, v7

    aget-byte v5, v3, v4

    aget-byte v6, v1, v7

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/if;->if([B[B)[B

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cipher initialised for decryption"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
