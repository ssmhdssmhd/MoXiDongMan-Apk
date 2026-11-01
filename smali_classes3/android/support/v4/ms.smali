.class public Landroid/support/v4/ms;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:Landroid/support/v4/tg2;

.field private for:Lorg/bouncycastle/asn1/goto;

.field private if:Lorg/bouncycastle/asn1/native;


# direct methods
.method public constructor <init>(Landroid/support/v4/tg2;Lorg/bouncycastle/asn1/native;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/ms;-><init>(Landroid/support/v4/tg2;Lorg/bouncycastle/asn1/native;Ljava/math/BigInteger;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/tg2;Lorg/bouncycastle/asn1/native;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/ms;->do:Landroid/support/v4/tg2;

    iput-object p2, p0, Landroid/support/v4/ms;->if:Lorg/bouncycastle/asn1/native;

    if-eqz p3, :cond_0

    new-instance p1, Lorg/bouncycastle/asn1/goto;

    invoke-direct {p1, p3}, Lorg/bouncycastle/asn1/goto;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Landroid/support/v4/ms;->for:Lorg/bouncycastle/asn1/goto;

    :cond_0
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v2, 0x3

    if-gt v0, v2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/tg2;->else(Ljava/lang/Object;)Landroid/support/v4/tg2;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/ms;->do:Landroid/support/v4/tg2;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/native;->final(Ljava/lang/Object;)Lorg/bouncycastle/asn1/native;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/ms;->if:Lorg/bouncycastle/asn1/native;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/ms;->for:Lorg/bouncycastle/asn1/goto;

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public static else(Ljava/lang/Object;)Landroid/support/v4/ms;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/ms;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/ms;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/ms;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/ms;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public case()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ms;->for:Lorg/bouncycastle/asn1/goto;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public new()Lorg/bouncycastle/asn1/native;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ms;->if:Lorg/bouncycastle/asn1/native;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 2

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/ms;->do:Landroid/support/v4/tg2;

    invoke-virtual {v1}, Landroid/support/v4/tg2;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/ms;->if:Lorg/bouncycastle/asn1/native;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/ms;->for:Lorg/bouncycastle/asn1/goto;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Landroid/support/v4/tg2;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ms;->do:Landroid/support/v4/tg2;

    return-object v0
.end method
