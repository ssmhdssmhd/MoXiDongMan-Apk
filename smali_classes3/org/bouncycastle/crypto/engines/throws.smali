.class public Lorg/bouncycastle/crypto/engines/throws;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricBlockCipher;


# instance fields
.field private do:Lorg/bouncycastle/crypto/engines/switch;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInputBlockSize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/throws;->do:Lorg/bouncycastle/crypto/engines/switch;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/switch;->for()I

    move-result v0

    return v0
.end method

.method public getOutputBlockSize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/throws;->do:Lorg/bouncycastle/crypto/engines/switch;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/switch;->new()I

    move-result v0

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/throws;->do:Lorg/bouncycastle/crypto/engines/switch;

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/engines/switch;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/switch;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/throws;->do:Lorg/bouncycastle/crypto/engines/switch;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/throws;->do:Lorg/bouncycastle/crypto/engines/switch;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/crypto/engines/switch;->try(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public processBlock([BII)[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/throws;->do:Lorg/bouncycastle/crypto/engines/switch;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/switch;->do([BII)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/engines/switch;->case(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/engines/switch;->if(Ljava/math/BigInteger;)[B

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "RSA engine not initialised"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
