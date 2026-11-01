.class Lorg/bouncycastle/crypto/util/const$if;
.super Lorg/bouncycastle/crypto/util/const$const;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
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

    invoke-direct {p0}, Lorg/bouncycastle/crypto/util/const$if;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lorg/bouncycastle/asn1/x509/try;Ljava/lang/Object;)Landroid/support/v4/a4;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/try;->new()Landroid/support/v4/b1;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/b1;->else()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p2

    invoke-static {p2}, Landroid/support/v4/nu;->try(Ljava/lang/Object;)Landroid/support/v4/nu;

    move-result-object p2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/try;->break()Lorg/bouncycastle/asn1/final;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {p2}, Landroid/support/v4/nu;->case()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    :goto_0
    new-instance v1, Landroid/support/v4/ou;

    invoke-virtual {p2}, Landroid/support/v4/nu;->else()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2}, Landroid/support/v4/nu;->new()Ljava/math/BigInteger;

    move-result-object p2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p2, v3, v0}, Landroid/support/v4/ou;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    new-instance p2, Landroid/support/v4/ru;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p2, p1, v1}, Landroid/support/v4/ru;-><init>(Ljava/math/BigInteger;Landroid/support/v4/ou;)V

    return-object p2
.end method
