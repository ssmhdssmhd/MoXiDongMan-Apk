.class Lorg/bouncycastle/jcajce/provider/asymmetric/ec/new;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Ljava/security/PublicKey;)Landroid/support/v4/a4;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/for;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/for;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/for;->engineGetKeyParameters()Landroid/support/v4/k50;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/else;->try(Ljava/security/PublicKey;)Landroid/support/v4/a4;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static for(Ljava/security/spec/ECParameterSpec;Z)Landroid/support/v4/rh2;
    .locals 7

    instance-of v0, p0, Landroid/support/v4/y40;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/support/v4/y40;

    invoke-virtual {p0}, Landroid/support/v4/y40;->for()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/else;->class(Ljava/lang/String;)Lorg/bouncycastle/asn1/catch;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lorg/bouncycastle/asn1/catch;

    invoke-virtual {p0}, Landroid/support/v4/y40;->for()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    :cond_0
    new-instance p0, Landroid/support/v4/rh2;

    invoke-direct {p0, p1}, Landroid/support/v4/rh2;-><init>(Lorg/bouncycastle/asn1/catch;)V

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    new-instance p0, Landroid/support/v4/rh2;

    sget-object p1, Lorg/bouncycastle/asn1/h;->do:Lorg/bouncycastle/asn1/h;

    invoke-direct {p0, p1}, Landroid/support/v4/rh2;-><init>(Lorg/bouncycastle/asn1/this;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/t30;->if(Ljava/security/spec/EllipticCurve;)Lorg/bouncycastle/math/ec/if;

    move-result-object v2

    new-instance v0, Landroid/support/v4/th2;

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {v2, v1, p1}, Landroid/support/v4/t30;->case(Lorg/bouncycastle/math/ec/if;Ljava/security/spec/ECPoint;Z)Lorg/bouncycastle/math/ec/new;

    move-result-object v3

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result p1

    int-to-long v5, p1

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/th2;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    new-instance p0, Landroid/support/v4/rh2;

    invoke-direct {p0, v0}, Landroid/support/v4/rh2;-><init>(Landroid/support/v4/th2;)V

    :goto_0
    return-object p0
.end method

.method public static if(Ljava/security/spec/ECGenParameterSpec;)Landroid/support/v4/th2;
    .locals 0

    invoke-virtual {p0}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/new;->new(Ljava/lang/String;)Landroid/support/v4/th2;

    move-result-object p0

    return-object p0
.end method

.method public static new(Ljava/lang/String;)Landroid/support/v4/th2;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x32

    if-gt v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/catch;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/else;->break(Lorg/bouncycastle/asn1/catch;)Landroid/support/v4/th2;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/else;->this(Ljava/lang/String;)Landroid/support/v4/th2;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/else;->this(Ljava/lang/String;)Landroid/support/v4/th2;

    move-result-object p0

    :goto_0
    return-object p0
.end method
