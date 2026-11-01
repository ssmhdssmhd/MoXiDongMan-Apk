.class public Lorg/bouncycastle/asn1/b0;
.super Lorg/bouncycastle/asn1/try;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/support/v4/import;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/try;-><init>(Landroid/support/v4/import;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/goto;Lorg/bouncycastle/asn1/final;ILorg/bouncycastle/asn1/final;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/bouncycastle/asn1/try;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/goto;Lorg/bouncycastle/asn1/final;ILorg/bouncycastle/asn1/final;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/goto;Lorg/bouncycastle/asn1/final;Lorg/bouncycastle/asn1/u;)V
    .locals 6

    invoke-virtual {p4}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v4

    invoke-virtual {p4}, Lorg/bouncycastle/asn1/final;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/b0;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/goto;Lorg/bouncycastle/asn1/final;ILorg/bouncycastle/asn1/final;)V

    return-void
.end method


# virtual methods
.method public case()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/break;->getEncoded()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public try(Lorg/bouncycastle/asn1/const;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/try;->do:Lorg/bouncycastle/asn1/catch;

    const-string v2, "DL"

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/break;->do(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/try;->if:Lorg/bouncycastle/asn1/goto;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/break;->do(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/try;->for:Lorg/bouncycastle/asn1/final;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/break;->do(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/u;

    const/4 v3, 0x1

    iget v4, p0, Lorg/bouncycastle/asn1/try;->new:I

    iget-object v5, p0, Lorg/bouncycastle/asn1/try;->try:Lorg/bouncycastle/asn1/final;

    invoke-direct {v1, v3, v4, v5}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/break;->do(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/16 v1, 0x20

    const/16 v2, 0x8

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, Lorg/bouncycastle/asn1/const;->goto(II[B)V

    return-void
.end method
