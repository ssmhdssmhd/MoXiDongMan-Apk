.class public Lorg/bouncycastle/jce/provider/final;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/jce/interfaces/ElGamalPrivateKey;
.implements Ljavax/crypto/interfaces/DHPrivateKey;
.implements Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;


# static fields
.field public static final serialVersionUID:J = 0x42e1c55fb6bcc04eL


# instance fields
.field private attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

.field public elSpec:Landroid/support/v4/k60;

.field public x:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/final;->attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/m60;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/final;->attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    invoke-virtual {p1}, Landroid/support/v4/m60;->for()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/final;->x:Ljava/math/BigInteger;

    new-instance v0, Landroid/support/v4/k60;

    invoke-virtual {p1}, Landroid/support/v4/h60;->if()Landroid/support/v4/l60;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/l60;->for()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/h60;->if()Landroid/support/v4/l60;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/l60;->do()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/k60;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/final;->elSpec:Landroid/support/v4/k60;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/n60;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/final;->attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    invoke-virtual {p1}, Landroid/support/v4/n60;->if()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/final;->x:Ljava/math/BigInteger;

    new-instance v0, Landroid/support/v4/k60;

    invoke-virtual {p1}, Landroid/support/v4/i60;->do()Landroid/support/v4/k60;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/k60;->if()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/i60;->do()Landroid/support/v4/k60;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/k60;->do()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/k60;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/final;->elSpec:Landroid/support/v4/k60;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/interfaces/DHPrivateKey;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/final;->attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/final;->x:Ljava/math/BigInteger;

    new-instance v0, Landroid/support/v4/k60;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPrivateKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/k60;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/final;->elSpec:Landroid/support/v4/k60;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/spec/DHPrivateKeySpec;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/final;->attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPrivateKeySpec;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/final;->x:Ljava/math/BigInteger;

    new-instance v0, Landroid/support/v4/k60;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPrivateKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPrivateKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/k60;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/final;->elSpec:Landroid/support/v4/k60;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/pkcs/do;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/final;->attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/do;->else()Landroid/support/v4/b1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/b1;->else()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/j60;->try(Ljava/lang/Object;)Landroid/support/v4/j60;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/do;->catch()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/final;->x:Ljava/math/BigInteger;

    new-instance p1, Landroid/support/v4/k60;

    invoke-virtual {v0}, Landroid/support/v4/j60;->case()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v4/j60;->new()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Landroid/support/v4/k60;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/final;->elSpec:Landroid/support/v4/k60;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/jce/interfaces/ElGamalPrivateKey;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/final;->attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    invoke-interface {p1}, Lorg/bouncycastle/jce/interfaces/ElGamalPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/final;->x:Ljava/math/BigInteger;

    invoke-interface {p1}, Lorg/bouncycastle/jce/interfaces/ElGamalKey;->getParameters()Landroid/support/v4/k60;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/final;->elSpec:Landroid/support/v4/k60;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/final;->x:Ljava/math/BigInteger;

    new-instance v0, Landroid/support/v4/k60;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/math/BigInteger;

    invoke-direct {v0, v1, p1}, Landroid/support/v4/k60;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/final;->elSpec:Landroid/support/v4/k60;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/final;->getX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/final;->elSpec:Landroid/support/v4/k60;

    invoke-virtual {v0}, Landroid/support/v4/k60;->if()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/final;->elSpec:Landroid/support/v4/k60;

    invoke-virtual {v0}, Landroid/support/v4/k60;->do()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "ElGamal"

    return-object v0
.end method

.method public getBagAttribute(Lorg/bouncycastle/asn1/catch;)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/final;->attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;->getBagAttribute(Lorg/bouncycastle/asn1/catch;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    return-object p1
.end method

.method public getBagAttributeKeys()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/final;->attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 5

    new-instance v0, Landroid/support/v4/b1;

    sget-object v1, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->elGamalAlgorithm:Lorg/bouncycastle/asn1/catch;

    new-instance v2, Landroid/support/v4/j60;

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/final;->elSpec:Landroid/support/v4/k60;

    invoke-virtual {v3}, Landroid/support/v4/k60;->if()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/jce/provider/final;->elSpec:Landroid/support/v4/k60;

    invoke-virtual {v4}, Landroid/support/v4/k60;->do()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/support/v4/j60;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/final;->getX()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(Ljava/math/BigInteger;)V

    invoke-static {v0, v1}, Landroid/support/v4/nr0;->do(Landroid/support/v4/b1;Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public getParameters()Landroid/support/v4/k60;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/final;->elSpec:Landroid/support/v4/k60;

    return-object v0
.end method

.method public getParams()Ljavax/crypto/spec/DHParameterSpec;
    .locals 3

    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/final;->elSpec:Landroid/support/v4/k60;

    invoke-virtual {v1}, Landroid/support/v4/k60;->if()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/final;->elSpec:Landroid/support/v4/k60;

    invoke-virtual {v2}, Landroid/support/v4/k60;->do()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public getX()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/final;->x:Ljava/math/BigInteger;

    return-object v0
.end method

.method public setBagAttribute(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/final;->attrCarrier:Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;->setBagAttribute(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method
