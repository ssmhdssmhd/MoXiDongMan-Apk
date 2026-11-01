.class public Lorg/bouncycastle/asn1/finally;
.super Lorg/bouncycastle/asn1/l;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/l;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public super(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/const;->class()V

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/asn1/final;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/bouncycastle/asn1/final;

    :goto_0
    invoke-virtual {p1, p0}, Lorg/bouncycastle/asn1/final;->try(Lorg/bouncycastle/asn1/const;)V

    goto :goto_1

    :cond_1
    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object p1

    goto :goto_0

    :goto_1
    return-void

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "object not BEREncodable"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
