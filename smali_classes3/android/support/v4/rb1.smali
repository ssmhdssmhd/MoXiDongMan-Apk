.class public Landroid/support/v4/rb1;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# static fields
.field private static final try:Ljava/math/BigInteger;


# instance fields
.field private do:I

.field private for:[I

.field private if:[I

.field private new:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Landroid/support/v4/rb1;->try:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(I[I[I[I)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput p1, p0, Landroid/support/v4/rb1;->do:I

    iput-object p2, p0, Landroid/support/v4/rb1;->if:[I

    iput-object p3, p0, Landroid/support/v4/rb1;->for:[I

    iput-object p4, p0, Landroid/support/v4/rb1;->new:[I

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/rb1;->new(Ljava/math/BigInteger;)I

    move-result v1

    iput v1, p0, Landroid/support/v4/rb1;->do:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/super;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/super;

    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/super;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v3

    iget v4, p0, Landroid/support/v4/rb1;->do:I

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v3

    iget v4, p0, Landroid/support/v4/rb1;->do:I

    if-ne v3, v4, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v3

    iget v4, p0, Landroid/support/v4/rb1;->do:I

    if-ne v3, v4, :cond_1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v3

    new-array v3, v3, [I

    iput-object v3, p0, Landroid/support/v4/rb1;->if:[I

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v3

    new-array v3, v3, [I

    iput-object v3, p0, Landroid/support/v4/rb1;->for:[I

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v3

    new-array v3, v3, [I

    iput-object v3, p0, Landroid/support/v4/rb1;->new:[I

    :goto_0
    iget v3, p0, Landroid/support/v4/rb1;->do:I

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Landroid/support/v4/rb1;->if:[I

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/rb1;->new(Ljava/math/BigInteger;)I

    move-result v4

    aput v4, v3, v0

    iget-object v3, p0, Landroid/support/v4/rb1;->for:[I

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/rb1;->new(Ljava/math/BigInteger;)I

    move-result v4

    aput v4, v3, v0

    iget-object v3, p0, Landroid/support/v4/rb1;->new:[I

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/rb1;->new(Ljava/math/BigInteger;)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid size of sequences"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sie of seqOfParams = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static case(Ljava/lang/Object;)Landroid/support/v4/rb1;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/rb1;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/rb1;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/rb1;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/rb1;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static new(Ljava/math/BigInteger;)I
    .locals 3

    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Landroid/support/v4/rb1;->try:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BigInteger not in Range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public else()[I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/rb1;->new:[I

    invoke-static {v0}, Landroid/support/v4/q3;->while([I)[I

    move-result-object v0

    return-object v0
.end method

.method public goto()I
    .locals 1

    iget v0, p0, Landroid/support/v4/rb1;->do:I

    return v0
.end method

.method public this()[I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/rb1;->for:[I

    invoke-static {v0}, Landroid/support/v4/q3;->while([I)[I

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 8

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    new-instance v1, Landroid/support/v4/import;

    invoke-direct {v1}, Landroid/support/v4/import;-><init>()V

    new-instance v2, Landroid/support/v4/import;

    invoke-direct {v2}, Landroid/support/v4/import;-><init>()V

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Landroid/support/v4/rb1;->if:[I

    array-length v5, v4

    if-ge v3, v5, :cond_0

    new-instance v5, Lorg/bouncycastle/asn1/goto;

    aget v4, v4, v3

    int-to-long v6, v4

    invoke-direct {v5, v6, v7}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    invoke-virtual {v0, v5}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v4, Lorg/bouncycastle/asn1/goto;

    iget-object v5, p0, Landroid/support/v4/rb1;->for:[I

    aget v5, v5, v3

    int-to-long v5, v5

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    invoke-virtual {v1, v4}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v4, Lorg/bouncycastle/asn1/goto;

    iget-object v5, p0, Landroid/support/v4/rb1;->new:[I

    aget v5, v5, v3

    int-to-long v5, v5

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    invoke-virtual {v2, v4}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/support/v4/import;

    invoke-direct {v3}, Landroid/support/v4/import;-><init>()V

    new-instance v4, Lorg/bouncycastle/asn1/goto;

    iget v5, p0, Landroid/support/v4/rb1;->do:I

    int-to-long v5, v5

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    invoke-virtual {v3, v4}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v4, Lorg/bouncycastle/asn1/n;

    invoke-direct {v4, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/n;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    invoke-virtual {v3, v0}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/n;

    invoke-direct {v0, v2}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    invoke-virtual {v3, v0}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/n;

    invoke-direct {v0, v3}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v0
.end method

.method public try()[I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/rb1;->if:[I

    invoke-static {v0}, Landroid/support/v4/q3;->while([I)[I

    move-result-object v0

    return-object v0
.end method
