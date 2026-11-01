.class public Landroid/support/v4/v5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;
.implements Ljava/security/PublicKey;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private gmssParameterSet:Lorg/bouncycastle/pqc/crypto/gmss/do;

.field private gmssParams:Lorg/bouncycastle/pqc/crypto/gmss/do;

.field private publicKeyBytes:[B


# direct methods
.method public constructor <init>(Landroid/support/v4/gf0;)V
    .locals 1

    invoke-virtual {p1}, Landroid/support/v4/gf0;->for()[B

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/bf0;->if()Lorg/bouncycastle/pqc/crypto/gmss/do;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/support/v4/v5;-><init>([BLorg/bouncycastle/pqc/crypto/gmss/do;)V

    return-void
.end method

.method public constructor <init>([BLorg/bouncycastle/pqc/crypto/gmss/do;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/support/v4/v5;->gmssParameterSet:Lorg/bouncycastle/pqc/crypto/gmss/do;

    iput-object p1, p0, Landroid/support/v4/v5;->publicKeyBytes:[B

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "GMSS"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 7

    new-instance v0, Landroid/support/v4/b1;

    sget-object v1, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->gmss:Lorg/bouncycastle/asn1/catch;

    new-instance v2, Landroid/support/v4/rb1;

    iget-object v3, p0, Landroid/support/v4/v5;->gmssParameterSet:Lorg/bouncycastle/pqc/crypto/gmss/do;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/gmss/do;->for()I

    move-result v3

    iget-object v4, p0, Landroid/support/v4/v5;->gmssParameterSet:Lorg/bouncycastle/pqc/crypto/gmss/do;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/gmss/do;->do()[I

    move-result-object v4

    iget-object v5, p0, Landroid/support/v4/v5;->gmssParameterSet:Lorg/bouncycastle/pqc/crypto/gmss/do;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/gmss/do;->new()[I

    move-result-object v5

    iget-object v6, p0, Landroid/support/v4/v5;->gmssParameterSet:Lorg/bouncycastle/pqc/crypto/gmss/do;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/gmss/do;->if()[I

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/support/v4/rb1;-><init>(I[I[I[I)V

    invoke-virtual {v2}, Landroid/support/v4/rb1;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Landroid/support/v4/ff0;

    iget-object v2, p0, Landroid/support/v4/v5;->publicKeyBytes:[B

    invoke-direct {v1, v2}, Landroid/support/v4/ff0;-><init>([B)V

    invoke-static {v0, v1}, Landroid/support/v4/mr0;->for(Landroid/support/v4/b1;Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "X.509"

    return-object v0
.end method

.method public getParameterSet()Lorg/bouncycastle/pqc/crypto/gmss/do;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/v5;->gmssParameterSet:Lorg/bouncycastle/pqc/crypto/gmss/do;

    return-object v0
.end method

.method public getPublicKeyBytes()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/v5;->publicKeyBytes:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GMSS public key : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v4/v5;->publicKeyBytes:[B

    invoke-static {v2}, Lorg/bouncycastle/util/encoders/for;->case([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nHeight of Trees: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/support/v4/v5;->gmssParameterSet:Lorg/bouncycastle/pqc/crypto/gmss/do;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/gmss/do;->do()[I

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Layer "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/v4/v5;->gmssParameterSet:Lorg/bouncycastle/pqc/crypto/gmss/do;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gmss/do;->do()[I

    move-result-object v0

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " WinternitzParameter: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/v4/v5;->gmssParameterSet:Lorg/bouncycastle/pqc/crypto/gmss/do;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gmss/do;->new()[I

    move-result-object v0

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " K: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/support/v4/v5;->gmssParameterSet:Lorg/bouncycastle/pqc/crypto/gmss/do;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gmss/do;->if()[I

    move-result-object v0

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
