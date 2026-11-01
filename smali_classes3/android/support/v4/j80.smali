.class public Landroid/support/v4/j80;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:Landroid/support/v4/xa1;

.field private for:Landroid/support/v4/pa1;

.field private if:Lorg/bouncycastle/asn1/goto;


# direct methods
.method public constructor <init>(Landroid/support/v4/xa1;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/support/v4/j80;-><init>(Landroid/support/v4/xa1;Lorg/bouncycastle/asn1/goto;Landroid/support/v4/pa1;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/xa1;Lorg/bouncycastle/asn1/goto;Landroid/support/v4/pa1;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/support/v4/j80;->do:Landroid/support/v4/xa1;

    iput-object p2, p0, Landroid/support/v4/j80;->if:Lorg/bouncycastle/asn1/goto;

    iput-object p3, p0, Landroid/support/v4/j80;->for:Landroid/support/v4/pa1;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'pkiStatusInfo\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->super()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/xa1;->try(Ljava/lang/Object;)Landroid/support/v4/xa1;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/j80;->do:Landroid/support/v4/xa1;

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/bouncycastle/asn1/goto;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/j80;->if:Lorg/bouncycastle/asn1/goto;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/support/v4/pa1;->new(Ljava/lang/Object;)Landroid/support/v4/pa1;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/j80;->for:Landroid/support/v4/pa1;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static else(Ljava/lang/Object;)Landroid/support/v4/j80;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/j80;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/j80;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/j80;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/j80;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private new(Landroid/support/v4/import;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public case()Landroid/support/v4/pa1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/j80;->for:Landroid/support/v4/pa1;

    return-object v0
.end method

.method public goto()Landroid/support/v4/xa1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/j80;->do:Landroid/support/v4/xa1;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 2

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/j80;->do:Landroid/support/v4/xa1;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/j80;->if:Lorg/bouncycastle/asn1/goto;

    invoke-direct {p0, v0, v1}, Landroid/support/v4/j80;->new(Landroid/support/v4/import;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/j80;->for:Landroid/support/v4/pa1;

    invoke-direct {p0, v0, v1}, Landroid/support/v4/j80;->new(Landroid/support/v4/import;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Lorg/bouncycastle/asn1/goto;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/j80;->if:Lorg/bouncycastle/asn1/goto;

    return-object v0
.end method
