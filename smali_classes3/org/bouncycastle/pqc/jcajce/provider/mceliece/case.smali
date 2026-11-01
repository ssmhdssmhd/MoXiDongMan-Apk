.class public Lorg/bouncycastle/pqc/jcajce/provider/mceliece/case;
.super Landroid/support/v4/z3;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/jcajce/provider/mceliece/case$do;
    }
.end annotation


# instance fields
.field private case:Lorg/bouncycastle/pqc/crypto/mceliece/new;

.field private else:Ljava/io/ByteArrayOutputStream;

.field private try:Lorg/bouncycastle/crypto/Digest;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/pqc/crypto/mceliece/new;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/z3;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/case;->try:Lorg/bouncycastle/crypto/Digest;

    iput-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/case;->case:Lorg/bouncycastle/pqc/crypto/mceliece/new;

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/case;->else:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
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

    invoke-static {p1}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/try;->if(Ljava/security/PublicKey;)Landroid/support/v4/a4;

    move-result-object p1

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/security/PrivateKey;

    invoke-static {p1}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/try;->do(Ljava/security/PrivateKey;)Landroid/support/v4/a4;

    move-result-object p1

    :goto_0
    check-cast p1, Landroid/support/v4/ty0;

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/case;->case:Lorg/bouncycastle/pqc/crypto/mceliece/new;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/mceliece/new;->do(Landroid/support/v4/ty0;)I

    move-result p1

    return p1
.end method

.method public goto()Ljava/lang/String;
    .locals 1

    const-string v0, "McElieceFujisakiCipher"

    return-object v0
.end method

.method public import(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public native(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public new([BII)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/case;->while([BII)[B

    iget-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/case;->else:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/case;->else:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget p2, p0, Landroid/support/v4/ul;->do:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    iget-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/case;->case:Lorg/bouncycastle/pqc/crypto/mceliece/new;

    invoke-virtual {p2, p1}, Lorg/bouncycastle/pqc/crypto/mceliece/new;->messageEncrypt([B)[B

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p3, 0x2

    if-ne p2, p3, :cond_1

    :try_start_0
    iget-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/case;->case:Lorg/bouncycastle/pqc/crypto/mceliece/new;

    invoke-virtual {p2, p1}, Lorg/bouncycastle/pqc/crypto/mceliece/new;->messageDecrypt([B)[B

    move-result-object p1
    :try_end_0
    .catch Landroid/support/v4/tn0; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljavax/crypto/BadPaddingException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unknown mode in doFinal"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public public(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    check-cast p1, Ljava/security/PrivateKey;

    invoke-static {p1}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/try;->do(Ljava/security/PrivateKey;)Landroid/support/v4/a4;

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/case;->try:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->reset()V

    iget-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/case;->case:Lorg/bouncycastle/pqc/crypto/mceliece/new;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Lorg/bouncycastle/pqc/crypto/mceliece/new;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public return(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    check-cast p1, Ljava/security/PublicKey;

    invoke-static {p1}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/try;->if(Ljava/security/PublicKey;)Landroid/support/v4/a4;

    move-result-object p1

    new-instance p2, Landroid/support/v4/cc1;

    invoke-direct {p2, p1, p3}, Landroid/support/v4/cc1;-><init>(Lorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/case;->try:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->reset()V

    iget-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/case;->case:Lorg/bouncycastle/pqc/crypto/mceliece/new;

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Lorg/bouncycastle/pqc/crypto/mceliece/new;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public while([BII)[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/case;->else:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 p1, 0x0

    new-array p1, p1, [B

    return-object p1
.end method
