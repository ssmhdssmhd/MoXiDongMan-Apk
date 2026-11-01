.class public Landroid/support/v4/m51;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:Landroid/support/v4/b1;

.field private for:Lorg/bouncycastle/asn1/instanceof;

.field private if:Landroid/support/v4/dg;


# direct methods
.method public constructor <init>(Landroid/support/v4/b1;Landroid/support/v4/dg;Lorg/bouncycastle/asn1/instanceof;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/m51;->do:Landroid/support/v4/b1;

    iput-object p2, p0, Landroid/support/v4/m51;->if:Landroid/support/v4/dg;

    iput-object p3, p0, Landroid/support/v4/m51;->for:Lorg/bouncycastle/asn1/instanceof;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/b1;Landroid/support/v4/dg;[B)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/instanceof;

    invoke-direct {v0, p3}, Lorg/bouncycastle/asn1/instanceof;-><init>([B)V

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/m51;-><init>(Landroid/support/v4/b1;Landroid/support/v4/dg;Lorg/bouncycastle/asn1/instanceof;)V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/instanceof;->public(Ljava/lang/Object;)Lorg/bouncycastle/asn1/instanceof;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/m51;->for:Lorg/bouncycastle/asn1/instanceof;

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/import;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0, v1}, Landroid/support/v4/b1;->case(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/b1;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/m51;->do:Landroid/support/v4/b1;

    goto :goto_1

    :cond_0
    invoke-static {v0, v1}, Landroid/support/v4/dg;->try(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/dg;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/m51;->if:Landroid/support/v4/dg;

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static goto(Ljava/lang/Object;)Landroid/support/v4/m51;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/m51;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/m51;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/m51;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/m51;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private new(Landroid/support/v4/import;ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2

    if-eqz p3, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/u;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2, p3}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public case()Landroid/support/v4/b1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/m51;->do:Landroid/support/v4/b1;

    return-object v0
.end method

.method public else()Lorg/bouncycastle/asn1/instanceof;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/m51;->for:Lorg/bouncycastle/asn1/instanceof;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 3

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/m51;->do:Landroid/support/v4/b1;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Landroid/support/v4/m51;->new(Landroid/support/v4/import;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/m51;->if:Landroid/support/v4/dg;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v1}, Landroid/support/v4/m51;->new(Landroid/support/v4/import;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/m51;->for:Lorg/bouncycastle/asn1/instanceof;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Landroid/support/v4/dg;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/m51;->if:Landroid/support/v4/dg;

    return-object v0
.end method
