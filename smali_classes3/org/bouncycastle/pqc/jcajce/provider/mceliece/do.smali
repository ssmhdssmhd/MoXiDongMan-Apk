.class public Lorg/bouncycastle/pqc/jcajce/provider/mceliece/do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivateKey;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private params:Landroid/support/v4/xy0;


# direct methods
.method public constructor <init>(Landroid/support/v4/xy0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/do;->params:Landroid/support/v4/xy0;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/do;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/do;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/do;->getN()I

    move-result v1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/do;->getN()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/do;->getK()I

    move-result v1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/do;->getK()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/do;->getField()Landroid/support/v4/se0;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/do;->getField()Landroid/support/v4/se0;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/se0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/do;->getGoppaPoly()Landroid/support/v4/pe1;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/do;->getGoppaPoly()Landroid/support/v4/pe1;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/pe1;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/do;->getP()Landroid/support/v4/fd1;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/do;->getP()Landroid/support/v4/fd1;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/fd1;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/do;->getH()Landroid/support/v4/qe0;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/do;->getH()Landroid/support/v4/qe0;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/support/v4/qe0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "McEliece-CCA2"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 8

    :try_start_0
    new-instance v7, Landroid/support/v4/wy0;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/do;->getN()I

    move-result v1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/do;->getK()I

    move-result v2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/do;->getField()Landroid/support/v4/se0;

    move-result-object v3

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/do;->getGoppaPoly()Landroid/support/v4/pe1;

    move-result-object v4

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/do;->getP()Landroid/support/v4/fd1;

    move-result-object v5

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/do;->params:Landroid/support/v4/xy0;

    invoke-virtual {v0}, Landroid/support/v4/ty0;->if()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/const;->do(Ljava/lang/String;)Landroid/support/v4/b1;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/wy0;-><init>(IILandroid/support/v4/se0;Landroid/support/v4/pe1;Landroid/support/v4/fd1;Landroid/support/v4/b1;)V

    new-instance v0, Landroid/support/v4/b1;

    sget-object v1, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->mcElieceCca2:Lorg/bouncycastle/asn1/catch;

    invoke-direct {v0, v1}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;)V

    new-instance v1, Lorg/bouncycastle/asn1/pkcs/do;

    invoke-direct {v1, v0, v7}, Lorg/bouncycastle/asn1/pkcs/do;-><init>(Landroid/support/v4/b1;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/break;->getEncoded()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getField()Landroid/support/v4/se0;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/do;->params:Landroid/support/v4/xy0;

    invoke-virtual {v0}, Landroid/support/v4/xy0;->for()Landroid/support/v4/se0;

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public getGoppaPoly()Landroid/support/v4/pe1;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/do;->params:Landroid/support/v4/xy0;

    invoke-virtual {v0}, Landroid/support/v4/xy0;->new()Landroid/support/v4/pe1;

    move-result-object v0

    return-object v0
.end method

.method public getH()Landroid/support/v4/qe0;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/do;->params:Landroid/support/v4/xy0;

    invoke-virtual {v0}, Landroid/support/v4/xy0;->try()Landroid/support/v4/qe0;

    move-result-object v0

    return-object v0
.end method

.method public getK()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/do;->params:Landroid/support/v4/xy0;

    invoke-virtual {v0}, Landroid/support/v4/xy0;->case()I

    move-result v0

    return v0
.end method

.method public getKeyParams()Landroid/support/v4/a4;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/do;->params:Landroid/support/v4/xy0;

    return-object v0
.end method

.method public getN()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/do;->params:Landroid/support/v4/xy0;

    invoke-virtual {v0}, Landroid/support/v4/xy0;->else()I

    move-result v0

    return v0
.end method

.method public getP()Landroid/support/v4/fd1;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/do;->params:Landroid/support/v4/xy0;

    invoke-virtual {v0}, Landroid/support/v4/xy0;->goto()Landroid/support/v4/fd1;

    move-result-object v0

    return-object v0
.end method

.method public getQInv()[Landroid/support/v4/pe1;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/do;->params:Landroid/support/v4/xy0;

    invoke-virtual {v0}, Landroid/support/v4/xy0;->this()[Landroid/support/v4/pe1;

    move-result-object v0

    return-object v0
.end method

.method public getT()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/do;->params:Landroid/support/v4/xy0;

    invoke-virtual {v0}, Landroid/support/v4/xy0;->new()Landroid/support/v4/pe1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/pe1;->final()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/do;->params:Landroid/support/v4/xy0;

    invoke-virtual {v0}, Landroid/support/v4/xy0;->case()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/do;->params:Landroid/support/v4/xy0;

    invoke-virtual {v1}, Landroid/support/v4/xy0;->else()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/do;->params:Landroid/support/v4/xy0;

    invoke-virtual {v1}, Landroid/support/v4/xy0;->for()Landroid/support/v4/se0;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/se0;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/do;->params:Landroid/support/v4/xy0;

    invoke-virtual {v1}, Landroid/support/v4/xy0;->new()Landroid/support/v4/pe1;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/pe1;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/do;->params:Landroid/support/v4/xy0;

    invoke-virtual {v1}, Landroid/support/v4/xy0;->goto()Landroid/support/v4/fd1;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/fd1;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/do;->params:Landroid/support/v4/xy0;

    invoke-virtual {v1}, Landroid/support/v4/xy0;->try()Landroid/support/v4/qe0;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/qe0;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
