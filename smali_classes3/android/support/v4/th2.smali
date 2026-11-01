.class public Landroid/support/v4/th2;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;


# static fields
.field private static final else:Ljava/math/BigInteger;


# instance fields
.field private case:[B

.field private do:Landroid/support/v4/xh2;

.field private for:Landroid/support/v4/vh2;

.field private if:Lorg/bouncycastle/math/ec/if;

.field private new:Ljava/math/BigInteger;

.field private try:Ljava/math/BigInteger;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Landroid/support/v4/th2;->else:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/goto;

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Landroid/support/v4/th2;->else:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/th2;->new:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/th2;->try:Ljava/math/BigInteger;

    :cond_0
    new-instance v0, Landroid/support/v4/sh2;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/xh2;->try(Ljava/lang/Object;)Landroid/support/v4/xh2;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/th2;->new:Ljava/math/BigInteger;

    iget-object v3, p0, Landroid/support/v4/th2;->try:Ljava/math/BigInteger;

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/sh2;-><init>(Landroid/support/v4/xh2;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/asn1/super;)V

    invoke-virtual {v0}, Landroid/support/v4/sh2;->new()Lorg/bouncycastle/math/ec/if;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/th2;->if:Lorg/bouncycastle/math/ec/if;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    instance-of v1, p1, Landroid/support/v4/vh2;

    if-eqz v1, :cond_1

    check-cast p1, Landroid/support/v4/vh2;

    iput-object p1, p0, Landroid/support/v4/th2;->for:Landroid/support/v4/vh2;

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/support/v4/vh2;

    iget-object v2, p0, Landroid/support/v4/th2;->if:Lorg/bouncycastle/math/ec/if;

    check-cast p1, Lorg/bouncycastle/asn1/class;

    invoke-direct {v1, v2, p1}, Landroid/support/v4/vh2;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/asn1/class;)V

    iput-object v1, p0, Landroid/support/v4/th2;->for:Landroid/support/v4/vh2;

    :goto_0
    invoke-virtual {v0}, Landroid/support/v4/sh2;->try()[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/th2;->case:[B

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bad version in X9ECParameters"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/if;Landroid/support/v4/vh2;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/th2;-><init>(Lorg/bouncycastle/math/ec/if;Landroid/support/v4/vh2;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/if;Landroid/support/v4/vh2;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/th2;->if:Lorg/bouncycastle/math/ec/if;

    iput-object p2, p0, Landroid/support/v4/th2;->for:Landroid/support/v4/vh2;

    iput-object p3, p0, Landroid/support/v4/th2;->new:Ljava/math/BigInteger;

    iput-object p4, p0, Landroid/support/v4/th2;->try:Ljava/math/BigInteger;

    invoke-static {p5}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p2

    iput-object p2, p0, Landroid/support/v4/th2;->case:[B

    invoke-static {p1}, Lorg/bouncycastle/math/ec/do;->final(Lorg/bouncycastle/math/ec/if;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Landroid/support/v4/xh2;

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/if;->static()Lorg/bouncycastle/math/field/FiniteField;

    move-result-object p1

    invoke-interface {p1}, Lorg/bouncycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/support/v4/xh2;-><init>(Ljava/math/BigInteger;)V

    :goto_0
    iput-object p2, p0, Landroid/support/v4/th2;->do:Landroid/support/v4/xh2;

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/math/ec/do;->class(Lorg/bouncycastle/math/ec/if;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/if;->static()Lorg/bouncycastle/math/field/FiniteField;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/math/field/PolynomialExtensionField;

    invoke-interface {p1}, Lorg/bouncycastle/math/field/PolynomialExtensionField;->getMinimalPolynomial()Lorg/bouncycastle/math/field/Polynomial;

    move-result-object p1

    invoke-interface {p1}, Lorg/bouncycastle/math/field/Polynomial;->getExponentsPresent()[I

    move-result-object p1

    array-length p2, p1

    const/4 p3, 0x1

    const/4 p4, 0x2

    const/4 p5, 0x3

    if-ne p2, p5, :cond_1

    new-instance p2, Landroid/support/v4/xh2;

    aget p4, p1, p4

    aget p1, p1, p3

    invoke-direct {p2, p4, p1}, Landroid/support/v4/xh2;-><init>(II)V

    goto :goto_0

    :cond_1
    array-length p2, p1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    new-instance p2, Landroid/support/v4/xh2;

    const/4 v0, 0x4

    aget v0, p1, v0

    aget p3, p1, p3

    aget p4, p1, p4

    aget p1, p1, p5

    invoke-direct {p2, v0, p3, p4, p1}, Landroid/support/v4/xh2;-><init>(IIII)V

    goto :goto_0

    :goto_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only trinomial and pentomial curves are supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'curve\' is of an unsupported type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/th2;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/th2;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 6

    new-instance v2, Landroid/support/v4/vh2;

    invoke-direct {v2, p2}, Landroid/support/v4/vh2;-><init>(Lorg/bouncycastle/math/ec/new;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/th2;-><init>(Lorg/bouncycastle/math/ec/if;Landroid/support/v4/vh2;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public static break(Ljava/lang/Object;)Landroid/support/v4/th2;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/th2;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/th2;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/th2;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/th2;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public case()Landroid/support/v4/sh2;
    .locals 3

    new-instance v0, Landroid/support/v4/sh2;

    iget-object v1, p0, Landroid/support/v4/th2;->if:Lorg/bouncycastle/math/ec/if;

    iget-object v2, p0, Landroid/support/v4/th2;->case:[B

    invoke-direct {v0, v1, v2}, Landroid/support/v4/sh2;-><init>(Lorg/bouncycastle/math/ec/if;[B)V

    return-object v0
.end method

.method public catch()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/th2;->new:Ljava/math/BigInteger;

    return-object v0
.end method

.method public class()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/th2;->case:[B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method

.method public else()Landroid/support/v4/xh2;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/th2;->do:Landroid/support/v4/xh2;

    return-object v0
.end method

.method public goto()Lorg/bouncycastle/math/ec/new;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/th2;->for:Landroid/support/v4/vh2;

    invoke-virtual {v0}, Landroid/support/v4/vh2;->new()Lorg/bouncycastle/math/ec/new;

    move-result-object v0

    return-object v0
.end method

.method public new()Landroid/support/v4/vh2;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/th2;->for:Landroid/support/v4/vh2;

    return-object v0
.end method

.method public this()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/th2;->try:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 4

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/goto;

    sget-object v2, Landroid/support/v4/th2;->else:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/th2;->do:Landroid/support/v4/xh2;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Landroid/support/v4/sh2;

    iget-object v2, p0, Landroid/support/v4/th2;->if:Lorg/bouncycastle/math/ec/if;

    iget-object v3, p0, Landroid/support/v4/th2;->case:[B

    invoke-direct {v1, v2, v3}, Landroid/support/v4/sh2;-><init>(Lorg/bouncycastle/math/ec/if;[B)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/th2;->for:Landroid/support/v4/vh2;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/goto;

    iget-object v2, p0, Landroid/support/v4/th2;->new:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/th2;->try:Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    new-instance v2, Lorg/bouncycastle/asn1/goto;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/goto;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Lorg/bouncycastle/math/ec/if;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/th2;->if:Lorg/bouncycastle/math/ec/if;

    return-object v0
.end method
