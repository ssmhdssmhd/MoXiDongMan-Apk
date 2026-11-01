.class public Landroid/support/v4/s41;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:Landroid/support/v4/i10;

.field private if:Lorg/bouncycastle/asn1/super;


# direct methods
.method public constructor <init>(Landroid/support/v4/i10;Landroid/support/v4/import;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/s41;->do:Landroid/support/v4/i10;

    new-instance p1, Lorg/bouncycastle/asn1/n;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    iput-object p1, p0, Landroid/support/v4/s41;->if:Lorg/bouncycastle/asn1/super;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/support/v4/import;)V
    .locals 1

    new-instance v0, Landroid/support/v4/i10;

    invoke-direct {v0, p1}, Landroid/support/v4/i10;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Landroid/support/v4/s41;-><init>(Landroid/support/v4/i10;Landroid/support/v4/import;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Vector;)V
    .locals 0

    invoke-static {p2}, Landroid/support/v4/s41;->new(Ljava/util/Vector;)Landroid/support/v4/import;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/support/v4/s41;-><init>(Ljava/lang/String;Landroid/support/v4/import;)V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/i10;->new(Ljava/lang/Object;)Landroid/support/v4/i10;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/s41;->do:Landroid/support/v4/i10;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/s41;->if:Lorg/bouncycastle/asn1/super;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static new(Ljava/util/Vector;)Landroid/support/v4/import;
    .locals 5

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    invoke-virtual {p0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/math/BigInteger;

    if-eqz v2, :cond_0

    new-instance v2, Lorg/bouncycastle/asn1/goto;

    check-cast v1, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/goto;-><init>(Ljava/math/BigInteger;)V

    goto :goto_1

    :cond_0
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    new-instance v2, Lorg/bouncycastle/asn1/goto;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v3, v1

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    :goto_1
    invoke-virtual {v0, v2}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2
    return-object v0
.end method

.method public static try(Ljava/lang/Object;)Landroid/support/v4/s41;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/s41;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/s41;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/s41;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/s41;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public case()[Lorg/bouncycastle/asn1/goto;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/s41;->if:Lorg/bouncycastle/asn1/super;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/goto;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/support/v4/s41;->if:Lorg/bouncycastle/asn1/super;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Landroid/support/v4/s41;->if:Lorg/bouncycastle/asn1/super;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public else()Landroid/support/v4/i10;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/s41;->do:Landroid/support/v4/i10;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 2

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/s41;->do:Landroid/support/v4/i10;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/s41;->if:Lorg/bouncycastle/asn1/super;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method
