.class public Landroid/support/v4/u51;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# instance fields
.field private final case:Ljava/lang/String;

.field private final do:Ljava/math/BigInteger;

.field private final for:Lorg/bouncycastle/asn1/case;

.field private final if:Landroid/support/v4/b1;

.field private final new:Lorg/bouncycastle/asn1/case;

.field private final try:Landroid/support/v4/p51;


# direct methods
.method public constructor <init>(Landroid/support/v4/b1;Ljava/util/Date;Ljava/util/Date;Landroid/support/v4/p51;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/u51;->do:Ljava/math/BigInteger;

    iput-object p1, p0, Landroid/support/v4/u51;->if:Landroid/support/v4/b1;

    new-instance p1, Lorg/bouncycastle/asn1/d;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/d;-><init>(Ljava/util/Date;)V

    iput-object p1, p0, Landroid/support/v4/u51;->for:Lorg/bouncycastle/asn1/case;

    new-instance p1, Lorg/bouncycastle/asn1/d;

    invoke-direct {p1, p3}, Lorg/bouncycastle/asn1/d;-><init>(Ljava/util/Date;)V

    iput-object p1, p0, Landroid/support/v4/u51;->new:Lorg/bouncycastle/asn1/case;

    iput-object p4, p0, Landroid/support/v4/u51;->try:Landroid/support/v4/p51;

    iput-object p5, p0, Landroid/support/v4/u51;->case:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/u51;->do:Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/b1;->try(Ljava/lang/Object;)Landroid/support/v4/b1;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/u51;->if:Landroid/support/v4/b1;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/case;->final(Ljava/lang/Object;)Lorg/bouncycastle/asn1/case;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/u51;->for:Lorg/bouncycastle/asn1/case;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/case;->final(Ljava/lang/Object;)Lorg/bouncycastle/asn1/case;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/u51;->new:Lorg/bouncycastle/asn1/case;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/p51;->new(Ljava/lang/Object;)Landroid/support/v4/p51;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/u51;->try:Landroid/support/v4/p51;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/v;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/v;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/v;->getString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Landroid/support/v4/u51;->case:Ljava/lang/String;

    return-void
.end method

.method public static case(Ljava/lang/Object;)Landroid/support/v4/u51;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/u51;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/u51;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/u51;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/u51;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public break()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/u51;->do:Ljava/math/BigInteger;

    return-object v0
.end method

.method public else()Landroid/support/v4/b1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/u51;->if:Landroid/support/v4/b1;

    return-object v0
.end method

.method public goto()Lorg/bouncycastle/asn1/case;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/u51;->new:Lorg/bouncycastle/asn1/case;

    return-object v0
.end method

.method public new()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/u51;->case:Ljava/lang/String;

    return-object v0
.end method

.method public this()Landroid/support/v4/p51;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/u51;->try:Landroid/support/v4/p51;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 3

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/goto;

    iget-object v2, p0, Landroid/support/v4/u51;->do:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/u51;->if:Landroid/support/v4/b1;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/u51;->for:Lorg/bouncycastle/asn1/case;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/u51;->new:Lorg/bouncycastle/asn1/case;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/u51;->try:Landroid/support/v4/p51;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/u51;->case:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v2, Lorg/bouncycastle/asn1/v;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/v;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Lorg/bouncycastle/asn1/case;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/u51;->for:Lorg/bouncycastle/asn1/case;

    return-object v0
.end method
