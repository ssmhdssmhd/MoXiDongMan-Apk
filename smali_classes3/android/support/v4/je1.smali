.class public Landroid/support/v4/je1;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:[Lorg/bouncycastle/asn1/goto;

.field private for:[Landroid/support/v4/pa1;

.field private if:[Lorg/bouncycastle/asn1/goto;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/goto;Lorg/bouncycastle/asn1/goto;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/je1;-><init>(Lorg/bouncycastle/asn1/goto;Lorg/bouncycastle/asn1/goto;Landroid/support/v4/pa1;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/goto;Lorg/bouncycastle/asn1/goto;Landroid/support/v4/pa1;)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [Lorg/bouncycastle/asn1/goto;

    iput-object v1, p0, Landroid/support/v4/je1;->do:[Lorg/bouncycastle/asn1/goto;

    new-array v2, v0, [Lorg/bouncycastle/asn1/goto;

    iput-object v2, p0, Landroid/support/v4/je1;->if:[Lorg/bouncycastle/asn1/goto;

    new-array v0, v0, [Landroid/support/v4/pa1;

    iput-object v0, p0, Landroid/support/v4/je1;->for:[Landroid/support/v4/pa1;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    aput-object p2, v2, v3

    aput-object p3, v0, v3

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/goto;

    iput-object v0, p0, Landroid/support/v4/je1;->do:[Lorg/bouncycastle/asn1/goto;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/goto;

    iput-object v0, p0, Landroid/support/v4/je1;->if:[Lorg/bouncycastle/asn1/goto;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    new-array v0, v0, [Landroid/support/v4/pa1;

    iput-object v0, p0, Landroid/support/v4/je1;->for:[Landroid/support/v4/pa1;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/je1;->do:[Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v3, p0, Landroid/support/v4/je1;->if:[Lorg/bouncycastle/asn1/goto;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    iget-object v3, p0, Landroid/support/v4/je1;->for:[Landroid/support/v4/pa1;

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/pa1;->new(Ljava/lang/Object;)Landroid/support/v4/pa1;

    move-result-object v2

    aput-object v2, v3, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static case(Ljava/lang/Object;)Landroid/support/v4/je1;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/je1;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/je1;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/je1;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/je1;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public else(I)Landroid/support/v4/pa1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/je1;->for:[Landroid/support/v4/pa1;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public new(I)Lorg/bouncycastle/asn1/goto;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/je1;->do:[Lorg/bouncycastle/asn1/goto;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/je1;->do:[Lorg/bouncycastle/asn1/goto;

    array-length v0, v0

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 5

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/support/v4/je1;->do:[Lorg/bouncycastle/asn1/goto;

    array-length v2, v2

    if-eq v1, v2, :cond_1

    new-instance v2, Landroid/support/v4/import;

    invoke-direct {v2}, Landroid/support/v4/import;-><init>()V

    iget-object v3, p0, Landroid/support/v4/je1;->do:[Lorg/bouncycastle/asn1/goto;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v3, p0, Landroid/support/v4/je1;->if:[Lorg/bouncycastle/asn1/goto;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v3, p0, Landroid/support/v4/je1;->for:[Landroid/support/v4/pa1;

    aget-object v4, v3, v1

    if-eqz v4, :cond_0

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    new-instance v3, Lorg/bouncycastle/asn1/n;

    invoke-direct {v3, v2}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    invoke-virtual {v0, v3}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try(I)Lorg/bouncycastle/asn1/goto;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/je1;->if:[Lorg/bouncycastle/asn1/goto;

    aget-object p1, v0, p1

    return-object p1
.end method
