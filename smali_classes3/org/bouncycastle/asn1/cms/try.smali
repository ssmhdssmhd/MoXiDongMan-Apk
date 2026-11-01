.class public Lorg/bouncycastle/asn1/cms/try;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private do:Lorg/bouncycastle/asn1/catch;

.field private for:Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

.field private if:Landroid/support/v4/b1;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/catch;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/try;->do:Lorg/bouncycastle/asn1/catch;

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/b1;->try(Ljava/lang/Object;)Landroid/support/v4/b1;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/try;->if:Landroid/support/v4/b1;

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/try;->for:Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    return-void
.end method


# virtual methods
.method public do()Landroid/support/v4/b1;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/try;->if:Landroid/support/v4/b1;

    return-object v0
.end method

.method public for(I)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/try;->for:Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->getObjectParser(IZ)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    return-object p1
.end method

.method public if()Lorg/bouncycastle/asn1/catch;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/try;->do:Lorg/bouncycastle/asn1/catch;

    return-object v0
.end method
