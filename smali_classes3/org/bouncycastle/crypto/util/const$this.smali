.class Lorg/bouncycastle/crypto/util/const$this;
.super Lorg/bouncycastle/crypto/util/const$const;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "this"
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

    invoke-direct {p0}, Lorg/bouncycastle/crypto/util/const$this;-><init>()V

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

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/try;->new()Landroid/support/v4/b1;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/b1;->else()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p2

    invoke-static {p2}, Landroid/support/v4/j60;->try(Ljava/lang/Object;)Landroid/support/v4/j60;

    move-result-object p2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/try;->break()Lorg/bouncycastle/asn1/final;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/goto;

    new-instance v0, Landroid/support/v4/o60;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/goto;->final()Ljava/math/BigInteger;

    move-result-object p1

    new-instance v1, Landroid/support/v4/l60;

    invoke-virtual {p2}, Landroid/support/v4/j60;->case()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2}, Landroid/support/v4/j60;->new()Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Landroid/support/v4/l60;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, p1, v1}, Landroid/support/v4/o60;-><init>(Ljava/math/BigInteger;Landroid/support/v4/l60;)V

    return-object v0
.end method
