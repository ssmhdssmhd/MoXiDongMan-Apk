.class public Landroid/support/v4/yg;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field public do:Landroid/support/v4/zg;

.field public for:Lorg/bouncycastle/asn1/instanceof;

.field public if:Landroid/support/v4/b1;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/yg;->do:Landroid/support/v4/zg;

    iput-object v0, p0, Landroid/support/v4/yg;->if:Landroid/support/v4/b1;

    iput-object v0, p0, Landroid/support/v4/yg;->for:Lorg/bouncycastle/asn1/instanceof;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/zg;Landroid/support/v4/b1;Lorg/bouncycastle/asn1/instanceof;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/yg;->do:Landroid/support/v4/zg;

    iput-object v0, p0, Landroid/support/v4/yg;->if:Landroid/support/v4/b1;

    iput-object v0, p0, Landroid/support/v4/yg;->for:Lorg/bouncycastle/asn1/instanceof;

    iput-object p1, p0, Landroid/support/v4/yg;->do:Landroid/support/v4/zg;

    iput-object p2, p0, Landroid/support/v4/yg;->if:Landroid/support/v4/b1;

    iput-object p3, p0, Landroid/support/v4/yg;->for:Lorg/bouncycastle/asn1/instanceof;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/yg;->do:Landroid/support/v4/zg;

    iput-object v0, p0, Landroid/support/v4/yg;->if:Landroid/support/v4/b1;

    iput-object v0, p0, Landroid/support/v4/yg;->for:Lorg/bouncycastle/asn1/instanceof;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/zg;->try(Ljava/lang/Object;)Landroid/support/v4/zg;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/yg;->do:Landroid/support/v4/zg;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/b1;->try(Ljava/lang/Object;)Landroid/support/v4/b1;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/yg;->if:Landroid/support/v4/b1;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/instanceof;

    iput-object p1, p0, Landroid/support/v4/yg;->for:Lorg/bouncycastle/asn1/instanceof;

    return-void
.end method

.method public static try(Ljava/lang/Object;)Landroid/support/v4/yg;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/yg;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/yg;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/yg;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/yg;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public case()Lorg/bouncycastle/asn1/instanceof;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/yg;->for:Lorg/bouncycastle/asn1/instanceof;

    return-object v0
.end method

.method public else()Landroid/support/v4/b1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/yg;->if:Landroid/support/v4/b1;

    return-object v0
.end method

.method public new()Landroid/support/v4/zg;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/yg;->do:Landroid/support/v4/zg;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 2

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/yg;->do:Landroid/support/v4/zg;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/yg;->if:Landroid/support/v4/b1;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/yg;->for:Lorg/bouncycastle/asn1/instanceof;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method
