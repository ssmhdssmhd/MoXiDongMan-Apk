.class public Landroid/support/v4/nn1;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private do:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Landroid/support/v4/tg2;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/nn1;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/class;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/nn1;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public static new(Ljava/lang/Object;)Landroid/support/v4/nn1;
    .locals 2

    instance-of v0, p0, Landroid/support/v4/nn1;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/nn1;

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/j;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v4/nn1;

    check-cast p0, Lorg/bouncycastle/asn1/j;

    invoke-direct {v0, p0}, Landroid/support/v4/nn1;-><init>(Lorg/bouncycastle/asn1/class;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/import;

    if-eqz v0, :cond_3

    check-cast p0, Lorg/bouncycastle/asn1/import;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    new-instance v0, Landroid/support/v4/nn1;

    invoke-static {p0, v1}, Landroid/support/v4/tg2;->goto(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/tg2;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/nn1;-><init>(Landroid/support/v4/tg2;)V

    return-object v0

    :cond_2
    new-instance v0, Landroid/support/v4/nn1;

    invoke-static {p0, v1}, Lorg/bouncycastle/asn1/class;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/class;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/nn1;-><init>(Lorg/bouncycastle/asn1/class;)V

    return-object v0

    :cond_3
    new-instance v0, Landroid/support/v4/nn1;

    invoke-static {p0}, Landroid/support/v4/tg2;->else(Ljava/lang/Object;)Landroid/support/v4/tg2;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/nn1;-><init>(Landroid/support/v4/tg2;)V

    return-object v0
.end method

.method public static try(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/nn1;
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/import;->const()Lorg/bouncycastle/asn1/final;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/nn1;->new(Ljava/lang/Object;)Landroid/support/v4/nn1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public case()[B
    .locals 2

    iget-object v0, p0, Landroid/support/v4/nn1;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v1, v0, Lorg/bouncycastle/asn1/class;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/asn1/class;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public else()Landroid/support/v4/tg2;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/nn1;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v1, v0, Lorg/bouncycastle/asn1/class;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Landroid/support/v4/tg2;->else(Ljava/lang/Object;)Landroid/support/v4/tg2;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 4

    iget-object v0, p0, Landroid/support/v4/nn1;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/bouncycastle/asn1/class;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/u;

    const/4 v2, 0x2

    iget-object v3, p0, Landroid/support/v4/nn1;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/u;

    iget-object v2, p0, Landroid/support/v4/nn1;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v1, v2}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
