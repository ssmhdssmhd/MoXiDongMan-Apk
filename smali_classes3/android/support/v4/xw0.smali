.class public Landroid/support/v4/xw0;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:Landroid/support/v4/p81;

.field private if:Lorg/bouncycastle/asn1/class;


# direct methods
.method public constructor <init>(Landroid/support/v4/p81;Lorg/bouncycastle/asn1/class;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/support/v4/xw0;->do:Landroid/support/v4/p81;

    iput-object p2, p0, Landroid/support/v4/xw0;->if:Lorg/bouncycastle/asn1/class;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Ephemeral public key cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Sequence has incorrect number of elements"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/p81;->try(Ljava/lang/Object;)Landroid/support/v4/p81;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/xw0;->do:Landroid/support/v4/p81;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/import;

    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/class;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/class;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/xw0;->if:Lorg/bouncycastle/asn1/class;

    :cond_2
    return-void
.end method

.method public static case(Ljava/lang/Object;)Landroid/support/v4/xw0;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/xw0;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/xw0;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/xw0;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/xw0;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static else(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/xw0;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/xw0;->case(Ljava/lang/Object;)Landroid/support/v4/xw0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public new()Lorg/bouncycastle/asn1/class;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xw0;->if:Lorg/bouncycastle/asn1/class;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 5

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/xw0;->do:Landroid/support/v4/p81;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/xw0;->if:Lorg/bouncycastle/asn1/class;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/u;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/support/v4/xw0;->if:Lorg/bouncycastle/asn1/class;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Landroid/support/v4/p81;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/xw0;->do:Landroid/support/v4/p81;

    return-object v0
.end method
