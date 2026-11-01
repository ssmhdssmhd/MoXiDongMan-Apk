.class public Landroid/support/v4/db1;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final case:I = 0x3

.field public static final else:I = 0x4

.field public static final for:I = 0x0

.field public static final new:I = 0x1

.field public static final try:I = 0x2


# instance fields
.field private do:I

.field private if:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Landroid/support/v4/ab1;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Landroid/support/v4/db1;->do:I

    iput-object p1, p0, Landroid/support/v4/db1;->if:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/e32;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/db1;->do:I

    iput-object p1, p0, Landroid/support/v4/db1;->if:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/import;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v0

    iput v0, p0, Landroid/support/v4/db1;->do:I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    invoke-static {p1, v1}, Landroid/support/v4/b80;->else(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/b80;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown tag in POPOPrivKey"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1, v1}, Landroid/support/v4/ab1;->case(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/ab1;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/goto;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/goto;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/support/v4/e32;->throw(I)Landroid/support/v4/e32;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-static {p1, v1}, Lorg/bouncycastle/asn1/instanceof;->return(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/instanceof;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroid/support/v4/db1;->if:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public static new(Ljava/lang/Object;)Landroid/support/v4/db1;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/db1;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/db1;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/db1;

    invoke-static {p0}, Lorg/bouncycastle/asn1/import;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/import;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/db1;-><init>(Lorg/bouncycastle/asn1/import;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static try(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/db1;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/import;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/import;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/db1;->new(Ljava/lang/Object;)Landroid/support/v4/db1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public case()I
    .locals 1

    iget v0, p0, Landroid/support/v4/db1;->do:I

    return v0
.end method

.method public else()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/db1;->if:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/u;

    iget v1, p0, Landroid/support/v4/db1;->do:I

    iget-object v2, p0, Landroid/support/v4/db1;->if:Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
