.class public Landroid/support/v4/do1;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:Landroid/support/v4/wa1;

.field private for:Lorg/bouncycastle/asn1/case;

.field private if:Landroid/support/v4/dg;

.field private new:Lorg/bouncycastle/asn1/case;

.field private try:Landroid/support/v4/y90;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/wa1;->new(Ljava/lang/Object;)Landroid/support/v4/wa1;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/do1;->do:Landroid/support/v4/wa1;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/dg;->new(Ljava/lang/Object;)Landroid/support/v4/dg;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/do1;->if:Landroid/support/v4/dg;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/case;->final(Ljava/lang/Object;)Lorg/bouncycastle/asn1/case;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/do1;->for:Lorg/bouncycastle/asn1/case;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/case;->final(Ljava/lang/Object;)Lorg/bouncycastle/asn1/case;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/do1;->new:Lorg/bouncycastle/asn1/case;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/y90;->break(Ljava/lang/Object;)Landroid/support/v4/y90;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/do1;->try:Landroid/support/v4/y90;

    :cond_0
    return-void
.end method

.method public static else(Ljava/lang/Object;)Landroid/support/v4/do1;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/do1;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/do1;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/do1;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/do1;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public case()Landroid/support/v4/y90;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/do1;->try:Landroid/support/v4/y90;

    return-object v0
.end method

.method public goto()Landroid/support/v4/wa1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/do1;->do:Landroid/support/v4/wa1;

    return-object v0
.end method

.method public new()Lorg/bouncycastle/asn1/case;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/do1;->new:Lorg/bouncycastle/asn1/case;

    return-object v0
.end method

.method public this()Lorg/bouncycastle/asn1/case;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/do1;->for:Lorg/bouncycastle/asn1/case;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 2

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/do1;->do:Landroid/support/v4/wa1;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/do1;->if:Landroid/support/v4/dg;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/do1;->for:Lorg/bouncycastle/asn1/case;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/do1;->new:Lorg/bouncycastle/asn1/case;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/do1;->try:Landroid/support/v4/y90;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Landroid/support/v4/dg;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/do1;->if:Landroid/support/v4/dg;

    return-object v0
.end method
