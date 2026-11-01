.class public Landroid/support/v4/ny1;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/support/v4/q4;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/ny1;->do:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 7

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/ny1;->do:[Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->super()Ljava/util/Enumeration;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/import;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/import;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    invoke-static {v2, v4}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v3

    new-array v4, v3, [Landroid/support/v4/n4;

    const/4 v5, 0x0

    :goto_1
    if-eq v5, v3, :cond_0

    invoke-virtual {v2, v5}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v4/n4;->else(Ljava/lang/Object;)Landroid/support/v4/n4;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    iget-object v2, p0, Landroid/support/v4/ny1;->do:[Ljava/lang/Object;

    aput-object v4, v2, v1

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v3

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/support/v4/ny1;->do:[Ljava/lang/Object;

    invoke-static {v2, v4}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/q4;->try(Ljava/lang/Object;)Landroid/support/v4/q4;

    move-result-object v2

    aput-object v2, v3, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void
.end method

.method public constructor <init>([Landroid/support/v4/n4;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/ny1;->do:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-void
.end method

.method public static new(Ljava/lang/Object;)Landroid/support/v4/ny1;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/ny1;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/ny1;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/ny1;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/ny1;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 6

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroid/support/v4/ny1;->do:[Ljava/lang/Object;

    array-length v4, v3

    if-eq v2, v4, :cond_1

    aget-object v3, v3, v2

    instance-of v3, v3, [Landroid/support/v4/n4;

    if-eqz v3, :cond_0

    new-instance v3, Lorg/bouncycastle/asn1/u;

    new-instance v4, Lorg/bouncycastle/asn1/n;

    iget-object v5, p0, Landroid/support/v4/ny1;->do:[Ljava/lang/Object;

    aget-object v5, v5, v2

    check-cast v5, [Landroid/support/v4/n4;

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/n;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v3, v1, v4}, Lorg/bouncycastle/asn1/u;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    :cond_0
    new-instance v3, Lorg/bouncycastle/asn1/u;

    iget-object v4, p0, Landroid/support/v4/ny1;->do:[Ljava/lang/Object;

    aget-object v4, v4, v2

    check-cast v4, Landroid/support/v4/q4;

    const/4 v5, 0x1

    invoke-direct {v3, v5, v4}, Lorg/bouncycastle/asn1/u;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    :goto_1
    invoke-virtual {v0, v3}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()[Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Landroid/support/v4/ny1;->do:[Ljava/lang/Object;

    array-length v1, v0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
