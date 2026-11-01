.class public Landroid/support/v4/rh2;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private do:Lorg/bouncycastle/asn1/final;


# direct methods
.method public constructor <init>(Landroid/support/v4/th2;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/rh2;->do:Lorg/bouncycastle/asn1/final;

    invoke-virtual {p1}, Landroid/support/v4/th2;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/rh2;->do:Lorg/bouncycastle/asn1/final;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/catch;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/rh2;->do:Lorg/bouncycastle/asn1/final;

    iput-object p1, p0, Landroid/support/v4/rh2;->do:Lorg/bouncycastle/asn1/final;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/final;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/rh2;->do:Lorg/bouncycastle/asn1/final;

    iput-object p1, p0, Landroid/support/v4/rh2;->do:Lorg/bouncycastle/asn1/final;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/this;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/rh2;->do:Lorg/bouncycastle/asn1/final;

    iput-object p1, p0, Landroid/support/v4/rh2;->do:Lorg/bouncycastle/asn1/final;

    return-void
.end method

.method public static new(Ljava/lang/Object;)Landroid/support/v4/rh2;
    .locals 3

    if-eqz p0, :cond_3

    instance-of v0, p0, Landroid/support/v4/rh2;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/final;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v4/rh2;

    check-cast p0, Lorg/bouncycastle/asn1/final;

    invoke-direct {v0, p0}, Landroid/support/v4/rh2;-><init>(Lorg/bouncycastle/asn1/final;)V

    return-object v0

    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v0, Landroid/support/v4/rh2;

    check-cast p0, [B

    invoke-static {p0}, Lorg/bouncycastle/asn1/final;->else([B)Lorg/bouncycastle/asn1/final;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/rh2;-><init>(Lorg/bouncycastle/asn1/final;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to parse encoded data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown object in getInstance()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    check-cast p0, Landroid/support/v4/rh2;

    return-object p0
.end method

.method public static try(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/rh2;
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/import;->const()Lorg/bouncycastle/asn1/final;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/rh2;->new(Ljava/lang/Object;)Landroid/support/v4/rh2;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public case()Lorg/bouncycastle/asn1/final;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/rh2;->do:Lorg/bouncycastle/asn1/final;

    return-object v0
.end method

.method public else()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/rh2;->do:Lorg/bouncycastle/asn1/final;

    instance-of v0, v0, Lorg/bouncycastle/asn1/this;

    return v0
.end method

.method public goto()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/rh2;->do:Lorg/bouncycastle/asn1/final;

    instance-of v0, v0, Lorg/bouncycastle/asn1/catch;

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/rh2;->do:Lorg/bouncycastle/asn1/final;

    return-object v0
.end method
