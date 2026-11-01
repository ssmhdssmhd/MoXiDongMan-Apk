.class public Lorg/bouncycastle/asn1/volatile;
.super Lorg/bouncycastle/asn1/import;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/package;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/package;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lorg/bouncycastle/asn1/import;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/asn1/import;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public constructor <init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/asn1/import;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method


# virtual methods
.method public case()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/import;->if:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/asn1/import;->new:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/final;->case()I

    move-result v0

    iget-boolean v1, p0, Lorg/bouncycastle/asn1/import;->for:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/bouncycastle/asn1/import;->do:I

    invoke-static {v1}, Lorg/bouncycastle/asn1/m0;->if(I)I

    move-result v1

    invoke-static {v0}, Lorg/bouncycastle/asn1/m0;->do(I)I

    move-result v2

    add-int/2addr v1, v2

    :goto_0
    add-int/2addr v1, v0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lorg/bouncycastle/asn1/import;->do:I

    invoke-static {v1}, Lorg/bouncycastle/asn1/m0;->if(I)I

    move-result v1

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/bouncycastle/asn1/import;->do:I

    invoke-static {v0}, Lorg/bouncycastle/asn1/m0;->if(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public goto()Z
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/import;->if:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/import;->for:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/import;->new:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/final;->this()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/final;->goto()Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public try(Lorg/bouncycastle/asn1/const;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/asn1/import;->do:I

    const/16 v1, 0xa0

    invoke-virtual {p1, v1, v0}, Lorg/bouncycastle/asn1/const;->final(II)V

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/const;->try(I)V

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/import;->if:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/import;->for:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/asn1/import;->new:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v1, v0, Lorg/bouncycastle/asn1/class;

    if-eqz v1, :cond_1

    instance-of v1, v0, Lorg/bouncycastle/asn1/throws;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/asn1/throws;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/throws;->import()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/bouncycastle/asn1/class;

    new-instance v1, Lorg/bouncycastle/asn1/throws;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/throws;-><init>([B)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/throws;->import()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lorg/bouncycastle/asn1/super;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/bouncycastle/asn1/super;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/super;->super()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lorg/bouncycastle/asn1/throw;

    if-eqz v1, :cond_3

    check-cast v0, Lorg/bouncycastle/asn1/throw;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/throw;->throw()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/const;->const(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_3
    new-instance p1, Landroid/support/v4/native;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not implemented: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/bouncycastle/asn1/import;->new:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v4/native;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/asn1/import;->new:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/const;->const(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/const;->try(I)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/const;->try(I)V

    return-void
.end method
