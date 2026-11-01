.class public Landroid/support/v4/z5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PublicKey;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private params:Landroid/support/v4/iz0;


# direct methods
.method public constructor <init>(Landroid/support/v4/iz0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/z5;->params:Landroid/support/v4/iz0;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroid/support/v4/z5;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/z5;

    iget-object v0, p0, Landroid/support/v4/z5;->params:Landroid/support/v4/iz0;

    invoke-virtual {v0}, Landroid/support/v4/iz0;->try()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v4/z5;->getN()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Landroid/support/v4/z5;->params:Landroid/support/v4/iz0;

    invoke-virtual {v0}, Landroid/support/v4/iz0;->case()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v4/z5;->getT()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Landroid/support/v4/z5;->params:Landroid/support/v4/iz0;

    invoke-virtual {v0}, Landroid/support/v4/iz0;->for()Landroid/support/v4/qe0;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/z5;->getG()Landroid/support/v4/qe0;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/qe0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "McEliece"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 4

    new-instance v0, Landroid/support/v4/hz0;

    iget-object v1, p0, Landroid/support/v4/z5;->params:Landroid/support/v4/iz0;

    invoke-virtual {v1}, Landroid/support/v4/iz0;->try()I

    move-result v1

    iget-object v2, p0, Landroid/support/v4/z5;->params:Landroid/support/v4/iz0;

    invoke-virtual {v2}, Landroid/support/v4/iz0;->case()I

    move-result v2

    iget-object v3, p0, Landroid/support/v4/z5;->params:Landroid/support/v4/iz0;

    invoke-virtual {v3}, Landroid/support/v4/iz0;->for()Landroid/support/v4/qe0;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/hz0;-><init>(IILandroid/support/v4/qe0;)V

    new-instance v1, Landroid/support/v4/b1;

    sget-object v2, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->mcEliece:Lorg/bouncycastle/asn1/catch;

    invoke-direct {v1, v2}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;)V

    :try_start_0
    new-instance v2, Lorg/bouncycastle/asn1/x509/try;

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/asn1/x509/try;-><init>(Landroid/support/v4/b1;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/break;->getEncoded()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "X.509"

    return-object v0
.end method

.method public getG()Landroid/support/v4/qe0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/z5;->params:Landroid/support/v4/iz0;

    invoke-virtual {v0}, Landroid/support/v4/iz0;->for()Landroid/support/v4/qe0;

    move-result-object v0

    return-object v0
.end method

.method public getK()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/z5;->params:Landroid/support/v4/iz0;

    invoke-virtual {v0}, Landroid/support/v4/iz0;->new()I

    move-result v0

    return v0
.end method

.method public getKeyParams()Landroid/support/v4/a4;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/z5;->params:Landroid/support/v4/iz0;

    return-object v0
.end method

.method public getN()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/z5;->params:Landroid/support/v4/iz0;

    invoke-virtual {v0}, Landroid/support/v4/iz0;->try()I

    move-result v0

    return v0
.end method

.method public getT()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/z5;->params:Landroid/support/v4/iz0;

    invoke-virtual {v0}, Landroid/support/v4/iz0;->case()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroid/support/v4/z5;->params:Landroid/support/v4/iz0;

    invoke-virtual {v0}, Landroid/support/v4/iz0;->try()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/z5;->params:Landroid/support/v4/iz0;

    invoke-virtual {v1}, Landroid/support/v4/iz0;->case()I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Landroid/support/v4/z5;->params:Landroid/support/v4/iz0;

    invoke-virtual {v1}, Landroid/support/v4/iz0;->for()Landroid/support/v4/qe0;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/qe0;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "McEliecePublicKey:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " length of the code         : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/z5;->params:Landroid/support/v4/iz0;

    invoke-virtual {v1}, Landroid/support/v4/iz0;->try()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " error correction capability: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/v4/z5;->params:Landroid/support/v4/iz0;

    invoke-virtual {v0}, Landroid/support/v4/iz0;->case()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " generator matrix           : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/v4/z5;->params:Landroid/support/v4/iz0;

    invoke-virtual {v0}, Landroid/support/v4/iz0;->for()Landroid/support/v4/qe0;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
