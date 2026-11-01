.class public Landroid/support/v4/vg1;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private final do:Lorg/bouncycastle/asn1/goto;

.field private final for:Lorg/bouncycastle/asn1/super;

.field private final if:Landroid/support/v4/b1;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Landroid/support/v4/b1;[[B)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/goto;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/goto;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Landroid/support/v4/vg1;->do:Lorg/bouncycastle/asn1/goto;

    iput-object p2, p0, Landroid/support/v4/vg1;->if:Landroid/support/v4/b1;

    new-instance p1, Landroid/support/v4/import;

    invoke-direct {p1}, Landroid/support/v4/import;-><init>()V

    const/4 p2, 0x0

    :goto_0
    array-length v0, p3

    if-eq p2, v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/j;

    aget-object v1, p3, p2

    invoke-static {v1}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    invoke-virtual {p1, v0}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/bouncycastle/asn1/n;

    invoke-direct {p2, p1}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    iput-object p2, p0, Landroid/support/v4/vg1;->for:Lorg/bouncycastle/asn1/super;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/vg1;->do:Lorg/bouncycastle/asn1/goto;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/b1;->try(Ljava/lang/Object;)Landroid/support/v4/b1;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/vg1;->if:Landroid/support/v4/b1;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/vg1;->for:Lorg/bouncycastle/asn1/super;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "incorrect sequence size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static case(Ljava/lang/Object;)Landroid/support/v4/vg1;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/vg1;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/vg1;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/vg1;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/vg1;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public else()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/vg1;->do:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public new()[[B
    .locals 4

    iget-object v0, p0, Landroid/support/v4/vg1;->for:Lorg/bouncycastle/asn1/super;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    new-array v1, v0, [[B

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    iget-object v3, p0, Landroid/support/v4/vg1;->for:Lorg/bouncycastle/asn1/super;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/class;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/class;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 2

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/vg1;->do:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/vg1;->if:Landroid/support/v4/b1;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/vg1;->for:Lorg/bouncycastle/asn1/super;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Landroid/support/v4/b1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/vg1;->if:Landroid/support/v4/b1;

    return-object v0
.end method
