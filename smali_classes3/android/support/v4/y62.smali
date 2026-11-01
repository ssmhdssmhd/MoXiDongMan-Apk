.class public Landroid/support/v4/y62;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:Landroid/support/v4/fr;

.field private if:Lorg/bouncycastle/asn1/x509/do;


# direct methods
.method public constructor <init>(Landroid/support/v4/fr;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/y62;->do:Landroid/support/v4/fr;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/fr;->case(Ljava/lang/Object;)Landroid/support/v4/fr;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/y62;->do:Landroid/support/v4/fr;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/do;->new(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/do;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/y62;->if:Lorg/bouncycastle/asn1/x509/do;

    :cond_0
    return-void
.end method

.method public static case(Ljava/lang/Object;)Landroid/support/v4/y62;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/y62;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/y62;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/y62;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/y62;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public else()Landroid/support/v4/fr;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/y62;->do:Landroid/support/v4/fr;

    return-object v0
.end method

.method public new()Lorg/bouncycastle/asn1/x509/do;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/y62;->if:Lorg/bouncycastle/asn1/x509/do;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 2

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/y62;->do:Landroid/support/v4/fr;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/y62;->if:Lorg/bouncycastle/asn1/x509/do;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Lorg/bouncycastle/asn1/x509/do;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/y62;->if:Lorg/bouncycastle/asn1/x509/do;

    return-object v0
.end method
