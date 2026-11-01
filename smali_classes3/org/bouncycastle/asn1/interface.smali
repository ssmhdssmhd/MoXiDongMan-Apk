.class public Lorg/bouncycastle/asn1/interface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;


# instance fields
.field private do:Z

.field private for:Lorg/bouncycastle/asn1/while;

.field private if:I


# direct methods
.method public constructor <init>(ZILorg/bouncycastle/asn1/while;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/bouncycastle/asn1/interface;->do:Z

    iput p2, p0, Lorg/bouncycastle/asn1/interface;->if:I

    iput-object p3, p0, Lorg/bouncycastle/asn1/interface;->for:Lorg/bouncycastle/asn1/while;

    return-void
.end method


# virtual methods
.method public do()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/interface;->do:Z

    return v0
.end method

.method public getLoadedObject()Lorg/bouncycastle/asn1/final;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/interface;->for:Lorg/bouncycastle/asn1/while;

    iget-boolean v1, p0, Lorg/bouncycastle/asn1/interface;->do:Z

    iget v2, p0, Lorg/bouncycastle/asn1/interface;->if:I

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/asn1/while;->new(ZI)Lorg/bouncycastle/asn1/final;

    move-result-object v0

    return-object v0
.end method

.method public getObjectParser(IZ)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_1

    iget-boolean p1, p0, Lorg/bouncycastle/asn1/interface;->do:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/bouncycastle/asn1/interface;->for:Lorg/bouncycastle/asn1/while;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/while;->for()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Explicit tags must be constructed (see X.690 8.14.2)"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object p2, p0, Lorg/bouncycastle/asn1/interface;->for:Lorg/bouncycastle/asn1/while;

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/interface;->do:Z

    invoke-virtual {p2, v0, p1}, Lorg/bouncycastle/asn1/while;->do(ZI)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    return-object p1
.end method

.method public getTagNo()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/interface;->if:I

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/interface;->getLoadedObject()Lorg/bouncycastle/asn1/final;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/support/v4/return;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/support/v4/return;-><init>(Ljava/lang/String;)V

    throw v1
.end method
