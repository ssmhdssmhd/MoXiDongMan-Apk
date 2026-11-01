.class Lorg/bouncycastle/crypto/util/const$try;
.super Lorg/bouncycastle/crypto/util/const$const;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "try"
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

    invoke-direct {p0}, Lorg/bouncycastle/crypto/util/const$try;-><init>()V

    return-void
.end method

.method private if([B)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    aget-byte v1, p1, v0

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    aget-byte v2, p1, v2

    aput-byte v2, p1, v0

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    aput-byte v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public do(Lorg/bouncycastle/asn1/x509/try;Ljava/lang/Object;)Landroid/support/v4/a4;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/try;->this()Lorg/bouncycastle/asn1/instanceof;

    move-result-object p2

    :try_start_0
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/if;->const()[B

    move-result-object p2

    invoke-static {p2}, Lorg/bouncycastle/asn1/final;->else([B)Lorg/bouncycastle/asn1/final;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/asn1/class;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/class;->const()[B

    move-result-object p2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/try;->new()Landroid/support/v4/b1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/b1;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/asn1/ua/UAObjectIdentifiers;->dstu4145le:Lorg/bouncycastle/asn1/catch;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lorg/bouncycastle/crypto/util/const$try;->if([B)V

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/try;->new()Landroid/support/v4/b1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/b1;->else()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/uv;->else(Ljava/lang/Object;)Landroid/support/v4/uv;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/uv;->this()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/uv;->goto()Lorg/bouncycastle/asn1/catch;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/rv;->do(Lorg/bouncycastle/asn1/catch;)Landroid/support/v4/e40;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/uv;->case()Landroid/support/v4/pv;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/pv;->try()[B

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/try;->new()Landroid/support/v4/b1;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/b1;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/util/const$try;->if([B)V

    :cond_2
    invoke-virtual {v0}, Landroid/support/v4/pv;->case()Landroid/support/v4/ov;

    move-result-object v3

    new-instance v11, Lorg/bouncycastle/math/ec/if$try;

    invoke-virtual {v3}, Landroid/support/v4/ov;->goto()I

    move-result v5

    invoke-virtual {v3}, Landroid/support/v4/ov;->try()I

    move-result v6

    invoke-virtual {v3}, Landroid/support/v4/ov;->case()I

    move-result v7

    invoke-virtual {v3}, Landroid/support/v4/ov;->else()I

    move-result v8

    invoke-virtual {v0}, Landroid/support/v4/pv;->new()Ljava/math/BigInteger;

    move-result-object v9

    new-instance v10, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v10, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lorg/bouncycastle/math/ec/if$try;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v0}, Landroid/support/v4/pv;->else()[B

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/try;->new()Landroid/support/v4/b1;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/b1;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/final;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/util/const$try;->if([B)V

    :cond_3
    new-instance p1, Landroid/support/v4/e40;

    invoke-static {v11, v2}, Landroid/support/v4/vv;->do(Lorg/bouncycastle/math/ec/if;[B)Lorg/bouncycastle/math/ec/new;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v4/pv;->this()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {p1, v11, v1, v0}, Landroid/support/v4/e40;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;)V

    :goto_0
    new-instance v0, Landroid/support/v4/k50;

    invoke-virtual {p1}, Landroid/support/v4/e40;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/support/v4/vv;->do(Lorg/bouncycastle/math/ec/if;[B)Lorg/bouncycastle/math/ec/new;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Landroid/support/v4/k50;-><init>(Lorg/bouncycastle/math/ec/new;Landroid/support/v4/e40;)V

    return-object v0

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "error recovering public key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
