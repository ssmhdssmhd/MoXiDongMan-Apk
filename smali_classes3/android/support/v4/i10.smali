.class public Landroid/support/v4/i10;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final case:I = 0x3

.field public static final else:I = 0xc8

.field public static final for:I = 0x0

.field public static final new:I = 0x1

.field public static final try:I = 0x2


# instance fields
.field public do:I

.field public if:Lorg/bouncycastle/asn1/ASN1String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_0
    iput p1, p0, Landroid/support/v4/i10;->do:I

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    new-instance p1, Lorg/bouncycastle/asn1/v;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/v;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/bouncycastle/asn1/y;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/y;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/bouncycastle/asn1/v;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/v;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance p1, Lorg/bouncycastle/asn1/implements;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/implements;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance p1, Lorg/bouncycastle/asn1/g;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/g;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object p1, p0, Landroid/support/v4/i10;->if:Lorg/bouncycastle/asn1/ASN1String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v4/i10;->do:I

    new-instance v0, Lorg/bouncycastle/asn1/v;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/v;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v4/i10;->if:Lorg/bouncycastle/asn1/ASN1String;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1String;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/i10;->if:Lorg/bouncycastle/asn1/ASN1String;

    instance-of v0, p1, Lorg/bouncycastle/asn1/v;

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    :goto_0
    iput p1, p0, Landroid/support/v4/i10;->do:I

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/asn1/implements;

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lorg/bouncycastle/asn1/g;

    if-eqz v0, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    instance-of p1, p1, Lorg/bouncycastle/asn1/y;

    if-eqz p1, :cond_3

    const/4 p1, 0x3

    goto :goto_0

    :goto_1
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown STRING type in DisplayText"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public static new(Ljava/lang/Object;)Landroid/support/v4/i10;
    .locals 3

    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1String;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v4/i10;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1String;

    invoke-direct {v0, p0}, Landroid/support/v4/i10;-><init>(Lorg/bouncycastle/asn1/ASN1String;)V

    return-object v0

    :cond_0
    if-eqz p0, :cond_2

    instance-of v0, p0, Landroid/support/v4/i10;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
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

    :cond_2
    :goto_0
    check-cast p0, Landroid/support/v4/i10;

    return-object p0
.end method

.method public static try(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/i10;
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/import;->const()Lorg/bouncycastle/asn1/final;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/i10;->new(Ljava/lang/Object;)Landroid/support/v4/i10;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/i10;->if:Lorg/bouncycastle/asn1/ASN1String;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/i10;->if:Lorg/bouncycastle/asn1/ASN1String;

    check-cast v0, Lorg/bouncycastle/asn1/final;

    return-object v0
.end method
