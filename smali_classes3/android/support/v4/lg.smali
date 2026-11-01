.class public Landroid/support/v4/lg;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:Lorg/bouncycastle/asn1/goto;

.field private for:Landroid/support/v4/ah;

.field private if:Landroid/support/v4/xa1;

.field private new:Lorg/bouncycastle/asn1/class;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/goto;Landroid/support/v4/xa1;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/support/v4/lg;-><init>(Lorg/bouncycastle/asn1/goto;Landroid/support/v4/xa1;Landroid/support/v4/ah;Lorg/bouncycastle/asn1/class;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/goto;Landroid/support/v4/xa1;Landroid/support/v4/ah;Lorg/bouncycastle/asn1/class;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p1, p0, Landroid/support/v4/lg;->do:Lorg/bouncycastle/asn1/goto;

    iput-object p2, p0, Landroid/support/v4/lg;->if:Landroid/support/v4/xa1;

    iput-object p3, p0, Landroid/support/v4/lg;->for:Landroid/support/v4/ah;

    iput-object p4, p0, Landroid/support/v4/lg;->new:Lorg/bouncycastle/asn1/class;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'status\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'certReqId\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/lg;->do:Lorg/bouncycastle/asn1/goto;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/xa1;->try(Ljava/lang/Object;)Landroid/support/v4/xa1;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/lg;->if:Landroid/support/v4/xa1;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    instance-of v0, p1, Lorg/bouncycastle/asn1/class;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/support/v4/ah;->try(Ljava/lang/Object;)Landroid/support/v4/ah;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/lg;->for:Landroid/support/v4/ah;

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/ah;->try(Ljava/lang/Object;)Landroid/support/v4/ah;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/lg;->for:Landroid/support/v4/ah;

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lorg/bouncycastle/asn1/class;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/class;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/lg;->new:Lorg/bouncycastle/asn1/class;

    :cond_2
    :goto_1
    return-void
.end method

.method public static case(Ljava/lang/Object;)Landroid/support/v4/lg;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/lg;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/lg;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/lg;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/lg;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public else()Landroid/support/v4/xa1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/lg;->if:Landroid/support/v4/xa1;

    return-object v0
.end method

.method public new()Lorg/bouncycastle/asn1/goto;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/lg;->do:Lorg/bouncycastle/asn1/goto;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 2

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/lg;->do:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/lg;->if:Landroid/support/v4/xa1;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/lg;->for:Landroid/support/v4/ah;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/lg;->new:Lorg/bouncycastle/asn1/class;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Landroid/support/v4/ah;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/lg;->for:Landroid/support/v4/ah;

    return-object v0
.end method
