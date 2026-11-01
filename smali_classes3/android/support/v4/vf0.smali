.class public Landroid/support/v4/vf0;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field public do:I

.field public for:Lorg/bouncycastle/asn1/goto;

.field public if:Lorg/bouncycastle/asn1/goto;

.field public new:Lorg/bouncycastle/asn1/goto;


# direct methods
.method public constructor <init>(ILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput p1, p0, Landroid/support/v4/vf0;->do:I

    new-instance p1, Lorg/bouncycastle/asn1/goto;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/goto;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Landroid/support/v4/vf0;->if:Lorg/bouncycastle/asn1/goto;

    new-instance p1, Lorg/bouncycastle/asn1/goto;

    invoke-direct {p1, p3}, Lorg/bouncycastle/asn1/goto;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Landroid/support/v4/vf0;->for:Lorg/bouncycastle/asn1/goto;

    new-instance p1, Lorg/bouncycastle/asn1/goto;

    invoke-direct {p1, p4}, Lorg/bouncycastle/asn1/goto;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Landroid/support/v4/vf0;->new:Lorg/bouncycastle/asn1/goto;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->super()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Landroid/support/v4/vf0;->do:I

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/goto;

    iput-object v0, p0, Landroid/support/v4/vf0;->if:Lorg/bouncycastle/asn1/goto;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/goto;

    iput-object v0, p0, Landroid/support/v4/vf0;->for:Lorg/bouncycastle/asn1/goto;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/goto;

    iput-object p1, p0, Landroid/support/v4/vf0;->new:Lorg/bouncycastle/asn1/goto;

    return-void
.end method

.method public static case(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/vf0;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/vf0;->try(Ljava/lang/Object;)Landroid/support/v4/vf0;

    move-result-object p0

    return-object p0
.end method

.method public static try(Ljava/lang/Object;)Landroid/support/v4/vf0;
    .locals 3

    if-eqz p0, :cond_2

    instance-of v0, p0, Landroid/support/v4/vf0;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/super;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v4/vf0;

    check-cast p0, Lorg/bouncycastle/asn1/super;

    invoke-direct {v0, p0}, Landroid/support/v4/vf0;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid GOST3410Parameter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    check-cast p0, Landroid/support/v4/vf0;

    return-object p0
.end method


# virtual methods
.method public break()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/vf0;->for:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->const()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public else()I
    .locals 1

    iget v0, p0, Landroid/support/v4/vf0;->do:I

    return v0
.end method

.method public goto()I
    .locals 1

    iget v0, p0, Landroid/support/v4/vf0;->do:I

    return v0
.end method

.method public new()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/vf0;->new:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->const()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public this()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/vf0;->if:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->const()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 4

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/goto;

    iget v2, p0, Landroid/support/v4/vf0;->do:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/vf0;->if:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/vf0;->for:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/vf0;->new:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method
