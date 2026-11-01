.class public Landroid/support/v4/jk1;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# static fields
.field public static final case:Landroid/support/v4/b1;

.field public static final else:Lorg/bouncycastle/asn1/goto;

.field public static final goto:Lorg/bouncycastle/asn1/goto;

.field public static final try:Landroid/support/v4/b1;


# instance fields
.field private do:Landroid/support/v4/b1;

.field private for:Lorg/bouncycastle/asn1/goto;

.field private if:Landroid/support/v4/b1;

.field private new:Lorg/bouncycastle/asn1/goto;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/support/v4/b1;

    sget-object v1, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lorg/bouncycastle/asn1/catch;

    sget-object v2, Lorg/bouncycastle/asn1/h;->do:Lorg/bouncycastle/asn1/h;

    invoke-direct {v0, v1, v2}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Landroid/support/v4/jk1;->try:Landroid/support/v4/b1;

    new-instance v1, Landroid/support/v4/b1;

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lorg/bouncycastle/asn1/catch;

    invoke-direct {v1, v2, v0}, Landroid/support/v4/b1;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v1, Landroid/support/v4/jk1;->case:Landroid/support/v4/b1;

    new-instance v0, Lorg/bouncycastle/asn1/goto;

    const-wide/16 v1, 0x14

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    sput-object v0, Landroid/support/v4/jk1;->else:Lorg/bouncycastle/asn1/goto;

    new-instance v0, Lorg/bouncycastle/asn1/goto;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(J)V

    sput-object v0, Landroid/support/v4/jk1;->goto:Lorg/bouncycastle/asn1/goto;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    sget-object v0, Landroid/support/v4/jk1;->try:Landroid/support/v4/b1;

    iput-object v0, p0, Landroid/support/v4/jk1;->do:Landroid/support/v4/b1;

    sget-object v0, Landroid/support/v4/jk1;->case:Landroid/support/v4/b1;

    iput-object v0, p0, Landroid/support/v4/jk1;->if:Landroid/support/v4/b1;

    sget-object v0, Landroid/support/v4/jk1;->else:Lorg/bouncycastle/asn1/goto;

    iput-object v0, p0, Landroid/support/v4/jk1;->for:Lorg/bouncycastle/asn1/goto;

    sget-object v0, Landroid/support/v4/jk1;->goto:Lorg/bouncycastle/asn1/goto;

    iput-object v0, p0, Landroid/support/v4/jk1;->new:Lorg/bouncycastle/asn1/goto;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/b1;Landroid/support/v4/b1;Lorg/bouncycastle/asn1/goto;Lorg/bouncycastle/asn1/goto;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/jk1;->do:Landroid/support/v4/b1;

    iput-object p2, p0, Landroid/support/v4/jk1;->if:Landroid/support/v4/b1;

    iput-object p3, p0, Landroid/support/v4/jk1;->for:Lorg/bouncycastle/asn1/goto;

    iput-object p4, p0, Landroid/support/v4/jk1;->new:Lorg/bouncycastle/asn1/goto;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    sget-object v0, Landroid/support/v4/jk1;->try:Landroid/support/v4/b1;

    iput-object v0, p0, Landroid/support/v4/jk1;->do:Landroid/support/v4/b1;

    sget-object v0, Landroid/support/v4/jk1;->case:Landroid/support/v4/b1;

    iput-object v0, p0, Landroid/support/v4/jk1;->if:Landroid/support/v4/b1;

    sget-object v0, Landroid/support/v4/jk1;->else:Lorg/bouncycastle/asn1/goto;

    iput-object v0, p0, Landroid/support/v4/jk1;->for:Lorg/bouncycastle/asn1/goto;

    sget-object v0, Landroid/support/v4/jk1;->goto:Lorg/bouncycastle/asn1/goto;

    iput-object v0, p0, Landroid/support/v4/jk1;->new:Lorg/bouncycastle/asn1/goto;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v1

    if-eq v0, v1, :cond_4

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/import;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/import;->getTagNo()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/goto;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/goto;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/jk1;->new:Lorg/bouncycastle/asn1/goto;

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown tag"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/goto;->class(Lorg/bouncycastle/asn1/import;Z)Lorg/bouncycastle/asn1/goto;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/jk1;->for:Lorg/bouncycastle/asn1/goto;

    goto :goto_1

    :cond_2
    invoke-static {v1, v3}, Landroid/support/v4/b1;->case(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/b1;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/jk1;->if:Landroid/support/v4/b1;

    goto :goto_1

    :cond_3
    invoke-static {v1, v3}, Landroid/support/v4/b1;->case(Lorg/bouncycastle/asn1/import;Z)Landroid/support/v4/b1;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/jk1;->do:Landroid/support/v4/b1;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static try(Ljava/lang/Object;)Landroid/support/v4/jk1;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/jk1;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/jk1;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/jk1;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/jk1;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public case()Landroid/support/v4/b1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/jk1;->if:Landroid/support/v4/b1;

    return-object v0
.end method

.method public else()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/jk1;->for:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public goto()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/jk1;->new:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public new()Landroid/support/v4/b1;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/jk1;->do:Landroid/support/v4/b1;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 5

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/jk1;->do:Landroid/support/v4/b1;

    sget-object v2, Landroid/support/v4/jk1;->try:Landroid/support/v4/b1;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/break;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/u;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/support/v4/jk1;->do:Landroid/support/v4/b1;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/jk1;->if:Landroid/support/v4/b1;

    sget-object v3, Landroid/support/v4/jk1;->case:Landroid/support/v4/b1;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/break;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/u;

    iget-object v3, p0, Landroid/support/v4/jk1;->if:Landroid/support/v4/b1;

    invoke-direct {v1, v2, v2, v3}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-object v1, p0, Landroid/support/v4/jk1;->for:Lorg/bouncycastle/asn1/goto;

    sget-object v3, Landroid/support/v4/jk1;->else:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lorg/bouncycastle/asn1/u;

    const/4 v3, 0x2

    iget-object v4, p0, Landroid/support/v4/jk1;->for:Lorg/bouncycastle/asn1/goto;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2
    iget-object v1, p0, Landroid/support/v4/jk1;->new:Lorg/bouncycastle/asn1/goto;

    sget-object v3, Landroid/support/v4/jk1;->goto:Lorg/bouncycastle/asn1/goto;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lorg/bouncycastle/asn1/u;

    const/4 v3, 0x3

    iget-object v4, p0, Landroid/support/v4/jk1;->new:Lorg/bouncycastle/asn1/goto;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/u;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_3
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method
