.class public Landroid/support/v4/ug0;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private final do:[Landroid/support/v4/tg0;


# direct methods
.method public constructor <init>(Landroid/support/v4/tg0;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/support/v4/tg0;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Landroid/support/v4/ug0;->do:[Landroid/support/v4/tg0;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    new-array v0, v0, [Landroid/support/v4/tg0;

    iput-object v0, p0, Landroid/support/v4/ug0;->do:[Landroid/support/v4/tg0;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/ug0;->do:[Landroid/support/v4/tg0;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/tg0;->try(Ljava/lang/Object;)Landroid/support/v4/tg0;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>([Landroid/support/v4/tg0;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-direct {p0, p1}, Landroid/support/v4/ug0;->new([Landroid/support/v4/tg0;)[Landroid/support/v4/tg0;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/ug0;->do:[Landroid/support/v4/tg0;

    return-void
.end method

.method public static case(Ljava/lang/Object;)Landroid/support/v4/ug0;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/ug0;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/ug0;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/ug0;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/ug0;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static else(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/ug0;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/ug0;->case(Ljava/lang/Object;)Landroid/support/v4/ug0;

    move-result-object p0

    return-object p0
.end method

.method private new([Landroid/support/v4/tg0;)[Landroid/support/v4/tg0;
    .locals 3

    array-length v0, p1

    new-array v1, v0, [Landroid/support/v4/tg0;

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static try(Landroid/support/v4/y90;Lorg/bouncycastle/asn1/catch;)Landroid/support/v4/ug0;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/v4/y90;->this(Lorg/bouncycastle/asn1/catch;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/ug0;->case(Ljava/lang/Object;)Landroid/support/v4/ug0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public goto()[Landroid/support/v4/tg0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ug0;->do:[Landroid/support/v4/tg0;

    invoke-direct {p0, v0}, Landroid/support/v4/ug0;->new([Landroid/support/v4/tg0;)[Landroid/support/v4/tg0;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/n;

    iget-object v1, p0, Landroid/support/v4/ug0;->do:[Landroid/support/v4/tg0;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/n;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lorg/bouncycastle/util/for;->new()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GeneralNames:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroid/support/v4/ug0;->do:[Landroid/support/v4/tg0;

    array-length v3, v3

    if-eq v2, v3, :cond_0

    const-string v3, "    "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Landroid/support/v4/ug0;->do:[Landroid/support/v4/tg0;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
