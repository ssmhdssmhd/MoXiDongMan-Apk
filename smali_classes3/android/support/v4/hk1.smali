.class public Landroid/support/v4/hk1;
.super Landroid/support/v4/ug1;
.source "SourceFile"


# static fields
.field private static case:I = 0x2

.field private static try:I = 0x1


# instance fields
.field private do:Lorg/bouncycastle/asn1/catch;

.field private for:Ljava/math/BigInteger;

.field private if:Ljava/math/BigInteger;

.field private new:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/catch;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/ug1;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/hk1;->new:I

    iput-object p1, p0, Landroid/support/v4/hk1;->do:Lorg/bouncycastle/asn1/catch;

    iput-object p2, p0, Landroid/support/v4/hk1;->if:Ljava/math/BigInteger;

    iput-object p3, p0, Landroid/support/v4/hk1;->for:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 3

    invoke-direct {p0}, Landroid/support/v4/ug1;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/hk1;->new:I

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->super()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/catch;->throw(Ljava/lang/Object;)Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/hk1;->do:Lorg/bouncycastle/asn1/catch;

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/mc2;->try(Ljava/lang/Object;)Landroid/support/v4/mc2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/mc2;->getTagNo()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v0}, Landroid/support/v4/hk1;->goto(Landroid/support/v4/mc2;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown DERTaggedObject :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/support/v4/mc2;->getTagNo()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-> not an Iso7816RSAPublicKeyStructure"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-direct {p0, v0}, Landroid/support/v4/hk1;->this(Landroid/support/v4/mc2;)V

    goto :goto_0

    :cond_2
    iget p1, p0, Landroid/support/v4/hk1;->new:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "missing argument -> not an Iso7816RSAPublicKeyStructure"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private goto(Landroid/support/v4/mc2;)V
    .locals 3

    iget v0, p0, Landroid/support/v4/hk1;->new:I

    sget v1, Landroid/support/v4/hk1;->case:I

    and-int v2, v0, v1

    if-nez v2, :cond_0

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/hk1;->new:I

    invoke-virtual {p1}, Landroid/support/v4/mc2;->case()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/hk1;->for:Ljava/math/BigInteger;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Exponent already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private this(Landroid/support/v4/mc2;)V
    .locals 3

    iget v0, p0, Landroid/support/v4/hk1;->new:I

    sget v1, Landroid/support/v4/hk1;->try:I

    and-int v2, v0, v1

    if-nez v2, :cond_0

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/hk1;->new:I

    invoke-virtual {p1}, Landroid/support/v4/mc2;->case()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/hk1;->if:Ljava/math/BigInteger;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Modulus already set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public case()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/hk1;->if:Ljava/math/BigInteger;

    return-object v0
.end method

.method public else()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/hk1;->for:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 4

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/hk1;->do:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Landroid/support/v4/mc2;

    invoke-virtual {p0}, Landroid/support/v4/hk1;->case()Ljava/math/BigInteger;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Landroid/support/v4/mc2;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Landroid/support/v4/mc2;

    invoke-virtual {p0}, Landroid/support/v4/hk1;->else()Ljava/math/BigInteger;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2}, Landroid/support/v4/mc2;-><init>(ILjava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Lorg/bouncycastle/asn1/catch;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/hk1;->do:Lorg/bouncycastle/asn1/catch;

    return-object v0
.end method
