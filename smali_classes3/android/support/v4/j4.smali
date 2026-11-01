.class public Landroid/support/v4/j4;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field public do:Lorg/bouncycastle/asn1/ASN1Encodable;

.field public if:Lorg/bouncycastle/asn1/final;


# direct methods
.method public constructor <init>(Landroid/support/v4/sd2;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/j4;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    new-instance p1, Lorg/bouncycastle/asn1/u;

    iget-object v0, p0, Landroid/support/v4/j4;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, v0}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object p1, p0, Landroid/support/v4/j4;->if:Lorg/bouncycastle/asn1/final;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/ug0;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/j4;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/j4;->if:Lorg/bouncycastle/asn1/final;

    return-void
.end method

.method public static new(Ljava/lang/Object;)Landroid/support/v4/j4;
    .locals 3

    if-eqz p0, :cond_5

    instance-of v0, p0, Landroid/support/v4/j4;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Landroid/support/v4/sd2;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v4/j4;

    invoke-static {p0}, Landroid/support/v4/sd2;->try(Ljava/lang/Object;)Landroid/support/v4/sd2;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/j4;-><init>(Landroid/support/v4/sd2;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Landroid/support/v4/ug0;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/support/v4/j4;

    check-cast p0, Landroid/support/v4/ug0;

    invoke-direct {v0, p0}, Landroid/support/v4/j4;-><init>(Landroid/support/v4/ug0;)V

    return-object v0

    :cond_2
    instance-of v0, p0, Lorg/bouncycastle/asn1/import;

    if-eqz v0, :cond_3

    new-instance v0, Landroid/support/v4/j4;

    check-cast p0, Lorg/bouncycastle/asn1/import;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/support/v4/sd2;->case(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/sd2;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/j4;-><init>(Landroid/support/v4/sd2;)V

    return-object v0

    :cond_3
    instance-of v0, p0, Lorg/bouncycastle/asn1/super;

    if-eqz v0, :cond_4

    new-instance v0, Landroid/support/v4/j4;

    invoke-static {p0}, Landroid/support/v4/ug0;->case(Ljava/lang/Object;)Landroid/support/v4/ug0;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/j4;-><init>(Landroid/support/v4/ug0;)V

    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

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

    :cond_5
    :goto_0
    check-cast p0, Landroid/support/v4/j4;

    return-object p0
.end method

.method public static try(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/j4;
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/import;->const()Lorg/bouncycastle/asn1/final;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/j4;->new(Ljava/lang/Object;)Landroid/support/v4/j4;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public case()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/j4;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/j4;->if:Lorg/bouncycastle/asn1/final;

    return-object v0
.end method
