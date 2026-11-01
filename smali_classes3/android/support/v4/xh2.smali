.class public Landroid/support/v4/xh2;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;


# instance fields
.field private do:Lorg/bouncycastle/asn1/catch;

.field private if:Lorg/bouncycastle/asn1/final;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/support/v4/xh2;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->characteristic_two_field:Lorg/bouncycastle/asn1/catch;

    iput-object v0, p0, Landroid/support/v4/xh2;->do:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/goto;

    int-to-long v2, p1

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const-string p1, "inconsistent k values"

    if-nez p3, :cond_1

    if-nez p4, :cond_0

    sget-object p1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->tpBasis:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v0, p1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance p1, Lorg/bouncycastle/asn1/goto;

    int-to-long p2, p2

    invoke-direct {p1, p2, p3}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    invoke-virtual {v0, p1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    if-le p3, p2, :cond_2

    if-le p4, p3, :cond_2

    sget-object p1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ppBasis:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v0, p1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance p1, Landroid/support/v4/import;

    invoke-direct {p1}, Landroid/support/v4/import;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/goto;

    int-to-long v2, p2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    invoke-virtual {p1, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance p2, Lorg/bouncycastle/asn1/goto;

    int-to-long v1, p3

    invoke-direct {p2, v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    invoke-virtual {p1, p2}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance p2, Lorg/bouncycastle/asn1/goto;

    int-to-long p3, p4

    invoke-direct {p2, p3, p4}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    invoke-virtual {p1, p2}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance p2, Lorg/bouncycastle/asn1/n;

    invoke-direct {p2, p1}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    invoke-virtual {v0, p2}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :goto_0
    new-instance p1, Lorg/bouncycastle/asn1/n;

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    iput-object p1, p0, Landroid/support/v4/xh2;->if:Lorg/bouncycastle/asn1/final;

    return-void

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->prime_field:Lorg/bouncycastle/asn1/catch;

    iput-object v0, p0, Landroid/support/v4/xh2;->do:Lorg/bouncycastle/asn1/catch;

    new-instance v0, Lorg/bouncycastle/asn1/goto;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/goto;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Landroid/support/v4/xh2;->if:Lorg/bouncycastle/asn1/final;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/catch;->throw(Ljava/lang/Object;)Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/xh2;->do:Lorg/bouncycastle/asn1/catch;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/xh2;->if:Lorg/bouncycastle/asn1/final;

    return-void
.end method

.method public static try(Ljava/lang/Object;)Landroid/support/v4/xh2;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/xh2;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/xh2;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/xh2;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/xh2;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public case()Lorg/bouncycastle/asn1/final;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xh2;->if:Lorg/bouncycastle/asn1/final;

    return-object v0
.end method

.method public new()Lorg/bouncycastle/asn1/catch;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xh2;->do:Lorg/bouncycastle/asn1/catch;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 2

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/xh2;->do:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/xh2;->if:Lorg/bouncycastle/asn1/final;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method
