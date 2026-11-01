.class public Landroid/support/v4/n70;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private final do:Landroid/support/v4/o70;

.field private final if:[Landroid/support/v4/rg;


# direct methods
.method public constructor <init>(Landroid/support/v4/o70;[Landroid/support/v4/rg;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/n70;->do:Landroid/support/v4/o70;

    array-length p1, p2

    new-array p1, p1, [Landroid/support/v4/rg;

    iput-object p1, p0, Landroid/support/v4/n70;->if:[Landroid/support/v4/rg;

    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/o70;->case(Ljava/lang/Object;)Landroid/support/v4/o70;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/n70;->do:Landroid/support/v4/o70;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v1

    new-array v1, v1, [Landroid/support/v4/rg;

    iput-object v1, p0, Landroid/support/v4/n70;->if:[Landroid/support/v4/rg;

    :goto_0
    iget-object v1, p0, Landroid/support/v4/n70;->if:[Landroid/support/v4/rg;

    array-length v2, v1

    if-eq v0, v2, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/rg;->try(Ljava/lang/Object;)Landroid/support/v4/rg;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static case(Ljava/lang/Object;)Landroid/support/v4/n70;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/n70;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/n70;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/n70;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/n70;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public new()[Landroid/support/v4/rg;
    .locals 4

    iget-object v0, p0, Landroid/support/v4/n70;->if:[Landroid/support/v4/rg;

    array-length v1, v0

    new-array v1, v1, [Landroid/support/v4/rg;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 3

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/n70;->do:Landroid/support/v4/o70;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/n;

    iget-object v2, p0, Landroid/support/v4/n70;->if:[Landroid/support/v4/rg;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/n;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Landroid/support/v4/o70;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/n70;->do:Landroid/support/v4/o70;

    return-object v0
.end method
