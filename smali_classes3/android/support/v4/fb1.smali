.class public Landroid/support/v4/fb1;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:Landroid/support/v4/tg0;

.field private for:Lorg/bouncycastle/asn1/x509/try;

.field private if:Landroid/support/v4/ab1;


# direct methods
.method public constructor <init>(Landroid/support/v4/ab1;Lorg/bouncycastle/asn1/x509/try;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/fb1;->if:Landroid/support/v4/ab1;

    iput-object p2, p0, Landroid/support/v4/fb1;->for:Lorg/bouncycastle/asn1/x509/try;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/tg0;Lorg/bouncycastle/asn1/x509/try;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/fb1;->do:Landroid/support/v4/tg0;

    iput-object p2, p0, Landroid/support/v4/fb1;->for:Lorg/bouncycastle/asn1/x509/try;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v1, v0, Lorg/bouncycastle/asn1/import;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/bouncycastle/asn1/import;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/import;->const()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/tg0;->try(Ljava/lang/Object;)Landroid/support/v4/tg0;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/fb1;->do:Landroid/support/v4/tg0;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown authInfo tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {v0}, Landroid/support/v4/ab1;->try(Ljava/lang/Object;)Landroid/support/v4/ab1;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/fb1;->if:Landroid/support/v4/ab1;

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/try;->case(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/try;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/fb1;->for:Lorg/bouncycastle/asn1/x509/try;

    return-void
.end method

.method public static new(Ljava/lang/Object;)Landroid/support/v4/fb1;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/fb1;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/fb1;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/fb1;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/fb1;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public case()Landroid/support/v4/ab1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/fb1;->if:Landroid/support/v4/ab1;

    return-object v0
.end method

.method public else()Landroid/support/v4/tg0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/fb1;->do:Landroid/support/v4/tg0;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 4

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/fb1;->do:Landroid/support/v4/tg0;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/u;

    iget-object v2, p0, Landroid/support/v4/fb1;->do:Landroid/support/v4/tg0;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/support/v4/fb1;->if:Landroid/support/v4/ab1;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/fb1;->for:Lorg/bouncycastle/asn1/x509/try;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Lorg/bouncycastle/asn1/x509/try;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/fb1;->for:Lorg/bouncycastle/asn1/x509/try;

    return-object v0
.end method
