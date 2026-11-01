.class public Lorg/bouncycastle/pqc/jcajce/provider/mceliece/catch;
.super Landroid/support/v4/x3;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/jcajce/provider/mceliece/catch$do;
    }
.end annotation


# instance fields
.field private goto:Lorg/bouncycastle/pqc/crypto/mceliece/for;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/mceliece/for;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/x3;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/catch;->goto:Lorg/bouncycastle/pqc/crypto/mceliece/for;

    return-void
.end method


# virtual methods
.method public default([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/catch;->goto:Lorg/bouncycastle/pqc/crypto/mceliece/for;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/mceliece/for;->messageDecrypt([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public else(Ljava/security/Key;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p1, Ljava/security/PublicKey;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/security/PublicKey;

    invoke-static {p1}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/this;->if(Ljava/security/PublicKey;)Landroid/support/v4/a4;

    move-result-object p1

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/security/PrivateKey;

    invoke-static {p1}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/this;->do(Ljava/security/PrivateKey;)Landroid/support/v4/a4;

    move-result-object p1

    :goto_0
    check-cast p1, Landroid/support/v4/dz0;

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/catch;->goto:Lorg/bouncycastle/pqc/crypto/mceliece/for;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/mceliece/for;->for(Landroid/support/v4/dz0;)I

    move-result p1

    return p1
.end method

.method public extends([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/catch;->goto:Lorg/bouncycastle/pqc/crypto/mceliece/for;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/mceliece/for;->messageEncrypt([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public goto()Ljava/lang/String;
    .locals 1

    const-string v0, "McEliecePKCS"

    return-object v0
.end method

.method public native(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    check-cast p1, Ljava/security/PrivateKey;

    invoke-static {p1}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/this;->do(Ljava/security/PrivateKey;)Landroid/support/v4/a4;

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/catch;->goto:Lorg/bouncycastle/pqc/crypto/mceliece/for;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lorg/bouncycastle/pqc/crypto/mceliece/for;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/catch;->goto:Lorg/bouncycastle/pqc/crypto/mceliece/for;

    iget p2, p1, Lorg/bouncycastle/pqc/crypto/mceliece/for;->try:I

    iput p2, p0, Landroid/support/v4/x3;->case:I

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/mceliece/for;->case:I

    iput p1, p0, Landroid/support/v4/x3;->else:I

    return-void
.end method

.method public public(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    check-cast p1, Ljava/security/PublicKey;

    invoke-static {p1}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/this;->if(Ljava/security/PublicKey;)Landroid/support/v4/a4;

    move-result-object p1

    new-instance p2, Landroid/support/v4/cc1;

    invoke-direct {p2, p1, p3}, Landroid/support/v4/cc1;-><init>(Lorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/catch;->goto:Lorg/bouncycastle/pqc/crypto/mceliece/for;

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Lorg/bouncycastle/pqc/crypto/mceliece/for;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/catch;->goto:Lorg/bouncycastle/pqc/crypto/mceliece/for;

    iget p2, p1, Lorg/bouncycastle/pqc/crypto/mceliece/for;->try:I

    iput p2, p0, Landroid/support/v4/x3;->case:I

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/mceliece/for;->case:I

    iput p1, p0, Landroid/support/v4/x3;->else:I

    return-void
.end method
