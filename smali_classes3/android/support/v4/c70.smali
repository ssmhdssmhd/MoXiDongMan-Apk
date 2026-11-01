.class public Landroid/support/v4/c70;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private final do:Lorg/bouncycastle/asn1/pkcs/do;

.field private final if:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/pkcs/do;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/c70;->do:Lorg/bouncycastle/asn1/pkcs/do;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/c70;->if:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/pkcs/do;Landroid/support/v4/tg0;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/c70;->do:Lorg/bouncycastle/asn1/pkcs/do;

    iput-object p2, p0, Landroid/support/v4/c70;->if:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/pkcs/do;Lorg/bouncycastle/asn1/v;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/c70;->do:Lorg/bouncycastle/asn1/pkcs/do;

    iput-object p2, p0, Landroid/support/v4/c70;->if:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/pkcs/do;->try(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/do;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/c70;->do:Lorg/bouncycastle/asn1/pkcs/do;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/v;

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/support/v4/tg0;->try(Ljava/lang/Object;)Landroid/support/v4/tg0;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/support/v4/c70;->if:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public static try(Ljava/lang/Object;)Landroid/support/v4/c70;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/c70;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/c70;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/c70;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/c70;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public case()Lorg/bouncycastle/asn1/pkcs/do;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/c70;->do:Lorg/bouncycastle/asn1/pkcs/do;

    return-object v0
.end method

.method public else()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/c70;->if:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public goto()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/c70;->if:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/bouncycastle/asn1/v;

    return v0
.end method

.method public new()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/c70;->if:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 2

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/c70;->do:Lorg/bouncycastle/asn1/pkcs/do;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/c70;->if:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method
