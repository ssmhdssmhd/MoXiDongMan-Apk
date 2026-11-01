.class public Landroid/support/v4/gd1;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private case:Landroid/support/v4/g10;

.field private do:Landroid/support/v4/c21;

.field private for:Lorg/bouncycastle/asn1/case;

.field private if:Ljava/math/BigInteger;

.field private new:Landroid/support/v4/g10;

.field private try:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/v4/c21;Ljava/math/BigInteger;Lorg/bouncycastle/asn1/case;Landroid/support/v4/g10;Ljava/lang/String;Landroid/support/v4/g10;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/gd1;->do:Landroid/support/v4/c21;

    iput-object p3, p0, Landroid/support/v4/gd1;->for:Lorg/bouncycastle/asn1/case;

    iput-object p5, p0, Landroid/support/v4/gd1;->try:Ljava/lang/String;

    iput-object p2, p0, Landroid/support/v4/gd1;->if:Ljava/math/BigInteger;

    iput-object p6, p0, Landroid/support/v4/gd1;->case:Landroid/support/v4/g10;

    iput-object p4, p0, Landroid/support/v4/gd1;->new:Landroid/support/v4/g10;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_6

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->super()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/c21;->try(Ljava/lang/Object;)Landroid/support/v4/c21;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/gd1;->do:Landroid/support/v4/c21;

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/import;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/import;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v1, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    invoke-static {v0, v1}, Landroid/support/v4/g10;->try(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/g10;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/gd1;->case:Landroid/support/v4/g10;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad tag number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {v0, v3}, Lorg/bouncycastle/asn1/m;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/m;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/m;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/gd1;->try:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-static {v0, v1}, Landroid/support/v4/g10;->try(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/g10;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/gd1;->new:Landroid/support/v4/g10;

    goto :goto_0

    :cond_3
    invoke-static {v0, v3}, Lorg/bouncycastle/asn1/case;->super(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/case;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/gd1;->for:Lorg/bouncycastle/asn1/case;

    goto :goto_0

    :cond_4
    invoke-static {v0, v3}, Lorg/bouncycastle/asn1/goto;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/goto;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/gd1;->if:Ljava/math/BigInteger;

    goto :goto_0

    :cond_5
    return-void

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static case(Ljava/lang/Object;)Landroid/support/v4/gd1;
    .locals 3

    if-eqz p0, :cond_2

    instance-of v0, p0, Landroid/support/v4/gd1;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/super;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v4/gd1;

    check-cast p0, Lorg/bouncycastle/asn1/super;

    invoke-direct {v0, p0}, Landroid/support/v4/gd1;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    check-cast p0, Landroid/support/v4/gd1;

    return-object p0
.end method


# virtual methods
.method public break()Landroid/support/v4/g10;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/gd1;->case:Landroid/support/v4/g10;

    return-object v0
.end method

.method public else()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/gd1;->if:Ljava/math/BigInteger;

    return-object v0
.end method

.method public goto()Landroid/support/v4/c21;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/gd1;->do:Landroid/support/v4/c21;

    return-object v0
.end method

.method public new()Lorg/bouncycastle/asn1/case;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/gd1;->for:Lorg/bouncycastle/asn1/case;

    return-object v0
.end method

.method public this()Landroid/support/v4/g10;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/gd1;->new:Landroid/support/v4/g10;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 7

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/gd1;->do:Landroid/support/v4/c21;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/gd1;->if:Ljava/math/BigInteger;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/u;

    new-instance v3, Lorg/bouncycastle/asn1/goto;

    iget-object v4, p0, Landroid/support/v4/gd1;->if:Ljava/math/BigInteger;

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/goto;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v1, v2, v2, v3}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/gd1;->for:Lorg/bouncycastle/asn1/case;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/u;

    iget-object v4, p0, Landroid/support/v4/gd1;->for:Lorg/bouncycastle/asn1/case;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-object v1, p0, Landroid/support/v4/gd1;->new:Landroid/support/v4/g10;

    if-eqz v1, :cond_2

    new-instance v1, Lorg/bouncycastle/asn1/u;

    const/4 v4, 0x2

    iget-object v5, p0, Landroid/support/v4/gd1;->new:Landroid/support/v4/g10;

    invoke-direct {v1, v3, v4, v5}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2
    iget-object v1, p0, Landroid/support/v4/gd1;->try:Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v1, Lorg/bouncycastle/asn1/u;

    const/4 v4, 0x3

    new-instance v5, Lorg/bouncycastle/asn1/m;

    iget-object v6, p0, Landroid/support/v4/gd1;->try:Ljava/lang/String;

    invoke-direct {v5, v6, v3}, Lorg/bouncycastle/asn1/m;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v1, v2, v4, v5}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_3
    iget-object v1, p0, Landroid/support/v4/gd1;->case:Landroid/support/v4/g10;

    if-eqz v1, :cond_4

    new-instance v1, Lorg/bouncycastle/asn1/u;

    const/4 v2, 0x4

    iget-object v4, p0, Landroid/support/v4/gd1;->case:Landroid/support/v4/g10;

    invoke-direct {v1, v3, v2, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_4
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/gd1;->try:Ljava/lang/String;

    return-object v0
.end method
