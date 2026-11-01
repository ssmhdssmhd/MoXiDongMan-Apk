.class public Landroid/support/v4/t30;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static do:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/support/v4/t30;->do:Ljava/util/Map;

    invoke-static {}, Lorg/bouncycastle/crypto/ec/do;->catch()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/support/v4/a50;->for(Ljava/lang/String;)Landroid/support/v4/th2;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v3, Landroid/support/v4/t30;->do:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/support/v4/th2;->try()Lorg/bouncycastle/math/ec/if;

    move-result-object v2

    invoke-static {v1}, Lorg/bouncycastle/crypto/ec/do;->goto(Ljava/lang/String;)Landroid/support/v4/th2;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/th2;->try()Lorg/bouncycastle/math/ec/if;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v0, "Curve25519"

    invoke-static {v0}, Lorg/bouncycastle/crypto/ec/do;->goto(Ljava/lang/String;)Landroid/support/v4/th2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/th2;->try()Lorg/bouncycastle/math/ec/if;

    move-result-object v0

    sget-object v1, Landroid/support/v4/t30;->do:Ljava/util/Map;

    new-instance v8, Lorg/bouncycastle/math/ec/if$case;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/if;->static()Lorg/bouncycastle/math/field/FiniteField;

    move-result-object v2

    invoke-interface {v2}, Lorg/bouncycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/if;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/for;->static()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/if;->import()Lorg/bouncycastle/math/ec/for;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/for;->static()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/if;->extends()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/if;->native()Ljava/math/BigInteger;

    move-result-object v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/math/ec/if$case;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-interface {v1, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static break(Landroid/support/v4/rh2;Lorg/bouncycastle/math/ec/if;)Ljava/security/spec/ECParameterSpec;
    .locals 8

    invoke-virtual {p0}, Landroid/support/v4/rh2;->goto()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/rh2;->case()Lorg/bouncycastle/asn1/final;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/catch;

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/else;->break(Lorg/bouncycastle/asn1/catch;)Landroid/support/v4/th2;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lorg/bouncycastle/jce/provider/do;->CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v1}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getAdditionalECParameters()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/th2;

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/th2;->class()[B

    move-result-object v1

    invoke-static {p1, v1}, Landroid/support/v4/t30;->do(Lorg/bouncycastle/math/ec/if;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v4

    new-instance p1, Landroid/support/v4/y40;

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/else;->case(Lorg/bouncycastle/asn1/catch;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/support/v4/th2;->goto()Lorg/bouncycastle/math/ec/new;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/t30;->new(Lorg/bouncycastle/math/ec/new;)Ljava/security/spec/ECPoint;

    move-result-object v5

    invoke-virtual {v0}, Landroid/support/v4/th2;->catch()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0}, Landroid/support/v4/th2;->this()Ljava/math/BigInteger;

    move-result-object v7

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Landroid/support/v4/y40;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/rh2;->else()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/rh2;->case()Lorg/bouncycastle/asn1/final;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/th2;->break(Ljava/lang/Object;)Landroid/support/v4/th2;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/th2;->class()[B

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/t30;->do(Lorg/bouncycastle/math/ec/if;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-virtual {p0}, Landroid/support/v4/th2;->this()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p0}, Landroid/support/v4/th2;->goto()Lorg/bouncycastle/math/ec/new;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/t30;->new(Lorg/bouncycastle/math/ec/new;)Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v4/th2;->catch()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/v4/th2;->this()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    invoke-direct {v0, p1, v1, v2, p0}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p0}, Landroid/support/v4/th2;->goto()Lorg/bouncycastle/math/ec/new;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/t30;->new(Lorg/bouncycastle/math/ec/new;)Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v4/th2;->catch()Ljava/math/BigInteger;

    move-result-object p0

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, p0, v2}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    :goto_0
    move-object p1, v0

    :goto_1
    return-object p1
.end method

.method public static case(Lorg/bouncycastle/math/ec/if;Ljava/security/spec/ECPoint;Z)Lorg/bouncycastle/math/ec/new;
    .locals 0

    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lorg/bouncycastle/math/ec/if;->goto(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/new;

    move-result-object p0

    return-object p0
.end method

.method public static catch(Landroid/support/v4/th2;)Ljava/security/spec/ECParameterSpec;
    .locals 4

    new-instance v0, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p0}, Landroid/support/v4/th2;->try()Lorg/bouncycastle/math/ec/if;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/support/v4/t30;->do(Lorg/bouncycastle/math/ec/if;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v4/th2;->goto()Lorg/bouncycastle/math/ec/new;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/t30;->new(Lorg/bouncycastle/math/ec/new;)Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/v4/th2;->catch()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Landroid/support/v4/th2;->this()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public static class(Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;Landroid/support/v4/rh2;)Lorg/bouncycastle/math/ec/if;
    .locals 2

    invoke-interface {p0}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getAcceptableNamedCurves()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/rh2;->goto()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/support/v4/rh2;->case()Lorg/bouncycastle/asn1/final;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/catch;->throw(Ljava/lang/Object;)Lorg/bouncycastle/asn1/catch;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "named curve not acceptable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/else;->break(Lorg/bouncycastle/asn1/catch;)Landroid/support/v4/th2;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-interface {p0}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getAdditionalECParameters()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/support/v4/th2;

    :cond_2
    invoke-virtual {v0}, Landroid/support/v4/th2;->try()Lorg/bouncycastle/math/ec/if;

    move-result-object p0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/support/v4/rh2;->else()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Landroid/support/v4/d50;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/d50;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object p0

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p1}, Landroid/support/v4/rh2;->case()Lorg/bouncycastle/asn1/final;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/th2;->break(Ljava/lang/Object;)Landroid/support/v4/th2;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/th2;->try()Lorg/bouncycastle/math/ec/if;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "encoded parameters not acceptable"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static const(Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;Ljava/security/spec/ECParameterSpec;)Landroid/support/v4/e40;
    .locals 6

    if-nez p1, :cond_0

    invoke-interface {p0}, Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getEcImplicitlyCa()Landroid/support/v4/d50;

    move-result-object p0

    new-instance p1, Landroid/support/v4/e40;

    invoke-virtual {p0}, Landroid/support/v4/d50;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v4/d50;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/v4/d50;->new()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Landroid/support/v4/d50;->for()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Landroid/support/v4/d50;->try()[B

    move-result-object v5

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/e40;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v4/t30;->else(Ljava/security/spec/ECParameterSpec;Z)Landroid/support/v4/d50;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/else;->else(Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;Landroid/support/v4/d50;)Landroid/support/v4/e40;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public static do(Lorg/bouncycastle/math/ec/if;[B)Ljava/security/spec/EllipticCurve;
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/if;->static()Lorg/bouncycastle/math/field/FiniteField;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/t30;->for(Lorg/bouncycastle/math/field/FiniteField;)Ljava/security/spec/ECField;

    move-result-object p1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/if;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/for;->static()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/if;->import()Lorg/bouncycastle/math/ec/for;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/for;->static()Ljava/math/BigInteger;

    move-result-object p0

    new-instance v1, Ljava/security/spec/EllipticCurve;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, p0, v2}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v1
.end method

.method public static else(Ljava/security/spec/ECParameterSpec;Z)Landroid/support/v4/d50;
    .locals 9

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/t30;->if(Ljava/security/spec/EllipticCurve;)Lorg/bouncycastle/math/ec/if;

    move-result-object v0

    instance-of v1, p0, Landroid/support/v4/y40;

    if-eqz v1, :cond_0

    new-instance v8, Landroid/support/v4/x40;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/y40;

    invoke-virtual {v1}, Landroid/support/v4/y40;->for()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/support/v4/t30;->case(Lorg/bouncycastle/math/ec/if;Ljava/security/spec/ECPoint;Z)Lorg/bouncycastle/math/ec/new;

    move-result-object v4

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result p1

    int-to-long v6, p1

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v7

    move-object v1, v8

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Landroid/support/v4/x40;-><init>(Ljava/lang/String;Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v8

    :cond_0
    new-instance v7, Landroid/support/v4/d50;

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/support/v4/t30;->case(Lorg/bouncycastle/math/ec/if;Ljava/security/spec/ECPoint;Z)Lorg/bouncycastle/math/ec/new;

    move-result-object v3

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result p1

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getSeed()[B

    move-result-object v6

    move-object v1, v7

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/d50;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v7
.end method

.method public static for(Lorg/bouncycastle/math/field/FiniteField;)Ljava/security/spec/ECField;
    .locals 3

    invoke-static {p0}, Lorg/bouncycastle/math/ec/do;->super(Lorg/bouncycastle/math/field/FiniteField;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/security/spec/ECFieldFp;

    invoke-interface {p0}, Lorg/bouncycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    :cond_0
    check-cast p0, Lorg/bouncycastle/math/field/PolynomialExtensionField;

    invoke-interface {p0}, Lorg/bouncycastle/math/field/PolynomialExtensionField;->getMinimalPolynomial()Lorg/bouncycastle/math/field/Polynomial;

    move-result-object p0

    invoke-interface {p0}, Lorg/bouncycastle/math/field/Polynomial;->getExponentsPresent()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v2, v1}, Landroid/support/v4/q3;->synchronized([III)[I

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/q3;->D([I)[I

    move-result-object v0

    new-instance v1, Ljava/security/spec/ECFieldF2m;

    invoke-interface {p0}, Lorg/bouncycastle/math/field/Polynomial;->getDegree()I

    move-result p0

    invoke-direct {v1, p0, v0}, Ljava/security/spec/ECFieldF2m;-><init>(I[I)V

    return-object v1
.end method

.method public static goto(Ljava/security/spec/EllipticCurve;Landroid/support/v4/d50;)Ljava/security/spec/ECParameterSpec;
    .locals 7

    instance-of v0, p1, Landroid/support/v4/x40;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v4/y40;

    move-object v1, p1

    check-cast v1, Landroid/support/v4/x40;

    invoke-virtual {v1}, Landroid/support/v4/x40;->case()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v4/d50;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/t30;->new(Lorg/bouncycastle/math/ec/new;)Ljava/security/spec/ECPoint;

    move-result-object v4

    invoke-virtual {p1}, Landroid/support/v4/d50;->new()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p1}, Landroid/support/v4/d50;->for()Ljava/math/BigInteger;

    move-result-object v6

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/y40;-><init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p1}, Landroid/support/v4/d50;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/t30;->new(Lorg/bouncycastle/math/ec/new;)Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/d50;->new()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v4/d50;->for()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-direct {v0, p0, v1, v2, p1}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public static if(Ljava/security/spec/EllipticCurve;)Lorg/bouncycastle/math/ec/if;
    .locals 8

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v0

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object v7

    instance-of p0, v0, Ljava/security/spec/ECFieldFp;

    if-eqz p0, :cond_1

    new-instance p0, Lorg/bouncycastle/math/ec/if$case;

    check-cast v0, Ljava/security/spec/ECFieldFp;

    invoke-virtual {v0}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p0, v0, v6, v7}, Lorg/bouncycastle/math/ec/if$case;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    sget-object v0, Landroid/support/v4/t30;->do:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/support/v4/t30;->do:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/math/ec/if;

    :cond_0
    return-object p0

    :cond_1
    check-cast v0, Ljava/security/spec/ECFieldF2m;

    invoke-virtual {v0}, Ljava/security/spec/ECFieldF2m;->getM()I

    move-result v2

    invoke-virtual {v0}, Ljava/security/spec/ECFieldF2m;->getMidTermsOfReductionPolynomial()[I

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/else;->if([I)[I

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/math/ec/if$try;

    const/4 v1, 0x0

    aget v3, p0, v1

    const/4 v1, 0x1

    aget v4, p0, v1

    const/4 v1, 0x2

    aget v5, p0, v1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/math/ec/if$try;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public static new(Lorg/bouncycastle/math/ec/new;)Ljava/security/spec/ECPoint;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->abstract()Lorg/bouncycastle/math/ec/new;

    move-result-object p0

    new-instance v0, Ljava/security/spec/ECPoint;

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->case()Lorg/bouncycastle/math/ec/for;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/for;->static()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/new;->else()Lorg/bouncycastle/math/ec/for;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/for;->static()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public static this(Landroid/support/v4/e40;)Ljava/security/spec/ECParameterSpec;
    .locals 4

    new-instance v0, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p0}, Landroid/support/v4/e40;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/support/v4/t30;->do(Lorg/bouncycastle/math/ec/if;[B)Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v4/e40;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/t30;->new(Lorg/bouncycastle/math/ec/new;)Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/v4/e40;->try()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Landroid/support/v4/e40;->for()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public static try(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;Z)Lorg/bouncycastle/math/ec/new;
    .locals 0

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/t30;->if(Ljava/security/spec/EllipticCurve;)Lorg/bouncycastle/math/ec/if;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/support/v4/t30;->case(Lorg/bouncycastle/math/ec/if;Ljava/security/spec/ECPoint;Z)Lorg/bouncycastle/math/ec/new;

    move-result-object p0

    return-object p0
.end method
