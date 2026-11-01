.class public Landroid/support/v4/b21;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:[Landroid/support/v4/wg0;

.field private if:[Landroid/support/v4/wg0;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->super()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/import;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/import;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/b21;->try(Lorg/bouncycastle/asn1/super;)[Landroid/support/v4/wg0;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/b21;->if:[Landroid/support/v4/wg0;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown tag encountered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v4/b21;->try(Lorg/bouncycastle/asn1/super;)[Landroid/support/v4/wg0;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/b21;->do:[Landroid/support/v4/wg0;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public constructor <init>([Landroid/support/v4/wg0;[Landroid/support/v4/wg0;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-static {p1}, Landroid/support/v4/b21;->new([Landroid/support/v4/wg0;)[Landroid/support/v4/wg0;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/b21;->do:[Landroid/support/v4/wg0;

    invoke-static {p2}, Landroid/support/v4/b21;->new([Landroid/support/v4/wg0;)[Landroid/support/v4/wg0;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/b21;->if:[Landroid/support/v4/wg0;

    return-void
.end method

.method public static else(Ljava/lang/Object;)Landroid/support/v4/b21;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/b21;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/b21;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/b21;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/b21;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static new([Landroid/support/v4/wg0;)[Landroid/support/v4/wg0;
    .locals 3

    if-eqz p0, :cond_0

    array-length v0, p0

    new-array v1, v0, [Landroid/support/v4/wg0;

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private try(Lorg/bouncycastle/asn1/super;)[Landroid/support/v4/wg0;
    .locals 4

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    new-array v1, v0, [Landroid/support/v4/wg0;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/wg0;->try(Ljava/lang/Object;)Landroid/support/v4/wg0;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public case()[Landroid/support/v4/wg0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b21;->if:[Landroid/support/v4/wg0;

    invoke-static {v0}, Landroid/support/v4/b21;->new([Landroid/support/v4/wg0;)[Landroid/support/v4/wg0;

    move-result-object v0

    return-object v0
.end method

.method public goto()[Landroid/support/v4/wg0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b21;->do:[Landroid/support/v4/wg0;

    invoke-static {v0}, Landroid/support/v4/b21;->new([Landroid/support/v4/wg0;)[Landroid/support/v4/wg0;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 6

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/b21;->do:[Landroid/support/v4/wg0;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/u;

    new-instance v3, Lorg/bouncycastle/asn1/n;

    iget-object v4, p0, Landroid/support/v4/b21;->do:[Landroid/support/v4/wg0;

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/n;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v1, v2, v2, v3}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/b21;->if:[Landroid/support/v4/wg0;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/u;

    const/4 v3, 0x1

    new-instance v4, Lorg/bouncycastle/asn1/n;

    iget-object v5, p0, Landroid/support/v4/b21;->if:[Landroid/support/v4/wg0;

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/n;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method
