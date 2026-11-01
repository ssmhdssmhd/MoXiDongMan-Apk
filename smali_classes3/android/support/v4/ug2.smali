.class public Landroid/support/v4/ug2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private do:Lorg/bouncycastle/asn1/x500/X500NameStyle;

.field private if:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Landroid/support/v4/j6;->b:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    invoke-direct {p0, v0}, Landroid/support/v4/ug2;-><init>(Lorg/bouncycastle/asn1/x500/X500NameStyle;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x500/X500NameStyle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/support/v4/ug2;->if:Ljava/util/Vector;

    iput-object p1, p0, Landroid/support/v4/ug2;->do:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    return-void
.end method


# virtual methods
.method public case(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)Landroid/support/v4/ug2;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/ug2;->if:Ljava/util/Vector;

    new-instance v1, Landroid/support/v4/oj1;

    invoke-direct {v1, p1, p2}, Landroid/support/v4/oj1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object p0
.end method

.method public do([Landroid/support/v4/u4;)Landroid/support/v4/ug2;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/ug2;->if:Ljava/util/Vector;

    new-instance v1, Landroid/support/v4/oj1;

    invoke-direct {v1, p1}, Landroid/support/v4/oj1;-><init>([Landroid/support/v4/u4;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object p0
.end method

.method public else()Landroid/support/v4/tg2;
    .locals 4

    iget-object v0, p0, Landroid/support/v4/ug2;->if:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v1, v0, [Landroid/support/v4/oj1;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    iget-object v3, p0, Landroid/support/v4/ug2;->if:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/oj1;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/support/v4/tg2;

    iget-object v2, p0, Landroid/support/v4/ug2;->do:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    invoke-direct {v0, v2, v1}, Landroid/support/v4/tg2;-><init>(Lorg/bouncycastle/asn1/x500/X500NameStyle;[Landroid/support/v4/oj1;)V

    return-object v0
.end method

.method public for([Lorg/bouncycastle/asn1/catch;[Lorg/bouncycastle/asn1/ASN1Encodable;)Landroid/support/v4/ug2;
    .locals 5

    array-length v0, p1

    new-array v0, v0, [Landroid/support/v4/u4;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_0

    new-instance v2, Landroid/support/v4/u4;

    aget-object v3, p1, v1

    aget-object v4, p2, v1

    invoke-direct {v2, v3, v4}, Landroid/support/v4/u4;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v4/ug2;->do([Landroid/support/v4/u4;)Landroid/support/v4/ug2;

    move-result-object p1

    return-object p1
.end method

.method public if([Lorg/bouncycastle/asn1/catch;[Ljava/lang/String;)Landroid/support/v4/ug2;
    .locals 6

    array-length v0, p2

    new-array v1, v0, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    iget-object v3, p0, Landroid/support/v4/ug2;->do:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    aget-object v4, p1, v2

    aget-object v5, p2, v2

    invoke-interface {v3, v4, v5}, Lorg/bouncycastle/asn1/x500/X500NameStyle;->stringToValue(Lorg/bouncycastle/asn1/catch;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v1}, Landroid/support/v4/ug2;->for([Lorg/bouncycastle/asn1/catch;[Lorg/bouncycastle/asn1/ASN1Encodable;)Landroid/support/v4/ug2;

    move-result-object p1

    return-object p1
.end method

.method public new(Landroid/support/v4/u4;)Landroid/support/v4/ug2;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/ug2;->if:Ljava/util/Vector;

    new-instance v1, Landroid/support/v4/oj1;

    invoke-direct {v1, p1}, Landroid/support/v4/oj1;-><init>(Landroid/support/v4/u4;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object p0
.end method

.method public try(Lorg/bouncycastle/asn1/catch;Ljava/lang/String;)Landroid/support/v4/ug2;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/ug2;->do:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/asn1/x500/X500NameStyle;->stringToValue(Lorg/bouncycastle/asn1/catch;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/ug2;->case(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)Landroid/support/v4/ug2;

    return-object p0
.end method
