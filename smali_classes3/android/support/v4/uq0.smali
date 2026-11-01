.class public Landroid/support/v4/uq0;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private do:Landroid/support/v4/bo0;

.field private if:Landroid/support/v4/pl1;


# direct methods
.method public constructor <init>(Landroid/support/v4/bo0;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/uq0;->do:Landroid/support/v4/bo0;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/uq0;->if:Landroid/support/v4/pl1;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/pl1;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/uq0;->do:Landroid/support/v4/bo0;

    iput-object p1, p0, Landroid/support/v4/uq0;->if:Landroid/support/v4/pl1;

    return-void
.end method

.method public static new(Ljava/lang/Object;)Landroid/support/v4/uq0;
    .locals 3

    if-eqz p0, :cond_3

    instance-of v0, p0, Landroid/support/v4/uq0;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/super;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v4/uq0;

    invoke-static {p0}, Landroid/support/v4/bo0;->new(Ljava/lang/Object;)Landroid/support/v4/bo0;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/uq0;-><init>(Landroid/support/v4/bo0;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/import;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/import;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v1

    if-nez v1, :cond_2

    new-instance p0, Landroid/support/v4/uq0;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/pl1;->case(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/pl1;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/uq0;-><init>(Landroid/support/v4/pl1;)V

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid KeyAgreeRecipientIdentifier: "

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

    :cond_3
    :goto_0
    check-cast p0, Landroid/support/v4/uq0;

    return-object p0
.end method

.method public static try(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/uq0;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/uq0;->new(Ljava/lang/Object;)Landroid/support/v4/uq0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public case()Landroid/support/v4/bo0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/uq0;->do:Landroid/support/v4/bo0;

    return-object v0
.end method

.method public else()Landroid/support/v4/pl1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/uq0;->if:Landroid/support/v4/pl1;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/uq0;->do:Landroid/support/v4/bo0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/bo0;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/u;

    iget-object v1, p0, Landroid/support/v4/uq0;->if:Landroid/support/v4/pl1;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
