.class public Lorg/bouncycastle/asn1/d0;
.super Lorg/bouncycastle/asn1/super;
.source "SourceFile"


# instance fields
.field private if:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/super;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/asn1/d0;->if:I

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/import;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/super;-><init>(Landroid/support/v4/import;)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/bouncycastle/asn1/d0;->if:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/super;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/bouncycastle/asn1/d0;->if:I

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/super;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/bouncycastle/asn1/d0;->if:I

    return-void
.end method

.method private import()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/asn1/d0;->if:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/super;->super()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v2}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/final;->break()Lorg/bouncycastle/asn1/final;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/final;->case()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    iput v0, p0, Lorg/bouncycastle/asn1/d0;->if:I

    :cond_1
    iget v0, p0, Lorg/bouncycastle/asn1/d0;->if:I

    return v0
.end method


# virtual methods
.method public case()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/d0;->import()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/m0;->do(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    return v1
.end method

.method public try(Lorg/bouncycastle/asn1/const;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/const;->new()Lorg/bouncycastle/asn1/const;

    move-result-object v0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/d0;->import()I

    move-result v1

    const/16 v2, 0x30

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/const;->try(I)V

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/const;->catch(I)V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/super;->super()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/const;->const(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_0
    return-void
.end method
