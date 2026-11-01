.class public Landroid/support/v4/n80;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private do:Landroid/support/v4/b72;


# direct methods
.method public constructor <init>(Landroid/support/v4/b72;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/n80;->do:Landroid/support/v4/b72;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/import;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v4/b72;->case(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/b72;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/n80;->do:Landroid/support/v4/b72;

    :cond_0
    return-void
.end method

.method public static new(Ljava/lang/Object;)Landroid/support/v4/n80;
    .locals 1

    if-eqz p0, :cond_2

    instance-of v0, p0, Landroid/support/v4/n80;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/import;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v4/n80;

    invoke-static {p0}, Lorg/bouncycastle/asn1/import;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/import;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/n80;-><init>(Lorg/bouncycastle/asn1/import;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown object in getInstance"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    check-cast p0, Landroid/support/v4/n80;

    return-object p0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/n80;->do:Landroid/support/v4/b72;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/u;

    iget-object v1, p0, Landroid/support/v4/n80;->do:Landroid/support/v4/b72;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public try()Landroid/support/v4/b72;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/n80;->do:Landroid/support/v4/b72;

    return-object v0
.end method
