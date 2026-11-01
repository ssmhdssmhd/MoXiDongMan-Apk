.class public Landroid/support/v4/ry1;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:Landroid/support/v4/g10;

.field private for:Lorg/bouncycastle/asn1/super;

.field private if:Landroid/support/v4/g10;


# direct methods
.method private constructor <init>(Landroid/support/v4/g10;Landroid/support/v4/g10;Lorg/bouncycastle/asn1/super;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "postal address must contain less than 6 strings"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/support/v4/ry1;->do:Landroid/support/v4/g10;

    iput-object p2, p0, Landroid/support/v4/ry1;->if:Landroid/support/v4/g10;

    iput-object p3, p0, Landroid/support/v4/ry1;->for:Lorg/bouncycastle/asn1/super;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/g10;Landroid/support/v4/g10;[Landroid/support/v4/g10;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/n;

    invoke-direct {v0, p3}, Lorg/bouncycastle/asn1/n;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/ry1;-><init>(Landroid/support/v4/g10;Landroid/support/v4/g10;Lorg/bouncycastle/asn1/super;)V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->super()Ljava/util/Enumeration;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/import;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v2, :cond_4

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/import;->final()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Landroid/support/v4/ry1;->for:Lorg/bouncycastle/asn1/super;

    iget-object v0, p0, Landroid/support/v4/ry1;->for:Lorg/bouncycastle/asn1/super;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "postal address must contain less than 6 strings"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "illegal tag"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-static {v0, v2}, Landroid/support/v4/g10;->try(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/g10;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/ry1;->if:Landroid/support/v4/g10;

    goto :goto_0

    :cond_5
    invoke-static {v0, v2}, Landroid/support/v4/g10;->try(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/g10;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/ry1;->do:Landroid/support/v4/g10;

    goto :goto_0

    :cond_6
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/v;Lorg/bouncycastle/asn1/v;Lorg/bouncycastle/asn1/super;)V
    .locals 0

    invoke-static {p1}, Landroid/support/v4/g10;->new(Ljava/lang/Object;)Landroid/support/v4/g10;

    move-result-object p1

    invoke-static {p2}, Landroid/support/v4/g10;->new(Ljava/lang/Object;)Landroid/support/v4/g10;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/ry1;-><init>(Landroid/support/v4/g10;Landroid/support/v4/g10;Lorg/bouncycastle/asn1/super;)V

    return-void
.end method

.method public static case(Ljava/lang/Object;)Landroid/support/v4/ry1;
    .locals 1

    if-eqz p0, :cond_1

    instance-of v0, p0, Landroid/support/v4/ry1;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/support/v4/ry1;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/ry1;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    :goto_0
    check-cast p0, Landroid/support/v4/ry1;

    return-object p0
.end method


# virtual methods
.method public break()Lorg/bouncycastle/asn1/super;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ry1;->for:Lorg/bouncycastle/asn1/super;

    return-object v0
.end method

.method public else()Landroid/support/v4/g10;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ry1;->if:Landroid/support/v4/g10;

    return-object v0
.end method

.method public goto()Lorg/bouncycastle/asn1/v;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/ry1;->if:Landroid/support/v4/g10;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/v;

    invoke-virtual {p0}, Landroid/support/v4/ry1;->else()Landroid/support/v4/g10;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/g10;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/v;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public new()Landroid/support/v4/g10;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ry1;->do:Landroid/support/v4/g10;

    return-object v0
.end method

.method public this()[Landroid/support/v4/g10;
    .locals 4

    iget-object v0, p0, Landroid/support/v4/ry1;->for:Lorg/bouncycastle/asn1/super;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    new-array v1, v0, [Landroid/support/v4/g10;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_1

    iget-object v3, p0, Landroid/support/v4/ry1;->for:Lorg/bouncycastle/asn1/super;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/g10;->new(Ljava/lang/Object;)Landroid/support/v4/g10;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 5

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/ry1;->do:Landroid/support/v4/g10;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/u;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/support/v4/ry1;->do:Landroid/support/v4/g10;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/ry1;->if:Landroid/support/v4/g10;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/u;

    iget-object v3, p0, Landroid/support/v4/ry1;->if:Landroid/support/v4/g10;

    invoke-direct {v1, v2, v2, v3}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-object v1, p0, Landroid/support/v4/ry1;->for:Lorg/bouncycastle/asn1/super;

    if-eqz v1, :cond_2

    new-instance v1, Lorg/bouncycastle/asn1/u;

    const/4 v3, 0x2

    iget-object v4, p0, Landroid/support/v4/ry1;->for:Lorg/bouncycastle/asn1/super;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Lorg/bouncycastle/asn1/v;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/ry1;->do:Landroid/support/v4/g10;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/v;

    invoke-virtual {p0}, Landroid/support/v4/ry1;->new()Landroid/support/v4/g10;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/g10;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/v;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
