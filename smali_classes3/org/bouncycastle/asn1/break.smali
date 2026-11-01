.class public abstract Lorg/bouncycastle/asn1/break;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Encodable;
.implements Lorg/bouncycastle/util/Encodable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static if(Ljava/lang/Object;I)Z
    .locals 2

    instance-of v0, p0, [B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, [B

    aget-byte p0, p0, v1

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public do(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "DER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/l;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/l;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/l;->const(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :goto_0
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "DL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/c0;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/c0;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/c0;->const(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/break;->getEncoded()[B

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1Encodable;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/break;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public for()Lorg/bouncycastle/asn1/final;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/break;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/const;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/const;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p0}, Lorg/bouncycastle/asn1/const;->const(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/break;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/final;->hashCode()I

    move-result v0

    return v0
.end method

.method public abstract toASN1Primitive()Lorg/bouncycastle/asn1/final;
.end method
