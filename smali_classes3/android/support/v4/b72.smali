.class public Landroid/support/v4/b72;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:[Landroid/support/v4/y62;


# direct methods
.method public constructor <init>(Landroid/support/v4/y62;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/support/v4/y62;

    iput-object v0, p0, Landroid/support/v4/b72;->do:[Landroid/support/v4/y62;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    new-array v0, v0, [Landroid/support/v4/y62;

    iput-object v0, p0, Landroid/support/v4/b72;->do:[Landroid/support/v4/y62;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->super()Ljava/util/Enumeration;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/b72;->do:[Landroid/support/v4/y62;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/y62;->case(Ljava/lang/Object;)Landroid/support/v4/y62;

    move-result-object v3

    aput-object v3, v1, v0

    move v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>([Landroid/support/v4/y62;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-direct {p0, p1}, Landroid/support/v4/b72;->new([Landroid/support/v4/y62;)[Landroid/support/v4/y62;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/b72;->do:[Landroid/support/v4/y62;

    return-void
.end method

.method public static case(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/b72;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/b72;->try(Ljava/lang/Object;)Landroid/support/v4/b72;

    move-result-object p0

    return-object p0
.end method

.method private new([Landroid/support/v4/y62;)[Landroid/support/v4/y62;
    .locals 3

    array-length v0, p1

    new-array v1, v0, [Landroid/support/v4/y62;

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static try(Ljava/lang/Object;)Landroid/support/v4/b72;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/b72;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/b72;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/b72;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/b72;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public else()[Landroid/support/v4/y62;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b72;->do:[Landroid/support/v4/y62;

    invoke-direct {p0, v0}, Landroid/support/v4/b72;->new([Landroid/support/v4/y62;)[Landroid/support/v4/y62;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 4

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/support/v4/b72;->do:[Landroid/support/v4/y62;

    array-length v3, v2

    if-eq v1, v3, :cond_0

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method
