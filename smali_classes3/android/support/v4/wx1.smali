.class public Landroid/support/v4/wx1;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field public do:Lorg/bouncycastle/asn1/super;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/wx1;->do:Lorg/bouncycastle/asn1/super;

    return-void
.end method

.method public constructor <init>([Landroid/support/v4/vx1;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/asn1/n;

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    iput-object p1, p0, Landroid/support/v4/wx1;->do:Lorg/bouncycastle/asn1/super;

    return-void
.end method

.method public static try(Ljava/lang/Object;)Landroid/support/v4/wx1;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/wx1;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/wx1;

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/super;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v4/wx1;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/wx1;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public new(I)Landroid/support/v4/vx1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/wx1;->do:Lorg/bouncycastle/asn1/super;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/vx1;->new(Ljava/lang/Object;)Landroid/support/v4/vx1;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/wx1;->do:Lorg/bouncycastle/asn1/super;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/wx1;->do:Lorg/bouncycastle/asn1/super;

    return-object v0
.end method
