.class public Landroid/support/v4/aq;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:Lorg/bouncycastle/asn1/super;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->super()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/os;->try(Ljava/lang/Object;)Landroid/support/v4/os;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroid/support/v4/aq;->do:Lorg/bouncycastle/asn1/super;

    return-void
.end method

.method public constructor <init>([Landroid/support/v4/os;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/n;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/n;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Landroid/support/v4/aq;->do:Lorg/bouncycastle/asn1/super;

    return-void
.end method

.method public static try(Ljava/lang/Object;)Landroid/support/v4/aq;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/aq;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/aq;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/aq;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/aq;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public new()[Landroid/support/v4/os;
    .locals 4

    iget-object v0, p0, Landroid/support/v4/aq;->do:Lorg/bouncycastle/asn1/super;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    new-array v1, v0, [Landroid/support/v4/os;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Landroid/support/v4/aq;->do:Lorg/bouncycastle/asn1/super;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/os;->try(Ljava/lang/Object;)Landroid/support/v4/os;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/aq;->do:Lorg/bouncycastle/asn1/super;

    return-object v0
.end method
