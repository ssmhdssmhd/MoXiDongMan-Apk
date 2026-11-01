.class public Landroid/support/v4/my1;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private final do:Landroid/support/v4/tg1;

.field private final if:Lorg/bouncycastle/asn1/super;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/my1;->if:Lorg/bouncycastle/asn1/super;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/tg1;->try(Ljava/lang/Object;)Landroid/support/v4/tg1;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/my1;->do:Landroid/support/v4/tg1;

    return-void
.end method

.method public static new(Ljava/lang/Object;)Landroid/support/v4/my1;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/my1;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/my1;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/my1;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/my1;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public case()Lorg/bouncycastle/asn1/instanceof;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/my1;->if:Lorg/bouncycastle/asn1/super;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/instanceof;->public(Ljava/lang/Object;)Lorg/bouncycastle/asn1/instanceof;

    move-result-object v0

    return-object v0
.end method

.method public else()Landroid/support/v4/b1;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/my1;->if:Lorg/bouncycastle/asn1/super;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/b1;->try(Ljava/lang/Object;)Landroid/support/v4/b1;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/my1;->if:Lorg/bouncycastle/asn1/super;

    return-object v0
.end method

.method public try()Landroid/support/v4/tg1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/my1;->do:Landroid/support/v4/tg1;

    return-object v0
.end method
