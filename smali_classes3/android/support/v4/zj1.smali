.class public Landroid/support/v4/zj1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/KeyEncapsulation;


# static fields
.field private static final new:Ljava/math/BigInteger;

.field private static final try:Ljava/math/BigInteger;


# instance fields
.field private do:Lorg/bouncycastle/crypto/DerivationFunction;

.field private for:Landroid/support/v4/ck1;

.field private if:Ljava/security/SecureRandom;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Landroid/support/v4/zj1;->new:Ljava/math/BigInteger;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Landroid/support/v4/zj1;->try:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/DerivationFunction;Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/zj1;->do:Lorg/bouncycastle/crypto/DerivationFunction;

    iput-object p2, p0, Landroid/support/v4/zj1;->if:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public decrypt([BIII)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/zj1;->for:Landroid/support/v4/ck1;

    invoke-virtual {v0}, Landroid/support/v4/a4;->do()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/zj1;->for:Landroid/support/v4/ck1;

    invoke-virtual {v0}, Landroid/support/v4/ck1;->for()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/zj1;->for:Landroid/support/v4/ck1;

    invoke-virtual {v1}, Landroid/support/v4/ck1;->if()Ljava/math/BigInteger;

    move-result-object v1

    new-array v2, p3, [B

    const/4 v3, 0x0

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Ljava/math/BigInteger;

    const/4 p2, 0x1

    invoke-direct {p1, p2, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p1, v1, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p4}, Landroid/support/v4/zj1;->for(Ljava/math/BigInteger;Ljava/math/BigInteger;I)Landroid/support/v4/gr0;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Private key required for decryption"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public do([BI)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Landroid/support/v4/zj1;->decrypt([BIII)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    return-object p1
.end method

.method public encrypt([BII)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/zj1;->for:Landroid/support/v4/ck1;

    invoke-virtual {v0}, Landroid/support/v4/a4;->do()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/zj1;->for:Landroid/support/v4/ck1;

    invoke-virtual {v0}, Landroid/support/v4/ck1;->for()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/zj1;->for:Landroid/support/v4/ck1;

    invoke-virtual {v1}, Landroid/support/v4/ck1;->if()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Landroid/support/v4/zj1;->new:Ljava/math/BigInteger;

    sget-object v3, Landroid/support/v4/zj1;->try:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/zj1;->if:Ljava/security/SecureRandom;

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/util/do;->try(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    add-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0x8

    invoke-static {v3, v1}, Lorg/bouncycastle/util/do;->do(ILjava/math/BigInteger;)[B

    move-result-object v1

    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v1, v3, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v0, v2, p3}, Landroid/support/v4/zj1;->for(Ljava/math/BigInteger;Ljava/math/BigInteger;I)Landroid/support/v4/gr0;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Public key required for encryption"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public for(Ljava/math/BigInteger;Ljava/math/BigInteger;I)Landroid/support/v4/gr0;
    .locals 2

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    invoke-static {p1, p2}, Lorg/bouncycastle/util/do;->do(ILjava/math/BigInteger;)[B

    move-result-object p1

    iget-object p2, p0, Landroid/support/v4/zj1;->do:Lorg/bouncycastle/crypto/DerivationFunction;

    new-instance v0, Landroid/support/v4/kq0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/support/v4/kq0;-><init>([B[B)V

    invoke-interface {p2, v0}, Lorg/bouncycastle/crypto/DerivationFunction;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V

    new-array p1, p3, [B

    iget-object p2, p0, Landroid/support/v4/zj1;->do:Lorg/bouncycastle/crypto/DerivationFunction;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0, p3}, Lorg/bouncycastle/crypto/DerivationFunction;->generateBytes([BII)I

    new-instance p2, Landroid/support/v4/gr0;

    invoke-direct {p2, p1}, Landroid/support/v4/gr0;-><init>([B)V

    return-object p2
.end method

.method public if([BI)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v4/zj1;->encrypt([BII)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    return-object p1
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    instance-of v0, p1, Landroid/support/v4/ck1;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/ck1;

    iput-object p1, p0, Landroid/support/v4/zj1;->for:Landroid/support/v4/ck1;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "RSA key required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
