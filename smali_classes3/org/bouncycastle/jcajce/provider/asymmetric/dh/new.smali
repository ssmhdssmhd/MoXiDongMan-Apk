.class public Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/crypto/interfaces/DHPublicKey;


# static fields
.field public static final serialVersionUID:J = -0x301d7d6f0dc1b04L


# instance fields
.field private transient do:Landroid/support/v4/ru;

.field private transient for:Lorg/bouncycastle/asn1/x509/try;

.field private transient if:Ljavax/crypto/spec/DHParameterSpec;

.field private y:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Landroid/support/v4/ru;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/support/v4/ru;->for()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->y:Ljava/math/BigInteger;

    new-instance v0, Landroid/support/v4/eu;

    invoke-virtual {p1}, Landroid/support/v4/ku;->if()Landroid/support/v4/ou;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/eu;-><init>(Landroid/support/v4/ou;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->if:Ljavax/crypto/spec/DHParameterSpec;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->do:Landroid/support/v4/ru;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljavax/crypto/spec/DHParameterSpec;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->y:Ljava/math/BigInteger;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->if:Ljavax/crypto/spec/DHParameterSpec;

    instance-of v0, p2, Landroid/support/v4/eu;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v4/ru;

    check-cast p2, Landroid/support/v4/eu;

    invoke-virtual {p2}, Landroid/support/v4/eu;->do()Landroid/support/v4/ou;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/support/v4/ru;-><init>(Ljava/math/BigInteger;Landroid/support/v4/ou;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/support/v4/ru;

    new-instance v1, Landroid/support/v4/ou;

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Landroid/support/v4/ou;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, p1, v1}, Landroid/support/v4/ru;-><init>(Ljava/math/BigInteger;Landroid/support/v4/ou;)V

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->do:Landroid/support/v4/ru;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/interfaces/DHPublicKey;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->y:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->if:Ljavax/crypto/spec/DHParameterSpec;

    new-instance p1, Landroid/support/v4/ru;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->y:Ljava/math/BigInteger;

    new-instance v1, Landroid/support/v4/ou;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->if:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->if:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/support/v4/ou;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {p1, v0, v1}, Landroid/support/v4/ru;-><init>(Ljava/math/BigInteger;Landroid/support/v4/ou;)V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->do:Landroid/support/v4/ru;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/spec/DHPublicKeySpec;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getY()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->y:Ljava/math/BigInteger;

    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->if:Ljavax/crypto/spec/DHParameterSpec;

    new-instance v0, Landroid/support/v4/ru;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->y:Ljava/math/BigInteger;

    new-instance v2, Landroid/support/v4/ou;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Landroid/support/v4/ou;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2}, Landroid/support/v4/ru;-><init>(Ljava/math/BigInteger;Landroid/support/v4/ou;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->do:Landroid/support/v4/ru;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/try;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->for:Lorg/bouncycastle/asn1/x509/try;

    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/try;->break()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/goto;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->y:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/try;->new()Landroid/support/v4/b1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/b1;->else()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/try;->new()Landroid/support/v4/b1;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/b1;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object p1

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->do(Lorg/bouncycastle/asn1/super;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->dhpublicnumber:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Landroid/support/v4/z10;->try(Ljava/lang/Object;)Landroid/support/v4/z10;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/z10;->catch()Landroid/support/v4/fe2;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Landroid/support/v4/ru;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->y:Ljava/math/BigInteger;

    new-instance v9, Landroid/support/v4/ou;

    invoke-virtual {p1}, Landroid/support/v4/z10;->this()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Landroid/support/v4/z10;->new()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p1}, Landroid/support/v4/z10;->break()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p1}, Landroid/support/v4/z10;->else()Ljava/math/BigInteger;

    move-result-object v7

    new-instance v8, Landroid/support/v4/xu;

    invoke-virtual {v0}, Landroid/support/v4/fe2;->else()[B

    move-result-object p1

    invoke-virtual {v0}, Landroid/support/v4/fe2;->case()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-direct {v8, p1, v0}, Landroid/support/v4/xu;-><init>([BI)V

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Landroid/support/v4/ou;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Landroid/support/v4/xu;)V

    invoke-direct {v1, v2, v9}, Landroid/support/v4/ru;-><init>(Ljava/math/BigInteger;Landroid/support/v4/ou;)V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->do:Landroid/support/v4/ru;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/ru;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->y:Ljava/math/BigInteger;

    new-instance v8, Landroid/support/v4/ou;

    invoke-virtual {p1}, Landroid/support/v4/z10;->this()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Landroid/support/v4/z10;->new()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Landroid/support/v4/z10;->break()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p1}, Landroid/support/v4/z10;->else()Ljava/math/BigInteger;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroid/support/v4/ou;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Landroid/support/v4/xu;)V

    invoke-direct {v0, v1, v8}, Landroid/support/v4/ru;-><init>(Ljava/math/BigInteger;Landroid/support/v4/ou;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->do:Landroid/support/v4/ru;

    :goto_0
    new-instance p1, Landroid/support/v4/eu;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->do:Landroid/support/v4/ru;

    invoke-virtual {v0}, Landroid/support/v4/ku;->if()Landroid/support/v4/ou;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v4/eu;-><init>(Landroid/support/v4/ou;)V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->if:Ljavax/crypto/spec/DHParameterSpec;

    goto :goto_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown algorithm type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    invoke-static {v0}, Landroid/support/v4/nu;->try(Ljava/lang/Object;)Landroid/support/v4/nu;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/nu;->case()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, Landroid/support/v4/nu;->else()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/nu;->new()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v4/nu;->case()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    goto :goto_2

    :cond_4
    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, Landroid/support/v4/nu;->else()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/nu;->new()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :goto_2
    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->if:Ljavax/crypto/spec/DHParameterSpec;

    new-instance p1, Landroid/support/v4/ru;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->y:Ljava/math/BigInteger;

    new-instance v1, Landroid/support/v4/ou;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->if:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->if:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/support/v4/ou;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {p1, v0, v1}, Landroid/support/v4/ru;-><init>(Ljava/math/BigInteger;Landroid/support/v4/ou;)V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->do:Landroid/support/v4/ru;

    :goto_3
    return-void

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid info structure in DH public key"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private do(Lorg/bouncycastle/asn1/super;)Z
    .locals 5

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-le v0, v3, :cond_1

    return v4

    :cond_1
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object v0

    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object p1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-lez p1, :cond_2

    return v4

    :cond_2
    return v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->if:Ljavax/crypto/spec/DHParameterSpec;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->for:Lorg/bouncycastle/asn1/x509/try;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->if:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->if:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->if:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    return-void
.end method


# virtual methods
.method public engineGetKeyParameters()Landroid/support/v4/ru;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->do:Landroid/support/v4/ru;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljavax/crypto/interfaces/DHPublicKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljavax/crypto/interfaces/DHPublicKey;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v0

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result p1

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "DH"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 10

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->for:Lorg/bouncycastle/asn1/x509/try;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/support/v4/nr0;->try(Lorg/bouncycastle/asn1/x509/try;)[B

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->if:Ljavax/crypto/spec/DHParameterSpec;

    instance-of v1, v0, Landroid/support/v4/eu;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/support/v4/eu;

    invoke-virtual {v0}, Landroid/support/v4/eu;->new()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->if:Ljavax/crypto/spec/DHParameterSpec;

    check-cast v0, Landroid/support/v4/eu;

    invoke-virtual {v0}, Landroid/support/v4/eu;->do()Landroid/support/v4/ou;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/ou;->goto()Landroid/support/v4/xu;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v2, Landroid/support/v4/fe2;

    invoke-virtual {v1}, Landroid/support/v4/xu;->if()[B

    move-result-object v3

    invoke-virtual {v1}, Landroid/support/v4/xu;->do()I

    move-result v1

    invoke-direct {v2, v3, v1}, Landroid/support/v4/fe2;-><init>([BI)V

    :cond_1
    move-object v9, v2

    new-instance v1, Landroid/support/v4/b1;

    sget-object v2, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->dhpublicnumber:Lorg/bouncycastle/asn1/catch;

    new-instance v3, Landroid/support/v4/z10;

    invoke-virtual {v0}, Landroid/support/v4/ou;->case()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Landroid/support/v4/ou;->if()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0}, Landroid/support/v4/ou;->else()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v0}, Landroid/support/v4/ou;->for()Ljava/math/BigInteger;

    move-result-object v8

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Landroid/support/v4/z10;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Landroid/support/v4/fe2;)V

    invoke-virtual {v3}, Landroid/support/v4/z10;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/goto;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->y:Ljava/math/BigInteger;

    invoke-direct {v0, v2}, Lorg/bouncycastle/asn1/goto;-><init>(Ljava/math/BigInteger;)V

    invoke-static {v1, v0}, Landroid/support/v4/nr0;->for(Landroid/support/v4/b1;Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Landroid/support/v4/b1;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lorg/bouncycastle/asn1/catch;

    new-instance v2, Landroid/support/v4/nu;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->if:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->if:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v4}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->if:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v5}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Landroid/support/v4/nu;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-virtual {v2}, Landroid/support/v4/nu;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/goto;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->y:Ljava/math/BigInteger;

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

.method public getParams()Ljavax/crypto/spec/DHParameterSpec;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->if:Ljavax/crypto/spec/DHParameterSpec;

    return-object v0
.end method

.method public getY()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->y:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->y:Ljava/math/BigInteger;

    new-instance v1, Landroid/support/v4/ou;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->if:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/new;->if:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/support/v4/ou;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const-string v2, "DH"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/try;->for(Ljava/lang/String;Ljava/math/BigInteger;Landroid/support/v4/ou;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
