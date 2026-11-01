.class public Landroid/support/v4/yy0;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private final do:I

.field private final for:Landroid/support/v4/qe0;

.field private final if:I

.field private final new:Landroid/support/v4/b1;


# direct methods
.method public constructor <init>(IILandroid/support/v4/qe0;Landroid/support/v4/b1;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput p1, p0, Landroid/support/v4/yy0;->do:I

    iput p2, p0, Landroid/support/v4/yy0;->if:I

    new-instance p1, Landroid/support/v4/qe0;

    invoke-virtual {p3}, Landroid/support/v4/qe0;->if()[B

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/support/v4/qe0;-><init>([B)V

    iput-object p1, p0, Landroid/support/v4/yy0;->for:Landroid/support/v4/qe0;

    iput-object p4, p0, Landroid/support/v4/yy0;->new:Landroid/support/v4/b1;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Landroid/support/v4/yy0;->do:I

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Landroid/support/v4/yy0;->if:I

    new-instance v0, Landroid/support/v4/qe0;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/class;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/qe0;-><init>([B)V

    iput-object v0, p0, Landroid/support/v4/yy0;->for:Landroid/support/v4/qe0;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/b1;->try(Ljava/lang/Object;)Landroid/support/v4/b1;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/yy0;->new:Landroid/support/v4/b1;

    return-void
.end method

.method public static case(Ljava/lang/Object;)Landroid/support/v4/yy0;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/yy0;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/yy0;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/yy0;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/yy0;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public else()I
    .locals 1

    iget v0, p0, Landroid/support/v4/yy0;->do:I

    return v0
.end method

.method public goto()I
    .locals 1

    iget v0, p0, Landroid/support/v4/yy0;->if:I

    return v0
.end method

.method public new()Landroid/support/v4/b1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/yy0;->new:Landroid/support/v4/b1;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 4

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/goto;

    iget v2, p0, Landroid/support/v4/yy0;->do:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/goto;

    iget v2, p0, Landroid/support/v4/yy0;->if:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/j;

    iget-object v2, p0, Landroid/support/v4/yy0;->for:Landroid/support/v4/qe0;

    invoke-virtual {v2}, Landroid/support/v4/qe0;->if()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/yy0;->new:Landroid/support/v4/b1;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Landroid/support/v4/qe0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/yy0;->for:Landroid/support/v4/qe0;

    return-object v0
.end method
