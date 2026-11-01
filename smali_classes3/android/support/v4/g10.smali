.class public Landroid/support/v4/g10;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;
.implements Lorg/bouncycastle/asn1/ASN1String;


# instance fields
.field private do:Lorg/bouncycastle/asn1/ASN1String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/v;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/v;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v4/g10;->do:Lorg/bouncycastle/asn1/ASN1String;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/implements;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/g10;->do:Lorg/bouncycastle/asn1/ASN1String;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/m;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/g10;->do:Lorg/bouncycastle/asn1/ASN1String;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/s;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/g10;->do:Lorg/bouncycastle/asn1/ASN1String;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/v;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/g10;->do:Lorg/bouncycastle/asn1/ASN1String;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/w;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/g10;->do:Lorg/bouncycastle/asn1/ASN1String;

    return-void
.end method

.method public static new(Ljava/lang/Object;)Landroid/support/v4/g10;
    .locals 3

    if-eqz p0, :cond_6

    instance-of v0, p0, Landroid/support/v4/g10;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/s;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v4/g10;

    check-cast p0, Lorg/bouncycastle/asn1/s;

    invoke-direct {v0, p0}, Landroid/support/v4/g10;-><init>(Lorg/bouncycastle/asn1/s;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/m;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/support/v4/g10;

    check-cast p0, Lorg/bouncycastle/asn1/m;

    invoke-direct {v0, p0}, Landroid/support/v4/g10;-><init>(Lorg/bouncycastle/asn1/m;)V

    return-object v0

    :cond_2
    instance-of v0, p0, Lorg/bouncycastle/asn1/w;

    if-eqz v0, :cond_3

    new-instance v0, Landroid/support/v4/g10;

    check-cast p0, Lorg/bouncycastle/asn1/w;

    invoke-direct {v0, p0}, Landroid/support/v4/g10;-><init>(Lorg/bouncycastle/asn1/w;)V

    return-object v0

    :cond_3
    instance-of v0, p0, Lorg/bouncycastle/asn1/v;

    if-eqz v0, :cond_4

    new-instance v0, Landroid/support/v4/g10;

    check-cast p0, Lorg/bouncycastle/asn1/v;

    invoke-direct {v0, p0}, Landroid/support/v4/g10;-><init>(Lorg/bouncycastle/asn1/v;)V

    return-object v0

    :cond_4
    instance-of v0, p0, Lorg/bouncycastle/asn1/implements;

    if-eqz v0, :cond_5

    new-instance v0, Landroid/support/v4/g10;

    check-cast p0, Lorg/bouncycastle/asn1/implements;

    invoke-direct {v0, p0}, Landroid/support/v4/g10;-><init>(Lorg/bouncycastle/asn1/implements;)V

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

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

    :cond_6
    :goto_0
    check-cast p0, Landroid/support/v4/g10;

    return-object p0
.end method

.method public static try(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/g10;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/import;->const()Lorg/bouncycastle/asn1/final;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/g10;->new(Ljava/lang/Object;)Landroid/support/v4/g10;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "choice item must be explicitly tagged"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/g10;->do:Lorg/bouncycastle/asn1/ASN1String;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/g10;->do:Lorg/bouncycastle/asn1/ASN1String;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/g10;->do:Lorg/bouncycastle/asn1/ASN1String;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
