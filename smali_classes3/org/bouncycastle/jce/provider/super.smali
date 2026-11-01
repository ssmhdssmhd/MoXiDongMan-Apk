.class public Lorg/bouncycastle/jce/provider/super;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/jce/interfaces/ElGamalPublicKey;
.implements Ljavax/crypto/interfaces/DHPublicKey;


# static fields
.field public static final serialVersionUID:J = 0x78e9d455552c6634L


# instance fields
.field private elSpec:Landroid/support/v4/k60;

.field private y:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Landroid/support/v4/o60;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/support/v4/o60;->for()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/super;->y:Ljava/math/BigInteger;

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

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/super;->elSpec:Landroid/support/v4/k60;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/p60;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/support/v4/p60;->if()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/super;->y:Ljava/math/BigInteger;

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

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/super;->elSpec:Landroid/support/v4/k60;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Landroid/support/v4/k60;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/super;->y:Ljava/math/BigInteger;

    iput-object p2, p0, Lorg/bouncycastle/jce/provider/super;->elSpec:Landroid/support/v4/k60;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/interfaces/DHPublicKey;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/super;->y:Ljava/math/BigInteger;

    new-instance v0, Landroid/support/v4/k60;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/k60;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/super;->elSpec:Landroid/support/v4/k60;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/spec/DHPublicKeySpec;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/super;->y:Ljava/math/BigInteger;

    new-instance v0, Landroid/support/v4/k60;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/k60;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/super;->elSpec:Landroid/support/v4/k60;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/try;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/try;->new()Landroid/support/v4/b1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/b1;->else()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/j60;->try(Ljava/lang/Object;)Landroid/support/v4/j60;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/try;->break()Lorg/bouncycastle/asn1/final;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/goto;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/super;->y:Ljava/math/BigInteger;

    new-instance p1, Landroid/support/v4/k60;

    invoke-virtual {v0}, Landroid/support/v4/j60;->case()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v4/j60;->new()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Landroid/support/v4/k60;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/super;->elSpec:Landroid/support/v4/k60;

    return-void

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid info structure in DSA public key"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/jce/interfaces/ElGamalPublicKey;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/bouncycastle/jce/interfaces/ElGamalPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/super;->y:Ljava/math/BigInteger;

    invoke-interface {p1}, Lorg/bouncycastle/jce/interfaces/ElGamalKey;->getParameters()Landroid/support/v4/k60;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/super;->elSpec:Landroid/support/v4/k60;

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

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/super;->y:Ljava/math/BigInteger;

    new-instance v0, Landroid/support/v4/k60;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/math/BigInteger;

    invoke-direct {v0, v1, p1}, Landroid/support/v4/k60;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/super;->elSpec:Landroid/support/v4/k60;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/super;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/super;->elSpec:Landroid/support/v4/k60;

    invoke-virtual {v0}, Landroid/support/v4/k60;->if()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/super;->elSpec:Landroid/support/v4/k60;

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

.method public getEncoded()[B
    .locals 5

    new-instance v0, Landroid/support/v4/b1;

    sget-object v1, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->elGamalAlgorithm:Lorg/bouncycastle/asn1/catch;

    new-instance v2, Landroid/support/v4/j60;

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/super;->elSpec:Landroid/support/v4/k60;

    invoke-virtual {v3}, Landroid/support/v4/k60;->if()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/jce/provider/super;->elSpec:Landroid/support/v4/k60;

    invoke-virtual {v4}, Landroid/support/v4/k60;->do()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/support/v4/j60;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/goto;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/super;->y:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(Ljava/math/BigInteger;)V

    invoke-static {v0, v1}, Landroid/support/v4/nr0;->for(Landroid/support/v4/b1;Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "X.509"

    return-object v0
.end method

.method public getParameters()Landroid/support/v4/k60;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/super;->elSpec:Landroid/support/v4/k60;

    return-object v0
.end method

.method public getParams()Ljavax/crypto/spec/DHParameterSpec;
    .locals 3

    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/super;->elSpec:Landroid/support/v4/k60;

    invoke-virtual {v1}, Landroid/support/v4/k60;->if()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/super;->elSpec:Landroid/support/v4/k60;

    invoke-virtual {v2}, Landroid/support/v4/k60;->do()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public getY()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/super;->y:Ljava/math/BigInteger;

    return-object v0
.end method
