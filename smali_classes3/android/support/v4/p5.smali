.class public Landroid/support/v4/p5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/interfaces/ECPrivateKey;
.implements Lorg/bouncycastle/jce/interfaces/ECPrivateKey;
.implements Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
.implements Lorg/bouncycastle/jce/interfaces/ECPointEncoder;


# static fields
.field public static final serialVersionUID:J = 0x648ee5f4b1b13042L


# instance fields
.field private algorithm:Ljava/lang/String;

.field private transient do:Ljava/math/BigInteger;

.field private transient for:Lorg/bouncycastle/asn1/instanceof;

.field private transient if:Ljava/security/spec/ECParameterSpec;

.field private transient new:Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

.field private withCompression:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DSTU4145"

    iput-object v0, p0, Landroid/support/v4/p5;->algorithm:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;-><init>()V

    iput-object v0, p0, Landroid/support/v4/p5;->new:Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/i50;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DSTU4145"

    iput-object v0, p0, Landroid/support/v4/p5;->algorithm:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;-><init>()V

    iput-object v0, p0, Landroid/support/v4/p5;->new:Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    invoke-virtual {p1}, Landroid/support/v4/i50;->if()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/p5;->do:Ljava/math/BigInteger;

    invoke-virtual {p1}, Landroid/support/v4/t40;->do()Landroid/support/v4/d50;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/t40;->do()Landroid/support/v4/d50;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/d50;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/t40;->do()Landroid/support/v4/d50;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/d50;->try()[B

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/t30;->do(Lorg/bouncycastle/math/ec/if;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/t40;->do()Landroid/support/v4/d50;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/support/v4/t30;->goto(Ljava/security/spec/EllipticCurve;Landroid/support/v4/d50;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Landroid/support/v4/p5;->if:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/p5;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DSTU4145"

    iput-object v0, p0, Landroid/support/v4/p5;->algorithm:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;-><init>()V

    iput-object v0, p0, Landroid/support/v4/p5;->new:Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    iget-object v0, p1, Landroid/support/v4/p5;->do:Ljava/math/BigInteger;

    iput-object v0, p0, Landroid/support/v4/p5;->do:Ljava/math/BigInteger;

    iget-object v0, p1, Landroid/support/v4/p5;->if:Ljava/security/spec/ECParameterSpec;

    iput-object v0, p0, Landroid/support/v4/p5;->if:Ljava/security/spec/ECParameterSpec;

    iget-boolean v0, p1, Landroid/support/v4/p5;->withCompression:Z

    iput-boolean v0, p0, Landroid/support/v4/p5;->withCompression:Z

    iget-object v0, p1, Landroid/support/v4/p5;->new:Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    iput-object v0, p0, Landroid/support/v4/p5;->new:Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    iget-object p1, p1, Landroid/support/v4/p5;->for:Lorg/bouncycastle/asn1/instanceof;

    iput-object p1, p0, Landroid/support/v4/p5;->for:Lorg/bouncycastle/asn1/instanceof;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/support/v4/h50;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DSTU4145"

    iput-object v0, p0, Landroid/support/v4/p5;->algorithm:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;-><init>()V

    iput-object v0, p0, Landroid/support/v4/p5;->new:Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    iput-object p1, p0, Landroid/support/v4/p5;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/support/v4/h50;->for()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/p5;->do:Ljava/math/BigInteger;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/p5;->if:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/support/v4/h50;Landroid/support/v4/q5;Landroid/support/v4/d50;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DSTU4145"

    iput-object v0, p0, Landroid/support/v4/p5;->algorithm:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;-><init>()V

    iput-object v0, p0, Landroid/support/v4/p5;->new:Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    invoke-virtual {p2}, Landroid/support/v4/s40;->if()Landroid/support/v4/e40;

    move-result-object v0

    iput-object p1, p0, Landroid/support/v4/p5;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/support/v4/h50;->for()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/p5;->do:Ljava/math/BigInteger;

    if-nez p4, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/e40;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object p1

    invoke-virtual {v0}, Landroid/support/v4/e40;->case()[B

    move-result-object p2

    invoke-static {p1, p2}, Landroid/support/v4/t30;->do(Lorg/bouncycastle/math/ec/if;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    new-instance p2, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Landroid/support/v4/e40;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object p4

    invoke-static {p4}, Landroid/support/v4/t30;->new(Lorg/bouncycastle/math/ec/new;)Ljava/security/spec/ECPoint;

    move-result-object p4

    invoke-virtual {v0}, Landroid/support/v4/e40;->try()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v4/e40;->for()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-direct {p2, p1, p4, v1, v0}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Landroid/support/v4/d50;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object p1

    invoke-virtual {p4}, Landroid/support/v4/d50;->try()[B

    move-result-object p2

    invoke-static {p1, p2}, Landroid/support/v4/t30;->do(Lorg/bouncycastle/math/ec/if;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    new-instance p2, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p4}, Landroid/support/v4/d50;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/t30;->new(Lorg/bouncycastle/math/ec/new;)Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-virtual {p4}, Landroid/support/v4/d50;->new()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p4}, Landroid/support/v4/d50;->for()Ljava/math/BigInteger;

    move-result-object p4

    invoke-virtual {p4}, Ljava/math/BigInteger;->intValue()I

    move-result p4

    invoke-direct {p2, p1, v0, v1, p4}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    :goto_0
    iput-object p2, p0, Landroid/support/v4/p5;->if:Ljava/security/spec/ECParameterSpec;

    invoke-direct {p0, p3}, Landroid/support/v4/p5;->do(Landroid/support/v4/q5;)Lorg/bouncycastle/asn1/instanceof;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/p5;->for:Lorg/bouncycastle/asn1/instanceof;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/support/v4/h50;Landroid/support/v4/q5;Ljava/security/spec/ECParameterSpec;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DSTU4145"

    iput-object v0, p0, Landroid/support/v4/p5;->algorithm:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;-><init>()V

    iput-object v0, p0, Landroid/support/v4/p5;->new:Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    invoke-virtual {p2}, Landroid/support/v4/s40;->if()Landroid/support/v4/e40;

    move-result-object v0

    iput-object p1, p0, Landroid/support/v4/p5;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/support/v4/h50;->for()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/p5;->do:Ljava/math/BigInteger;

    if-nez p4, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/e40;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object p1

    invoke-virtual {v0}, Landroid/support/v4/e40;->case()[B

    move-result-object p2

    invoke-static {p1, p2}, Landroid/support/v4/t30;->do(Lorg/bouncycastle/math/ec/if;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    new-instance p2, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Landroid/support/v4/e40;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object p4

    invoke-static {p4}, Landroid/support/v4/t30;->new(Lorg/bouncycastle/math/ec/new;)Ljava/security/spec/ECPoint;

    move-result-object p4

    invoke-virtual {v0}, Landroid/support/v4/e40;->try()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v4/e40;->for()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-direct {p2, p1, p4, v1, v0}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object p2, p0, Landroid/support/v4/p5;->if:Ljava/security/spec/ECParameterSpec;

    goto :goto_0

    :cond_0
    iput-object p4, p0, Landroid/support/v4/p5;->if:Ljava/security/spec/ECParameterSpec;

    :goto_0
    invoke-direct {p0, p3}, Landroid/support/v4/p5;->do(Landroid/support/v4/q5;)Lorg/bouncycastle/asn1/instanceof;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/p5;->for:Lorg/bouncycastle/asn1/instanceof;

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DSTU4145"

    iput-object v0, p0, Landroid/support/v4/p5;->algorithm:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;-><init>()V

    iput-object v0, p0, Landroid/support/v4/p5;->new:Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/p5;->do:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/p5;->algorithm:Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/p5;->if:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>(Ljava/security/spec/ECPrivateKeySpec;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DSTU4145"

    iput-object v0, p0, Landroid/support/v4/p5;->algorithm:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;-><init>()V

    iput-object v0, p0, Landroid/support/v4/p5;->new:Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    invoke-virtual {p1}, Ljava/security/spec/ECPrivateKeySpec;->getS()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/p5;->do:Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/security/spec/ECPrivateKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/p5;->if:Ljava/security/spec/ECParameterSpec;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/pkcs/do;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DSTU4145"

    iput-object v0, p0, Landroid/support/v4/p5;->algorithm:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;-><init>()V

    iput-object v0, p0, Landroid/support/v4/p5;->new:Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    invoke-direct {p0, p1}, Landroid/support/v4/p5;->if(Lorg/bouncycastle/asn1/pkcs/do;)V

    return-void
.end method

.method private do(Landroid/support/v4/q5;)Lorg/bouncycastle/asn1/instanceof;
    .locals 0

    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/q5;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/final;->else([B)Lorg/bouncycastle/asn1/final;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/try;->case(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/try;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/try;->this()Lorg/bouncycastle/asn1/instanceof;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private for([B)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    aget-byte v1, p1, v0

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    aget-byte v2, p1, v2

    aput-byte v2, p1, v0

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    aput-byte v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private if(Lorg/bouncycastle/asn1/pkcs/do;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/do;->else()Landroid/support/v4/b1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/b1;->else()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/rh2;->new(Ljava/lang/Object;)Landroid/support/v4/rh2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/rh2;->goto()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/rh2;->case()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/catch;->throw(Ljava/lang/Object;)Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/else;->break(Lorg/bouncycastle/asn1/catch;)Landroid/support/v4/th2;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/support/v4/rv;->do(Lorg/bouncycastle/asn1/catch;)Landroid/support/v4/e40;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/e40;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object v2

    invoke-virtual {v1}, Landroid/support/v4/e40;->case()[B

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v4/t30;->do(Lorg/bouncycastle/math/ec/if;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v6

    new-instance v2, Landroid/support/v4/y40;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/catch;->super()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Landroid/support/v4/e40;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/t30;->new(Lorg/bouncycastle/math/ec/new;)Ljava/security/spec/ECPoint;

    move-result-object v7

    invoke-virtual {v1}, Landroid/support/v4/e40;->try()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v1}, Landroid/support/v4/e40;->for()Ljava/math/BigInteger;

    move-result-object v9

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Landroid/support/v4/y40;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/support/v4/th2;->try()Lorg/bouncycastle/math/ec/if;

    move-result-object v2

    invoke-virtual {v1}, Landroid/support/v4/th2;->class()[B

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v4/t30;->do(Lorg/bouncycastle/math/ec/if;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v6

    new-instance v2, Landroid/support/v4/y40;

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/else;->case(Lorg/bouncycastle/asn1/catch;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Landroid/support/v4/th2;->goto()Lorg/bouncycastle/math/ec/new;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/t30;->new(Lorg/bouncycastle/math/ec/new;)Ljava/security/spec/ECPoint;

    move-result-object v7

    invoke-virtual {v1}, Landroid/support/v4/th2;->catch()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v1}, Landroid/support/v4/th2;->this()Ljava/math/BigInteger;

    move-result-object v9

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Landroid/support/v4/y40;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/rh2;->else()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/p5;->if:Ljava/security/spec/ECParameterSpec;

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v0}, Landroid/support/v4/rh2;->case()Lorg/bouncycastle/asn1/final;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/asn1/goto;

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/support/v4/rh2;->case()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/th2;->break(Ljava/lang/Object;)Landroid/support/v4/th2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/th2;->try()Lorg/bouncycastle/math/ec/if;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v4/th2;->class()[B

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v4/t30;->do(Lorg/bouncycastle/math/ec/if;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0}, Landroid/support/v4/th2;->goto()Lorg/bouncycastle/math/ec/new;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/t30;->new(Lorg/bouncycastle/math/ec/new;)Ljava/security/spec/ECPoint;

    move-result-object v3

    invoke-virtual {v0}, Landroid/support/v4/th2;->catch()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Landroid/support/v4/th2;->this()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-direct {v2, v1, v3, v4, v0}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    :goto_0
    iput-object v2, p0, Landroid/support/v4/p5;->if:Ljava/security/spec/ECParameterSpec;

    goto/16 :goto_2

    :cond_3
    invoke-static {v1}, Landroid/support/v4/uv;->else(Ljava/lang/Object;)Landroid/support/v4/uv;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/uv;->this()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/support/v4/uv;->goto()Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/rv;->do(Lorg/bouncycastle/asn1/catch;)Landroid/support/v4/e40;

    move-result-object v1

    new-instance v9, Landroid/support/v4/x40;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/catch;->super()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/support/v4/e40;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object v4

    invoke-virtual {v1}, Landroid/support/v4/e40;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object v5

    invoke-virtual {v1}, Landroid/support/v4/e40;->try()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v1}, Landroid/support/v4/e40;->for()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1}, Landroid/support/v4/e40;->case()[B

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Landroid/support/v4/x40;-><init>(Ljava/lang/String;Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroid/support/v4/uv;->case()Landroid/support/v4/pv;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/pv;->try()[B

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/do;->else()Landroid/support/v4/b1;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/b1;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu4145le:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, v1}, Landroid/support/v4/p5;->for([B)V

    :cond_5
    invoke-virtual {v0}, Landroid/support/v4/pv;->case()Landroid/support/v4/ov;

    move-result-object v2

    new-instance v11, Lorg/bouncycastle/math/ec/if$try;

    invoke-virtual {v2}, Landroid/support/v4/ov;->goto()I

    move-result v5

    invoke-virtual {v2}, Landroid/support/v4/ov;->try()I

    move-result v6

    invoke-virtual {v2}, Landroid/support/v4/ov;->case()I

    move-result v7

    invoke-virtual {v2}, Landroid/support/v4/ov;->else()I

    move-result v8

    invoke-virtual {v0}, Landroid/support/v4/pv;->new()Ljava/math/BigInteger;

    move-result-object v9

    new-instance v10, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v10, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lorg/bouncycastle/math/ec/if$try;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v0}, Landroid/support/v4/pv;->else()[B

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/do;->else()Landroid/support/v4/b1;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/b1;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0, v1}, Landroid/support/v4/p5;->for([B)V

    :cond_6
    new-instance v9, Landroid/support/v4/d50;

    invoke-static {v11, v1}, Landroid/support/v4/vv;->do(Lorg/bouncycastle/math/ec/if;[B)Lorg/bouncycastle/math/ec/new;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v4/pv;->this()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v9, v11, v1, v0}, Landroid/support/v4/d50;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;)V

    :goto_1
    invoke-virtual {v9}, Landroid/support/v4/d50;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object v0

    invoke-virtual {v9}, Landroid/support/v4/d50;->try()[B

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/t30;->do(Lorg/bouncycastle/math/ec/if;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v0

    new-instance v1, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v9}, Landroid/support/v4/d50;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/t30;->new(Lorg/bouncycastle/math/ec/new;)Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-virtual {v9}, Landroid/support/v4/d50;->new()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v9}, Landroid/support/v4/d50;->for()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    invoke-direct {v1, v0, v2, v3, v4}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object v1, p0, Landroid/support/v4/p5;->if:Ljava/security/spec/ECParameterSpec;

    :goto_2
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/do;->catch()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    instance-of v0, p1, Lorg/bouncycastle/asn1/goto;

    if-eqz v0, :cond_7

    invoke-static {p1}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/p5;->do:Ljava/math/BigInteger;

    goto :goto_3

    :cond_7
    invoke-static {p1}, Landroid/support/v4/g50;->new(Ljava/lang/Object;)Landroid/support/v4/g50;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/g50;->try()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/p5;->do:Ljava/math/BigInteger;

    invoke-virtual {p1}, Landroid/support/v4/g50;->goto()Lorg/bouncycastle/asn1/instanceof;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/p5;->for:Lorg/bouncycastle/asn1/instanceof;

    :goto_3
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1}, Lorg/bouncycastle/asn1/final;->else([B)Lorg/bouncycastle/asn1/final;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/pkcs/do;->try(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/do;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v4/p5;->if(Lorg/bouncycastle/asn1/pkcs/do;)V

    new-instance p1, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    invoke-direct {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;-><init>()V

    iput-object p1, p0, Landroid/support/v4/p5;->new:Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

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

    invoke-virtual {p0}, Landroid/support/v4/p5;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public engineGetSpec()Landroid/support/v4/d50;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/p5;->if:Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroid/support/v4/p5;->withCompression:Z

    invoke-static {v0, v1}, Landroid/support/v4/t30;->else(Ljava/security/spec/ECParameterSpec;Z)Landroid/support/v4/d50;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lorg/bouncycastle/jce/provider/do;->CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Landroid/support/v4/d50;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroid/support/v4/p5;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroid/support/v4/p5;

    invoke-virtual {p0}, Landroid/support/v4/p5;->getD()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/p5;->getD()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/p5;->engineGetSpec()Landroid/support/v4/d50;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/p5;->engineGetSpec()Landroid/support/v4/d50;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/d50;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/p5;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getBagAttribute(Lorg/bouncycastle/asn1/catch;)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/p5;->new:Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;->getBagAttribute(Lorg/bouncycastle/asn1/catch;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    return-object p1
.end method

.method public getBagAttributeKeys()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/p5;->new:Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getD()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/p5;->do:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 9

    iget-object v0, p0, Landroid/support/v4/p5;->if:Ljava/security/spec/ECParameterSpec;

    instance-of v1, v0, Landroid/support/v4/y40;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Landroid/support/v4/y40;

    invoke-virtual {v0}, Landroid/support/v4/y40;->for()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/else;->class(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    iget-object v1, p0, Landroid/support/v4/p5;->if:Ljava/security/spec/ECParameterSpec;

    check-cast v1, Landroid/support/v4/y40;

    invoke-virtual {v1}, Landroid/support/v4/y40;->for()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Landroid/support/v4/rh2;

    invoke-direct {v1, v0}, Landroid/support/v4/rh2;-><init>(Lorg/bouncycastle/asn1/catch;)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    new-instance v1, Landroid/support/v4/rh2;

    sget-object v0, Lorg/bouncycastle/asn1/h;->do:Lorg/bouncycastle/asn1/h;

    invoke-direct {v1, v0}, Landroid/support/v4/rh2;-><init>(Lorg/bouncycastle/asn1/this;)V

    sget-object v0, Lorg/bouncycastle/jce/provider/do;->CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-virtual {p0}, Landroid/support/v4/p5;->getS()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/else;->const(Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/t30;->if(Ljava/security/spec/EllipticCurve;)Lorg/bouncycastle/math/ec/if;

    move-result-object v4

    new-instance v0, Landroid/support/v4/th2;

    iget-object v1, p0, Landroid/support/v4/p5;->if:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v1

    iget-boolean v3, p0, Landroid/support/v4/p5;->withCompression:Z

    invoke-static {v4, v1, v3}, Landroid/support/v4/t30;->case(Lorg/bouncycastle/math/ec/if;Ljava/security/spec/ECPoint;Z)Lorg/bouncycastle/math/ec/new;

    move-result-object v5

    iget-object v1, p0, Landroid/support/v4/p5;->if:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v6

    iget-object v1, p0, Landroid/support/v4/p5;->if:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v1

    int-to-long v7, v1

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    iget-object v1, p0, Landroid/support/v4/p5;->if:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v8

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Landroid/support/v4/th2;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    new-instance v1, Landroid/support/v4/rh2;

    invoke-direct {v1, v0}, Landroid/support/v4/rh2;-><init>(Landroid/support/v4/th2;)V

    :goto_0
    sget-object v0, Lorg/bouncycastle/jce/provider/do;->CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    iget-object v3, p0, Landroid/support/v4/p5;->if:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Landroid/support/v4/p5;->getS()Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/else;->const(Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    move-result v0

    :goto_1
    iget-object v3, p0, Landroid/support/v4/p5;->for:Lorg/bouncycastle/asn1/instanceof;

    if-eqz v3, :cond_3

    new-instance v3, Landroid/support/v4/g50;

    invoke-virtual {p0}, Landroid/support/v4/p5;->getS()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v4/p5;->for:Lorg/bouncycastle/asn1/instanceof;

    invoke-direct {v3, v0, v4, v5, v1}, Landroid/support/v4/g50;-><init>(ILjava/math/BigInteger;Lorg/bouncycastle/asn1/instanceof;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_2

    :cond_3
    new-instance v3, Landroid/support/v4/g50;

    invoke-virtual {p0}, Landroid/support/v4/p5;->getS()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v3, v0, v4, v1}, Landroid/support/v4/g50;-><init>(ILjava/math/BigInteger;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :goto_2
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/p5;->algorithm:Ljava/lang/String;

    const-string v4, "DSTU4145"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lorg/bouncycastle/asn1/pkcs/do;

    new-instance v4, Landroid/support/v4/b1;

    sget-object v5, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu4145be:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v1}, Landroid/support/v4/rh2;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v3}, Landroid/support/v4/g50;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lorg/bouncycastle/asn1/pkcs/do;-><init>(Landroid/support/v4/b1;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_3

    :cond_4
    new-instance v0, Lorg/bouncycastle/asn1/pkcs/do;

    new-instance v4, Landroid/support/v4/b1;

    sget-object v5, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v1}, Landroid/support/v4/rh2;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v3}, Landroid/support/v4/g50;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lorg/bouncycastle/asn1/pkcs/do;-><init>(Landroid/support/v4/b1;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :goto_3
    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/break;->do(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v2
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "PKCS#8"

    return-object v0
.end method

.method public getParameters()Landroid/support/v4/d50;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/p5;->if:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-boolean v1, p0, Landroid/support/v4/p5;->withCompression:Z

    invoke-static {v0, v1}, Landroid/support/v4/t30;->else(Ljava/security/spec/ECParameterSpec;Z)Landroid/support/v4/d50;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Ljava/security/spec/ECParameterSpec;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/p5;->if:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public getS()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/p5;->do:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/p5;->getD()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/p5;->engineGetSpec()Landroid/support/v4/d50;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/d50;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public setBagAttribute(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/p5;->new:Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;->setBagAttribute(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public setPointFormat(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UNCOMPRESSED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/p5;->withCompression:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/p5;->algorithm:Ljava/lang/String;

    iget-object v1, p0, Landroid/support/v4/p5;->do:Ljava/math/BigInteger;

    invoke-virtual {p0}, Landroid/support/v4/p5;->engineGetSpec()Landroid/support/v4/d50;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/else;->final(Ljava/lang/String;Ljava/math/BigInteger;Landroid/support/v4/d50;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
