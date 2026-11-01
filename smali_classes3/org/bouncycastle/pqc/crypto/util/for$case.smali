.class Lorg/bouncycastle/pqc/crypto/util/for$case;
.super Lorg/bouncycastle/pqc/crypto/util/for$try;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/util/for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "case"
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

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/util/for$case;-><init>()V

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

    invoke-static {p2}, Landroid/support/v4/gi2;->try(Ljava/lang/Object;)Landroid/support/v4/gi2;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v4/gi2;->case()Landroid/support/v4/b1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/b1;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/try;->break()Lorg/bouncycastle/asn1/final;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/pi2;->new(Ljava/lang/Object;)Landroid/support/v4/pi2;

    move-result-object p1

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/private$if;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/finally;

    invoke-virtual {p2}, Landroid/support/v4/gi2;->new()I

    move-result p2

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/util/try;->do(Lorg/bouncycastle/asn1/catch;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    invoke-direct {v2, p2, v0}, Lorg/bouncycastle/pqc/crypto/xmss/finally;-><init>(ILorg/bouncycastle/crypto/Digest;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/private$if;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/finally;)V

    invoke-virtual {p1}, Landroid/support/v4/pi2;->try()[B

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/bouncycastle/pqc/crypto/xmss/private$if;->else([B)Lorg/bouncycastle/pqc/crypto/xmss/private$if;

    move-result-object p2

    invoke-virtual {p1}, Landroid/support/v4/pi2;->case()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/bouncycastle/pqc/crypto/xmss/private$if;->goto([B)Lorg/bouncycastle/pqc/crypto/xmss/private$if;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/private$if;->try()Lorg/bouncycastle/pqc/crypto/xmss/private;

    move-result-object p1

    return-object p1
.end method
