.class public Landroid/support/v4/dr1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private do:Lorg/bouncycastle/asn1/g;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/dr1;->do:Lorg/bouncycastle/asn1/g;

    return-void
.end method

.method public static do(Ljava/lang/Object;)Landroid/support/v4/dr1;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/dr1;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/dr1;

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/g;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v4/dr1;

    invoke-static {p0}, Lorg/bouncycastle/asn1/g;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/g;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/dr1;-><init>(Lorg/bouncycastle/asn1/g;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public for()Lorg/bouncycastle/asn1/final;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/dr1;->do:Lorg/bouncycastle/asn1/g;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/final;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    return-object v0
.end method

.method public if()Lorg/bouncycastle/asn1/g;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/dr1;->do:Lorg/bouncycastle/asn1/g;

    return-object v0
.end method
