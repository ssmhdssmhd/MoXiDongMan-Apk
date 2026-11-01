.class Lorg/bouncycastle/asn1/throw$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1SetParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/asn1/throw;->import()Lorg/bouncycastle/asn1/ASN1SetParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private final do:I

.field public final synthetic for:Lorg/bouncycastle/asn1/throw;

.field private if:I

.field public final synthetic new:Lorg/bouncycastle/asn1/throw;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/throw;Lorg/bouncycastle/asn1/throw;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/throw$do;->new:Lorg/bouncycastle/asn1/throw;

    iput-object p2, p0, Lorg/bouncycastle/asn1/throw$do;->for:Lorg/bouncycastle/asn1/throw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/throw;->size()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/asn1/throw$do;->do:I

    return-void
.end method


# virtual methods
.method public getLoadedObject()Lorg/bouncycastle/asn1/final;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/throw$do;->for:Lorg/bouncycastle/asn1/throw;

    return-object v0
.end method

.method public readObject()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/asn1/throw$do;->if:I

    iget v1, p0, Lorg/bouncycastle/asn1/throw$do;->do:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/throw$do;->new:Lorg/bouncycastle/asn1/throw;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/bouncycastle/asn1/throw$do;->if:I

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/throw;->super(I)Lorg/bouncycastle/asn1/ASN1Encodable;

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

    iget-object v0, p0, Lorg/bouncycastle/asn1/throw$do;->for:Lorg/bouncycastle/asn1/throw;

    return-object v0
.end method
