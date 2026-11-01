.class public Landroid/support/v4/gj1;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field public do:Lorg/bouncycastle/asn1/goto;

.field public if:Lorg/bouncycastle/asn1/class;


# direct methods
.method public constructor <init>(I[B)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/goto;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    iput-object v0, p0, Landroid/support/v4/gj1;->do:Lorg/bouncycastle/asn1/goto;

    new-instance p1, Lorg/bouncycastle/asn1/j;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    iput-object p1, p0, Landroid/support/v4/gj1;->if:Lorg/bouncycastle/asn1/class;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/gj1;->do:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/goto;

    iput-object v0, p0, Landroid/support/v4/gj1;->do:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    :goto_0
    check-cast p1, Lorg/bouncycastle/asn1/class;

    iput-object p1, p0, Landroid/support/v4/gj1;->if:Lorg/bouncycastle/asn1/class;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/gj1;->do:Lorg/bouncycastle/asn1/goto;

    new-instance v0, Lorg/bouncycastle/asn1/j;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    iput-object v0, p0, Landroid/support/v4/gj1;->if:Lorg/bouncycastle/asn1/class;

    return-void
.end method

.method public static try(Ljava/lang/Object;)Landroid/support/v4/gj1;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/gj1;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/gj1;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/gj1;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/gj1;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public case()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/gj1;->do:Lorg/bouncycastle/asn1/goto;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public new()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/gj1;->if:Lorg/bouncycastle/asn1/class;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 2

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/gj1;->do:Lorg/bouncycastle/asn1/goto;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/gj1;->if:Lorg/bouncycastle/asn1/class;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method
