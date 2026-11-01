.class public Landroid/support/v4/se;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private do:Landroid/support/v4/rg;

.field private for:Lorg/bouncycastle/asn1/break;

.field private if:I


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/break;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput p1, p0, Landroid/support/v4/se;->if:I

    iput-object p2, p0, Landroid/support/v4/se;->for:Lorg/bouncycastle/asn1/break;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/q4;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/support/v4/se;-><init>(ILorg/bouncycastle/asn1/break;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/rg;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Landroid/support/v4/rg;->throw()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Landroid/support/v4/se;->do:Landroid/support/v4/rg;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "only version 3 certificates allowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static new(Ljava/lang/Object;)Landroid/support/v4/se;
    .locals 3

    if-eqz p0, :cond_4

    instance-of v0, p0, Landroid/support/v4/se;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    :try_start_0
    check-cast p0, [B

    invoke-static {p0}, Lorg/bouncycastle/asn1/final;->else([B)Lorg/bouncycastle/asn1/final;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid encoding in CMPCertificate"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/super;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/support/v4/se;

    invoke-static {p0}, Landroid/support/v4/rg;->try(Ljava/lang/Object;)Landroid/support/v4/rg;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/se;-><init>(Landroid/support/v4/rg;)V

    return-object v0

    :cond_2
    instance-of v0, p0, Lorg/bouncycastle/asn1/import;

    if-eqz v0, :cond_3

    check-cast p0, Lorg/bouncycastle/asn1/import;

    new-instance v0, Landroid/support/v4/se;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/import;->const()Lorg/bouncycastle/asn1/final;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/support/v4/se;-><init>(ILorg/bouncycastle/asn1/break;)V

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid object: "

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

    :cond_4
    :goto_1
    check-cast p0, Landroid/support/v4/se;

    return-object p0
.end method


# virtual methods
.method public case()I
    .locals 1

    iget v0, p0, Landroid/support/v4/se;->if:I

    return v0
.end method

.method public else()Landroid/support/v4/q4;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/se;->for:Lorg/bouncycastle/asn1/break;

    invoke-static {v0}, Landroid/support/v4/q4;->try(Ljava/lang/Object;)Landroid/support/v4/q4;

    move-result-object v0

    return-object v0
.end method

.method public goto()Landroid/support/v4/rg;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/se;->do:Landroid/support/v4/rg;

    return-object v0
.end method

.method public this()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/se;->do:Landroid/support/v4/rg;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 4

    iget-object v0, p0, Landroid/support/v4/se;->for:Lorg/bouncycastle/asn1/break;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/u;

    const/4 v1, 0x1

    iget v2, p0, Landroid/support/v4/se;->if:I

    iget-object v3, p0, Landroid/support/v4/se;->for:Lorg/bouncycastle/asn1/break;

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/se;->do:Landroid/support/v4/rg;

    invoke-virtual {v0}, Landroid/support/v4/rg;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    return-object v0
.end method

.method public try()Lorg/bouncycastle/asn1/break;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/se;->for:Lorg/bouncycastle/asn1/break;

    return-object v0
.end method
