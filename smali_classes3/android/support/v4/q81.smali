.class public Landroid/support/v4/q81;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:Lorg/bouncycastle/asn1/ASN1Encodable;

.field private if:Landroid/support/v4/co0;


# direct methods
.method public constructor <init>(Landroid/support/v4/b1;[B)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v0, Landroid/support/v4/v00;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/v00;-><init>(Landroid/support/v4/b1;[B)V

    iput-object v0, p0, Landroid/support/v4/q81;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/b1;[BLandroid/support/v4/co0;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v0, Landroid/support/v4/v00;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/v00;-><init>(Landroid/support/v4/b1;[B)V

    iput-object v0, p0, Landroid/support/v4/q81;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    iput-object p3, p0, Landroid/support/v4/q81;->if:Landroid/support/v4/co0;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-interface {v2}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/asn1/class;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-eqz v2, :cond_0

    invoke-static {v0}, Lorg/bouncycastle/asn1/class;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/class;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/support/v4/v00;->case(Ljava/lang/Object;)Landroid/support/v4/v00;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/support/v4/q81;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/co0;->new(Ljava/lang/Object;)Landroid/support/v4/co0;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/q81;->if:Landroid/support/v4/co0;

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static case(Ljava/lang/Object;)Landroid/support/v4/q81;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/q81;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/q81;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/q81;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/q81;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public else()Landroid/support/v4/co0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/q81;->if:Landroid/support/v4/co0;

    return-object v0
.end method

.method public new()Landroid/support/v4/b1;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/q81;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/class;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v4/b1;

    sget-object v1, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lorg/bouncycastle/asn1/catch;

    invoke-direct {v0, v1}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/q81;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-static {v0}, Landroid/support/v4/v00;->case(Ljava/lang/Object;)Landroid/support/v4/v00;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/v00;->new()Landroid/support/v4/b1;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 2

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/q81;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/q81;->if:Landroid/support/v4/co0;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/q81;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/q81;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/class;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/q81;->do:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-static {v0}, Landroid/support/v4/v00;->case(Ljava/lang/Object;)Landroid/support/v4/v00;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/v00;->try()[B

    move-result-object v0

    return-object v0
.end method
