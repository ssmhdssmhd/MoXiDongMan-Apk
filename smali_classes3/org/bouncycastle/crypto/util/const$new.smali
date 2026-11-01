.class Lorg/bouncycastle/crypto/util/const$new;
.super Lorg/bouncycastle/crypto/util/const$const;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "new"
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

    invoke-direct {p0}, Lorg/bouncycastle/crypto/util/const$new;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lorg/bouncycastle/asn1/x509/try;Ljava/lang/Object;)Landroid/support/v4/a4;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/try;->break()Lorg/bouncycastle/asn1/final;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/asn1/goto;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/try;->new()Landroid/support/v4/b1;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/b1;->else()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/final;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/fv;->try(Ljava/lang/Object;)Landroid/support/v4/fv;

    move-result-object p1

    new-instance v0, Landroid/support/v4/hv;

    invoke-virtual {p1}, Landroid/support/v4/fv;->else()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/fv;->goto()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v4/fv;->new()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Landroid/support/v4/hv;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance p1, Landroid/support/v4/kv;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {p1, p2, v0}, Landroid/support/v4/kv;-><init>(Ljava/math/BigInteger;Landroid/support/v4/hv;)V

    return-object p1
.end method
