.class public Landroid/support/v4/cr;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:Lorg/bouncycastle/asn1/v;

.field private if:Lorg/bouncycastle/asn1/catch;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/catch;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/cr;->if:Lorg/bouncycastle/asn1/catch;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/cr;->do:Lorg/bouncycastle/asn1/v;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/v;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/cr;->if:Lorg/bouncycastle/asn1/catch;

    iput-object p2, p0, Landroid/support/v4/cr;->do:Lorg/bouncycastle/asn1/v;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/asn1/v;

    if-eqz v2, :cond_0

    invoke-static {v1}, Lorg/bouncycastle/asn1/v;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/v;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/cr;->do:Lorg/bouncycastle/asn1/v;

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/catch;->throw(Ljava/lang/Object;)Lorg/bouncycastle/asn1/catch;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/cr;->if:Lorg/bouncycastle/asn1/catch;

    return-void
.end method

.method public static case(Ljava/lang/Object;)Landroid/support/v4/cr;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/cr;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/cr;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/cr;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/cr;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public new()Lorg/bouncycastle/asn1/v;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/cr;->do:Lorg/bouncycastle/asn1/v;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 2

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/cr;->do:Lorg/bouncycastle/asn1/v;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/cr;->if:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Lorg/bouncycastle/asn1/catch;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/cr;->if:Lorg/bouncycastle/asn1/catch;

    return-object v0
.end method
