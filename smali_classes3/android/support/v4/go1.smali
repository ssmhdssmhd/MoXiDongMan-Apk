.class public Landroid/support/v4/go1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private do:Landroid/support/v4/import;

.field private for:Landroid/support/v4/import;

.field private if:Landroid/support/v4/import;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iput-object v0, p0, Landroid/support/v4/go1;->do:Landroid/support/v4/import;

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iput-object v0, p0, Landroid/support/v4/go1;->if:Landroid/support/v4/import;

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iput-object v0, p0, Landroid/support/v4/go1;->for:Landroid/support/v4/import;

    return-void
.end method


# virtual methods
.method public do(Landroid/support/v4/xa1;)Landroid/support/v4/go1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/go1;->do:Landroid/support/v4/import;

    invoke-virtual {v0, p1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object p0
.end method

.method public for(Lorg/bouncycastle/asn1/x509/do;)Landroid/support/v4/go1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/go1;->for:Landroid/support/v4/import;

    invoke-virtual {v0, p1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object p0
.end method

.method public if(Landroid/support/v4/xa1;Landroid/support/v4/dg;)Landroid/support/v4/go1;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/go1;->do:Landroid/support/v4/import;

    invoke-virtual {v0}, Landroid/support/v4/import;->new()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/go1;->if:Landroid/support/v4/import;

    invoke-virtual {v1}, Landroid/support/v4/import;->new()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/go1;->do:Landroid/support/v4/import;

    invoke-virtual {v0, p1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object p1, p0, Landroid/support/v4/go1;->if:Landroid/support/v4/import;

    invoke-virtual {p1, p2}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "status and revCerts sequence must be in common order"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public new()Landroid/support/v4/fo1;
    .locals 6

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/n;

    iget-object v2, p0, Landroid/support/v4/go1;->do:Landroid/support/v4/import;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/go1;->if:Landroid/support/v4/import;

    invoke-virtual {v1}, Landroid/support/v4/import;->new()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/u;

    const/4 v3, 0x0

    new-instance v4, Lorg/bouncycastle/asn1/n;

    iget-object v5, p0, Landroid/support/v4/go1;->if:Landroid/support/v4/import;

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/go1;->for:Landroid/support/v4/import;

    invoke-virtual {v1}, Landroid/support/v4/import;->new()I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/u;

    new-instance v3, Lorg/bouncycastle/asn1/n;

    iget-object v4, p0, Landroid/support/v4/go1;->for:Landroid/support/v4/import;

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    invoke-direct {v1, v2, v2, v3}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    invoke-static {v1}, Landroid/support/v4/fo1;->case(Ljava/lang/Object;)Landroid/support/v4/fo1;

    move-result-object v0

    return-object v0
.end method
