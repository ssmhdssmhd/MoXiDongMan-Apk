.class public Landroid/support/v4/jg;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:Landroid/support/v4/kg;

.field private for:Lorg/bouncycastle/asn1/super;

.field private if:Landroid/support/v4/cg1;


# direct methods
.method public constructor <init>(Landroid/support/v4/kg;Landroid/support/v4/cg1;[Landroid/support/v4/v4;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Landroid/support/v4/jg;->do:Landroid/support/v4/kg;

    iput-object p2, p0, Landroid/support/v4/jg;->if:Landroid/support/v4/cg1;

    if-eqz p3, :cond_0

    new-instance p1, Lorg/bouncycastle/asn1/n;

    invoke-direct {p1, p3}, Lorg/bouncycastle/asn1/n;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object p1, p0, Landroid/support/v4/jg;->for:Lorg/bouncycastle/asn1/super;

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'certReq\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->super()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/kg;->else(Ljava/lang/Object;)Landroid/support/v4/kg;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/jg;->do:Landroid/support/v4/kg;

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/bouncycastle/asn1/import;

    if-nez v1, :cond_1

    instance-of v1, v0, Landroid/support/v4/cg1;

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/jg;->for:Lorg/bouncycastle/asn1/super;

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {v0}, Landroid/support/v4/cg1;->new(Ljava/lang/Object;)Landroid/support/v4/cg1;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/jg;->if:Landroid/support/v4/cg1;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static case(Ljava/lang/Object;)Landroid/support/v4/jg;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/jg;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/jg;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/jg;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/jg;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static else(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/jg;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/jg;->case(Ljava/lang/Object;)Landroid/support/v4/jg;

    move-result-object p0

    return-object p0
.end method

.method private new(Landroid/support/v4/import;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public break()[Landroid/support/v4/v4;
    .locals 4

    iget-object v0, p0, Landroid/support/v4/jg;->for:Lorg/bouncycastle/asn1/super;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    new-array v1, v0, [Landroid/support/v4/v4;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_1

    iget-object v3, p0, Landroid/support/v4/jg;->for:Lorg/bouncycastle/asn1/super;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/v4;->new(Ljava/lang/Object;)Landroid/support/v4/v4;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public goto()Landroid/support/v4/cg1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/jg;->if:Landroid/support/v4/cg1;

    return-object v0
.end method

.method public this()Landroid/support/v4/cg1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/jg;->if:Landroid/support/v4/cg1;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 2

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/jg;->do:Landroid/support/v4/kg;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/jg;->if:Landroid/support/v4/cg1;

    invoke-direct {p0, v0, v1}, Landroid/support/v4/jg;->new(Landroid/support/v4/import;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/jg;->for:Lorg/bouncycastle/asn1/super;

    invoke-direct {p0, v0, v1}, Landroid/support/v4/jg;->new(Landroid/support/v4/import;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Landroid/support/v4/kg;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/jg;->do:Landroid/support/v4/kg;

    return-object v0
.end method
