.class public Landroid/support/v4/t51;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private final do:Lorg/bouncycastle/asn1/ASN1Encodable;

.field private final if:Landroid/support/v4/v51;


# direct methods
.method public constructor <init>(Landroid/support/v4/l70;Landroid/support/v4/v51;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/t51;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    iput-object p2, p0, Landroid/support/v4/t51;->if:Landroid/support/v4/v51;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/u51;Landroid/support/v4/v51;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/t51;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    iput-object p2, p0, Landroid/support/v4/t51;->if:Landroid/support/v4/v51;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v2, v0, Landroid/support/v4/l70;

    if-eqz v2, :cond_0

    :goto_0
    iput-object v0, p0, Landroid/support/v4/t51;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    goto :goto_1

    :cond_0
    instance-of v2, v0, Landroid/support/v4/u51;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v2

    if-ne v2, v1, :cond_2

    invoke-static {v0}, Landroid/support/v4/l70;->case(Ljava/lang/Object;)Landroid/support/v4/l70;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Landroid/support/v4/u51;->case(Ljava/lang/Object;)Landroid/support/v4/u51;

    move-result-object v0

    goto :goto_0

    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/v51;->new(Ljava/lang/Object;)Landroid/support/v4/v51;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/t51;->if:Landroid/support/v4/v51;

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "malformed sequence"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public static new(Ljava/lang/Object;)Landroid/support/v4/t51;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/t51;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/t51;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/t51;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/t51;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public case()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/t51;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 2

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/t51;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/t51;->if:Landroid/support/v4/v51;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Landroid/support/v4/v51;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/t51;->if:Landroid/support/v4/v51;

    return-object v0
.end method
