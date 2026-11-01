.class public Lorg/bouncycastle/asn1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Encodable;
.implements Lorg/bouncycastle/asn1/InMemoryRepresentable;


# instance fields
.field private do:Lorg/bouncycastle/asn1/while;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/while;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/a;->do:Lorg/bouncycastle/asn1/while;

    return-void
.end method


# virtual methods
.method public getLoadedObject()Lorg/bouncycastle/asn1/final;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/b0;

    iget-object v1, p0, Lorg/bouncycastle/asn1/a;->do:Lorg/bouncycastle/asn1/while;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/while;->try()Landroid/support/v4/import;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/b0;-><init>(Landroid/support/v4/import;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/support/v4/native;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/v4/native;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readObject()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/a;->do:Lorg/bouncycastle/asn1/while;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/while;->for()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 3

    const-string v0, "unable to get DER object"

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/a;->getLoadedObject()Lorg/bouncycastle/asn1/final;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Landroid/support/v4/return;

    invoke-direct {v2, v0, v1}, Landroid/support/v4/return;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Landroid/support/v4/return;

    invoke-direct {v2, v0, v1}, Landroid/support/v4/return;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
