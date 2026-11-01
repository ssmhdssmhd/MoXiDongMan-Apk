.class public Landroid/support/v4/kx;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final for:I = 0x1

.field public static final if:I = 0x0

.field public static final new:I = 0x2


# instance fields
.field private do:Lorg/bouncycastle/asn1/import;


# direct methods
.method public constructor <init>(I)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/u;

    new-instance v1, Lorg/bouncycastle/asn1/goto;

    int-to-long v2, p1

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    const/4 p1, 0x0

    invoke-direct {v0, p1, p1, v1}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Landroid/support/v4/kx;->do:Lorg/bouncycastle/asn1/import;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/case;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/u;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, p1}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Landroid/support/v4/kx;->do:Lorg/bouncycastle/asn1/import;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/import;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    iput-object p1, p0, Landroid/support/v4/kx;->do:Lorg/bouncycastle/asn1/import;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad tag number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    new-instance p1, Lorg/bouncycastle/asn1/u;

    new-instance v2, Lorg/bouncycastle/asn1/n;

    new-instance v3, Lorg/bouncycastle/asn1/m;

    invoke-direct {v3, p2, v1}, Lorg/bouncycastle/asn1/m;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/n;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p1, v0, v1, v2}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object p1, p0, Landroid/support/v4/kx;->do:Lorg/bouncycastle/asn1/import;

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/support/v4/import;

    invoke-direct {p1}, Landroid/support/v4/import;-><init>()V

    sget-object v2, Lorg/bouncycastle/asn1/for;->new:Lorg/bouncycastle/asn1/for;

    invoke-virtual {p1, v2}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v2, Lorg/bouncycastle/asn1/m;

    invoke-direct {v2, p2, v1}, Lorg/bouncycastle/asn1/m;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p1, v2}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance p2, Lorg/bouncycastle/asn1/u;

    new-instance v2, Lorg/bouncycastle/asn1/n;

    invoke-direct {v2, p1}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    invoke-direct {p2, v0, v1, v2}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object p2, p0, Landroid/support/v4/kx;->do:Lorg/bouncycastle/asn1/import;

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "country can only be 2 characters"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static case(Ljava/lang/Object;)Landroid/support/v4/kx;
    .locals 3

    if-eqz p0, :cond_2

    instance-of v0, p0, Landroid/support/v4/kx;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/import;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v4/kx;

    check-cast p0, Lorg/bouncycastle/asn1/import;

    invoke-direct {v0, p0}, Landroid/support/v4/kx;-><init>(Lorg/bouncycastle/asn1/import;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    check-cast p0, Landroid/support/v4/kx;

    return-object p0
.end method


# virtual methods
.method public else()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/kx;->do:Lorg/bouncycastle/asn1/import;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v0

    return v0
.end method

.method public goto()I
    .locals 2

    iget-object v0, p0, Landroid/support/v4/kx;->do:Lorg/bouncycastle/asn1/import;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/kx;->do:Lorg/bouncycastle/asn1/import;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/goto;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/goto;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public new()Lorg/bouncycastle/asn1/super;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/kx;->do:Lorg/bouncycastle/asn1/import;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/kx;->do:Lorg/bouncycastle/asn1/import;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/super;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/super;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/kx;->do:Lorg/bouncycastle/asn1/import;

    return-object v0
.end method

.method public try()Lorg/bouncycastle/asn1/case;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/kx;->do:Lorg/bouncycastle/asn1/import;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/kx;->do:Lorg/bouncycastle/asn1/import;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/case;->super(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/case;

    move-result-object v0

    return-object v0
.end method
