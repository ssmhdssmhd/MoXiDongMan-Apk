.class public Landroid/support/v4/ao0;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field public do:Landroid/support/v4/tg2;

.field public if:Lorg/bouncycastle/asn1/goto;


# direct methods
.method public constructor <init>(Landroid/support/v4/tg2;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/ao0;->do:Landroid/support/v4/tg2;

    new-instance p1, Lorg/bouncycastle/asn1/goto;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/goto;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Landroid/support/v4/ao0;->if:Lorg/bouncycastle/asn1/goto;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/tg2;->else(Ljava/lang/Object;)Landroid/support/v4/tg2;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/ao0;->do:Landroid/support/v4/tg2;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/goto;

    iput-object p1, p0, Landroid/support/v4/ao0;->if:Lorg/bouncycastle/asn1/goto;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/goto;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/goto;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/tg2;->else(Ljava/lang/Object;)Landroid/support/v4/tg2;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/ao0;->do:Landroid/support/v4/tg2;

    new-instance p1, Lorg/bouncycastle/asn1/goto;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/goto;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Landroid/support/v4/ao0;->if:Lorg/bouncycastle/asn1/goto;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/goto;Lorg/bouncycastle/asn1/goto;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/goto;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/tg2;->else(Ljava/lang/Object;)Landroid/support/v4/tg2;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/ao0;->do:Landroid/support/v4/tg2;

    iput-object p2, p0, Landroid/support/v4/ao0;->if:Lorg/bouncycastle/asn1/goto;

    return-void
.end method

.method public static try(Ljava/lang/Object;)Landroid/support/v4/ao0;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/ao0;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/ao0;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/ao0;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/ao0;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public case()Landroid/support/v4/tg2;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ao0;->do:Landroid/support/v4/tg2;

    return-object v0
.end method

.method public new()Lorg/bouncycastle/asn1/goto;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ao0;->if:Lorg/bouncycastle/asn1/goto;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 2

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/ao0;->do:Landroid/support/v4/tg2;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/ao0;->if:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method
