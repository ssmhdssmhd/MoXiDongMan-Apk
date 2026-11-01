.class public Landroid/support/v4/ab1;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:Landroid/support/v4/b1;

.field private if:Lorg/bouncycastle/asn1/instanceof;


# direct methods
.method public constructor <init>(Landroid/support/v4/b1;Lorg/bouncycastle/asn1/instanceof;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/ab1;->do:Landroid/support/v4/b1;

    iput-object p2, p0, Landroid/support/v4/ab1;->if:Lorg/bouncycastle/asn1/instanceof;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/v91;Lorg/bouncycastle/asn1/instanceof;)V
    .locals 2

    new-instance v0, Landroid/support/v4/b1;

    sget-object v1, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->passwordBasedMac:Lorg/bouncycastle/asn1/catch;

    invoke-direct {v0, v1, p1}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p0, v0, p2}, Landroid/support/v4/ab1;-><init>(Landroid/support/v4/b1;Lorg/bouncycastle/asn1/instanceof;)V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/b1;->try(Ljava/lang/Object;)Landroid/support/v4/b1;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/ab1;->do:Landroid/support/v4/b1;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/instanceof;->public(Ljava/lang/Object;)Lorg/bouncycastle/asn1/instanceof;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/ab1;->if:Lorg/bouncycastle/asn1/instanceof;

    return-void
.end method

.method public static case(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/ab1;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/ab1;->try(Ljava/lang/Object;)Landroid/support/v4/ab1;

    move-result-object p0

    return-object p0
.end method

.method public static try(Ljava/lang/Object;)Landroid/support/v4/ab1;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/ab1;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/ab1;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/ab1;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/ab1;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public else()Lorg/bouncycastle/asn1/instanceof;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ab1;->if:Lorg/bouncycastle/asn1/instanceof;

    return-object v0
.end method

.method public new()Landroid/support/v4/b1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ab1;->do:Landroid/support/v4/b1;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 2

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/ab1;->do:Landroid/support/v4/b1;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/ab1;->if:Lorg/bouncycastle/asn1/instanceof;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method
