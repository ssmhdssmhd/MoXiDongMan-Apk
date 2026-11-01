.class public Landroid/support/v4/tr0;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/icao/ICAOObjectIdentifiers;


# static fields
.field public static final try:I = 0x10


# instance fields
.field private do:Lorg/bouncycastle/asn1/goto;

.field private for:[Landroid/support/v4/sw;

.field private if:Landroid/support/v4/b1;

.field private new:Landroid/support/v4/ur0;


# direct methods
.method public constructor <init>(Landroid/support/v4/b1;[Landroid/support/v4/sw;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/goto;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    iput-object v0, p0, Landroid/support/v4/tr0;->do:Lorg/bouncycastle/asn1/goto;

    new-instance v0, Lorg/bouncycastle/asn1/goto;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    iput-object v0, p0, Landroid/support/v4/tr0;->do:Lorg/bouncycastle/asn1/goto;

    iput-object p1, p0, Landroid/support/v4/tr0;->if:Landroid/support/v4/b1;

    invoke-direct {p0, p2}, Landroid/support/v4/tr0;->try([Landroid/support/v4/sw;)[Landroid/support/v4/sw;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/tr0;->for:[Landroid/support/v4/sw;

    array-length p1, p2

    invoke-direct {p0, p1}, Landroid/support/v4/tr0;->new(I)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/b1;[Landroid/support/v4/sw;Landroid/support/v4/ur0;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/goto;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    iput-object v0, p0, Landroid/support/v4/tr0;->do:Lorg/bouncycastle/asn1/goto;

    new-instance v0, Lorg/bouncycastle/asn1/goto;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    iput-object v0, p0, Landroid/support/v4/tr0;->do:Lorg/bouncycastle/asn1/goto;

    iput-object p1, p0, Landroid/support/v4/tr0;->if:Landroid/support/v4/b1;

    invoke-direct {p0, p2}, Landroid/support/v4/tr0;->try([Landroid/support/v4/sw;)[Landroid/support/v4/sw;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/tr0;->for:[Landroid/support/v4/sw;

    iput-object p3, p0, Landroid/support/v4/tr0;->new:Landroid/support/v4/ur0;

    array-length p1, p2

    invoke-direct {p0, p1}, Landroid/support/v4/tr0;->new(I)V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/goto;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    iput-object v0, p0, Landroid/support/v4/tr0;->do:Lorg/bouncycastle/asn1/goto;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->super()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/tr0;->do:Lorg/bouncycastle/asn1/goto;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/b1;->try(Ljava/lang/Object;)Landroid/support/v4/b1;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/tr0;->if:Landroid/support/v4/b1;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/tr0;->do:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/ur0;->new(Ljava/lang/Object;)Landroid/support/v4/ur0;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/tr0;->new:Landroid/support/v4/ur0;

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/super;->size()I

    move-result p1

    invoke-direct {p0, p1}, Landroid/support/v4/tr0;->new(I)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/super;->size()I

    move-result p1

    new-array p1, p1, [Landroid/support/v4/sw;

    iput-object p1, p0, Landroid/support/v4/tr0;->for:[Landroid/support/v4/sw;

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/tr0;->for:[Landroid/support/v4/sw;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/sw;->case(Ljava/lang/Object;)Landroid/support/v4/sw;

    move-result-object v2

    aput-object v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null or empty sequence passed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public static goto(Ljava/lang/Object;)Landroid/support/v4/tr0;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/tr0;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/tr0;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/tr0;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/tr0;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private new(I)V
    .locals 1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/16 v0, 0x10

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "wrong size in DataGroupHashValues : not in (2..16)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private try([Landroid/support/v4/sw;)[Landroid/support/v4/sw;
    .locals 3

    array-length v0, p1

    new-array v1, v0, [Landroid/support/v4/sw;

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method


# virtual methods
.method public break()Landroid/support/v4/ur0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/tr0;->new:Landroid/support/v4/ur0;

    return-object v0
.end method

.method public case()[Landroid/support/v4/sw;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/tr0;->for:[Landroid/support/v4/sw;

    invoke-direct {p0, v0}, Landroid/support/v4/tr0;->try([Landroid/support/v4/sw;)[Landroid/support/v4/sw;

    move-result-object v0

    return-object v0
.end method

.method public else()Landroid/support/v4/b1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/tr0;->if:Landroid/support/v4/b1;

    return-object v0
.end method

.method public this()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/tr0;->do:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 5

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/tr0;->do:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/tr0;->if:Landroid/support/v4/b1;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Landroid/support/v4/import;

    invoke-direct {v1}, Landroid/support/v4/import;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroid/support/v4/tr0;->for:[Landroid/support/v4/sw;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/bouncycastle/asn1/n;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/tr0;->new:Landroid/support/v4/ur0;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method
