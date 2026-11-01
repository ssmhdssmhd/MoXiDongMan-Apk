.class public Landroid/support/v4/k70;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private do:Landroid/support/v4/b80;

.field private if:Landroid/support/v4/q70;


# direct methods
.method public constructor <init>(Landroid/support/v4/b80;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/k70;->do:Landroid/support/v4/b80;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/q70;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/k70;->if:Landroid/support/v4/q70;

    return-void
.end method

.method public static new(Ljava/lang/Object;)Landroid/support/v4/k70;
    .locals 2

    instance-of v0, p0, Landroid/support/v4/k70;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/k70;

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/import;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v4/k70;

    check-cast p0, Lorg/bouncycastle/asn1/import;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/support/v4/b80;->else(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/b80;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/k70;-><init>(Landroid/support/v4/b80;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Landroid/support/v4/q70;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/support/v4/k70;

    check-cast p0, Landroid/support/v4/q70;

    invoke-direct {v0, p0}, Landroid/support/v4/k70;-><init>(Landroid/support/v4/q70;)V

    return-object v0

    :cond_2
    new-instance v0, Landroid/support/v4/k70;

    invoke-static {p0}, Landroid/support/v4/q70;->else(Ljava/lang/Object;)Landroid/support/v4/q70;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/k70;-><init>(Landroid/support/v4/q70;)V

    return-object v0
.end method


# virtual methods
.method public case()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/k70;->if:Landroid/support/v4/q70;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/k70;->if:Landroid/support/v4/q70;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/q70;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/u;

    iget-object v1, p0, Landroid/support/v4/k70;->do:Landroid/support/v4/b80;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public try()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/k70;->if:Landroid/support/v4/q70;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/k70;->do:Landroid/support/v4/b80;

    return-object v0
.end method
