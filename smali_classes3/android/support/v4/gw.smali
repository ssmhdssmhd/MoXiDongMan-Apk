.class public Landroid/support/v4/gw;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private final do:Lorg/bouncycastle/asn1/case;

.field private final if:Landroid/support/v4/fr;


# direct methods
.method public constructor <init>(Landroid/support/v4/fr;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/gw;->do:Lorg/bouncycastle/asn1/case;

    iput-object p1, p0, Landroid/support/v4/gw;->if:Landroid/support/v4/fr;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/case;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/case;-><init>(Ljava/util/Date;)V

    invoke-direct {p0, v0}, Landroid/support/v4/gw;-><init>(Lorg/bouncycastle/asn1/case;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/case;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/gw;->do:Lorg/bouncycastle/asn1/case;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/gw;->if:Landroid/support/v4/fr;

    return-void
.end method

.method public static case(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/gw;
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/import;->const()Lorg/bouncycastle/asn1/final;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/gw;->try(Ljava/lang/Object;)Landroid/support/v4/gw;

    move-result-object p0

    return-object p0
.end method

.method public static try(Ljava/lang/Object;)Landroid/support/v4/gw;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/gw;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/gw;

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/case;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v4/gw;

    invoke-static {p0}, Lorg/bouncycastle/asn1/case;->final(Ljava/lang/Object;)Lorg/bouncycastle/asn1/case;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/gw;-><init>(Lorg/bouncycastle/asn1/case;)V

    return-object v0

    :cond_1
    if-eqz p0, :cond_2

    new-instance v0, Landroid/support/v4/gw;

    invoke-static {p0}, Landroid/support/v4/fr;->case(Ljava/lang/Object;)Landroid/support/v4/fr;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/gw;-><init>(Landroid/support/v4/fr;)V

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public else()Landroid/support/v4/fr;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/gw;->if:Landroid/support/v4/fr;

    return-object v0
.end method

.method public new()Lorg/bouncycastle/asn1/case;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/gw;->do:Lorg/bouncycastle/asn1/case;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/gw;->do:Lorg/bouncycastle/asn1/case;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/gw;->if:Landroid/support/v4/fr;

    invoke-virtual {v0}, Landroid/support/v4/fr;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/gw;->do:Lorg/bouncycastle/asn1/case;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/gw;->if:Landroid/support/v4/fr;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
