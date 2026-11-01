.class public Landroid/support/v4/pq1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private do:Landroid/support/v4/import;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iput-object v0, p0, Landroid/support/v4/pq1;->do:Landroid/support/v4/import;

    return-void
.end method


# virtual methods
.method public do(Lorg/bouncycastle/asn1/catch;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/pq1;->do:Landroid/support/v4/import;

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/n;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public for(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    invoke-virtual {v0, p1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, p2}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object p1, p0, Landroid/support/v4/pq1;->do:Landroid/support/v4/import;

    new-instance p2, Lorg/bouncycastle/asn1/n;

    invoke-direct {p2, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    invoke-virtual {p1, p2}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public if(Lorg/bouncycastle/asn1/catch;I)V
    .locals 3

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    invoke-virtual {v0, p1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance p1, Lorg/bouncycastle/asn1/goto;

    int-to-long v1, p2

    invoke-direct {p1, v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    invoke-virtual {v0, p1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object p1, p0, Landroid/support/v4/pq1;->do:Landroid/support/v4/import;

    new-instance p2, Lorg/bouncycastle/asn1/n;

    invoke-direct {p2, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    invoke-virtual {p1, p2}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public new()Landroid/support/v4/import;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/pq1;->do:Landroid/support/v4/import;

    return-object v0
.end method
