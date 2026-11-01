.class public Landroid/support/v4/nf1;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:Ljava/lang/String;

.field private for:Landroid/support/v4/tg0;

.field private if:Landroid/support/v4/g10;

.field private new:Landroid/support/v4/co0;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/support/v4/g10;Landroid/support/v4/co0;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/nf1;->do:Ljava/lang/String;

    iput-object p2, p0, Landroid/support/v4/nf1;->if:Landroid/support/v4/g10;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/nf1;->for:Landroid/support/v4/tg0;

    iput-object p3, p0, Landroid/support/v4/nf1;->new:Landroid/support/v4/co0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/support/v4/g10;Landroid/support/v4/tg0;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/nf1;->do:Ljava/lang/String;

    iput-object p2, p0, Landroid/support/v4/nf1;->if:Landroid/support/v4/g10;

    iput-object p3, p0, Landroid/support/v4/nf1;->for:Landroid/support/v4/tg0;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/nf1;->new:Landroid/support/v4/co0;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_5

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v2, 0x3

    if-gt v0, v2, :cond_5

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->super()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/import;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/import;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v3

    if-eq v3, v1, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    if-ne v3, v2, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/import;->const()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    instance-of v3, v0, Lorg/bouncycastle/asn1/import;

    if-eqz v3, :cond_0

    invoke-static {v0}, Landroid/support/v4/tg0;->try(Ljava/lang/Object;)Landroid/support/v4/tg0;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/nf1;->for:Landroid/support/v4/tg0;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/support/v4/co0;->new(Ljava/lang/Object;)Landroid/support/v4/co0;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/nf1;->new:Landroid/support/v4/co0;

    goto :goto_0

    :cond_1
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

    :cond_2
    invoke-static {v0, v1}, Landroid/support/v4/g10;->try(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/g10;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/nf1;->if:Landroid/support/v4/g10;

    goto :goto_0

    :cond_3
    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/m;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/m;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/m;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/nf1;->do:Ljava/lang/String;

    goto :goto_0

    :cond_4
    return-void

    :cond_5
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

.method public static case(Ljava/lang/Object;)Landroid/support/v4/nf1;
    .locals 3

    if-eqz p0, :cond_2

    instance-of v0, p0, Landroid/support/v4/nf1;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/super;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v4/nf1;

    check-cast p0, Lorg/bouncycastle/asn1/super;

    invoke-direct {v0, p0}, Landroid/support/v4/nf1;-><init>(Lorg/bouncycastle/asn1/super;)V

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
    check-cast p0, Landroid/support/v4/nf1;

    return-object p0
.end method


# virtual methods
.method public else()Landroid/support/v4/tg0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/nf1;->for:Landroid/support/v4/tg0;

    return-object v0
.end method

.method public goto()Landroid/support/v4/g10;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/nf1;->if:Landroid/support/v4/g10;

    return-object v0
.end method

.method public new()Landroid/support/v4/co0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/nf1;->new:Landroid/support/v4/co0;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 5

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/nf1;->do:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/u;

    new-instance v3, Lorg/bouncycastle/asn1/m;

    iget-object v4, p0, Landroid/support/v4/nf1;->do:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lorg/bouncycastle/asn1/m;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v1, v2, v2, v3}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/nf1;->if:Landroid/support/v4/g10;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/u;

    const/4 v3, 0x2

    iget-object v4, p0, Landroid/support/v4/nf1;->if:Landroid/support/v4/g10;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-object v1, p0, Landroid/support/v4/nf1;->for:Landroid/support/v4/tg0;

    const/4 v3, 0x3

    if-eqz v1, :cond_2

    new-instance v1, Lorg/bouncycastle/asn1/u;

    iget-object v4, p0, Landroid/support/v4/nf1;->for:Landroid/support/v4/tg0;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/u;

    iget-object v4, p0, Landroid/support/v4/nf1;->new:Landroid/support/v4/co0;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/nf1;->do:Ljava/lang/String;

    return-object v0
.end method
