.class public Landroid/support/v4/ke1;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:Lorg/bouncycastle/asn1/super;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/goto;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/goto;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {p0, v0}, Landroid/support/v4/ke1;-><init>(Lorg/bouncycastle/asn1/goto;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/goto;)V
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/n;

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/n;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/n;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p0, v0}, Landroid/support/v4/ke1;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/ke1;->do:Lorg/bouncycastle/asn1/super;

    return-void
.end method

.method public constructor <init>([Ljava/math/BigInteger;)V
    .locals 0

    invoke-static {p1}, Landroid/support/v4/ke1;->else([Ljava/math/BigInteger;)[Lorg/bouncycastle/asn1/goto;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/support/v4/ke1;-><init>([Lorg/bouncycastle/asn1/goto;)V

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/goto;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/n;

    invoke-static {p1}, Landroid/support/v4/ke1;->goto([Lorg/bouncycastle/asn1/goto;)[Lorg/bouncycastle/asn1/n;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/n;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p0, v0}, Landroid/support/v4/ke1;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-void
.end method

.method public static case(Ljava/lang/Object;)Landroid/support/v4/ke1;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/ke1;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/ke1;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/ke1;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/ke1;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static else([Ljava/math/BigInteger;)[Lorg/bouncycastle/asn1/goto;
    .locals 5

    array-length v0, p0

    new-array v1, v0, [Lorg/bouncycastle/asn1/goto;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    new-instance v3, Lorg/bouncycastle/asn1/goto;

    aget-object v4, p0, v2

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/goto;-><init>(Ljava/math/BigInteger;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static goto([Lorg/bouncycastle/asn1/goto;)[Lorg/bouncycastle/asn1/n;
    .locals 5

    array-length v0, p0

    new-array v1, v0, [Lorg/bouncycastle/asn1/n;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    new-instance v3, Lorg/bouncycastle/asn1/n;

    aget-object v4, p0, v2

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/n;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static this(Lorg/bouncycastle/asn1/super;)[Lorg/bouncycastle/asn1/goto;
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    new-array v1, v0, [Lorg/bouncycastle/asn1/goto;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public new()[Ljava/math/BigInteger;
    .locals 5

    iget-object v0, p0, Landroid/support/v4/ke1;->do:Lorg/bouncycastle/asn1/super;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    new-array v1, v0, [Ljava/math/BigInteger;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eq v3, v0, :cond_0

    iget-object v4, p0, Landroid/support/v4/ke1;->do:Lorg/bouncycastle/asn1/super;

    invoke-virtual {v4, v3}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ke1;->do:Lorg/bouncycastle/asn1/super;

    return-object v0
.end method

.method public try()[[Lorg/bouncycastle/asn1/goto;
    .locals 4

    iget-object v0, p0, Landroid/support/v4/ke1;->do:Lorg/bouncycastle/asn1/super;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    new-array v1, v0, [[Lorg/bouncycastle/asn1/goto;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    iget-object v3, p0, Landroid/support/v4/ke1;->do:Lorg/bouncycastle/asn1/super;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/super;

    invoke-static {v3}, Landroid/support/v4/ke1;->this(Lorg/bouncycastle/asn1/super;)[Lorg/bouncycastle/asn1/goto;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
