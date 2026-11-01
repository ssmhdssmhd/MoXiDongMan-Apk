.class public Landroid/support/v4/x42;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:Lorg/bouncycastle/asn1/super;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/x42;->do:Lorg/bouncycastle/asn1/super;

    return-void
.end method

.method public constructor <init>([Landroid/support/v4/s42;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/n;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/n;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Landroid/support/v4/x42;->do:Lorg/bouncycastle/asn1/super;

    return-void
.end method

.method public static new(Ljava/lang/Object;)Landroid/support/v4/x42;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/x42;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/x42;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/x42;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/x42;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/x42;->do:Lorg/bouncycastle/asn1/super;

    return-object v0
.end method

.method public try()[Landroid/support/v4/s42;
    .locals 5

    iget-object v0, p0, Landroid/support/v4/x42;->do:Lorg/bouncycastle/asn1/super;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    new-array v0, v0, [Landroid/support/v4/s42;

    iget-object v1, p0, Landroid/support/v4/x42;->do:Lorg/bouncycastle/asn1/super;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/super;->super()Ljava/util/Enumeration;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/s42;->new(Ljava/lang/Object;)Landroid/support/v4/s42;

    move-result-object v4

    aput-object v4, v0, v2

    move v2, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method
