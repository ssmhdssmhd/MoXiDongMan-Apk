.class public Landroid/support/v4/ge;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:Landroid/support/v4/se;

.field private for:Landroid/support/v4/se;

.field private if:Landroid/support/v4/se;


# direct methods
.method public constructor <init>(Landroid/support/v4/se;Landroid/support/v4/se;Landroid/support/v4/se;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/ge;->do:Landroid/support/v4/se;

    iput-object p2, p0, Landroid/support/v4/ge;->if:Landroid/support/v4/se;

    iput-object p3, p0, Landroid/support/v4/ge;->for:Landroid/support/v4/se;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/se;->new(Ljava/lang/Object;)Landroid/support/v4/se;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/ge;->do:Landroid/support/v4/se;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/se;->new(Ljava/lang/Object;)Landroid/support/v4/se;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/ge;->if:Landroid/support/v4/se;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/se;->new(Ljava/lang/Object;)Landroid/support/v4/se;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/ge;->for:Landroid/support/v4/se;

    return-void
.end method

.method public static new(Ljava/lang/Object;)Landroid/support/v4/ge;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/ge;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/ge;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/ge;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/ge;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public case()Landroid/support/v4/se;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ge;->if:Landroid/support/v4/se;

    return-object v0
.end method

.method public else()Landroid/support/v4/se;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ge;->do:Landroid/support/v4/se;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 2

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/ge;->do:Landroid/support/v4/se;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/ge;->if:Landroid/support/v4/se;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/ge;->for:Landroid/support/v4/se;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Landroid/support/v4/se;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ge;->for:Landroid/support/v4/se;

    return-object v0
.end method
