.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/catch;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/util/case;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/catch$try;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/catch$do;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/catch$if;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/catch$for;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/catch$new;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/catch$break;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/catch$case;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/catch$else;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/catch$goto;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/catch$this;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/catch$catch;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/catch$class;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/catch$const;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/catch$final;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/catch$super;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/catch$throw;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/catch$return;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/catch$while;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/catch$import;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/catch$native;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/catch$public;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/catch$static;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/catch$switch;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/catch$throws;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/catch$default;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/catch$abstract;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/catch$extends;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/catch$finally;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/catch$package;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/catch$private;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/catch$continue;
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/DSAExt;Lorg/bouncycastle/crypto/signers/DSAEncoding;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/case;-><init>(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/DSAExt;Lorg/bouncycastle/crypto/signers/DSAEncoding;)V

    return-void
.end method


# virtual methods
.method public engineInitSign(Ljava/security/PrivateKey;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/else;->new(Ljava/security/PrivateKey;)Landroid/support/v4/a4;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/case;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    iget-object v0, p0, Ljava/security/SignatureSpi;->appRandom:Ljava/security/SecureRandom;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/case;->if:Lorg/bouncycastle/crypto/DSAExt;

    new-instance v3, Landroid/support/v4/cc1;

    invoke-direct {v3, p1, v0}, Landroid/support/v4/cc1;-><init>(Lorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    invoke-interface {v2, v1, v3}, Lorg/bouncycastle/crypto/DSA;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/case;->if:Lorg/bouncycastle/crypto/DSAExt;

    invoke-interface {v0, v1, p1}, Lorg/bouncycastle/crypto/DSA;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    :goto_0
    return-void
.end method

.method public engineInitVerify(Ljava/security/PublicKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/new;->do(Ljava/security/PublicKey;)Landroid/support/v4/a4;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/case;->do:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/case;->if:Lorg/bouncycastle/crypto/DSAExt;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lorg/bouncycastle/crypto/DSA;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method
