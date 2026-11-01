.class public Landroid/support/v4/ah;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:Landroid/support/v4/eg;

.field private for:Landroid/support/v4/ua1;

.field private if:Landroid/support/v4/q70;


# direct methods
.method public constructor <init>(Landroid/support/v4/eg;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/support/v4/ah;-><init>(Landroid/support/v4/eg;Landroid/support/v4/q70;Landroid/support/v4/ua1;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/eg;Landroid/support/v4/q70;Landroid/support/v4/ua1;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/support/v4/ah;->do:Landroid/support/v4/eg;

    iput-object p2, p0, Landroid/support/v4/ah;->if:Landroid/support/v4/q70;

    iput-object p3, p0, Landroid/support/v4/ah;->for:Landroid/support/v4/ua1;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'certOrEncCert\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/eg;->case(Ljava/lang/Object;)Landroid/support/v4/eg;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/ah;->do:Landroid/support/v4/eg;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/import;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/import;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/import;->const()Lorg/bouncycastle/asn1/final;

    move-result-object p1

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/support/v4/q70;->else(Ljava/lang/Object;)Landroid/support/v4/q70;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/ah;->if:Landroid/support/v4/q70;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/import;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/import;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/import;->const()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/q70;->else(Ljava/lang/Object;)Landroid/support/v4/q70;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/ah;->if:Landroid/support/v4/q70;

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/import;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/import;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/import;->const()Lorg/bouncycastle/asn1/final;

    move-result-object p1

    :cond_1
    invoke-static {p1}, Landroid/support/v4/ua1;->try(Ljava/lang/Object;)Landroid/support/v4/ua1;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/ah;->for:Landroid/support/v4/ua1;

    :cond_2
    :goto_0
    return-void
.end method

.method public static try(Ljava/lang/Object;)Landroid/support/v4/ah;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/ah;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/ah;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/ah;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/ah;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public case()Landroid/support/v4/q70;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ah;->if:Landroid/support/v4/q70;

    return-object v0
.end method

.method public else()Landroid/support/v4/ua1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ah;->for:Landroid/support/v4/ua1;

    return-object v0
.end method

.method public new()Landroid/support/v4/eg;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ah;->do:Landroid/support/v4/eg;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 5

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/ah;->do:Landroid/support/v4/eg;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/ah;->if:Landroid/support/v4/q70;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/u;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/support/v4/ah;->if:Landroid/support/v4/q70;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/ah;->for:Landroid/support/v4/ua1;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/u;

    iget-object v3, p0, Landroid/support/v4/ah;->for:Landroid/support/v4/ua1;

    invoke-direct {v1, v2, v2, v3}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method
