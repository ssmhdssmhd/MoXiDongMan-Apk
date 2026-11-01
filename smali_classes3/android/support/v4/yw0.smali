.class public Landroid/support/v4/yw0;
.super Lorg/bouncycastle/asn1/break;
.source "SourceFile"


# static fields
.field private static final new:Ljava/math/BigInteger;


# instance fields
.field public do:Landroid/support/v4/v00;

.field public for:Ljava/math/BigInteger;

.field public if:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Landroid/support/v4/yw0;->new:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/v00;[BI)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    iput-object p1, p0, Landroid/support/v4/yw0;->do:Landroid/support/v4/v00;

    invoke-static {p2}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/yw0;->if:[B

    int-to-long p1, p3

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/yw0;->for:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/super;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/break;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/v00;->case(Ljava/lang/Object;)Landroid/support/v4/v00;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/yw0;->do:Landroid/support/v4/v00;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/class;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/class;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/yw0;->if:[B

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/super;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/super;->final(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/goto;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/goto;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Landroid/support/v4/yw0;->new:Ljava/math/BigInteger;

    :goto_0
    iput-object p1, p0, Landroid/support/v4/yw0;->for:Ljava/math/BigInteger;

    return-void
.end method

.method public static new(Ljava/lang/Object;)Landroid/support/v4/yw0;
    .locals 1

    instance-of v0, p0, Landroid/support/v4/yw0;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/yw0;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/support/v4/yw0;

    invoke-static {p0}, Lorg/bouncycastle/asn1/super;->catch(Ljava/lang/Object;)Lorg/bouncycastle/asn1/super;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/yw0;-><init>(Lorg/bouncycastle/asn1/super;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public case()Landroid/support/v4/v00;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/yw0;->do:Landroid/support/v4/v00;

    return-object v0
.end method

.method public else()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/yw0;->if:[B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/final;
    .locals 3

    new-instance v0, Landroid/support/v4/import;

    invoke-direct {v0}, Landroid/support/v4/import;-><init>()V

    iget-object v1, p0, Landroid/support/v4/yw0;->do:Landroid/support/v4/v00;

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/j;

    iget-object v2, p0, Landroid/support/v4/yw0;->if:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Landroid/support/v4/yw0;->for:Ljava/math/BigInteger;

    sget-object v2, Landroid/support/v4/yw0;->new:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/goto;

    iget-object v2, p0, Landroid/support/v4/yw0;->for:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/goto;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/import;->do(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/n;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/n;-><init>(Landroid/support/v4/import;)V

    return-object v1
.end method

.method public try()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/yw0;->for:Ljava/math/BigInteger;

    return-object v0
.end method
