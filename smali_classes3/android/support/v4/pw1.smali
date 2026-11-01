.class public Landroid/support/v4/pw1;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private do:Lorg/bouncycastle/asn1/catch;

.field private if:[Landroid/support/v4/tg0;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/catch;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/pw1;->do:Lorg/bouncycastle/asn1/catch;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/pw1;->if:[Landroid/support/v4/tg0;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/catch;[Landroid/support/v4/tg0;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/pw1;->do:Lorg/bouncycastle/asn1/catch;

    invoke-static {p2}, Landroid/support/v4/pw1;->new([Landroid/support/v4/tg0;)[Landroid/support/v4/tg0;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/pw1;->if:[Landroid/support/v4/tg0;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->super()Ljava/util/Enumeration;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result p1

    const/4 v1, 0x1

    if-lt p1, v1, :cond_3

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lorg/bouncycastle/asn1/catch;

    if-eqz v1, :cond_1

    invoke-static {p1}, Lorg/bouncycastle/asn1/catch;->throw(Ljava/lang/Object;)Lorg/bouncycastle/asn1/catch;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/pw1;->do:Lorg/bouncycastle/asn1/catch;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    invoke-static {p1}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    new-array v0, v0, [Landroid/support/v4/tg0;

    iput-object v0, p0, Landroid/support/v4/pw1;->if:[Landroid/support/v4/tg0;

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/pw1;->if:[Landroid/support/v4/tg0;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/tg0;->try(Ljava/lang/Object;)Landroid/support/v4/tg0;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "no objects in SemanticsInformation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public constructor <init>([Landroid/support/v4/tg0;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/pw1;->do:Lorg/bouncycastle/asn1/catch;

    invoke-static {p1}, Landroid/support/v4/pw1;->new([Landroid/support/v4/tg0;)[Landroid/support/v4/tg0;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/pw1;->if:[Landroid/support/v4/tg0;

    return-void
.end method

.method private static new([Landroid/support/v4/tg0;)[Landroid/support/v4/tg0;
    .locals 3

    if-eqz p0, :cond_0

    array-length v0, p0

    new-array v0, v0, [Landroid/support/v4/tg0;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static try(Ljava/lang/Object;)Landroid/support/v4/pw1;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/pw1;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/pw1;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/pw1;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/pw1;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public case()[Landroid/support/v4/tg0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/pw1;->if:[Landroid/support/v4/tg0;

    invoke-static {v0}, Landroid/support/v4/pw1;->new([Landroid/support/v4/tg0;)[Landroid/support/v4/tg0;

    move-result-object v0

    return-object v0
.end method

.method public else()Lorg/bouncycastle/asn1/catch;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/pw1;->do:Lorg/bouncycastle/asn1/catch;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 5

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/pw1;->do:Lorg/bouncycastle/asn1/catch;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/pw1;->if:[Landroid/support/v4/tg0;

    if-eqz v1, :cond_2

    new-instance v1, Landroid/support/v4/import;

    invoke-direct {v1}, Landroid/support/v4/import;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroid/support/v4/pw1;->if:[Landroid/support/v4/tg0;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Lorg/bouncycastle/asn1/n;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method
