.class Lorg/bouncycastle/crypto/util/const$for;
.super Lorg/bouncycastle/crypto/util/const$const;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "for"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/util/const$const;-><init>(Lorg/bouncycastle/crypto/util/const$do;)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/crypto/util/const$do;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/util/const$for;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lorg/bouncycastle/asn1/x509/try;Ljava/lang/Object;)Landroid/support/v4/a4;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/try;->break()Lorg/bouncycastle/asn1/final;

    move-result-object p2

    invoke-static {p2}, Landroid/support/v4/qu;->new(Ljava/lang/Object;)Landroid/support/v4/qu;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/qu;->case()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/try;->new()Landroid/support/v4/b1;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/b1;->else()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/z10;->try(Ljava/lang/Object;)Landroid/support/v4/z10;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/z10;->this()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/z10;->new()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v4/z10;->break()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Landroid/support/v4/z10;->else()Ljava/math/BigInteger;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/z10;->else()Ljava/math/BigInteger;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, v4

    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/z10;->catch()Landroid/support/v4/fe2;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/support/v4/fe2;->else()[B

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/fe2;->case()Ljava/math/BigInteger;

    move-result-object p1

    new-instance v4, Landroid/support/v4/xu;

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-direct {v4, v0, p1}, Landroid/support/v4/xu;-><init>([BI)V

    :cond_1
    move-object p1, v4

    new-instance v6, Landroid/support/v4/ru;

    new-instance v7, Landroid/support/v4/ou;

    move-object v0, v7

    move-object v4, v5

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/ou;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Landroid/support/v4/xu;)V

    invoke-direct {v6, p2, v7}, Landroid/support/v4/ru;-><init>(Ljava/math/BigInteger;Landroid/support/v4/ou;)V

    return-object v6
.end method
