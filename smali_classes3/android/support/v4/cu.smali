.class public Landroid/support/v4/cu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final try:Ljava/math/BigInteger;


# instance fields
.field private do:Landroid/support/v4/pu;

.field private for:Ljava/math/BigInteger;

.field private if:Landroid/support/v4/ou;

.field private new:Ljava/security/SecureRandom;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Landroid/support/v4/cu;->try:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Landroid/support/v4/ru;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 3

    invoke-virtual {p1}, Landroid/support/v4/ku;->if()Landroid/support/v4/ou;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/cu;->if:Landroid/support/v4/ou;

    invoke-virtual {v0, v1}, Landroid/support/v4/ou;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/cu;->if:Landroid/support/v4/ou;

    invoke-virtual {v0}, Landroid/support/v4/ou;->case()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/ru;->for()Ljava/math/BigInteger;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v1, Landroid/support/v4/cu;->try:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_1

    iget-object v2, p0, Landroid/support/v4/cu;->for:Ljava/math/BigInteger;

    invoke-virtual {p1, v2, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/cu;->do:Landroid/support/v4/pu;

    invoke-virtual {v1}, Landroid/support/v4/pu;->for()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Shared key can\'t be 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Diffie-Hellman public key is weak"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Diffie-Hellman public key has wrong parameters."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public for(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    instance-of v0, p1, Landroid/support/v4/cc1;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/cc1;

    invoke-virtual {p1}, Landroid/support/v4/cc1;->if()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/cu;->new:Ljava/security/SecureRandom;

    invoke-virtual {p1}, Landroid/support/v4/cc1;->do()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/bouncycastle/crypto/for;->case()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/cu;->new:Ljava/security/SecureRandom;

    :goto_0
    check-cast p1, Landroid/support/v4/a4;

    instance-of v0, p1, Landroid/support/v4/pu;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/support/v4/pu;

    iput-object p1, p0, Landroid/support/v4/cu;->do:Landroid/support/v4/pu;

    invoke-virtual {p1}, Landroid/support/v4/ku;->if()Landroid/support/v4/ou;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/cu;->if:Landroid/support/v4/ou;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "DHEngine expects DHPrivateKeyParameters"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public if()Ljava/math/BigInteger;
    .locals 4

    new-instance v0, Lorg/bouncycastle/crypto/generators/case;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/generators/case;-><init>()V

    new-instance v1, Landroid/support/v4/ju;

    iget-object v2, p0, Landroid/support/v4/cu;->new:Ljava/security/SecureRandom;

    iget-object v3, p0, Landroid/support/v4/cu;->if:Landroid/support/v4/ou;

    invoke-direct {v1, v2, v3}, Landroid/support/v4/ju;-><init>(Ljava/security/SecureRandom;Landroid/support/v4/ou;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/generators/case;->init(Landroid/support/v4/dr0;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/generators/case;->generateKeyPair()Landroid/support/v4/y3;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/y3;->do()Landroid/support/v4/a4;

    move-result-object v1

    check-cast v1, Landroid/support/v4/pu;

    invoke-virtual {v1}, Landroid/support/v4/pu;->for()Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/cu;->for:Ljava/math/BigInteger;

    invoke-virtual {v0}, Landroid/support/v4/y3;->if()Landroid/support/v4/a4;

    move-result-object v0

    check-cast v0, Landroid/support/v4/ru;

    invoke-virtual {v0}, Landroid/support/v4/ru;->for()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
