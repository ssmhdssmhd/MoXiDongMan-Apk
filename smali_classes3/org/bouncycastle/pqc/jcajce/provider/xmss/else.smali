.class public Lorg/bouncycastle/pqc/jcajce/provider/xmss/else;
.super Ljava/security/KeyPairGenerator;
.source "SourceFile"


# instance fields
.field private do:Landroid/support/v4/ei2;

.field private for:Lorg/bouncycastle/pqc/crypto/xmss/while;

.field private if:Lorg/bouncycastle/asn1/catch;

.field private new:Ljava/security/SecureRandom;

.field private try:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "XMSS"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/while;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/xmss/while;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/else;->for:Lorg/bouncycastle/pqc/crypto/xmss/while;

    invoke-static {}, Lorg/bouncycastle/crypto/for;->case()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/else;->new:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/else;->try:Z

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 5

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/else;->try:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/ei2;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/finally;

    const/16 v2, 0xa

    new-instance v3, Landroid/support/v4/bq1;

    invoke-direct {v3}, Landroid/support/v4/bq1;-><init>()V

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/finally;-><init>(ILorg/bouncycastle/crypto/Digest;)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/else;->new:Ljava/security/SecureRandom;

    invoke-direct {v0, v1, v2}, Landroid/support/v4/ei2;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/finally;Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/else;->do:Landroid/support/v4/ei2;

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/else;->for:Lorg/bouncycastle/pqc/crypto/xmss/while;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/while;->for(Landroid/support/v4/dr0;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/else;->try:Z

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/else;->for:Lorg/bouncycastle/pqc/crypto/xmss/while;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/while;->do()Landroid/support/v4/y3;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/y3;->if()Landroid/support/v4/a4;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/private;

    invoke-virtual {v0}, Landroid/support/v4/y3;->do()Landroid/support/v4/a4;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/package;

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, Lorg/bouncycastle/pqc/jcajce/provider/xmss/new;

    iget-object v4, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/else;->if:Lorg/bouncycastle/asn1/catch;

    invoke-direct {v3, v4, v1}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/new;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/pqc/crypto/xmss/private;)V

    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/xmss/for;

    iget-object v4, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/else;->if:Lorg/bouncycastle/asn1/catch;

    invoke-direct {v1, v4, v0}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/for;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/pqc/crypto/xmss/package;)V

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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    instance-of v0, p1, Landroid/support/v4/ni2;

    if-eqz v0, :cond_4

    check-cast p1, Landroid/support/v4/ni2;

    invoke-virtual {p1}, Landroid/support/v4/ni2;->if()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHA256"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/catch;

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/else;->if:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Landroid/support/v4/ei2;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-virtual {p1}, Landroid/support/v4/ni2;->do()I

    move-result p1

    new-instance v2, Landroid/support/v4/yp1;

    invoke-direct {v2}, Landroid/support/v4/yp1;-><init>()V

    invoke-direct {v1, p1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/finally;-><init>(ILorg/bouncycastle/crypto/Digest;)V

    invoke-direct {v0, v1, p2}, Landroid/support/v4/ei2;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/finally;Ljava/security/SecureRandom;)V

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/else;->do:Landroid/support/v4/ei2;

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/ni2;->if()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHA512"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/bouncycastle/asn1/catch;

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/else;->if:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Landroid/support/v4/ei2;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-virtual {p1}, Landroid/support/v4/ni2;->do()I

    move-result p1

    new-instance v2, Landroid/support/v4/bq1;

    invoke-direct {v2}, Landroid/support/v4/bq1;-><init>()V

    invoke-direct {v1, p1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/finally;-><init>(ILorg/bouncycastle/crypto/Digest;)V

    invoke-direct {v0, v1, p2}, Landroid/support/v4/ei2;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/finally;Ljava/security/SecureRandom;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/ni2;->if()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHAKE128"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake128:Lorg/bouncycastle/asn1/catch;

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/else;->if:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Landroid/support/v4/ei2;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-virtual {p1}, Landroid/support/v4/ni2;->do()I

    move-result p1

    new-instance v2, Landroid/support/v4/dq1;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Landroid/support/v4/dq1;-><init>(I)V

    invoke-direct {v1, p1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/finally;-><init>(ILorg/bouncycastle/crypto/Digest;)V

    invoke-direct {v0, v1, p2}, Landroid/support/v4/ei2;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/finally;Ljava/security/SecureRandom;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/support/v4/ni2;->if()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHAKE256"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lorg/bouncycastle/asn1/catch;

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/else;->if:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Landroid/support/v4/ei2;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-virtual {p1}, Landroid/support/v4/ni2;->do()I

    move-result p1

    new-instance v2, Landroid/support/v4/dq1;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Landroid/support/v4/dq1;-><init>(I)V

    invoke-direct {v1, p1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/finally;-><init>(ILorg/bouncycastle/crypto/Digest;)V

    invoke-direct {v0, v1, p2}, Landroid/support/v4/ei2;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/finally;Ljava/security/SecureRandom;)V

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/else;->for:Lorg/bouncycastle/pqc/crypto/xmss/while;

    iget-object p2, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/else;->do:Landroid/support/v4/ei2;

    invoke-virtual {p1, p2}, Lorg/bouncycastle/pqc/crypto/xmss/while;->for(Landroid/support/v4/dr0;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/xmss/else;->try:Z

    return-void

    :cond_4
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "parameter object not a XMSSParameterSpec"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
