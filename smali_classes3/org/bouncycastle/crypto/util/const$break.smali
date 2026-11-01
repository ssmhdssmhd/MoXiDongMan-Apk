.class Lorg/bouncycastle/crypto/util/const$break;
.super Lorg/bouncycastle/crypto/util/const$const;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "break"
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

    invoke-direct {p0}, Lorg/bouncycastle/crypto/util/const$break;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lorg/bouncycastle/asn1/x509/try;Ljava/lang/Object;)Landroid/support/v4/a4;
    .locals 4

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

    const/16 v0, 0x41

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x20

    if-gt v1, v2, :cond_0

    rsub-int/lit8 v2, v1, 0x20

    aget-byte v2, p2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v2, v1, 0x20

    rsub-int/lit8 v3, v1, 0x40

    aget-byte v3, p2, v3

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/try;->new()Landroid/support/v4/b1;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/b1;->else()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/cg0;->case(Ljava/lang/Object;)Landroid/support/v4/cg0;

    move-result-object p1

    new-instance p2, Landroid/support/v4/l40;

    new-instance v1, Landroid/support/v4/b50;

    invoke-virtual {p1}, Landroid/support/v4/cg0;->goto()Lorg/bouncycastle/asn1/catch;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v4/cg0;->goto()Lorg/bouncycastle/asn1/catch;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/j40;->if(Lorg/bouncycastle/asn1/catch;)Landroid/support/v4/e40;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/support/v4/b50;-><init>(Lorg/bouncycastle/asn1/catch;Landroid/support/v4/e40;)V

    invoke-virtual {p1}, Landroid/support/v4/cg0;->goto()Lorg/bouncycastle/asn1/catch;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v4/cg0;->new()Lorg/bouncycastle/asn1/catch;

    move-result-object v3

    invoke-virtual {p1}, Landroid/support/v4/cg0;->try()Lorg/bouncycastle/asn1/catch;

    move-result-object p1

    invoke-direct {p2, v1, v2, v3, p1}, Landroid/support/v4/l40;-><init>(Landroid/support/v4/e40;Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/asn1/catch;)V

    new-instance p1, Landroid/support/v4/k50;

    invoke-virtual {p2}, Landroid/support/v4/e40;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/bouncycastle/math/ec/if;->class([B)Lorg/bouncycastle/math/ec/new;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Landroid/support/v4/k50;-><init>(Lorg/bouncycastle/math/ec/new;Landroid/support/v4/e40;)V

    return-object p1

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "error recovering public key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
