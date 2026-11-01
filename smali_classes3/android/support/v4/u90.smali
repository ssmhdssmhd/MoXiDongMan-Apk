.class public Landroid/support/v4/u90;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field public do:Ljava/util/Hashtable;

.field public if:Lorg/bouncycastle/asn1/super;


# direct methods
.method public constructor <init>(Landroid/support/v4/hr0;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid/support/v4/u90;->do:Ljava/util/Hashtable;

    new-instance v0, Lorg/bouncycastle/asn1/n;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/n;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Landroid/support/v4/u90;->if:Lorg/bouncycastle/asn1/super;

    iget-object v0, p0, Landroid/support/v4/u90;->do:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid/support/v4/u90;->do:Ljava/util/Hashtable;

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    invoke-virtual {p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/hr0;->try(Ljava/lang/Object;)Landroid/support/v4/hr0;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v2, p0, Landroid/support/v4/u90;->do:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/asn1/n;

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    iput-object p1, p0, Landroid/support/v4/u90;->if:Lorg/bouncycastle/asn1/super;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid/support/v4/u90;->do:Ljava/util/Hashtable;

    iput-object p1, p0, Landroid/support/v4/u90;->if:Lorg/bouncycastle/asn1/super;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->super()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/catch;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/u90;->do:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only ASN1ObjectIdentifiers allowed in ExtendedKeyUsage."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method public constructor <init>([Landroid/support/v4/hr0;)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid/support/v4/u90;->do:Ljava/util/Hashtable;

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v2, p0, Landroid/support/v4/u90;->do:Ljava/util/Hashtable;

    aget-object v3, p1, v1

    aget-object v4, p1, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/asn1/n;

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    iput-object p1, p0, Landroid/support/v4/u90;->if:Lorg/bouncycastle/asn1/super;

    return-void
.end method

.method public static case(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/u90;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/u90;->try(Ljava/lang/Object;)Landroid/support/v4/u90;

    move-result-object p0

    return-object p0
.end method

.method public static new(Landroid/support/v4/y90;)Landroid/support/v4/u90;
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/x509/if;->throws:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {p0, v0}, Landroid/support/v4/y90;->this(Lorg/bouncycastle/asn1/catch;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v4/u90;->try(Ljava/lang/Object;)Landroid/support/v4/u90;

    move-result-object p0

    return-object p0
.end method

.method public static try(Ljava/lang/Object;)Landroid/support/v4/u90;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/u90;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/u90;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/u90;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/u90;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public else()[Landroid/support/v4/hr0;
    .locals 5

    iget-object v0, p0, Landroid/support/v4/u90;->if:Lorg/bouncycastle/asn1/super;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    new-array v0, v0, [Landroid/support/v4/hr0;

    iget-object v1, p0, Landroid/support/v4/u90;->if:Lorg/bouncycastle/asn1/super;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/super;->super()Ljava/util/Enumeration;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/hr0;->try(Ljava/lang/Object;)Landroid/support/v4/hr0;

    move-result-object v4

    aput-object v4, v0, v2

    move v2, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public goto(Landroid/support/v4/hr0;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/u90;->do:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/u90;->do:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/u90;->if:Lorg/bouncycastle/asn1/super;

    return-object v0
.end method
