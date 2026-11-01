.class public Landroid/support/v4/d6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/crypto/interfaces/PBEKey;


# instance fields
.field public algorithm:Ljava/lang/String;

.field public digest:I

.field public ivSize:I

.field public keySize:I

.field public oid:Lorg/bouncycastle/asn1/catch;

.field public param:Lorg/bouncycastle/crypto/CipherParameters;

.field public pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

.field public tryWrong:Z

.field public type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/KeySpec;Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroid/support/v4/d6;->tryWrong:Z

    iput-object p1, p0, Landroid/support/v4/d6;->algorithm:Ljava/lang/String;

    iput-object p3, p0, Landroid/support/v4/d6;->param:Lorg/bouncycastle/crypto/CipherParameters;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/asn1/catch;IIIILjavax/crypto/spec/PBEKeySpec;Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/d6;->tryWrong:Z

    iput-object p1, p0, Landroid/support/v4/d6;->algorithm:Ljava/lang/String;

    iput-object p2, p0, Landroid/support/v4/d6;->oid:Lorg/bouncycastle/asn1/catch;

    iput p3, p0, Landroid/support/v4/d6;->type:I

    iput p4, p0, Landroid/support/v4/d6;->digest:I

    iput p5, p0, Landroid/support/v4/d6;->keySize:I

    iput p6, p0, Landroid/support/v4/d6;->ivSize:I

    iput-object p7, p0, Landroid/support/v4/d6;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    iput-object p8, p0, Landroid/support/v4/d6;->param:Lorg/bouncycastle/crypto/CipherParameters;

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/d6;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getDigest()I
    .locals 1

    iget v0, p0, Landroid/support/v4/d6;->digest:I

    return v0
.end method

.method public getEncoded()[B
    .locals 2

    iget-object v0, p0, Landroid/support/v4/d6;->param:Lorg/bouncycastle/crypto/CipherParameters;

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/support/v4/bc1;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/support/v4/bc1;

    invoke-virtual {v0}, Landroid/support/v4/bc1;->if()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    :cond_0
    check-cast v0, Landroid/support/v4/gr0;

    invoke-virtual {v0}, Landroid/support/v4/gr0;->do()[B

    move-result-object v0

    return-object v0

    :cond_1
    iget v0, p0, Landroid/support/v4/d6;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroid/support/v4/d6;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/l91;->do([C)[B

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/support/v4/d6;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/l91;->for([C)[B

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p0, Landroid/support/v4/d6;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/l91;->if([C)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "RAW"

    return-object v0
.end method

.method public getIterationCount()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/d6;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result v0

    return v0
.end method

.method public getIvSize()I
    .locals 1

    iget v0, p0, Landroid/support/v4/d6;->ivSize:I

    return v0
.end method

.method public getKeySize()I
    .locals 1

    iget v0, p0, Landroid/support/v4/d6;->keySize:I

    return v0
.end method

.method public getOID()Lorg/bouncycastle/asn1/catch;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/d6;->oid:Lorg/bouncycastle/asn1/catch;

    return-object v0
.end method

.method public getParam()Lorg/bouncycastle/crypto/CipherParameters;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/d6;->param:Lorg/bouncycastle/crypto/CipherParameters;

    return-object v0
.end method

.method public getPassword()[C
    .locals 1

    iget-object v0, p0, Landroid/support/v4/d6;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object v0

    return-object v0
.end method

.method public getSalt()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/d6;->pbeKeySpec:Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Landroid/support/v4/d6;->type:I

    return v0
.end method

.method public setTryWrongPKCS12Zero(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v4/d6;->tryWrong:Z

    return-void
.end method

.method public shouldTryWrongPKCS12()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/d6;->tryWrong:Z

    return v0
.end method
