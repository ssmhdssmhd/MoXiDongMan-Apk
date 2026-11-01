.class public Landroid/support/v4/xg2;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field public do:Landroid/support/v4/n4;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/support/v4/import;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v0, Landroid/support/v4/n4;

    new-instance v1, Lorg/bouncycastle/asn1/catch;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    new-instance p1, Lorg/bouncycastle/asn1/q;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/q;-><init>(Landroid/support/v4/import;)V

    invoke-direct {v0, v1, p1}, Landroid/support/v4/n4;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/throw;)V

    iput-object v0, p0, Landroid/support/v4/xg2;->do:Landroid/support/v4/n4;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v0, Landroid/support/v4/n4;

    new-instance v1, Lorg/bouncycastle/asn1/catch;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/catch;-><init>(Ljava/lang/String;)V

    new-instance p1, Lorg/bouncycastle/asn1/q;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/q;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v0, v1, p1}, Landroid/support/v4/n4;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/throw;)V

    iput-object v0, p0, Landroid/support/v4/xg2;->do:Landroid/support/v4/n4;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-static {p1}, Landroid/support/v4/n4;->else(Ljava/lang/Object;)Landroid/support/v4/n4;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/xg2;->do:Landroid/support/v4/n4;

    return-void
.end method


# virtual methods
.method public new()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xg2;->do:Landroid/support/v4/n4;

    invoke-virtual {v0}, Landroid/support/v4/n4;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/catch;->super()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xg2;->do:Landroid/support/v4/n4;

    invoke-virtual {v0}, Landroid/support/v4/n4;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    return-object v0
.end method

.method public try()[Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 4

    iget-object v0, p0, Landroid/support/v4/xg2;->do:Landroid/support/v4/n4;

    invoke-virtual {v0}, Landroid/support/v4/n4;->try()Lorg/bouncycastle/asn1/throw;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/throw;->size()I

    move-result v1

    new-array v1, v1, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/throw;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/throw;->super(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
