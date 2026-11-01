.class public Landroid/support/v4/t91;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# static fields
.field private static final try:Landroid/support/v4/b1;


# instance fields
.field private final do:Lorg/bouncycastle/asn1/class;

.field private final for:Lorg/bouncycastle/asn1/goto;

.field private final if:Lorg/bouncycastle/asn1/goto;

.field private final new:Landroid/support/v4/b1;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/support/v4/b1;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA1:Lorg/bouncycastle/asn1/catch;

    sget-object v2, Lorg/bouncycastle/asn1/h;->do:Lorg/bouncycastle/asn1/h;

    invoke-direct {v0, v1, v2}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Landroid/support/v4/t91;->try:Landroid/support/v4/b1;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->super()Ljava/util/Enumeration;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/class;

    iput-object v0, p0, Landroid/support/v4/t91;->do:Lorg/bouncycastle/asn1/class;

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/goto;

    iput-object v0, p0, Landroid/support/v4/t91;->if:Lorg/bouncycastle/asn1/goto;

    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lorg/bouncycastle/asn1/goto;

    if-eqz v2, :cond_1

    invoke-static {v0}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/t91;->for:Lorg/bouncycastle/asn1/goto;

    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    iput-object v1, p0, Landroid/support/v4/t91;->for:Lorg/bouncycastle/asn1/goto;

    :goto_0
    if-eqz v0, :cond_3

    invoke-static {v0}, Landroid/support/v4/b1;->try(Ljava/lang/Object;)Landroid/support/v4/b1;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/t91;->new:Landroid/support/v4/b1;

    goto :goto_1

    :cond_2
    iput-object v1, p0, Landroid/support/v4/t91;->for:Lorg/bouncycastle/asn1/goto;

    :cond_3
    iput-object v1, p0, Landroid/support/v4/t91;->new:Landroid/support/v4/b1;

    :goto_1
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/t91;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/t91;-><init>([BIILandroid/support/v4/b1;)V

    return-void
.end method

.method public constructor <init>([BIILandroid/support/v4/b1;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/j;

    invoke-static {p1}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    iput-object v0, p0, Landroid/support/v4/t91;->do:Lorg/bouncycastle/asn1/class;

    new-instance p1, Lorg/bouncycastle/asn1/goto;

    int-to-long v0, p2

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    iput-object p1, p0, Landroid/support/v4/t91;->if:Lorg/bouncycastle/asn1/goto;

    if-lez p3, :cond_0

    new-instance p1, Lorg/bouncycastle/asn1/goto;

    int-to-long p2, p3

    invoke-direct {p1, p2, p3}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Landroid/support/v4/t91;->for:Lorg/bouncycastle/asn1/goto;

    iput-object p4, p0, Landroid/support/v4/t91;->new:Landroid/support/v4/b1;

    return-void
.end method

.method public constructor <init>([BILandroid/support/v4/b1;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/support/v4/t91;-><init>([BIILandroid/support/v4/b1;)V

    return-void
.end method

.method public static new(Ljava/lang/Object;)Landroid/support/v4/t91;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/t91;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/t91;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/t91;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/t91;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public case()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/t91;->for:Lorg/bouncycastle/asn1/goto;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public else()Landroid/support/v4/b1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/t91;->new:Landroid/support/v4/b1;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Landroid/support/v4/t91;->try:Landroid/support/v4/b1;

    return-object v0
.end method

.method public goto()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/t91;->do:Lorg/bouncycastle/asn1/class;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object v0

    return-object v0
.end method

.method public this()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v4/t91;->new:Landroid/support/v4/b1;

    if-eqz v0, :cond_1

    sget-object v1, Landroid/support/v4/t91;->try:Landroid/support/v4/b1;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/break;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 3

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/t91;->do:Lorg/bouncycastle/asn1/class;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/t91;->if:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/t91;->for:Lorg/bouncycastle/asn1/goto;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/t91;->new:Landroid/support/v4/b1;

    if-eqz v1, :cond_1

    sget-object v2, Landroid/support/v4/t91;->try:Landroid/support/v4/b1;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/break;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/t91;->new:Landroid/support/v4/b1;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/t91;->if:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
