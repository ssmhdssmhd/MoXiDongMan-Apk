.class public Landroid/support/v4/x02;
.super Ljava/security/KeyPairGenerator;
.source "SourceFile"


# instance fields
.field public do:Lorg/bouncycastle/asn1/catch;

.field public for:Lorg/bouncycastle/pqc/crypto/sphincs/try;

.field public if:Landroid/support/v4/xq1;

.field public new:Ljava/security/SecureRandom;

.field public try:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "SPHINCS256"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512_256:Lorg/bouncycastle/asn1/catch;

    iput-object v0, p0, Landroid/support/v4/x02;->do:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincs/try;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/sphincs/try;-><init>()V

    iput-object v0, p0, Landroid/support/v4/x02;->for:Lorg/bouncycastle/pqc/crypto/sphincs/try;

    invoke-static {}, Lorg/bouncycastle/crypto/for;->case()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/x02;->new:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/x02;->try:Z

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 5

    iget-boolean v0, p0, Landroid/support/v4/x02;->try:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/xq1;

    iget-object v1, p0, Landroid/support/v4/x02;->new:Ljava/security/SecureRandom;

    new-instance v2, Landroid/support/v4/cq1;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Landroid/support/v4/cq1;-><init>(I)V

    invoke-direct {v0, v1, v2}, Landroid/support/v4/xq1;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Landroid/support/v4/x02;->if:Landroid/support/v4/xq1;

    iget-object v1, p0, Landroid/support/v4/x02;->for:Lorg/bouncycastle/pqc/crypto/sphincs/try;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/try;->init(Landroid/support/v4/dr0;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/x02;->try:Z

    :cond_0
    iget-object v0, p0, Landroid/support/v4/x02;->for:Lorg/bouncycastle/pqc/crypto/sphincs/try;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/sphincs/try;->generateKeyPair()Landroid/support/v4/y3;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/y3;->if()Landroid/support/v4/a4;

    move-result-object v1

    check-cast v1, Landroid/support/v4/br1;

    invoke-virtual {v0}, Landroid/support/v4/y3;->do()Landroid/support/v4/a4;

    move-result-object v0

    check-cast v0, Landroid/support/v4/ar1;

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, Landroid/support/v4/h6;

    iget-object v4, p0, Landroid/support/v4/x02;->do:Lorg/bouncycastle/asn1/catch;

    invoke-direct {v3, v4, v1}, Landroid/support/v4/h6;-><init>(Lorg/bouncycastle/asn1/catch;Landroid/support/v4/br1;)V

    new-instance v1, Landroid/support/v4/g6;

    iget-object v4, p0, Landroid/support/v4/x02;->do:Lorg/bouncycastle/asn1/catch;

    invoke-direct {v1, v4, v0}, Landroid/support/v4/g6;-><init>(Lorg/bouncycastle/asn1/catch;Landroid/support/v4/ar1;)V

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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    instance-of v0, p1, Landroid/support/v4/wq1;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/support/v4/wq1;

    invoke-virtual {p1}, Landroid/support/v4/wq1;->do()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHA512-256"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x100

    if-eqz v0, :cond_0

    sget-object p1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512_256:Lorg/bouncycastle/asn1/catch;

    iput-object p1, p0, Landroid/support/v4/x02;->do:Lorg/bouncycastle/asn1/catch;

    new-instance p1, Landroid/support/v4/xq1;

    new-instance v0, Landroid/support/v4/cq1;

    invoke-direct {v0, v1}, Landroid/support/v4/cq1;-><init>(I)V

    invoke-direct {p1, p2, v0}, Landroid/support/v4/xq1;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/Digest;)V

    :goto_0
    iput-object p1, p0, Landroid/support/v4/x02;->if:Landroid/support/v4/xq1;

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/wq1;->do()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SHA3-256"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_256:Lorg/bouncycastle/asn1/catch;

    iput-object p1, p0, Landroid/support/v4/x02;->do:Lorg/bouncycastle/asn1/catch;

    new-instance p1, Landroid/support/v4/xq1;

    new-instance v0, Landroid/support/v4/aq1;

    invoke-direct {v0, v1}, Landroid/support/v4/aq1;-><init>(I)V

    invoke-direct {p1, p2, v0}, Landroid/support/v4/xq1;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/Digest;)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Landroid/support/v4/x02;->for:Lorg/bouncycastle/pqc/crypto/sphincs/try;

    iget-object p2, p0, Landroid/support/v4/x02;->if:Landroid/support/v4/xq1;

    invoke-virtual {p1, p2}, Lorg/bouncycastle/pqc/crypto/sphincs/try;->init(Landroid/support/v4/dr0;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/x02;->try:Z

    return-void

    :cond_2
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "parameter object not a SPHINCS256KeyGenParameterSpec"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
