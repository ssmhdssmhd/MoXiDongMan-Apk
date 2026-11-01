.class public Lorg/bouncycastle/crypto/generators/break;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private do:I

.field private for:Ljava/security/SecureRandom;

.field private if:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do()Landroid/support/v4/l60;
    .locals 3

    iget v0, p0, Lorg/bouncycastle/crypto/generators/break;->do:I

    iget v1, p0, Lorg/bouncycastle/crypto/generators/break;->if:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/break;->for:Ljava/security/SecureRandom;

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/crypto/generators/goto;->do(IILjava/security/SecureRandom;)[Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/break;->for:Ljava/security/SecureRandom;

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/crypto/generators/goto;->if(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v2, Landroid/support/v4/l60;

    invoke-direct {v2, v1, v0}, Landroid/support/v4/l60;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v2
.end method

.method public if(IILjava/security/SecureRandom;)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/crypto/generators/break;->do:I

    iput p2, p0, Lorg/bouncycastle/crypto/generators/break;->if:I

    iput-object p3, p0, Lorg/bouncycastle/crypto/generators/break;->for:Ljava/security/SecureRandom;

    return-void
.end method
