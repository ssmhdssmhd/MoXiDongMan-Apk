.class public Landroid/support/v4/wz0;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:Lorg/bouncycastle/asn1/for;

.field private for:Lorg/bouncycastle/asn1/g;

.field private if:Lorg/bouncycastle/asn1/v;

.field private new:Landroid/support/v4/w4;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/for;Lorg/bouncycastle/asn1/v;Lorg/bouncycastle/asn1/g;Landroid/support/v4/w4;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/wz0;->do:Lorg/bouncycastle/asn1/for;

    iput-object p2, p0, Landroid/support/v4/wz0;->if:Lorg/bouncycastle/asn1/v;

    iput-object p3, p0, Landroid/support/v4/wz0;->for:Lorg/bouncycastle/asn1/g;

    iput-object p4, p0, Landroid/support/v4/wz0;->new:Landroid/support/v4/w4;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/for;->const(Ljava/lang/Object;)Lorg/bouncycastle/asn1/for;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/wz0;->do:Lorg/bouncycastle/asn1/for;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/v;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/v;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/v;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/wz0;->if:Lorg/bouncycastle/asn1/v;

    const/4 v1, 0x2

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/g;

    if-eqz v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/g;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/g;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/wz0;->for:Lorg/bouncycastle/asn1/g;

    move v1, v0

    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/w4;->try(Ljava/lang/Object;)Landroid/support/v4/w4;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/wz0;->new:Landroid/support/v4/w4;

    :cond_2
    return-void
.end method

.method public static try(Ljava/lang/Object;)Landroid/support/v4/wz0;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/wz0;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/wz0;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/wz0;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/wz0;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public case()Lorg/bouncycastle/asn1/g;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/wz0;->for:Lorg/bouncycastle/asn1/g;

    return-object v0
.end method

.method public else()Landroid/support/v4/w4;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/wz0;->new:Landroid/support/v4/w4;

    return-object v0
.end method

.method public goto()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/wz0;->do:Lorg/bouncycastle/asn1/for;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/for;->throw()Z

    move-result v0

    return v0
.end method

.method public new()Lorg/bouncycastle/asn1/v;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/wz0;->if:Lorg/bouncycastle/asn1/v;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 2

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/wz0;->do:Lorg/bouncycastle/asn1/for;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/wz0;->if:Lorg/bouncycastle/asn1/v;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/wz0;->for:Lorg/bouncycastle/asn1/g;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-object v1, p0, Landroid/support/v4/wz0;->new:Landroid/support/v4/w4;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method
