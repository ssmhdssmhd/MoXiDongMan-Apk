.class public Landroid/support/v4/rl0;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# static fields
.field public static final case:I = 0x3

.field public static final new:I = 0x1

.field public static final try:I = 0x2


# instance fields
.field public do:Landroid/support/v4/ug0;

.field public for:I

.field public if:Ljava/util/Vector;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/rl0;->do:Landroid/support/v4/ug0;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/support/v4/rl0;->if:Ljava/util/Vector;

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/rl0;->for:I

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/import;

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/import;

    invoke-static {v1, v0}, Landroid/support/v4/ug0;->else(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/ug0;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/support/v4/rl0;->do:Landroid/support/v4/ug0;

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v1

    if-ne v1, v2, :cond_1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/ug0;->case(Ljava/lang/Object;)Landroid/support/v4/ug0;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/super;

    if-eqz v1, :cond_8

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/super;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->super()Ljava/util/Enumeration;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/final;

    instance-of v1, v0, Lorg/bouncycastle/asn1/catch;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    goto :goto_3

    :cond_2
    instance-of v1, v0, Lorg/bouncycastle/asn1/v;

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    goto :goto_3

    :cond_3
    instance-of v1, v0, Lorg/bouncycastle/asn1/j;

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    :goto_3
    iget v4, p0, Landroid/support/v4/rl0;->for:I

    if-gez v4, :cond_4

    iput v1, p0, Landroid/support/v4/rl0;->for:I

    :cond_4
    iget v4, p0, Landroid/support/v4/rl0;->for:I

    if-ne v1, v4, :cond_5

    iget-object v1, p0, Landroid/support/v4/rl0;->if:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Mix of value types in IetfAttrSyntax"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad value type encoding IetfAttrSyntax"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Non-IetfAttrSyntax encoding"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public static new(Ljava/lang/Object;)Landroid/support/v4/rl0;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/rl0;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/rl0;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/rl0;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/rl0;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public case()I
    .locals 1

    iget v0, p0, Landroid/support/v4/rl0;->for:I

    return v0
.end method

.method public else()[Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Landroid/support/v4/rl0;->case()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroid/support/v4/rl0;->if:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v2, v0, [Lorg/bouncycastle/asn1/class;

    :goto_0
    if-eq v1, v0, :cond_0

    iget-object v3, p0, Landroid/support/v4/rl0;->if:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/class;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/rl0;->case()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Landroid/support/v4/rl0;->if:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v2, v0, [Lorg/bouncycastle/asn1/catch;

    :goto_1
    if-eq v1, v0, :cond_2

    iget-object v3, p0, Landroid/support/v4/rl0;->if:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/catch;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v2

    :cond_3
    iget-object v0, p0, Landroid/support/v4/rl0;->if:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v2, v0, [Lorg/bouncycastle/asn1/v;

    :goto_2
    if-eq v1, v0, :cond_4

    iget-object v3, p0, Landroid/support/v4/rl0;->if:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/v;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-object v2
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 4

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/rl0;->do:Landroid/support/v4/ug0;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/u;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/v4/rl0;->do:Landroid/support/v4/ug0;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/u;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    new-instance v1, Landroid/support/v4/import;

    invoke-direct {v1}, Landroid/support/v4/import;-><init>()V

    iget-object v2, p0, Landroid/support/v4/rl0;->if:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v1, v3}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_1
    new-instance v2, Lorg/bouncycastle/asn1/n;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Landroid/support/v4/ug0;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/rl0;->do:Landroid/support/v4/ug0;

    return-object v0
.end method
