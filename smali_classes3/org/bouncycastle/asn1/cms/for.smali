.class public Lorg/bouncycastle/asn1/cms/for;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private do:Lorg/bouncycastle/asn1/goto;

.field private for:Lorg/bouncycastle/asn1/cms/new;

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

    check-cast v0, Lorg/bouncycastle/asn1/goto;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/for;->do:Lorg/bouncycastle/asn1/goto;

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/b1;->try(Ljava/lang/Object;)Landroid/support/v4/b1;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/for;->if:Landroid/support/v4/b1;

    new-instance v0, Lorg/bouncycastle/asn1/cms/new;

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/cms/new;-><init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/for;->for:Lorg/bouncycastle/asn1/cms/new;

    return-void
.end method


# virtual methods
.method public do()Landroid/support/v4/b1;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/for;->if:Landroid/support/v4/b1;

    return-object v0
.end method

.method public for()Lorg/bouncycastle/asn1/goto;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/for;->do:Lorg/bouncycastle/asn1/goto;

    return-object v0
.end method

.method public if()Lorg/bouncycastle/asn1/cms/new;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/for;->for:Lorg/bouncycastle/asn1/cms/new;

    return-object v0
.end method
