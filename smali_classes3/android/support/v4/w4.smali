.class public Landroid/support/v4/w4;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:Lorg/bouncycastle/asn1/throw;


# direct methods
.method public constructor <init>(Landroid/support/v4/import;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/e0;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/e0;-><init>(Landroid/support/v4/import;)V

    iput-object v0, p0, Landroid/support/v4/w4;->do:Lorg/bouncycastle/asn1/throw;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/throw;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/w4;->do:Lorg/bouncycastle/asn1/throw;

    return-void
.end method

.method public static case(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/w4;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/throw;->const(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/throw;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/w4;->try(Ljava/lang/Object;)Landroid/support/v4/w4;

    move-result-object p0

    return-object p0
.end method

.method public static try(Ljava/lang/Object;)Landroid/support/v4/w4;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/w4;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/w4;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/w4;

    invoke-static {p0}, Lorg/bouncycastle/asn1/throw;->class(Ljava/lang/Object;)Lorg/bouncycastle/asn1/throw;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/w4;-><init>(Lorg/bouncycastle/asn1/throw;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public new()[Landroid/support/v4/p4;
    .locals 4

    iget-object v0, p0, Landroid/support/v4/w4;->do:Lorg/bouncycastle/asn1/throw;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/throw;->size()I

    move-result v0

    new-array v1, v0, [Landroid/support/v4/p4;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    iget-object v3, p0, Landroid/support/v4/w4;->do:Lorg/bouncycastle/asn1/throw;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/asn1/throw;->super(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/p4;->else(Ljava/lang/Object;)Landroid/support/v4/p4;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/w4;->do:Lorg/bouncycastle/asn1/throw;

    return-object v0
.end method
