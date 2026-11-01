.class public Landroid/support/v4/oy1;
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

    iput-object p1, p0, Landroid/support/v4/oy1;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/class;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/u;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Landroid/support/v4/oy1;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/final;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/oy1;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public static try(Ljava/lang/Object;)Landroid/support/v4/oy1;
    .locals 3

    if-eqz p0, :cond_4

    instance-of v0, p0, Landroid/support/v4/oy1;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Landroid/support/v4/bo0;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v4/oy1;

    check-cast p0, Landroid/support/v4/bo0;

    invoke-direct {v0, p0}, Landroid/support/v4/oy1;-><init>(Landroid/support/v4/bo0;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/class;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/support/v4/oy1;

    check-cast p0, Lorg/bouncycastle/asn1/class;

    invoke-direct {v0, p0}, Landroid/support/v4/oy1;-><init>(Lorg/bouncycastle/asn1/class;)V

    return-object v0

    :cond_2
    instance-of v0, p0, Lorg/bouncycastle/asn1/final;

    if-eqz v0, :cond_3

    new-instance v0, Landroid/support/v4/oy1;

    check-cast p0, Lorg/bouncycastle/asn1/final;

    invoke-direct {v0, p0}, Landroid/support/v4/oy1;-><init>(Lorg/bouncycastle/asn1/final;)V

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal object in SignerIdentifier: "

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
    check-cast p0, Landroid/support/v4/oy1;

    return-object p0
.end method


# virtual methods
.method public case()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/oy1;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/bouncycastle/asn1/import;

    return v0
.end method

.method public new()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/oy1;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v1, v0, Lorg/bouncycastle/asn1/import;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/asn1/import;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/class;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/class;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/oy1;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    return-object v0
.end method
