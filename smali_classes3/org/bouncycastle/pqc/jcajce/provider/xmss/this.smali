.class public Lorg/bouncycastle/pqc/jcajce/provider/xmss/this;
.super Ljava/security/KeyPairGenerator;
.source "SourceFile"


# instance fields
.field private do:Landroid/support/v4/hi2;

.field private for:Lorg/bouncycastle/asn1/catch;

.field private if:Lorg/bouncycastle/pqc/crypto/xmss/native;

.field private new:Ljava/security/SecureRandom;

.field private try:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "XMSSMT"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/native;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/xmss/native;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/this;->if:Lorg/bouncycastle/pqc/crypto/xmss/native;

    invoke-static {}, Lorg/bouncycastle/crypto/for;->case()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/this;->new:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/this;->try:Z

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 5

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/this;->try:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/hi2;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/public;

    const/16 v2, 0xa

    const/16 v3, 0x14

    new-instance v4, Landroid/support/v4/bq1;

    invoke-direct {v4}, Landroid/support/v4/bq1;-><init>()V

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/public;-><init>(IILorg/bouncycastle/crypto/Digest;)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/this;->new:Ljava/security/SecureRandom;

    invoke-direct {v0, v1, v2}, Landroid/support/v4/hi2;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/public;Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/this;->do:Landroid/support/v4/hi2;

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/this;->if:Lorg/bouncycastle/pqc/crypto/xmss/native;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/native;->for(Landroid/support/v4/dr0;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/this;->try:Z

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/this;->if:Lorg/bouncycastle/pqc/crypto/xmss/native;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/native;->do()Landroid/support/v4/y3;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/y3;->if()Landroid/support/v4/a4;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/static;

    invoke-virtual {v0}, Landroid/support/v4/y3;->do()Landroid/support/v4/a4;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/return;

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, Lorg/bouncycastle/pqc/jcajce/provider/xmss/if;

    iget-object v4, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/this;->for:Lorg/bouncycastle/asn1/catch;

    invoke-direct {v3, v4, v1}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/if;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/pqc/crypto/xmss/static;)V

    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/xmss/do;

    iget-object v4, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/this;->for:Lorg/bouncycastle/asn1/catch;

    invoke-direct {v1, v4, v0}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/do;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/pqc/crypto/xmss/return;)V

    invoke-direct {v2, v3, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "use AlgorithmParameterSpec"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    instance-of v0, p1, Landroid/support/v4/ki2;

    if-eqz v0, :cond_4

    check-cast p1, Landroid/support/v4/ki2;

    invoke-virtual {p1}, Landroid/support/v4/ki2;->for()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHA256"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/catch;

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/this;->for:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Landroid/support/v4/hi2;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/public;

    invoke-virtual {p1}, Landroid/support/v4/ki2;->do()I

    move-result v2

    invoke-virtual {p1}, Landroid/support/v4/ki2;->if()I

    move-result p1

    new-instance v3, Landroid/support/v4/yp1;

    invoke-direct {v3}, Landroid/support/v4/yp1;-><init>()V

    invoke-direct {v1, v2, p1, v3}, Lorg/bouncycastle/pqc/crypto/xmss/public;-><init>(IILorg/bouncycastle/crypto/Digest;)V

    invoke-direct {v0, v1, p2}, Landroid/support/v4/hi2;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/public;Ljava/security/SecureRandom;)V

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/this;->do:Landroid/support/v4/hi2;

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/ki2;->for()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHA512"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/bouncycastle/asn1/catch;

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/this;->for:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Landroid/support/v4/hi2;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/public;

    invoke-virtual {p1}, Landroid/support/v4/ki2;->do()I

    move-result v2

    invoke-virtual {p1}, Landroid/support/v4/ki2;->if()I

    move-result p1

    new-instance v3, Landroid/support/v4/bq1;

    invoke-direct {v3}, Landroid/support/v4/bq1;-><init>()V

    invoke-direct {v1, v2, p1, v3}, Lorg/bouncycastle/pqc/crypto/xmss/public;-><init>(IILorg/bouncycastle/crypto/Digest;)V

    invoke-direct {v0, v1, p2}, Landroid/support/v4/hi2;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/public;Ljava/security/SecureRandom;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/ki2;->for()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHAKE128"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake128:Lorg/bouncycastle/asn1/catch;

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/this;->for:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Landroid/support/v4/hi2;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/public;

    invoke-virtual {p1}, Landroid/support/v4/ki2;->do()I

    move-result v2

    invoke-virtual {p1}, Landroid/support/v4/ki2;->if()I

    move-result p1

    new-instance v3, Landroid/support/v4/dq1;

    const/16 v4, 0x80

    invoke-direct {v3, v4}, Landroid/support/v4/dq1;-><init>(I)V

    invoke-direct {v1, v2, p1, v3}, Lorg/bouncycastle/pqc/crypto/xmss/public;-><init>(IILorg/bouncycastle/crypto/Digest;)V

    invoke-direct {v0, v1, p2}, Landroid/support/v4/hi2;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/public;Ljava/security/SecureRandom;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/support/v4/ki2;->for()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHAKE256"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lorg/bouncycastle/asn1/catch;

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/this;->for:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Landroid/support/v4/hi2;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/public;

    invoke-virtual {p1}, Landroid/support/v4/ki2;->do()I

    move-result v2

    invoke-virtual {p1}, Landroid/support/v4/ki2;->if()I

    move-result p1

    new-instance v3, Landroid/support/v4/dq1;

    const/16 v4, 0x100

    invoke-direct {v3, v4}, Landroid/support/v4/dq1;-><init>(I)V

    invoke-direct {v1, v2, p1, v3}, Lorg/bouncycastle/pqc/crypto/xmss/public;-><init>(IILorg/bouncycastle/crypto/Digest;)V

    invoke-direct {v0, v1, p2}, Landroid/support/v4/hi2;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/public;Ljava/security/SecureRandom;)V

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/this;->if:Lorg/bouncycastle/pqc/crypto/xmss/native;

    iget-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/this;->do:Landroid/support/v4/hi2;

    invoke-virtual {p1, p2}, Lorg/bouncycastle/pqc/crypto/xmss/native;->for(Landroid/support/v4/dr0;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/this;->try:Z

    return-void

    :cond_4
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "parameter object not a XMSSMTParameterSpec"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
