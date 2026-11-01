.class public Landroid/support/v4/n81;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private do:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Landroid/support/v4/bo0;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/n81;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/p81;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/u;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Landroid/support/v4/n81;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/w22;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/u;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Landroid/support/v4/n81;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/class;)V
    .locals 1

    new-instance v0, Landroid/support/v4/w22;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/support/v4/w22;-><init>([B)V

    invoke-direct {p0, v0}, Landroid/support/v4/n81;-><init>(Landroid/support/v4/w22;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/final;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/n81;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public static case(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/n81;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/import;->const()Lorg/bouncycastle/asn1/final;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/n81;->try(Ljava/lang/Object;)Landroid/support/v4/n81;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t implicitly tag OriginatorIdentifierOrKey"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static try(Ljava/lang/Object;)Landroid/support/v4/n81;
    .locals 4

    if-eqz p0, :cond_5

    instance-of v0, p0, Landroid/support/v4/n81;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p0, Landroid/support/v4/bo0;

    if-nez v0, :cond_4

    instance-of v0, p0, Lorg/bouncycastle/asn1/super;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/import;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/import;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    new-instance p0, Landroid/support/v4/n81;

    invoke-static {v0, v2}, Landroid/support/v4/w22;->case(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/w22;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/n81;-><init>(Landroid/support/v4/w22;)V

    return-object p0

    :cond_2
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    new-instance p0, Landroid/support/v4/n81;

    invoke-static {v0, v2}, Landroid/support/v4/p81;->case(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/p81;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/n81;-><init>(Landroid/support/v4/p81;)V

    return-object p0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid OriginatorIdentifierOrKey: "

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

    :cond_4
    :goto_0
    new-instance v0, Landroid/support/v4/n81;

    invoke-static {p0}, Landroid/support/v4/bo0;->new(Ljava/lang/Object;)Landroid/support/v4/bo0;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/n81;-><init>(Landroid/support/v4/bo0;)V

    return-object v0

    :cond_5
    :goto_1
    check-cast p0, Landroid/support/v4/n81;

    return-object p0
.end method


# virtual methods
.method public else()Landroid/support/v4/bo0;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/n81;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v1, v0, Landroid/support/v4/bo0;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/support/v4/bo0;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public goto()Landroid/support/v4/p81;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/n81;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v1, v0, Lorg/bouncycastle/asn1/import;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/asn1/import;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/n81;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/bouncycastle/asn1/import;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/p81;->case(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/p81;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public new()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/n81;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public this()Landroid/support/v4/w22;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/n81;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v1, v0, Lorg/bouncycastle/asn1/import;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/asn1/import;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/n81;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/bouncycastle/asn1/import;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/w22;->case(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/w22;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/n81;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    return-object v0
.end method
