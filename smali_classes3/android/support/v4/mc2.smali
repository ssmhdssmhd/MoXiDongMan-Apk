.class public Landroid/support/v4/mc2;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:I

.field private if:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(ILjava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput p1, p0, Landroid/support/v4/mc2;->do:I

    iput-object p2, p0, Landroid/support/v4/mc2;->if:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/import;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v0

    iput v0, p0, Landroid/support/v4/mc2;->do:I

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/class;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/class;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Landroid/support/v4/mc2;->if:Ljava/math/BigInteger;

    return-void
.end method

.method private new()[B
    .locals 5

    iget-object v0, p0, Landroid/support/v4/mc2;->if:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v2, v0, v1

    if-nez v2, :cond_0

    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    new-array v4, v2, [B

    invoke-static {v0, v3, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4

    :cond_0
    return-object v0
.end method

.method public static try(Ljava/lang/Object;)Landroid/support/v4/mc2;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/mc2;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/mc2;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/mc2;

    invoke-static {p0}, Lorg/bouncycastle/asn1/import;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/import;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/mc2;-><init>(Lorg/bouncycastle/asn1/import;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public case()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/mc2;->if:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getTagNo()I
    .locals 1

    iget v0, p0, Landroid/support/v4/mc2;->do:I

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/u;

    iget v1, p0, Landroid/support/v4/mc2;->do:I

    new-instance v2, Lorg/bouncycastle/asn1/j;

    invoke-direct {p0}, Landroid/support/v4/mc2;->new()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
