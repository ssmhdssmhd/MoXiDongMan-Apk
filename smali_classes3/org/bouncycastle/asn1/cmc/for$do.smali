.class public Lorg/bouncycastle/asn1/cmc/for$do;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/asn1/cmc/for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field private final do:Landroid/support/v4/ne;

.field private final if:Landroid/support/v4/bd1;


# direct methods
.method public constructor <init>(Landroid/support/v4/bd1;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/cmc/for$do;-><init>(Landroid/support/v4/ne;Landroid/support/v4/bd1;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/ne;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/cmc/for$do;-><init>(Landroid/support/v4/ne;Landroid/support/v4/bd1;)V

    return-void
.end method

.method private constructor <init>(Landroid/support/v4/ne;Landroid/support/v4/bd1;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmc/for$do;->do:Landroid/support/v4/ne;

    iput-object p2, p0, Lorg/bouncycastle/asn1/cmc/for$do;->if:Landroid/support/v4/bd1;

    return-void
.end method

.method public static synthetic new(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/for$do;
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/asn1/cmc/for$do;->try(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/for$do;

    move-result-object p0

    return-object p0
.end method

.method private static try(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/for$do;
    .locals 3

    instance-of v0, p0, Lorg/bouncycastle/asn1/cmc/for$do;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/cmc/for$do;

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    instance-of v1, v0, Lorg/bouncycastle/asn1/goto;

    if-eqz v1, :cond_1

    new-instance p0, Lorg/bouncycastle/asn1/cmc/for$do;

    invoke-static {v0}, Landroid/support/v4/ne;->new(Ljava/lang/Object;)Landroid/support/v4/ne;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/cmc/for$do;-><init>(Landroid/support/v4/ne;)V

    return-object p0

    :cond_1
    instance-of v1, v0, Lorg/bouncycastle/asn1/super;

    if-eqz v1, :cond_2

    new-instance p0, Lorg/bouncycastle/asn1/cmc/for$do;

    invoke-static {v0}, Landroid/support/v4/bd1;->new(Ljava/lang/Object;)Landroid/support/v4/bd1;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/cmc/for$do;-><init>(Landroid/support/v4/bd1;)V

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in getInstance(): "

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
.end method


# virtual methods
.method public case()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/for$do;->do:Landroid/support/v4/ne;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/for$do;->if:Landroid/support/v4/bd1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/bd1;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/for$do;->do:Landroid/support/v4/ne;

    invoke-virtual {v0}, Landroid/support/v4/ne;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    return-object v0
.end method
