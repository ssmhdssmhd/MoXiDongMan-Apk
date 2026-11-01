.class Lorg/bouncycastle/crypto/util/const$case;
.super Lorg/bouncycastle/crypto/util/const$const;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "case"
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

    invoke-direct {p0}, Lorg/bouncycastle/crypto/util/const$case;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lorg/bouncycastle/asn1/x509/try;Ljava/lang/Object;)Landroid/support/v4/a4;
    .locals 8

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/try;->new()Landroid/support/v4/b1;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/b1;->else()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/rh2;->new(Ljava/lang/Object;)Landroid/support/v4/rh2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/rh2;->goto()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/rh2;->case()Lorg/bouncycastle/asn1/final;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lorg/bouncycastle/asn1/catch;

    invoke-static {v1}, Lorg/bouncycastle/crypto/ec/do;->this(Lorg/bouncycastle/asn1/catch;)Landroid/support/v4/th2;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {v1}, Landroid/support/v4/a50;->new(Lorg/bouncycastle/asn1/catch;)Landroid/support/v4/th2;

    move-result-object p2

    :cond_0
    new-instance v7, Landroid/support/v4/b50;

    invoke-virtual {p2}, Landroid/support/v4/th2;->try()Lorg/bouncycastle/math/ec/if;

    move-result-object v2

    invoke-virtual {p2}, Landroid/support/v4/th2;->goto()Lorg/bouncycastle/math/ec/new;

    move-result-object v3

    invoke-virtual {p2}, Landroid/support/v4/th2;->catch()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p2}, Landroid/support/v4/th2;->this()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p2}, Landroid/support/v4/th2;->class()[B

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/b50;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/rh2;->else()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v7, p2

    check-cast v7, Landroid/support/v4/e40;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/support/v4/rh2;->case()Lorg/bouncycastle/asn1/final;

    move-result-object p2

    invoke-static {p2}, Landroid/support/v4/th2;->break(Ljava/lang/Object;)Landroid/support/v4/th2;

    move-result-object p2

    new-instance v7, Landroid/support/v4/e40;

    invoke-virtual {p2}, Landroid/support/v4/th2;->try()Lorg/bouncycastle/math/ec/if;

    move-result-object v1

    invoke-virtual {p2}, Landroid/support/v4/th2;->goto()Lorg/bouncycastle/math/ec/new;

    move-result-object v2

    invoke-virtual {p2}, Landroid/support/v4/th2;->catch()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p2}, Landroid/support/v4/th2;->this()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p2}, Landroid/support/v4/th2;->class()[B

    move-result-object v5

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/e40;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/try;->this()Lorg/bouncycastle/asn1/instanceof;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/if;->const()[B

    move-result-object p1

    new-instance p2, Lorg/bouncycastle/asn1/j;

    invoke-direct {p2, p1}, Lorg/bouncycastle/asn1/j;-><init>([B)V

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    aget-byte v0, p1, v0

    array-length v1, p1

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_4

    aget-byte v0, p1, v2

    const/4 v1, 0x3

    if-eq v0, v2, :cond_3

    aget-byte v0, p1, v2

    if-ne v0, v1, :cond_4

    :cond_3
    new-instance v0, Landroid/support/v4/yh2;

    invoke-direct {v0}, Landroid/support/v4/yh2;-><init>()V

    invoke-virtual {v7}, Landroid/support/v4/e40;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/yh2;->do(Lorg/bouncycastle/math/ec/if;)I

    move-result v0

    array-length v2, p1

    sub-int/2addr v2, v1

    if-lt v0, v2, :cond_4

    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/asn1/final;->else([B)Lorg/bouncycastle/asn1/final;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lorg/bouncycastle/asn1/class;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "error recovering public key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    new-instance p1, Landroid/support/v4/vh2;

    invoke-virtual {v7}, Landroid/support/v4/e40;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Landroid/support/v4/vh2;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/asn1/class;)V

    new-instance p2, Landroid/support/v4/k50;

    invoke-virtual {p1}, Landroid/support/v4/vh2;->new()Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    invoke-direct {p2, p1, v7}, Landroid/support/v4/k50;-><init>(Lorg/bouncycastle/math/ec/new;Landroid/support/v4/e40;)V

    return-object p2
.end method
