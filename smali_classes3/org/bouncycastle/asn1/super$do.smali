.class Lorg/bouncycastle/asn1/super$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1SequenceParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/asn1/super;->throw()Lorg/bouncycastle/asn1/ASN1SequenceParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final do:I

.field public final synthetic for:Lorg/bouncycastle/asn1/super;

.field private if:I

.field public final synthetic new:Lorg/bouncycastle/asn1/super;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/super;Lorg/bouncycastle/asn1/super;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/super$do;->new:Lorg/bouncycastle/asn1/super;

    iput-object p2, p0, Lorg/bouncycastle/asn1/super$do;->for:Lorg/bouncycastle/asn1/super;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/asn1/super$do;->do:I

    return-void
.end method


# virtual methods
.method public getLoadedObject()Lorg/bouncycastle/asn1/final;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/super$do;->for:Lorg/bouncycastle/asn1/super;

    return-object v0
.end method

.method public readObject()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/asn1/super$do;->if:I

    iget v1, p0, Lorg/bouncycastle/asn1/super$do;->do:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/super$do;->new:Lorg/bouncycastle/asn1/super;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/bouncycastle/asn1/super$do;->if:I

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v1, v0, Lorg/bouncycastle/asn1/super;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/bouncycastle/asn1/super;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/super;->throw()Lorg/bouncycastle/asn1/ASN1SequenceParser;

    move-result-object v0

    return-object v0

    :cond_1
    instance-of v1, v0, Lorg/bouncycastle/asn1/throw;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/bouncycastle/asn1/throw;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/throw;->import()Lorg/bouncycastle/asn1/ASN1SetParser;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/super$do;->for:Lorg/bouncycastle/asn1/super;

    return-object v0
.end method
