.class public Landroid/support/v4/tg1;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:Lorg/bouncycastle/asn1/super;

.field private for:Lorg/bouncycastle/asn1/g;

.field private if:Lorg/bouncycastle/asn1/x509/try;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/tg1;->do:Lorg/bouncycastle/asn1/super;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/try;->case(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/try;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/tg1;->if:Lorg/bouncycastle/asn1/x509/try;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/g;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/g;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/tg1;->for:Lorg/bouncycastle/asn1/g;

    return-void
.end method

.method public static try(Ljava/lang/Object;)Landroid/support/v4/tg1;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/tg1;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/tg1;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/tg1;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/tg1;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public case()Lorg/bouncycastle/asn1/x509/try;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/tg1;->if:Lorg/bouncycastle/asn1/x509/try;

    return-object v0
.end method

.method public new()Lorg/bouncycastle/asn1/g;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/tg1;->for:Lorg/bouncycastle/asn1/g;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/tg1;->do:Lorg/bouncycastle/asn1/super;

    return-object v0
.end method
