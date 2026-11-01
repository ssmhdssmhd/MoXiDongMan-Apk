.class public Landroid/support/v4/gg;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:Lorg/bouncycastle/asn1/catch;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/catch;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/gg;->do:Lorg/bouncycastle/asn1/catch;

    return-void
.end method

.method public static try(Ljava/lang/Object;)Landroid/support/v4/gg;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/gg;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/gg;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/gg;

    invoke-static {p0}, Lorg/bouncycastle/asn1/catch;->throw(Ljava/lang/Object;)Lorg/bouncycastle/asn1/catch;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/gg;-><init>(Lorg/bouncycastle/asn1/catch;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public new()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/gg;->do:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/catch;->super()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/gg;->do:Lorg/bouncycastle/asn1/catch;

    return-object v0
.end method
