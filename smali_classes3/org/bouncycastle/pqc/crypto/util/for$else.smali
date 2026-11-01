.class Lorg/bouncycastle/pqc/crypto/util/for$else;
.super Lorg/bouncycastle/pqc/crypto/util/for$try;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/util/for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "else"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/util/for$try;-><init>(Lorg/bouncycastle/pqc/crypto/util/for$do;)V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/pqc/crypto/util/for$do;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/util/for$else;-><init>()V

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

    invoke-static {p2}, Landroid/support/v4/ji2;->try(Ljava/lang/Object;)Landroid/support/v4/ji2;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/ji2;->else()Landroid/support/v4/b1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/b1;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/try;->break()Lorg/bouncycastle/asn1/final;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/pi2;->new(Ljava/lang/Object;)Landroid/support/v4/pi2;

    move-result-object p1

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/static$if;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/public;

    invoke-virtual {p2}, Landroid/support/v4/ji2;->new()I

    move-result v3

    invoke-virtual {p2}, Landroid/support/v4/ji2;->case()I

    move-result p2

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/util/try;->do(Lorg/bouncycastle/asn1/catch;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    invoke-direct {v2, v3, p2, v0}, Lorg/bouncycastle/pqc/crypto/xmss/public;-><init>(IILorg/bouncycastle/crypto/Digest;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/static$if;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/public;)V

    invoke-virtual {p1}, Landroid/support/v4/pi2;->try()[B

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/bouncycastle/pqc/crypto/xmss/static$if;->else([B)Lorg/bouncycastle/pqc/crypto/xmss/static$if;

    move-result-object p2

    invoke-virtual {p1}, Landroid/support/v4/pi2;->case()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/bouncycastle/pqc/crypto/xmss/static$if;->goto([B)Lorg/bouncycastle/pqc/crypto/xmss/static$if;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/static$if;->try()Lorg/bouncycastle/pqc/crypto/xmss/static;

    move-result-object p1

    return-object p1
.end method
