.class public Landroid/support/v4/m91;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field private do:Landroid/support/v4/xq0;

.field private if:Landroid/support/v4/u70;


# direct methods
.method public constructor <init>(Landroid/support/v4/xq0;Landroid/support/v4/u70;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/m91;->do:Landroid/support/v4/xq0;

    iput-object p2, p0, Landroid/support/v4/m91;->if:Landroid/support/v4/u70;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->super()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBKDF2:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/support/v4/xq0;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/t91;->new(Ljava/lang/Object;)Landroid/support/v4/t91;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/support/v4/xq0;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v1, p0, Landroid/support/v4/m91;->do:Landroid/support/v4/xq0;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/support/v4/xq0;->try(Ljava/lang/Object;)Landroid/support/v4/xq0;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/m91;->do:Landroid/support/v4/xq0;

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/u70;->try(Ljava/lang/Object;)Landroid/support/v4/u70;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/m91;->if:Landroid/support/v4/u70;

    return-void
.end method

.method public static try(Ljava/lang/Object;)Landroid/support/v4/m91;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/m91;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/m91;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/m91;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/m91;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public case()Landroid/support/v4/xq0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/m91;->do:Landroid/support/v4/xq0;

    return-object v0
.end method

.method public new()Landroid/support/v4/u70;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/m91;->if:Landroid/support/v4/u70;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 2

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/m91;->do:Landroid/support/v4/xq0;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/m91;->if:Landroid/support/v4/u70;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method
