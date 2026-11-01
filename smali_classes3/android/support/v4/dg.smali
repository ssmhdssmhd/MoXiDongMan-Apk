.class public Landroid/support/v4/dg;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:Landroid/support/v4/tg0;

.field private if:Lorg/bouncycastle/asn1/goto;


# direct methods
.method public constructor <init>(Landroid/support/v4/tg0;Ljava/math/BigInteger;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/goto;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/goto;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {p0, p1, v0}, Landroid/support/v4/dg;-><init>(Landroid/support/v4/tg0;Lorg/bouncycastle/asn1/goto;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/tg0;Lorg/bouncycastle/asn1/goto;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/dg;->do:Landroid/support/v4/tg0;

    iput-object p2, p0, Landroid/support/v4/dg;->if:Lorg/bouncycastle/asn1/goto;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/tg0;->try(Ljava/lang/Object;)Landroid/support/v4/tg0;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/dg;->do:Landroid/support/v4/tg0;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/dg;->if:Lorg/bouncycastle/asn1/goto;

    return-void
.end method

.method public static new(Ljava/lang/Object;)Landroid/support/v4/dg;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/dg;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/dg;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/dg;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/dg;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static try(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/dg;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/dg;->new(Ljava/lang/Object;)Landroid/support/v4/dg;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public case()Landroid/support/v4/tg0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/dg;->do:Landroid/support/v4/tg0;

    return-object v0
.end method

.method public else()Lorg/bouncycastle/asn1/goto;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/dg;->if:Lorg/bouncycastle/asn1/goto;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 2

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/dg;->do:Landroid/support/v4/tg0;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/dg;->if:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method
