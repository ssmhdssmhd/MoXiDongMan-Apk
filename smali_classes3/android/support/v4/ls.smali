.class public Landroid/support/v4/ls;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:Lorg/bouncycastle/asn1/g;

.field private for:Lorg/bouncycastle/asn1/case;

.field private if:Lorg/bouncycastle/asn1/goto;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 4

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

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/case;->super(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/case;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/ls;->for:Lorg/bouncycastle/asn1/case;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tag number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/goto;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/goto;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/ls;->if:Lorg/bouncycastle/asn1/goto;

    goto :goto_0

    :cond_2
    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/g;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/g;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/ls;->do:Lorg/bouncycastle/asn1/g;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static else(Ljava/lang/Object;)Landroid/support/v4/ls;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/ls;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/ls;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/ls;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/ls;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public case()Lorg/bouncycastle/asn1/g;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ls;->do:Lorg/bouncycastle/asn1/g;

    return-object v0
.end method

.method public new()Lorg/bouncycastle/asn1/goto;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ls;->if:Lorg/bouncycastle/asn1/goto;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 5

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/ls;->do:Lorg/bouncycastle/asn1/g;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/u;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/support/v4/ls;->do:Lorg/bouncycastle/asn1/g;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/ls;->if:Lorg/bouncycastle/asn1/goto;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/u;

    iget-object v3, p0, Landroid/support/v4/ls;->if:Lorg/bouncycastle/asn1/goto;

    invoke-direct {v1, v2, v2, v3}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-object v1, p0, Landroid/support/v4/ls;->for:Lorg/bouncycastle/asn1/case;

    if-eqz v1, :cond_2

    new-instance v1, Lorg/bouncycastle/asn1/u;

    const/4 v3, 0x2

    iget-object v4, p0, Landroid/support/v4/ls;->for:Lorg/bouncycastle/asn1/case;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Lorg/bouncycastle/asn1/case;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ls;->for:Lorg/bouncycastle/asn1/case;

    return-object v0
.end method
