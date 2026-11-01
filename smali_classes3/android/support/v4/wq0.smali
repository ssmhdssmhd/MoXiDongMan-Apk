.class public Landroid/support/v4/wq0;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/util/do;
.source "SourceFile"


# instance fields
.field private break:Landroid/support/v4/c6;

.field private catch:Lorg/bouncycastle/pqc/crypto/newhope/new;

.field private class:[B

.field private this:Lorg/bouncycastle/pqc/crypto/newhope/for;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "NH"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/do;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/DerivationFunction;)V

    return-void
.end method


# virtual methods
.method public do()[B
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/wq0;->engineGenerateSecret()[B

    move-result-object v0

    return-object v0
.end method

.method public engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-eqz p2, :cond_1

    check-cast p1, Landroid/support/v4/c6;

    iput-object p1, p0, Landroid/support/v4/wq0;->break:Landroid/support/v4/c6;

    iget-object p2, p0, Landroid/support/v4/wq0;->catch:Lorg/bouncycastle/pqc/crypto/newhope/new;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/c6;->getKeyParams()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Landroid/support/v4/a4;

    invoke-virtual {p2, p1}, Lorg/bouncycastle/pqc/crypto/newhope/new;->generateExchange(Landroid/support/v4/a4;)Landroid/support/v4/v80;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/v80;->if()[B

    move-result-object p2

    iput-object p2, p0, Landroid/support/v4/wq0;->class:[B

    new-instance p2, Landroid/support/v4/c6;

    invoke-virtual {p1}, Landroid/support/v4/v80;->do()Landroid/support/v4/a4;

    move-result-object p1

    check-cast p1, Landroid/support/v4/s11;

    invoke-direct {p2, p1}, Landroid/support/v4/c6;-><init>(Landroid/support/v4/s11;)V

    return-object p2

    :cond_0
    iget-object p2, p0, Landroid/support/v4/wq0;->this:Lorg/bouncycastle/pqc/crypto/newhope/for;

    invoke-virtual {p1}, Landroid/support/v4/c6;->getKeyParams()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/bouncycastle/pqc/crypto/newhope/for;->do(Lorg/bouncycastle/crypto/CipherParameters;)[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/wq0;->class:[B

    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "NewHope can only be between two parties."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineGenerateSecret([BI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/wq0;->class:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Landroid/support/v4/wq0;->class:[B

    invoke-static {p1, v2}, Landroid/support/v4/q3;->c([BB)V

    iget-object p1, p0, Landroid/support/v4/wq0;->class:[B

    array-length p1, p1

    return p1
.end method

.method public engineGenerateSecret()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/wq0;->class:[B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/wq0;->class:[B

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/support/v4/q3;->c([BB)V

    return-object v0
.end method

.method public engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance p2, Lorg/bouncycastle/pqc/crypto/newhope/for;

    invoke-direct {p2}, Lorg/bouncycastle/pqc/crypto/newhope/for;-><init>()V

    iput-object p2, p0, Landroid/support/v4/wq0;->this:Lorg/bouncycastle/pqc/crypto/newhope/for;

    check-cast p1, Landroid/support/v4/b6;

    invoke-virtual {p1}, Landroid/support/v4/b6;->getKeyParams()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/bouncycastle/pqc/crypto/newhope/for;->if(Lorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/pqc/crypto/newhope/new;

    invoke-direct {p1, p2}, Lorg/bouncycastle/pqc/crypto/newhope/new;-><init>(Ljava/security/SecureRandom;)V

    iput-object p1, p0, Landroid/support/v4/wq0;->catch:Lorg/bouncycastle/pqc/crypto/newhope/new;

    :goto_0
    return-void
.end method

.method public engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "NewHope does not require parameters"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
