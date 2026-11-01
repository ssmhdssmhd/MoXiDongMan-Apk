.class public Landroid/support/v4/nq1;
.super Landroid/support/v4/p4;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/support/v4/pq1;)V
    .locals 3

    sget-object v0, Lorg/bouncycastle/asn1/smime/SMIMEAttributes;->smimeCapabilities:Lorg/bouncycastle/asn1/catch;

    new-instance v1, Lorg/bouncycastle/asn1/q;

    new-instance v2, Lorg/bouncycastle/asn1/n;

    invoke-virtual {p1}, Landroid/support/v4/pq1;->new()Landroid/support/v4/import;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/q;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p0, v0, v1}, Landroid/support/v4/p4;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/throw;)V

    return-void
.end method
