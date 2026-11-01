.class public Lorg/bouncycastle/asn1/cms/this;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private case:Lorg/bouncycastle/asn1/ASN1SequenceParser;

.field private do:Lorg/bouncycastle/asn1/goto;

.field private for:Landroid/support/v4/wz0;

.field private if:Lorg/bouncycastle/asn1/g;

.field private new:Lorg/bouncycastle/asn1/ASN1OctetStringParser;

.field private try:Landroid/support/v4/n80;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/this;->case:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/this;->do:Lorg/bouncycastle/asn1/goto;

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v1, v0, Lorg/bouncycastle/asn1/g;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lorg/bouncycastle/asn1/g;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/g;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/this;->if:Lorg/bouncycastle/asn1/g;

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    :cond_0
    instance-of v1, v0, Landroid/support/v4/wz0;

    if-nez v1, :cond_1

    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    if-eqz v1, :cond_2

    :cond_1
    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/wz0;->try(Ljava/lang/Object;)Landroid/support/v4/wz0;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/this;->for:Landroid/support/v4/wz0;

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    :cond_2
    instance-of p1, v0, Lorg/bouncycastle/asn1/ASN1OctetStringParser;

    if-eqz p1, :cond_3

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetStringParser;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/this;->new:Lorg/bouncycastle/asn1/ASN1OctetStringParser;

    :cond_3
    return-void
.end method

.method public static for(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/this;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, Lorg/bouncycastle/asn1/super;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/cms/this;

    check-cast p0, Lorg/bouncycastle/asn1/super;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/super;->throw()Lorg/bouncycastle/asn1/ASN1SequenceParser;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cms/this;-><init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V

    return-object v0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/cms/this;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cms/this;-><init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public do()Lorg/bouncycastle/asn1/ASN1OctetStringParser;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/this;->new:Lorg/bouncycastle/asn1/ASN1OctetStringParser;

    return-object v0
.end method

.method public if()Lorg/bouncycastle/asn1/g;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/this;->if:Lorg/bouncycastle/asn1/g;

    return-object v0
.end method

.method public new()Landroid/support/v4/wz0;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/this;->for:Landroid/support/v4/wz0;

    return-object v0
.end method

.method public try()Landroid/support/v4/n80;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/this;->try:Landroid/support/v4/n80;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/this;->case:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/n80;->new(Ljava/lang/Object;)Landroid/support/v4/n80;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/this;->try:Landroid/support/v4/n80;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/this;->try:Landroid/support/v4/n80;

    return-object v0
.end method
