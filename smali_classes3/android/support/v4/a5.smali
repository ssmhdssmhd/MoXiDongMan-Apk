.class public Landroid/support/v4/a5;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:[Landroid/support/v4/er;

.field private if:Z


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/a5;->if:Z

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    new-array v0, v0, [Landroid/support/v4/er;

    iput-object v0, p0, Landroid/support/v4/a5;->do:[Landroid/support/v4/er;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v4/a5;->do:[Landroid/support/v4/er;

    array-length v2, v1

    if-eq v0, v2, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/er;->case(Ljava/lang/Object;)Landroid/support/v4/er;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    instance-of p1, p1, Lorg/bouncycastle/asn1/package;

    iput-boolean p1, p0, Landroid/support/v4/a5;->if:Z

    return-void
.end method

.method public constructor <init>([Landroid/support/v4/er;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/a5;->if:Z

    invoke-direct {p0, p1}, Landroid/support/v4/a5;->new([Landroid/support/v4/er;)[Landroid/support/v4/er;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/a5;->do:[Landroid/support/v4/er;

    return-void
.end method

.method public static case(Ljava/lang/Object;)Landroid/support/v4/a5;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/a5;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/a5;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/a5;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/a5;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private new([Landroid/support/v4/er;)[Landroid/support/v4/er;
    .locals 3

    array-length v0, p1

    new-array v1, v0, [Landroid/support/v4/er;

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 4

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/support/v4/a5;->do:[Landroid/support/v4/er;

    array-length v3, v2

    if-eq v1, v3, :cond_0

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Landroid/support/v4/a5;->if:Z

    if-eqz v1, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/package;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/package;-><init>(Landroid/support/v4/import;)V

    return-object v1

    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/d0;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/d0;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()[Landroid/support/v4/er;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/a5;->do:[Landroid/support/v4/er;

    invoke-direct {p0, v0}, Landroid/support/v4/a5;->new([Landroid/support/v4/er;)[Landroid/support/v4/er;

    move-result-object v0

    return-object v0
.end method
