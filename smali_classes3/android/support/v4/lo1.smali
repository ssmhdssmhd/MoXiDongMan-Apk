.class public Landroid/support/v4/lo1;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:Lorg/bouncycastle/asn1/case;

.field private if:Landroid/support/v4/af;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/case;Landroid/support/v4/af;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/lo1;->do:Lorg/bouncycastle/asn1/case;

    iput-object p2, p0, Landroid/support/v4/lo1;->if:Landroid/support/v4/af;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/case;->final(Ljava/lang/Object;)Lorg/bouncycastle/asn1/case;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/lo1;->do:Lorg/bouncycastle/asn1/case;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/import;

    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/new;->const(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/new;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/af;->new(Ljava/lang/Object;)Landroid/support/v4/af;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/lo1;->if:Landroid/support/v4/af;

    :cond_0
    return-void
.end method

.method public static new(Ljava/lang/Object;)Landroid/support/v4/lo1;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/lo1;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/lo1;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/lo1;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/lo1;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static try(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/lo1;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/lo1;->new(Ljava/lang/Object;)Landroid/support/v4/lo1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public case()Landroid/support/v4/af;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/lo1;->if:Landroid/support/v4/af;

    return-object v0
.end method

.method public else()Lorg/bouncycastle/asn1/case;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/lo1;->do:Lorg/bouncycastle/asn1/case;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 5

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/lo1;->do:Lorg/bouncycastle/asn1/case;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/lo1;->if:Landroid/support/v4/af;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/u;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/support/v4/lo1;->if:Landroid/support/v4/af;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method
