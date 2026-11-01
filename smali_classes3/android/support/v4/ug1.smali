.class public abstract Landroid/support/v4/ug1;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    return-void
.end method

.method public static new(Ljava/lang/Object;)Landroid/support/v4/ug1;
    .locals 2

    instance-of v0, p0, Landroid/support/v4/ug1;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/ug1;

    return-object p0

    :cond_0
    if-eqz p0, :cond_2

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/catch;->throw(Ljava/lang/Object;)Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/catch;->return(Lorg/bouncycastle/asn1/catch;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/eac/try;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/eac/try;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    new-instance v0, Landroid/support/v4/hk1;

    invoke-direct {v0, p0}, Landroid/support/v4/hk1;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public abstract try()Lorg/bouncycastle/asn1/catch;
.end method
