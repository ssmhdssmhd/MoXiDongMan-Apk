.class public Lorg/bouncycastle/asn1/l;
.super Lorg/bouncycastle/asn1/const;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/const;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public const(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/final;->this()Lorg/bouncycastle/asn1/final;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/bouncycastle/asn1/final;->try(Lorg/bouncycastle/asn1/const;)V

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "null object detected"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public for()Lorg/bouncycastle/asn1/const;
    .locals 0

    return-object p0
.end method

.method public new()Lorg/bouncycastle/asn1/const;
    .locals 0

    return-object p0
.end method
