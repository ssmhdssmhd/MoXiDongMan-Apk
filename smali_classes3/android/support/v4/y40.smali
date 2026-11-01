.class public Landroid/support/v4/y40;
.super Ljava/security/spec/ECParameterSpec;
.source "SourceFile"


# instance fields
.field private do:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, p4, v0}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object p1, p0, Landroid/support/v4/y40;->do:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    invoke-virtual {p5}, Ljava/math/BigInteger;->intValue()I

    move-result p5

    invoke-direct {p0, p2, p3, p4, p5}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object p1, p0, Landroid/support/v4/y40;->do:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/support/v4/y40;->do(Lorg/bouncycastle/math/ec/if;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p2

    invoke-static {p3}, Landroid/support/v4/t30;->new(Lorg/bouncycastle/math/ec/new;)Ljava/security/spec/ECPoint;

    move-result-object p3

    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, p4, v0}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object p1, p0, Landroid/support/v4/y40;->do:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/support/v4/y40;->do(Lorg/bouncycastle/math/ec/if;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p2

    invoke-static {p3}, Landroid/support/v4/t30;->new(Lorg/bouncycastle/math/ec/new;)Ljava/security/spec/ECPoint;

    move-result-object p3

    invoke-virtual {p5}, Ljava/math/BigInteger;->intValue()I

    move-result p5

    invoke-direct {p0, p2, p3, p4, p5}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object p1, p0, Landroid/support/v4/y40;->do:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 0

    invoke-static {p2, p6}, Landroid/support/v4/y40;->do(Lorg/bouncycastle/math/ec/if;[B)Ljava/security/spec/EllipticCurve;

    move-result-object p2

    invoke-static {p3}, Landroid/support/v4/t30;->new(Lorg/bouncycastle/math/ec/new;)Ljava/security/spec/ECPoint;

    move-result-object p3

    invoke-virtual {p5}, Ljava/math/BigInteger;->intValue()I

    move-result p5

    invoke-direct {p0, p2, p3, p4, p5}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    iput-object p1, p0, Landroid/support/v4/y40;->do:Ljava/lang/String;

    return-void
.end method

.method private static do(Lorg/bouncycastle/math/ec/if;[B)Ljava/security/spec/EllipticCurve;
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/if;->static()Lorg/bouncycastle/math/field/FiniteField;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/y40;->if(Lorg/bouncycastle/math/field/FiniteField;)Ljava/security/spec/ECField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/if;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/for;->static()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/if;->import()Lorg/bouncycastle/math/ec/for;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/for;->static()Ljava/math/BigInteger;

    move-result-object p0

    new-instance v2, Ljava/security/spec/EllipticCurve;

    invoke-direct {v2, v0, v1, p0, p1}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v2
.end method

.method private static if(Lorg/bouncycastle/math/field/FiniteField;)Ljava/security/spec/ECField;
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


# virtual methods
.method public for()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/y40;->do:Ljava/lang/String;

    return-object v0
.end method
