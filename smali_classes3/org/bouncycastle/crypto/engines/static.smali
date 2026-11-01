.class public Lorg/bouncycastle/crypto/engines/static;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricBlockCipher;


# instance fields
.field private do:Lorg/bouncycastle/crypto/engines/switch;

.field private for:Ljava/math/BigInteger;

.field private if:Landroid/support/v4/ck1;

.field private new:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/engines/switch;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/switch;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/static;->do:Lorg/bouncycastle/crypto/engines/switch;

    return-void
.end method

.method private do(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/static;->for:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/static;->if:Landroid/support/v4/ck1;

    invoke-virtual {v1}, Landroid/support/v4/ck1;->if()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/static;->if:Landroid/support/v4/ck1;

    invoke-virtual {v2}, Landroid/support/v4/ck1;->for()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/static;->if:Landroid/support/v4/ck1;

    invoke-virtual {v0}, Landroid/support/v4/ck1;->for()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method private if(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/static;->if:Landroid/support/v4/ck1;

    invoke-virtual {v0}, Landroid/support/v4/ck1;->for()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/static;->for:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getInputBlockSize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/static;->do:Lorg/bouncycastle/crypto/engines/switch;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/switch;->for()I

    move-result v0

    return v0
.end method

.method public getOutputBlockSize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/static;->do:Lorg/bouncycastle/crypto/engines/switch;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/switch;->new()I

    move-result v0

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2

    instance-of v0, p2, Landroid/support/v4/cc1;

    if-eqz v0, :cond_0

    check-cast p2, Landroid/support/v4/cc1;

    invoke-virtual {p2}, Landroid/support/v4/cc1;->do()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    :cond_0
    check-cast p2, Landroid/support/v4/xj1;

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/static;->do:Lorg/bouncycastle/crypto/engines/switch;

    invoke-virtual {p2}, Landroid/support/v4/xj1;->if()Landroid/support/v4/ck1;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/bouncycastle/crypto/engines/switch;->try(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/static;->new:Z

    invoke-virtual {p2}, Landroid/support/v4/xj1;->if()Landroid/support/v4/ck1;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/static;->if:Landroid/support/v4/ck1;

    invoke-virtual {p2}, Landroid/support/v4/xj1;->do()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/static;->for:Ljava/math/BigInteger;

    return-void
.end method

.method public processBlock([BII)[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/static;->do:Lorg/bouncycastle/crypto/engines/switch;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/switch;->do([BII)Ljava/math/BigInteger;

    move-result-object p1

    iget-boolean p2, p0, Lorg/bouncycastle/crypto/engines/static;->new:Z

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/static;->do(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/static;->if(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    :goto_0
    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/static;->do:Lorg/bouncycastle/crypto/engines/switch;

    invoke-virtual {p2, p1}, Lorg/bouncycastle/crypto/engines/switch;->if(Ljava/math/BigInteger;)[B

    move-result-object p1

    return-object p1
.end method
