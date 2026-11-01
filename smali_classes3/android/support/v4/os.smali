.class public Landroid/support/v4/os;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:Landroid/support/v4/ns;

.field private for:Landroid/support/v4/y81;

.field private if:Landroid/support/v4/m61;


# direct methods
.method public constructor <init>(Landroid/support/v4/ns;Landroid/support/v4/m61;Landroid/support/v4/y81;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/os;->do:Landroid/support/v4/ns;

    iput-object p2, p0, Landroid/support/v4/os;->if:Landroid/support/v4/m61;

    iput-object p3, p0, Landroid/support/v4/os;->for:Landroid/support/v4/y81;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->super()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/import;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/import;->const()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/y81;->new(Ljava/lang/Object;)Landroid/support/v4/y81;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/os;->for:Landroid/support/v4/y81;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "illegal tag"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/import;->const()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/m61;->new(Ljava/lang/Object;)Landroid/support/v4/m61;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/os;->if:Landroid/support/v4/m61;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/import;->const()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/ns;->try(Ljava/lang/Object;)Landroid/support/v4/ns;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/os;->do:Landroid/support/v4/ns;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static try(Ljava/lang/Object;)Landroid/support/v4/os;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/os;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/os;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/os;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/os;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public case()Landroid/support/v4/m61;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/os;->if:Landroid/support/v4/m61;

    return-object v0
.end method

.method public else()Landroid/support/v4/y81;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/os;->for:Landroid/support/v4/y81;

    return-object v0
.end method

.method public new()Landroid/support/v4/ns;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/os;->do:Landroid/support/v4/ns;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 5

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/os;->do:Landroid/support/v4/ns;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/u;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/support/v4/os;->do:Landroid/support/v4/ns;

    invoke-virtual {v4}, Landroid/support/v4/ns;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/os;->if:Landroid/support/v4/m61;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/u;

    iget-object v3, p0, Landroid/support/v4/os;->if:Landroid/support/v4/m61;

    invoke-virtual {v3}, Landroid/support/v4/m61;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v3

    invoke-direct {v1, v2, v2, v3}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-object v1, p0, Landroid/support/v4/os;->for:Landroid/support/v4/y81;

    if-eqz v1, :cond_2

    new-instance v1, Lorg/bouncycastle/asn1/u;

    const/4 v3, 0x2

    iget-object v4, p0, Landroid/support/v4/os;->for:Landroid/support/v4/y81;

    invoke-virtual {v4}, Landroid/support/v4/y81;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method
