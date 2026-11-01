.class public Landroid/support/v4/pv;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field public case:Lorg/bouncycastle/asn1/class;

.field public do:Ljava/math/BigInteger;

.field public for:Lorg/bouncycastle/asn1/goto;

.field public if:Landroid/support/v4/ov;

.field public new:Lorg/bouncycastle/asn1/class;

.field public try:Lorg/bouncycastle/asn1/goto;


# direct methods
.method public constructor <init>(Landroid/support/v4/e40;)V
    .locals 7

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/pv;->do:Ljava/math/BigInteger;

    invoke-virtual {p1}, Landroid/support/v4/e40;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/math/ec/do;->class(Lorg/bouncycastle/math/ec/if;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/if;->static()Lorg/bouncycastle/math/field/FiniteField;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/math/field/PolynomialExtensionField;

    invoke-interface {v1}, Lorg/bouncycastle/math/field/PolynomialExtensionField;->getMinimalPolynomial()Lorg/bouncycastle/math/field/Polynomial;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/math/field/Polynomial;->getExponentsPresent()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_0

    new-instance v2, Landroid/support/v4/ov;

    aget v4, v1, v4

    aget v1, v1, v3

    invoke-direct {v2, v4, v1}, Landroid/support/v4/ov;-><init>(II)V

    :goto_0
    iput-object v2, p0, Landroid/support/v4/pv;->if:Landroid/support/v4/ov;

    goto :goto_1

    :cond_0
    array-length v2, v1

    const/4 v6, 0x5

    if-ne v2, v6, :cond_1

    new-instance v2, Landroid/support/v4/ov;

    const/4 v6, 0x4

    aget v6, v1, v6

    aget v3, v1, v3

    aget v4, v1, v4

    aget v1, v1, v5

    invoke-direct {v2, v6, v3, v4, v1}, Landroid/support/v4/ov;-><init>(IIII)V

    goto :goto_0

    :goto_1
    new-instance v1, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/if;->throw()Lorg/bouncycastle/math/ec/for;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/for;->static()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(Ljava/math/BigInteger;)V

    iput-object v1, p0, Landroid/support/v4/pv;->for:Lorg/bouncycastle/asn1/goto;

    new-instance v1, Lorg/bouncycastle/asn1/j;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/if;->import()Lorg/bouncycastle/math/ec/for;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/for;->try()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    iput-object v1, p0, Landroid/support/v4/pv;->new:Lorg/bouncycastle/asn1/class;

    new-instance v0, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {p1}, Landroid/support/v4/e40;->try()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/goto;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Landroid/support/v4/pv;->try:Lorg/bouncycastle/asn1/goto;

    new-instance v0, Lorg/bouncycastle/asn1/j;

    invoke-virtual {p1}, Landroid/support/v4/e40;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/vv;->if(Lorg/bouncycastle/math/ec/new;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    iput-object v0, p0, Landroid/support/v4/pv;->case:Lorg/bouncycastle/asn1/class;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "curve must have a trinomial or pentanomial basis"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "only binary domain is possible"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/pv;->do:Ljava/math/BigInteger;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/import;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/import;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/import;->final()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/import;->getLoadedObject()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/pv;->do:Ljava/math/BigInteger;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "object parse error"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/ov;->new(Ljava/lang/Object;)Landroid/support/v4/ov;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/pv;->if:Landroid/support/v4/ov;

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/pv;->for:Lorg/bouncycastle/asn1/goto;

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/class;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/class;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/pv;->new:Lorg/bouncycastle/asn1/class;

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/pv;->try:Lorg/bouncycastle/asn1/goto;

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/class;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/class;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/pv;->case:Lorg/bouncycastle/asn1/class;

    return-void
.end method

.method public static goto(Ljava/lang/Object;)Landroid/support/v4/pv;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/pv;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/pv;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/pv;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/pv;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public case()Landroid/support/v4/ov;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/pv;->if:Landroid/support/v4/ov;

    return-object v0
.end method

.method public else()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/pv;->case:Lorg/bouncycastle/asn1/class;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method

.method public new()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/pv;->for:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public this()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/pv;->try:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 6

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/pv;->do:Ljava/math/BigInteger;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/u;

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v4, Lorg/bouncycastle/asn1/goto;

    iget-object v5, p0, Landroid/support/v4/pv;->do:Ljava/math/BigInteger;

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/goto;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/pv;->if:Landroid/support/v4/ov;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/pv;->for:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/pv;->new:Lorg/bouncycastle/asn1/class;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/pv;->try:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/pv;->case:Lorg/bouncycastle/asn1/class;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/pv;->new:Lorg/bouncycastle/asn1/class;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method
