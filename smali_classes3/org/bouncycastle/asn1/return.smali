.class public Lorg/bouncycastle/asn1/return;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1ApplicationSpecificParser;


# instance fields
.field private final do:I

.field private final if:Lorg/bouncycastle/asn1/while;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/while;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/asn1/return;->do:I

    iput-object p2, p0, Lorg/bouncycastle/asn1/return;->if:Lorg/bouncycastle/asn1/while;

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

    new-instance v0, Lorg/bouncycastle/asn1/public;

    iget v1, p0, Lorg/bouncycastle/asn1/return;->do:I

    iget-object v2, p0, Lorg/bouncycastle/asn1/return;->if:Lorg/bouncycastle/asn1/while;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/while;->try()Landroid/support/v4/import;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/public;-><init>(ILandroid/support/v4/import;)V

    return-object v0
.end method

.method public readObject()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/return;->if:Lorg/bouncycastle/asn1/while;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/while;->for()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/return;->getLoadedObject()Lorg/bouncycastle/asn1/final;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/support/v4/return;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/v4/return;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
