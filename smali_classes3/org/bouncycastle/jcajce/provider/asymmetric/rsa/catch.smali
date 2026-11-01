.class public Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/catch;
.super Ljava/security/SignatureSpi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/catch$do;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/catch$if;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/catch$for;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/catch$new;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/catch$try;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/catch$case;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/catch$else;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/catch$goto;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/catch$this;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/catch$break;
    }
.end annotation


# instance fields
.field private do:Lorg/bouncycastle/crypto/signers/catch;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .locals 1

    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/signers/catch;

    invoke-direct {v0, p2, p1}, Lorg/bouncycastle/crypto/signers/catch;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Lorg/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/catch;->do:Lorg/bouncycastle/crypto/signers/catch;

    return-void
.end method


# virtual methods
.method public engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "engineSetParameter unsupported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineInitSign(Ljava/security/PrivateKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    invoke-static {p1}, Landroid/support/v4/kk1;->for(Ljava/security/interfaces/RSAPrivateKey;)Landroid/support/v4/ck1;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/catch;->do:Lorg/bouncycastle/crypto/signers/catch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/bouncycastle/crypto/signers/catch;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public engineInitVerify(Ljava/security/PublicKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    invoke-static {p1}, Landroid/support/v4/kk1;->new(Ljava/security/interfaces/RSAPublicKey;)Landroid/support/v4/ck1;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/catch;->do:Lorg/bouncycastle/crypto/signers/catch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lorg/bouncycastle/crypto/signers/catch;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "engineSetParameter unsupported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "engineSetParameter unsupported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineSign()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/catch;->do:Lorg/bouncycastle/crypto/signers/catch;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/signers/catch;->generateSignature()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/SignatureException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public engineUpdate(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/catch;->do:Lorg/bouncycastle/crypto/signers/catch;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/signers/catch;->update(B)V

    return-void
.end method

.method public engineUpdate([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/catch;->do:Lorg/bouncycastle/crypto/signers/catch;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/signers/catch;->update([BII)V

    return-void
.end method

.method public engineVerify([B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/catch;->do:Lorg/bouncycastle/crypto/signers/catch;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/signers/catch;->verifySignature([B)Z

    move-result p1

    return p1
.end method
