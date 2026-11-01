.class public Landroid/support/v4/fz0;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private case:[B

.field private do:I

.field private else:[B

.field private for:[B

.field private if:I

.field private new:[B

.field private try:[B


# direct methods
.method public constructor <init>(IILandroid/support/v4/se0;Landroid/support/v4/pe1;Landroid/support/v4/fd1;Landroid/support/v4/fd1;Landroid/support/v4/qe0;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput p1, p0, Landroid/support/v4/fz0;->do:I

    iput p2, p0, Landroid/support/v4/fz0;->if:I

    invoke-virtual {p3}, Landroid/support/v4/se0;->try()[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/fz0;->for:[B

    invoke-virtual {p4}, Landroid/support/v4/pe1;->super()[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/fz0;->new:[B

    invoke-virtual {p7}, Landroid/support/v4/qe0;->if()[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/fz0;->try:[B

    invoke-virtual {p5}, Landroid/support/v4/fd1;->if()[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/fz0;->case:[B

    invoke-virtual {p6}, Landroid/support/v4/fd1;->if()[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/fz0;->else:[B

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Landroid/support/v4/fz0;->do:I

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Landroid/support/v4/fz0;->if:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/class;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/fz0;->for:[B

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/class;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/fz0;->new:[B

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/class;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/fz0;->case:[B

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/class;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/fz0;->else:[B

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/class;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/fz0;->try:[B

    return-void
.end method

.method public static case(Ljava/lang/Object;)Landroid/support/v4/fz0;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/fz0;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/fz0;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/fz0;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/fz0;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public break()Landroid/support/v4/fd1;
    .locals 2

    new-instance v0, Landroid/support/v4/fd1;

    iget-object v1, p0, Landroid/support/v4/fz0;->else:[B

    invoke-direct {v0, v1}, Landroid/support/v4/fd1;-><init>([B)V

    return-object v0
.end method

.method public catch()Landroid/support/v4/qe0;
    .locals 2

    new-instance v0, Landroid/support/v4/qe0;

    iget-object v1, p0, Landroid/support/v4/fz0;->try:[B

    invoke-direct {v0, v1}, Landroid/support/v4/qe0;-><init>([B)V

    return-object v0
.end method

.method public else()I
    .locals 1

    iget v0, p0, Landroid/support/v4/fz0;->if:I

    return v0
.end method

.method public goto()I
    .locals 1

    iget v0, p0, Landroid/support/v4/fz0;->do:I

    return v0
.end method

.method public new()Landroid/support/v4/se0;
    .locals 2

    new-instance v0, Landroid/support/v4/se0;

    iget-object v1, p0, Landroid/support/v4/fz0;->for:[B

    invoke-direct {v0, v1}, Landroid/support/v4/se0;-><init>([B)V

    return-object v0
.end method

.method public this()Landroid/support/v4/fd1;
    .locals 2

    new-instance v0, Landroid/support/v4/fd1;

    iget-object v1, p0, Landroid/support/v4/fz0;->case:[B

    invoke-direct {v0, v1}, Landroid/support/v4/fd1;-><init>([B)V

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 4

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/goto;

    iget v2, p0, Landroid/support/v4/fz0;->do:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/goto;

    iget v2, p0, Landroid/support/v4/fz0;->if:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/j;

    iget-object v2, p0, Landroid/support/v4/fz0;->for:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/j;

    iget-object v2, p0, Landroid/support/v4/fz0;->new:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/j;

    iget-object v2, p0, Landroid/support/v4/fz0;->case:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/j;

    iget-object v2, p0, Landroid/support/v4/fz0;->else:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/j;

    iget-object v2, p0, Landroid/support/v4/fz0;->try:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Landroid/support/v4/pe1;
    .locals 3

    new-instance v0, Landroid/support/v4/pe1;

    invoke-virtual {p0}, Landroid/support/v4/fz0;->new()Landroid/support/v4/se0;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/fz0;->new:[B

    invoke-direct {v0, v1, v2}, Landroid/support/v4/pe1;-><init>(Landroid/support/v4/se0;[B)V

    return-object v0
.end method
