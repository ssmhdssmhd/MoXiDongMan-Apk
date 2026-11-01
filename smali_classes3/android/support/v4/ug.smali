.class public Landroid/support/v4/ug;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private final do:[Landroid/support/v4/fe1;


# direct methods
.method public constructor <init>(Landroid/support/v4/fe1;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/support/v4/fe1;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Landroid/support/v4/ug;->do:[Landroid/support/v4/fe1;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    new-array v0, v0, [Landroid/support/v4/fe1;

    iput-object v0, p0, Landroid/support/v4/ug;->do:[Landroid/support/v4/fe1;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/ug;->do:[Landroid/support/v4/fe1;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/fe1;->new(Ljava/lang/Object;)Landroid/support/v4/fe1;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>([Landroid/support/v4/fe1;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-direct {p0, p1}, Landroid/support/v4/ug;->new([Landroid/support/v4/fe1;)[Landroid/support/v4/fe1;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/ug;->do:[Landroid/support/v4/fe1;

    return-void
.end method

.method public static case(Ljava/lang/Object;)Landroid/support/v4/ug;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/ug;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/ug;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/ug;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/ug;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static else(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/ug;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/ug;->case(Ljava/lang/Object;)Landroid/support/v4/ug;

    move-result-object p0

    return-object p0
.end method

.method private new([Landroid/support/v4/fe1;)[Landroid/support/v4/fe1;
    .locals 3

    array-length v0, p1

    new-array v0, v0, [Landroid/support/v4/fe1;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static try(Landroid/support/v4/y90;)Landroid/support/v4/ug;
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/x509/if;->public:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {p0, v0}, Landroid/support/v4/y90;->this(Lorg/bouncycastle/asn1/catch;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/ug;->case(Ljava/lang/Object;)Landroid/support/v4/ug;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public goto(Lorg/bouncycastle/asn1/catch;)Landroid/support/v4/fe1;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v4/ug;->do:[Landroid/support/v4/fe1;

    array-length v2, v1

    if-eq v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/support/v4/fe1;->try()Lorg/bouncycastle/asn1/catch;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Landroid/support/v4/ug;->do:[Landroid/support/v4/fe1;

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public this()[Landroid/support/v4/fe1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ug;->do:[Landroid/support/v4/fe1;

    invoke-direct {p0, v0}, Landroid/support/v4/ug;->new([Landroid/support/v4/fe1;)[Landroid/support/v4/fe1;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/n;

    iget-object v1, p0, Landroid/support/v4/ug;->do:[Landroid/support/v4/fe1;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/n;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/support/v4/ug;->do:[Landroid/support/v4/fe1;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v2, p0, Landroid/support/v4/ug;->do:[Landroid/support/v4/fe1;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CertificatePolicies: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
