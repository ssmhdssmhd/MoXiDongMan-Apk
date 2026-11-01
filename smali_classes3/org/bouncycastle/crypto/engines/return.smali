.class public Lorg/bouncycastle/crypto/engines/return;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricBlockCipher;


# static fields
.field private static final new:Ljava/math/BigInteger;


# instance fields
.field private do:Lorg/bouncycastle/crypto/engines/switch;

.field private for:Ljava/security/SecureRandom;

.field private if:Landroid/support/v4/ck1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/engines/return;->new:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/engines/switch;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/switch;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/return;->do:Lorg/bouncycastle/crypto/engines/switch;

    return-void
.end method


# virtual methods
.method public getInputBlockSize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/return;->do:Lorg/bouncycastle/crypto/engines/switch;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/switch;->for()I

    move-result v0

    return v0
.end method

.method public getOutputBlockSize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/return;->do:Lorg/bouncycastle/crypto/engines/switch;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/switch;->new()I

    move-result v0

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/return;->do:Lorg/bouncycastle/crypto/engines/switch;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/crypto/engines/switch;->try(ZLorg/bouncycastle/crypto/CipherParameters;)V

    instance-of p1, p2, Landroid/support/v4/cc1;

    if-eqz p1, :cond_0

    check-cast p2, Landroid/support/v4/cc1;

    invoke-virtual {p2}, Landroid/support/v4/cc1;->do()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Landroid/support/v4/ck1;

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/return;->if:Landroid/support/v4/ck1;

    invoke-virtual {p2}, Landroid/support/v4/cc1;->if()Ljava/security/SecureRandom;

    move-result-object p1

    goto :goto_0

    :cond_0
    check-cast p2, Landroid/support/v4/ck1;

    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/return;->if:Landroid/support/v4/ck1;

    invoke-static {}, Lorg/bouncycastle/crypto/for;->case()Ljava/security/SecureRandom;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/return;->for:Ljava/security/SecureRandom;

    return-void
.end method

.method public processBlock([BII)[B
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/return;->if:Landroid/support/v4/ck1;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/return;->do:Lorg/bouncycastle/crypto/engines/switch;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/switch;->do([BII)Ljava/math/BigInteger;

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/return;->if:Landroid/support/v4/ck1;

    instance-of p3, p2, Landroid/support/v4/dk1;

    if-eqz p3, :cond_1

    check-cast p2, Landroid/support/v4/dk1;

    invoke-virtual {p2}, Landroid/support/v4/dk1;->goto()Ljava/math/BigInteger;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Landroid/support/v4/ck1;->for()Ljava/math/BigInteger;

    move-result-object p2

    sget-object v0, Lorg/bouncycastle/crypto/engines/return;->new:Ljava/math/BigInteger;

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/return;->for:Ljava/security/SecureRandom;

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/do;->try(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p3, p2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/return;->do:Lorg/bouncycastle/crypto/engines/switch;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/crypto/engines/switch;->case(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p3, p2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "RSA engine faulty decryption/signing detected"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/return;->do:Lorg/bouncycastle/crypto/engines/switch;

    invoke-virtual {p2, p1}, Lorg/bouncycastle/crypto/engines/switch;->case(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :goto_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/return;->do:Lorg/bouncycastle/crypto/engines/switch;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/crypto/engines/switch;->if(Ljava/math/BigInteger;)[B

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "RSA engine not initialised"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
