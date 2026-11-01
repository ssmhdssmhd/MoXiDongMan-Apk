.class public Landroid/support/v4/u70;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:Landroid/support/v4/b1;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/catch;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v0, Landroid/support/v4/b1;

    invoke-direct {v0, p1}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;)V

    iput-object v0, p0, Landroid/support/v4/u70;->do:Landroid/support/v4/b1;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v0, Landroid/support/v4/b1;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Landroid/support/v4/u70;->do:Landroid/support/v4/b1;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-static {p1}, Landroid/support/v4/b1;->try(Ljava/lang/Object;)Landroid/support/v4/b1;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/u70;->do:Landroid/support/v4/b1;

    return-void
.end method

.method public static try(Ljava/lang/Object;)Landroid/support/v4/u70;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/u70;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/u70;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/u70;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/u70;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public case()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/u70;->do:Landroid/support/v4/b1;

    invoke-virtual {v0}, Landroid/support/v4/b1;->else()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public new()Lorg/bouncycastle/asn1/catch;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/u70;->do:Landroid/support/v4/b1;

    invoke-virtual {v0}, Landroid/support/v4/b1;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/u70;->do:Landroid/support/v4/b1;

    invoke-virtual {v0}, Landroid/support/v4/b1;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    return-object v0
.end method
