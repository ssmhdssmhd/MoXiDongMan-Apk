.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/interfaces/ECPrivateKey;
.implements Lorg/bouncycastle/jce/interfaces/ECPrivateKey;
.implements Lorg/bouncycastle/jce/interfaces/PKCS12BagAttributeCarrier;
.implements Lorg/bouncycastle/jce/interfaces/ECPointEncoder;


# static fields
.field public static final serialVersionUID:J = 0xdcd5cdd2909ced4L


# instance fields
.field private algorithm:Ljava/lang/String;

.field private transient do:Ljava/math/BigInteger;

.field private transient for:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

.field private transient if:Ljava/security/spec/ECParameterSpec;

.field private transient new:Lorg/bouncycastle/asn1/instanceof;

.field private transient try:Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

.field private withCompression:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->algorithm:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->try:Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/support/v4/h50;Lorg/bouncycastle/jcajce/provider/asymmetric/ec/for;Landroid/support/v4/d50;Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->algorithm:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->try:Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/support/v4/h50;->for()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->do:Ljava/math/BigInteger;

    iput-object p5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->for:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    if-nez p4, :cond_0

    invoke-virtual {p2}, Landroid/support/v4/s40;->if()Landroid/support/v4/e40;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/e40;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object p2

    invoke-virtual {p1}, Landroid/support/v4/e40;->case()[B

    move-result-object p4

    invoke-static {p2, p4}, Landroid/support/v4/t30;->do(Lorg/bouncycastle/math/ec/if;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p2

    new-instance p4, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p1}, Landroid/support/v4/e40;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object p5

    invoke-static {p5}, Landroid/support/v4/t30;->new(Lorg/bouncycastle/math/ec/new;)Ljava/security/spec/ECPoint;

    move-result-object p5

    invoke-virtual {p1}, Landroid/support/v4/e40;->try()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/e40;->for()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-direct {p4, p2, p5, v0, p1}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object p4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->if:Ljava/security/spec/ECParameterSpec;

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Landroid/support/v4/d50;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object p1

    invoke-virtual {p4}, Landroid/support/v4/d50;->try()[B

    move-result-object p2

    invoke-static {p1, p2}, Landroid/support/v4/t30;->do(Lorg/bouncycastle/math/ec/if;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-static {p1, p4}, Landroid/support/v4/t30;->goto(Ljava/security/spec/EllipticCurve;Landroid/support/v4/d50;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->if:Ljava/security/spec/ECParameterSpec;

    :goto_0
    :try_start_0
    invoke-direct {p0, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->if(Lorg/bouncycastle/jcajce/provider/asymmetric/ec/for;)Lorg/bouncycastle/asn1/instanceof;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->new:Lorg/bouncycastle/asn1/instanceof;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->new:Lorg/bouncycastle/asn1/instanceof;

    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/support/v4/h50;Lorg/bouncycastle/jcajce/provider/asymmetric/ec/for;Ljava/security/spec/ECParameterSpec;Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->algorithm:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->try:Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/support/v4/h50;->for()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->do:Ljava/math/BigInteger;

    iput-object p5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->for:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    if-nez p4, :cond_0

    invoke-virtual {p2}, Landroid/support/v4/s40;->if()Landroid/support/v4/e40;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/e40;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object p2

    invoke-virtual {p1}, Landroid/support/v4/e40;->case()[B

    move-result-object p4

    invoke-static {p2, p4}, Landroid/support/v4/t30;->do(Lorg/bouncycastle/math/ec/if;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p2

    new-instance p4, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p1}, Landroid/support/v4/e40;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object p5

    invoke-static {p5}, Landroid/support/v4/t30;->new(Lorg/bouncycastle/math/ec/new;)Ljava/security/spec/ECPoint;

    move-result-object p5

    invoke-virtual {p1}, Landroid/support/v4/e40;->try()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/e40;->for()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-direct {p4, p2, p5, v0, p1}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    :cond_0
    iput-object p4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->if:Ljava/security/spec/ECParameterSpec;

    invoke-direct {p0, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->if(Lorg/bouncycastle/jcajce/provider/asymmetric/ec/for;)Lorg/bouncycastle/asn1/instanceof;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->new:Lorg/bouncycastle/asn1/instanceof;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/support/v4/h50;Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->algorithm:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->try:Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/support/v4/h50;->for()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->do:Ljava/math/BigInteger;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->if:Ljava/security/spec/ECParameterSpec;

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->for:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/support/v4/i50;Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->algorithm:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->try:Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/support/v4/i50;->if()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->do:Ljava/math/BigInteger;

    invoke-virtual {p2}, Landroid/support/v4/t40;->do()Landroid/support/v4/d50;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/support/v4/t40;->do()Landroid/support/v4/d50;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/d50;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object p1

    invoke-virtual {p2}, Landroid/support/v4/t40;->do()Landroid/support/v4/d50;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/d50;->try()[B

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/t30;->do(Lorg/bouncycastle/math/ec/if;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-virtual {p2}, Landroid/support/v4/t40;->do()Landroid/support/v4/d50;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/support/v4/t30;->goto(Ljava/security/spec/EllipticCurve;Landroid/support/v4/d50;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->if:Ljava/security/spec/ECParameterSpec;

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->for:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/ECPrivateKeySpec;Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->algorithm:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->try:Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->algorithm:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/security/spec/ECPrivateKeySpec;->getS()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->do:Ljava/math/BigInteger;

    invoke-virtual {p2}, Ljava/security/spec/ECPrivateKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->if:Ljava/security/spec/ECParameterSpec;

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->for:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/asn1/pkcs/do;Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->algorithm:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->try:Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->algorithm:Ljava/lang/String;

    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->for:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-direct {p0, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->for(Lorg/bouncycastle/asn1/pkcs/do;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->algorithm:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->try:Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->algorithm:Ljava/lang/String;

    iget-object p1, p2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->do:Ljava/math/BigInteger;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->do:Ljava/math/BigInteger;

    iget-object p1, p2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->if:Ljava/security/spec/ECParameterSpec;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->if:Ljava/security/spec/ECParameterSpec;

    iget-boolean p1, p2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->withCompression:Z

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->withCompression:Z

    iget-object p1, p2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->try:Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->try:Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    iget-object p1, p2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->new:Lorg/bouncycastle/asn1/instanceof;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->new:Lorg/bouncycastle/asn1/instanceof;

    iget-object p1, p2, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->for:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->for:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EC"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->algorithm:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->try:Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->do:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->algorithm:Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->if:Ljava/security/spec/ECParameterSpec;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->for:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    return-void
.end method

.method private do(Landroid/support/v4/d50;)Lorg/bouncycastle/math/ec/new;
    .locals 1

    invoke-virtual {p1}, Landroid/support/v4/d50;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->do:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/math/ec/new;->package(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->abstract()Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    return-object p1
.end method

.method private for(Lorg/bouncycastle/asn1/pkcs/do;)V
    .locals 2
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

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->for:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-static {v1, v0}, Landroid/support/v4/t30;->class(Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;Landroid/support/v4/rh2;)Lorg/bouncycastle/math/ec/if;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/t30;->break(Landroid/support/v4/rh2;Lorg/bouncycastle/math/ec/if;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->if:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/do;->catch()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    instance-of v0, p1, Lorg/bouncycastle/asn1/goto;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->do:Ljava/math/BigInteger;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/support/v4/g50;->new(Ljava/lang/Object;)Landroid/support/v4/g50;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/g50;->try()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->do:Ljava/math/BigInteger;

    invoke-virtual {p1}, Landroid/support/v4/g50;->goto()Lorg/bouncycastle/asn1/instanceof;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->new:Lorg/bouncycastle/asn1/instanceof;

    :goto_0
    return-void
.end method

.method private if(Lorg/bouncycastle/jcajce/provider/asymmetric/ec/for;)Lorg/bouncycastle/asn1/instanceof;
    .locals 0

    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/for;->getEncoded()[B

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

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
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

    sget-object v0, Lorg/bouncycastle/jce/provider/do;->CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->for:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-static {p1}, Lorg/bouncycastle/asn1/final;->else([B)Lorg/bouncycastle/asn1/final;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/pkcs/do;->try(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/do;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->for(Lorg/bouncycastle/asn1/pkcs/do;)V

    new-instance p1, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    invoke-direct {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->try:Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

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

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public engineGetSpec()Landroid/support/v4/d50;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->if:Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->withCompression:Z

    invoke-static {v0, v1}, Landroid/support/v4/t30;->else(Ljava/security/spec/ECParameterSpec;Z)Landroid/support/v4/d50;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->for:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Landroid/support/v4/d50;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->getD()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->getD()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->engineGetSpec()Landroid/support/v4/d50;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->engineGetSpec()Landroid/support/v4/d50;

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

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getBagAttribute(Lorg/bouncycastle/asn1/catch;)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->try:Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;->getBagAttribute(Lorg/bouncycastle/asn1/catch;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    return-object p1
.end method

.method public getBagAttributeKeys()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->try:Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getD()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->do:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->if:Ljava/security/spec/ECParameterSpec;

    iget-boolean v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->withCompression:Z

    invoke-static {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/new;->for(Ljava/security/spec/ECParameterSpec;Z)Landroid/support/v4/rh2;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->if:Ljava/security/spec/ECParameterSpec;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->for:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->getS()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/else;->const(Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->for:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->getS()Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/else;->const(Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;Ljava/math/BigInteger;Ljava/math/BigInteger;)I

    move-result v1

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->new:Lorg/bouncycastle/asn1/instanceof;

    if-eqz v3, :cond_1

    new-instance v3, Landroid/support/v4/g50;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->getS()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->new:Lorg/bouncycastle/asn1/instanceof;

    invoke-direct {v3, v1, v4, v5, v0}, Landroid/support/v4/g50;-><init>(ILjava/math/BigInteger;Lorg/bouncycastle/asn1/instanceof;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    :cond_1
    new-instance v3, Landroid/support/v4/g50;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->getS()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v3, v1, v4, v0}, Landroid/support/v4/g50;-><init>(ILjava/math/BigInteger;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :goto_1
    :try_start_0
    new-instance v1, Lorg/bouncycastle/asn1/pkcs/do;

    new-instance v4, Landroid/support/v4/b1;

    sget-object v5, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lorg/bouncycastle/asn1/catch;

    invoke-direct {v4, v5, v0}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v1, v4, v3}, Lorg/bouncycastle/asn1/pkcs/do;-><init>(Landroid/support/v4/b1;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const-string v0, "DER"

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/break;->do(Ljava/lang/String;)[B

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

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->if:Ljava/security/spec/ECParameterSpec;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-boolean v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->withCompression:Z

    invoke-static {v0, v1}, Landroid/support/v4/t30;->else(Ljava/security/spec/ECParameterSpec;Z)Landroid/support/v4/d50;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Ljava/security/spec/ECParameterSpec;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->if:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method

.method public getS()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->do:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->getD()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->engineGetSpec()Landroid/support/v4/d50;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/d50;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public setBagAttribute(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->try:Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/this;->setBagAttribute(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public setPointFormat(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UNCOMPRESSED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->withCompression:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->do:Ljava/math/BigInteger;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/if;->engineGetSpec()Landroid/support/v4/d50;

    move-result-object v1

    const-string v2, "EC"

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/else;->final(Ljava/lang/String;Ljava/math/BigInteger;Landroid/support/v4/d50;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
