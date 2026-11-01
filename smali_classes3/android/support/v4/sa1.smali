.class public Landroid/support/v4/sa1;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:Landroid/support/v4/qa1;

.field private for:Lorg/bouncycastle/asn1/instanceof;

.field private if:Landroid/support/v4/la1;

.field private new:Lorg/bouncycastle/asn1/super;


# direct methods
.method public constructor <init>(Landroid/support/v4/qa1;Landroid/support/v4/la1;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/support/v4/sa1;-><init>(Landroid/support/v4/qa1;Landroid/support/v4/la1;Lorg/bouncycastle/asn1/instanceof;[Landroid/support/v4/se;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/qa1;Landroid/support/v4/la1;Lorg/bouncycastle/asn1/instanceof;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/sa1;-><init>(Landroid/support/v4/qa1;Landroid/support/v4/la1;Lorg/bouncycastle/asn1/instanceof;[Landroid/support/v4/se;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/qa1;Landroid/support/v4/la1;Lorg/bouncycastle/asn1/instanceof;[Landroid/support/v4/se;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/sa1;->do:Landroid/support/v4/qa1;

    iput-object p2, p0, Landroid/support/v4/sa1;->if:Landroid/support/v4/la1;

    iput-object p3, p0, Landroid/support/v4/sa1;->for:Lorg/bouncycastle/asn1/instanceof;

    if-eqz p4, :cond_1

    new-instance p1, Landroid/support/v4/import;

    invoke-direct {p1}, Landroid/support/v4/import;-><init>()V

    const/4 p2, 0x0

    :goto_0
    array-length p3, p4

    if-ge p2, p3, :cond_0

    aget-object p3, p4, p2

    invoke-virtual {p1, p3}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/bouncycastle/asn1/n;

    invoke-direct {p2, p1}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    iput-object p2, p0, Landroid/support/v4/sa1;->new:Lorg/bouncycastle/asn1/super;

    :cond_1
    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->super()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/qa1;->else(Ljava/lang/Object;)Landroid/support/v4/qa1;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/sa1;->do:Landroid/support/v4/qa1;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/la1;->case(Ljava/lang/Object;)Landroid/support/v4/la1;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/sa1;->if:Landroid/support/v4/la1;

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/import;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/instanceof;->return(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/instanceof;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/sa1;->for:Lorg/bouncycastle/asn1/instanceof;

    goto :goto_0

    :cond_0
    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/sa1;->new:Lorg/bouncycastle/asn1/super;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static goto(Ljava/lang/Object;)Landroid/support/v4/sa1;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/sa1;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/sa1;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/sa1;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/sa1;-><init>(Lorg/bouncycastle/asn1/super;)V

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
.method public case()[Landroid/support/v4/se;
    .locals 4

    iget-object v0, p0, Landroid/support/v4/sa1;->new:Lorg/bouncycastle/asn1/super;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    new-array v1, v0, [Landroid/support/v4/se;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Landroid/support/v4/sa1;->new:Lorg/bouncycastle/asn1/super;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/se;->new(Ljava/lang/Object;)Landroid/support/v4/se;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public else()Landroid/support/v4/qa1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/sa1;->do:Landroid/support/v4/qa1;

    return-object v0
.end method

.method public this()Lorg/bouncycastle/asn1/instanceof;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/sa1;->for:Lorg/bouncycastle/asn1/instanceof;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 3

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/sa1;->do:Landroid/support/v4/qa1;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/sa1;->if:Landroid/support/v4/la1;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/sa1;->for:Lorg/bouncycastle/asn1/instanceof;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Landroid/support/v4/sa1;->new(Landroid/support/v4/import;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/sa1;->new:Lorg/bouncycastle/asn1/super;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v1}, Landroid/support/v4/sa1;->new(Landroid/support/v4/import;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Landroid/support/v4/la1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/sa1;->if:Landroid/support/v4/la1;

    return-object v0
.end method
