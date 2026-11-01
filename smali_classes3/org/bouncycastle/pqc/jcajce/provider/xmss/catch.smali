.class public Lorg/bouncycastle/pqc/jcajce/provider/xmss/catch;
.super Ljava/security/Signature;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/pqc/jcajce/interfaces/StateAwareSignature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/jcajce/provider/xmss/catch$do;,
        Lorg/bouncycastle/pqc/jcajce/provider/xmss/catch$if;,
        Lorg/bouncycastle/pqc/jcajce/provider/xmss/catch$for;,
        Lorg/bouncycastle/pqc/jcajce/provider/xmss/catch$new;,
        Lorg/bouncycastle/pqc/jcajce/provider/xmss/catch$try;,
        Lorg/bouncycastle/pqc/jcajce/provider/xmss/catch$case;,
        Lorg/bouncycastle/pqc/jcajce/provider/xmss/catch$else;,
        Lorg/bouncycastle/pqc/jcajce/provider/xmss/catch$goto;
    }
.end annotation


# instance fields
.field private do:Lorg/bouncycastle/crypto/Digest;

.field private for:Ljava/security/SecureRandom;

.field private if:Lorg/bouncycastle/pqc/crypto/xmss/strictfp;

.field private new:Lorg/bouncycastle/asn1/catch;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/security/Signature;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/pqc/crypto/xmss/strictfp;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/security/Signature;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/catch;->do:Lorg/bouncycastle/crypto/Digest;

    iput-object p3, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/catch;->if:Lorg/bouncycastle/pqc/crypto/xmss/strictfp;

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

    instance-of v0, p1, Lorg/bouncycastle/pqc/jcajce/provider/xmss/for;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/bouncycastle/pqc/jcajce/provider/xmss/for;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/for;->getKeyParams()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/for;->getTreeDigestOID()Lorg/bouncycastle/asn1/catch;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/catch;->new:Lorg/bouncycastle/asn1/catch;

    iget-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/catch;->for:Ljava/security/SecureRandom;

    if-eqz p1, :cond_0

    new-instance v1, Landroid/support/v4/cc1;

    invoke-direct {v1, v0, p1}, Landroid/support/v4/cc1;-><init>(Lorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    move-object v0, v1

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/catch;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->reset()V

    iget-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/catch;->if:Lorg/bouncycastle/pqc/crypto/xmss/strictfp;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void

    :cond_1
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "unknown private key passed to XMSS"

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    iput-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/catch;->for:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/catch;->engineInitSign(Ljava/security/PrivateKey;)V

    return-void
.end method

.method public engineInitVerify(Ljava/security/PublicKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p1, Lorg/bouncycastle/pqc/jcajce/provider/xmss/new;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/pqc/jcajce/provider/xmss/new;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/new;->getKeyParams()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/catch;->new:Lorg/bouncycastle/asn1/catch;

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/catch;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/catch;->if:Lorg/bouncycastle/pqc/crypto/xmss/strictfp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void

    :cond_0
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "unknown public key passed to XMSS"

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
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

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/catch;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-static {v0}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/try;->if(Lorg/bouncycastle/crypto/Digest;)[B

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/catch;->if:Lorg/bouncycastle/pqc/crypto/xmss/strictfp;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->generateSignature([B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    instance-of v1, v0, Ljava/lang/IllegalStateException;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/security/SignatureException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
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

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/catch;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method public engineUpdate([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/catch;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method public engineVerify([B)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/catch;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-static {v0}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/try;->if(Lorg/bouncycastle/crypto/Digest;)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/catch;->if:Lorg/bouncycastle/pqc/crypto/xmss/strictfp;

    invoke-virtual {v1, v0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->verifySignature([B[B)Z

    move-result p1

    return p1
.end method

.method public getUpdatedPrivateKey()Ljava/security/PrivateKey;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/catch;->new:Lorg/bouncycastle/asn1/catch;

    if-eqz v0, :cond_0

    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/xmss/for;

    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/catch;->if:Lorg/bouncycastle/pqc/crypto/xmss/strictfp;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->getUpdatedPrivateKey()Landroid/support/v4/a4;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pqc/crypto/xmss/package;

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/for;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/pqc/crypto/xmss/package;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/catch;->new:Lorg/bouncycastle/asn1/catch;

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "signature object not in a signing state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSigningCapable()Z
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/catch;->new:Lorg/bouncycastle/asn1/catch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/catch;->if:Lorg/bouncycastle/pqc/crypto/xmss/strictfp;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;->do()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
