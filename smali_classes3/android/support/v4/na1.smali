.class public Landroid/support/v4/na1;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private final do:[Landroid/support/v4/k42;

.field private final for:[Landroid/support/v4/m42;

.field private final if:[Landroid/support/v4/n42;

.field private final new:[Landroid/support/v4/v81;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/super;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v2

    new-array v2, v2, [Landroid/support/v4/k42;

    iput-object v2, p0, Landroid/support/v4/na1;->do:[Landroid/support/v4/k42;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroid/support/v4/na1;->do:[Landroid/support/v4/k42;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/k42;->else(Ljava/lang/Object;)Landroid/support/v4/k42;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/super;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v2

    new-array v2, v2, [Landroid/support/v4/n42;

    iput-object v2, p0, Landroid/support/v4/na1;->if:[Landroid/support/v4/n42;

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Landroid/support/v4/na1;->if:[Landroid/support/v4/n42;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/n42;->new(Ljava/lang/Object;)Landroid/support/v4/n42;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/super;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v2

    new-array v2, v2, [Landroid/support/v4/m42;

    iput-object v2, p0, Landroid/support/v4/na1;->for:[Landroid/support/v4/m42;

    const/4 v2, 0x0

    :goto_2
    iget-object v3, p0, Landroid/support/v4/na1;->for:[Landroid/support/v4/m42;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/m42;->case(Ljava/lang/Object;)Landroid/support/v4/m42;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/super;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v1

    new-array v1, v1, [Landroid/support/v4/v81;

    iput-object v1, p0, Landroid/support/v4/na1;->new:[Landroid/support/v4/v81;

    :goto_3
    iget-object v1, p0, Landroid/support/v4/na1;->new:[Landroid/support/v4/v81;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/v81;->try(Ljava/lang/Object;)Landroid/support/v4/v81;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Sequence not 4 elements."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public constructor <init>([Landroid/support/v4/k42;[Landroid/support/v4/n42;[Landroid/support/v4/m42;[Landroid/support/v4/v81;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-direct {p0, p1}, Landroid/support/v4/na1;->try([Landroid/support/v4/k42;)[Landroid/support/v4/k42;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/na1;->do:[Landroid/support/v4/k42;

    invoke-direct {p0, p2}, Landroid/support/v4/na1;->else([Landroid/support/v4/n42;)[Landroid/support/v4/n42;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/na1;->if:[Landroid/support/v4/n42;

    invoke-direct {p0, p3}, Landroid/support/v4/na1;->case([Landroid/support/v4/m42;)[Landroid/support/v4/m42;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/na1;->for:[Landroid/support/v4/m42;

    invoke-direct {p0, p4}, Landroid/support/v4/na1;->new([Landroid/support/v4/v81;)[Landroid/support/v4/v81;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/na1;->new:[Landroid/support/v4/v81;

    return-void
.end method

.method public static break(Ljava/lang/Object;)Landroid/support/v4/na1;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/na1;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/na1;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/na1;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/na1;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private case([Landroid/support/v4/m42;)[Landroid/support/v4/m42;
    .locals 3

    array-length v0, p1

    new-array v1, v0, [Landroid/support/v4/m42;

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private else([Landroid/support/v4/n42;)[Landroid/support/v4/n42;
    .locals 3

    array-length v0, p1

    new-array v1, v0, [Landroid/support/v4/n42;

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private new([Landroid/support/v4/v81;)[Landroid/support/v4/v81;
    .locals 3

    array-length v0, p1

    new-array v1, v0, [Landroid/support/v4/v81;

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private try([Landroid/support/v4/k42;)[Landroid/support/v4/k42;
    .locals 3

    array-length v0, p1

    new-array v1, v0, [Landroid/support/v4/k42;

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method


# virtual methods
.method public catch()[Landroid/support/v4/v81;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/na1;->new:[Landroid/support/v4/v81;

    invoke-direct {p0, v0}, Landroid/support/v4/na1;->new([Landroid/support/v4/v81;)[Landroid/support/v4/v81;

    move-result-object v0

    return-object v0
.end method

.method public class()[Landroid/support/v4/n42;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/na1;->if:[Landroid/support/v4/n42;

    invoke-direct {p0, v0}, Landroid/support/v4/na1;->else([Landroid/support/v4/n42;)[Landroid/support/v4/n42;

    move-result-object v0

    return-object v0
.end method

.method public goto()[Landroid/support/v4/m42;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/na1;->for:[Landroid/support/v4/m42;

    invoke-direct {p0, v0}, Landroid/support/v4/na1;->case([Landroid/support/v4/m42;)[Landroid/support/v4/m42;

    move-result-object v0

    return-object v0
.end method

.method public this()[Landroid/support/v4/k42;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/na1;->do:[Landroid/support/v4/k42;

    invoke-direct {p0, v0}, Landroid/support/v4/na1;->try([Landroid/support/v4/k42;)[Landroid/support/v4/k42;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/n;

    const/4 v1, 0x4

    new-array v1, v1, [Lorg/bouncycastle/asn1/ASN1Encodable;

    new-instance v2, Lorg/bouncycastle/asn1/n;

    iget-object v3, p0, Landroid/support/v4/na1;->do:[Landroid/support/v4/k42;

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/n;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/asn1/n;

    iget-object v3, p0, Landroid/support/v4/na1;->if:[Landroid/support/v4/n42;

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/n;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/asn1/n;

    iget-object v3, p0, Landroid/support/v4/na1;->for:[Landroid/support/v4/m42;

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/n;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v2, Lorg/bouncycastle/asn1/n;

    iget-object v3, p0, Landroid/support/v4/na1;->new:[Landroid/support/v4/v81;

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/n;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/n;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
