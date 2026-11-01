.class public Landroid/support/v4/zn0;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field public final do:I

.field public final for:I

.field public final if:I

.field public new:Lorg/bouncycastle/asn1/ASN1Encodable;

.field public try:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Landroid/support/v4/zn0;->do:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/zn0;->if:I

    const/16 v1, 0x3e7

    iput v1, p0, Landroid/support/v4/zn0;->for:I

    if-gt p1, v1, :cond_0

    if-lt p1, v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/goto;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    iput-object v0, p0, Landroid/support/v4/zn0;->new:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "wrong size in numeric code : not in (1..999)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Landroid/support/v4/zn0;->do:I

    const/4 v1, 0x1

    iput v1, p0, Landroid/support/v4/zn0;->if:I

    const/16 v1, 0x3e7

    iput v1, p0, Landroid/support/v4/zn0;->for:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/m;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/m;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v4/zn0;->new:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "wrong size in alphabetic code : max size is 3"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static try(Ljava/lang/Object;)Landroid/support/v4/zn0;
    .locals 1

    if-eqz p0, :cond_3

    instance-of v0, p0, Landroid/support/v4/zn0;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/goto;

    if-eqz v0, :cond_1

    invoke-static {p0}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    new-instance v0, Landroid/support/v4/zn0;

    invoke-direct {v0, p0}, Landroid/support/v4/zn0;-><init>(I)V

    return-object v0

    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/m;

    if-eqz v0, :cond_2

    invoke-static {p0}, Lorg/bouncycastle/asn1/m;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/m;

    move-result-object p0

    new-instance v0, Landroid/support/v4/zn0;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/m;->getString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/zn0;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown object in getInstance"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    check-cast p0, Landroid/support/v4/zn0;

    return-object p0
.end method


# virtual methods
.method public case()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/zn0;->new:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public else()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/zn0;->new:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/bouncycastle/asn1/m;

    return v0
.end method

.method public new()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/zn0;->new:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/bouncycastle/asn1/m;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/m;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/zn0;->new:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    return-object v0
.end method
