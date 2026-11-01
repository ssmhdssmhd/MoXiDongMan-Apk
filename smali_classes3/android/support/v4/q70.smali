.class public Landroid/support/v4/q70;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private case:Lorg/bouncycastle/asn1/instanceof;

.field private do:Landroid/support/v4/b1;

.field private for:Lorg/bouncycastle/asn1/instanceof;

.field private if:Landroid/support/v4/b1;

.field private new:Landroid/support/v4/b1;

.field private try:Lorg/bouncycastle/asn1/class;


# direct methods
.method public constructor <init>(Landroid/support/v4/b1;Landroid/support/v4/b1;Lorg/bouncycastle/asn1/instanceof;Landroid/support/v4/b1;Lorg/bouncycastle/asn1/class;Lorg/bouncycastle/asn1/instanceof;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    if-eqz p6, :cond_0

    iput-object p1, p0, Landroid/support/v4/q70;->do:Landroid/support/v4/b1;

    iput-object p2, p0, Landroid/support/v4/q70;->if:Landroid/support/v4/b1;

    iput-object p3, p0, Landroid/support/v4/q70;->for:Lorg/bouncycastle/asn1/instanceof;

    iput-object p4, p0, Landroid/support/v4/q70;->new:Landroid/support/v4/b1;

    iput-object p5, p0, Landroid/support/v4/q70;->try:Lorg/bouncycastle/asn1/class;

    iput-object p6, p0, Landroid/support/v4/q70;->case:Lorg/bouncycastle/asn1/instanceof;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'encValue\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/asn1/import;

    if-eqz v2, :cond_5

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/import;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    invoke-static {v2, v0}, Lorg/bouncycastle/asn1/class;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/class;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/q70;->try:Lorg/bouncycastle/asn1/class;

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown tag encountered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {v2, v0}, Landroid/support/v4/b1;->case(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/b1;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/q70;->new:Landroid/support/v4/b1;

    goto :goto_1

    :cond_2
    invoke-static {v2, v0}, Lorg/bouncycastle/asn1/instanceof;->return(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/instanceof;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/q70;->for:Lorg/bouncycastle/asn1/instanceof;

    goto :goto_1

    :cond_3
    invoke-static {v2, v0}, Landroid/support/v4/b1;->case(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/b1;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/q70;->if:Landroid/support/v4/b1;

    goto :goto_1

    :cond_4
    invoke-static {v2, v0}, Landroid/support/v4/b1;->case(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/b1;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v4/q70;->do:Landroid/support/v4/b1;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/instanceof;->public(Ljava/lang/Object;)Lorg/bouncycastle/asn1/instanceof;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/q70;->case:Lorg/bouncycastle/asn1/instanceof;

    return-void
.end method

.method public static else(Ljava/lang/Object;)Landroid/support/v4/q70;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/q70;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/q70;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/q70;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/q70;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private new(Landroid/support/v4/import;ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2

    if-eqz p3, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/u;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p3}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p1, v0}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public break()Landroid/support/v4/b1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/q70;->if:Landroid/support/v4/b1;

    return-object v0
.end method

.method public case()Lorg/bouncycastle/asn1/instanceof;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/q70;->case:Lorg/bouncycastle/asn1/instanceof;

    return-object v0
.end method

.method public catch()Lorg/bouncycastle/asn1/class;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/q70;->try:Lorg/bouncycastle/asn1/class;

    return-object v0
.end method

.method public goto()Landroid/support/v4/b1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/q70;->do:Landroid/support/v4/b1;

    return-object v0
.end method

.method public this()Landroid/support/v4/b1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/q70;->new:Landroid/support/v4/b1;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 3

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/q70;->do:Landroid/support/v4/b1;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Landroid/support/v4/q70;->new(Landroid/support/v4/import;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/q70;->if:Landroid/support/v4/b1;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v1}, Landroid/support/v4/q70;->new(Landroid/support/v4/import;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/q70;->for:Lorg/bouncycastle/asn1/instanceof;

    const/4 v2, 0x2

    invoke-direct {p0, v0, v2, v1}, Landroid/support/v4/q70;->new(Landroid/support/v4/import;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/q70;->new:Landroid/support/v4/b1;

    const/4 v2, 0x3

    invoke-direct {p0, v0, v2, v1}, Landroid/support/v4/q70;->new(Landroid/support/v4/import;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/q70;->try:Lorg/bouncycastle/asn1/class;

    const/4 v2, 0x4

    invoke-direct {p0, v0, v2, v1}, Landroid/support/v4/q70;->new(Landroid/support/v4/import;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/q70;->case:Lorg/bouncycastle/asn1/instanceof;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Lorg/bouncycastle/asn1/instanceof;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/q70;->for:Lorg/bouncycastle/asn1/instanceof;

    return-object v0
.end method
