.class public Lorg/bouncycastle/pqc/crypto/mceliece/for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/MessageEncryptor;


# static fields
.field public static final this:Ljava/lang/String; = "1.3.6.1.4.1.8301.3.1.3.4.1"


# instance fields
.field public case:I

.field private do:Ljava/security/SecureRandom;

.field private else:Landroid/support/v4/dz0;

.field private for:I

.field private goto:Z

.field private if:I

.field private new:I

.field public try:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private do(Landroid/support/v4/re0;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/tn0;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/support/v4/re0;->if()[B

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    aget-byte v2, p1, v0

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    if-ltz v0, :cond_1

    aget-byte v2, p1, v0

    if-ne v2, v1, :cond_1

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_1
    new-instance p1, Landroid/support/v4/tn0;

    const-string v0, "Bad Padding: invalid ciphertext"

    invoke-direct {p1, v0}, Landroid/support/v4/tn0;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private if([B)Landroid/support/v4/re0;
    .locals 4

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/for;->try:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/for;->for:I

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    aput-byte v2, v0, p1

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/for;->for:I

    invoke-static {p1, v0}, Landroid/support/v4/re0;->case(I[B)Landroid/support/v4/re0;

    move-result-object p1

    return-object p1
.end method

.method private new(Landroid/support/v4/gz0;)V
    .locals 1

    invoke-virtual {p1}, Landroid/support/v4/gz0;->else()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/for;->if:I

    invoke-virtual {p1}, Landroid/support/v4/gz0;->case()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/for;->for:I

    shr-int/lit8 p1, p1, 0x3

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/for;->try:I

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/for;->if:I

    shr-int/lit8 p1, p1, 0x3

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/for;->case:I

    return-void
.end method

.method private try(Landroid/support/v4/iz0;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/for;->do:Ljava/security/SecureRandom;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/bouncycastle/crypto/for;->case()Ljava/security/SecureRandom;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/for;->do:Ljava/security/SecureRandom;

    invoke-virtual {p1}, Landroid/support/v4/iz0;->try()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/for;->if:I

    invoke-virtual {p1}, Landroid/support/v4/iz0;->new()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/for;->for:I

    invoke-virtual {p1}, Landroid/support/v4/iz0;->case()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/for;->new:I

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/for;->if:I

    shr-int/lit8 p1, p1, 0x3

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/for;->case:I

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/for;->for:I

    shr-int/lit8 p1, p1, 0x3

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/for;->try:I

    return-void
.end method


# virtual methods
.method public for(Landroid/support/v4/dz0;)I
    .locals 1

    instance-of v0, p1, Landroid/support/v4/iz0;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/iz0;

    invoke-virtual {p1}, Landroid/support/v4/iz0;->try()I

    move-result p1

    return p1

    :cond_0
    instance-of v0, p1, Landroid/support/v4/gz0;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/support/v4/gz0;

    invoke-virtual {p1}, Landroid/support/v4/gz0;->else()I

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

    iput-boolean p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/for;->goto:Z

    if-eqz p1, :cond_1

    instance-of p1, p2, Landroid/support/v4/cc1;

    if-eqz p1, :cond_0

    check-cast p2, Landroid/support/v4/cc1;

    invoke-virtual {p2}, Landroid/support/v4/cc1;->if()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/for;->do:Ljava/security/SecureRandom;

    invoke-virtual {p2}, Landroid/support/v4/cc1;->do()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Landroid/support/v4/iz0;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/for;->else:Landroid/support/v4/dz0;

    check-cast p1, Landroid/support/v4/iz0;

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/mceliece/for;->try(Landroid/support/v4/iz0;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/bouncycastle/crypto/for;->case()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/for;->do:Ljava/security/SecureRandom;

    check-cast p2, Landroid/support/v4/iz0;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/for;->else:Landroid/support/v4/dz0;

    check-cast p2, Landroid/support/v4/iz0;

    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/crypto/mceliece/for;->try(Landroid/support/v4/iz0;)V

    goto :goto_0

    :cond_1
    check-cast p2, Landroid/support/v4/gz0;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/for;->else:Landroid/support/v4/dz0;

    check-cast p2, Landroid/support/v4/gz0;

    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/crypto/mceliece/for;->new(Landroid/support/v4/gz0;)V

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

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/for;->goto:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/for;->if:I

    invoke-static {v0, p1}, Landroid/support/v4/re0;->case(I[B)Landroid/support/v4/re0;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/for;->else:Landroid/support/v4/dz0;

    check-cast v0, Landroid/support/v4/gz0;

    invoke-virtual {v0}, Landroid/support/v4/gz0;->for()Landroid/support/v4/se0;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v4/gz0;->new()Landroid/support/v4/pe1;

    move-result-object v2

    invoke-virtual {v0}, Landroid/support/v4/gz0;->catch()Landroid/support/v4/qe0;

    move-result-object v3

    invoke-virtual {v0}, Landroid/support/v4/gz0;->goto()Landroid/support/v4/fd1;

    move-result-object v4

    invoke-virtual {v0}, Landroid/support/v4/gz0;->this()Landroid/support/v4/fd1;

    move-result-object v5

    invoke-virtual {v0}, Landroid/support/v4/gz0;->try()Landroid/support/v4/qe0;

    move-result-object v6

    invoke-virtual {v0}, Landroid/support/v4/gz0;->break()[Landroid/support/v4/pe1;

    move-result-object v0

    invoke-virtual {v4, v5}, Landroid/support/v4/fd1;->try(Landroid/support/v4/fd1;)Landroid/support/v4/fd1;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/fd1;->do()Landroid/support/v4/fd1;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/support/v4/re0;->try(Landroid/support/v4/fd1;)Landroid/support/v4/he2;

    move-result-object p1

    check-cast p1, Landroid/support/v4/re0;

    invoke-virtual {v6, p1}, Landroid/support/v4/qe0;->this(Landroid/support/v4/he2;)Landroid/support/v4/he2;

    move-result-object v6

    check-cast v6, Landroid/support/v4/re0;

    invoke-static {v6, v1, v2, v0}, Landroid/support/v4/uh0;->for(Landroid/support/v4/re0;Landroid/support/v4/se0;Landroid/support/v4/pe1;[Landroid/support/v4/pe1;)Landroid/support/v4/re0;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/re0;->do(Landroid/support/v4/he2;)Landroid/support/v4/he2;

    move-result-object p1

    check-cast p1, Landroid/support/v4/re0;

    invoke-virtual {p1, v4}, Landroid/support/v4/re0;->try(Landroid/support/v4/fd1;)Landroid/support/v4/he2;

    move-result-object p1

    check-cast p1, Landroid/support/v4/re0;

    invoke-virtual {v0, v5}, Landroid/support/v4/re0;->try(Landroid/support/v4/fd1;)Landroid/support/v4/he2;

    move-result-object v0

    check-cast v0, Landroid/support/v4/re0;

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/for;->for:I

    invoke-virtual {p1, v0}, Landroid/support/v4/re0;->goto(I)Landroid/support/v4/re0;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/support/v4/qe0;->case(Landroid/support/v4/he2;)Landroid/support/v4/he2;

    move-result-object p1

    check-cast p1, Landroid/support/v4/re0;

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/mceliece/for;->do(Landroid/support/v4/re0;)[B

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cipher initialised for decryption"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public messageEncrypt([B)[B
    .locals 4

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/for;->goto:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/mceliece/for;->if([B)Landroid/support/v4/re0;

    move-result-object p1

    new-instance v0, Landroid/support/v4/re0;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/for;->if:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/for;->new:I

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/mceliece/for;->do:Ljava/security/SecureRandom;

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/re0;-><init>(IILjava/security/SecureRandom;)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/for;->else:Landroid/support/v4/dz0;

    check-cast v1, Landroid/support/v4/iz0;

    invoke-virtual {v1}, Landroid/support/v4/iz0;->for()Landroid/support/v4/qe0;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v4/qe0;->case(Landroid/support/v4/he2;)Landroid/support/v4/he2;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v4/he2;->do(Landroid/support/v4/he2;)Landroid/support/v4/he2;

    move-result-object p1

    check-cast p1, Landroid/support/v4/re0;

    invoke-virtual {p1}, Landroid/support/v4/re0;->if()[B

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cipher initialised for decryption"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
