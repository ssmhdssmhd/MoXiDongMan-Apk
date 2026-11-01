.class public Landroid/support/v4/qq1;
.super Landroid/support/v4/p4;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/support/v4/bo0;)V
    .locals 4

    sget-object v0, Lorg/bouncycastle/asn1/smime/SMIMEAttributes;->encrypKeyPref:Lorg/bouncycastle/asn1/catch;

    new-instance v1, Lorg/bouncycastle/asn1/q;

    new-instance v2, Lorg/bouncycastle/asn1/u;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, p1}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/q;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p0, v0, v1}, Landroid/support/v4/p4;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/throw;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/pl1;)V
    .locals 5

    sget-object v0, Lorg/bouncycastle/asn1/smime/SMIMEAttributes;->encrypKeyPref:Lorg/bouncycastle/asn1/catch;

    new-instance v1, Lorg/bouncycastle/asn1/q;

    new-instance v2, Lorg/bouncycastle/asn1/u;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, p1}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/q;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p0, v0, v1}, Landroid/support/v4/p4;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/throw;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/class;)V
    .locals 5

    sget-object v0, Lorg/bouncycastle/asn1/smime/SMIMEAttributes;->encrypKeyPref:Lorg/bouncycastle/asn1/catch;

    new-instance v1, Lorg/bouncycastle/asn1/q;

    new-instance v2, Lorg/bouncycastle/asn1/u;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, p1}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/q;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p0, v0, v1}, Landroid/support/v4/p4;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/throw;)V

    return-void
.end method
