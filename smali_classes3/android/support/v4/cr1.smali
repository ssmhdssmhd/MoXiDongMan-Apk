.class public Landroid/support/v4/cr1;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:Landroid/support/v4/s41;

.field private if:Landroid/support/v4/i10;


# direct methods
.method public constructor <init>(Landroid/support/v4/s41;Landroid/support/v4/i10;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/cr1;->do:Landroid/support/v4/s41;

    iput-object p2, p0, Landroid/support/v4/cr1;->if:Landroid/support/v4/i10;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->super()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v1, v0, Landroid/support/v4/i10;

    if-nez v1, :cond_3

    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1String;

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    instance-of v1, v0, Landroid/support/v4/s41;

    if-nez v1, :cond_2

    instance-of v1, v0, Lorg/bouncycastle/asn1/super;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid element in \'SPUserNotice\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    invoke-static {v0}, Landroid/support/v4/s41;->try(Ljava/lang/Object;)Landroid/support/v4/s41;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/cr1;->do:Landroid/support/v4/s41;

    goto :goto_0

    :cond_3
    :goto_2
    invoke-static {v0}, Landroid/support/v4/i10;->new(Ljava/lang/Object;)Landroid/support/v4/i10;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/cr1;->if:Landroid/support/v4/i10;

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static try(Ljava/lang/Object;)Landroid/support/v4/cr1;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/cr1;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/cr1;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/cr1;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/cr1;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public case()Landroid/support/v4/s41;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/cr1;->do:Landroid/support/v4/s41;

    return-object v0
.end method

.method public new()Landroid/support/v4/i10;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/cr1;->if:Landroid/support/v4/i10;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 2

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/cr1;->do:Landroid/support/v4/s41;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/cr1;->if:Landroid/support/v4/i10;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method
