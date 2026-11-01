.class public Landroid/support/v4/b50;
.super Landroid/support/v4/e40;
.source "SourceFile"


# instance fields
.field private else:Lorg/bouncycastle/asn1/catch;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/catch;Landroid/support/v4/e40;)V
    .locals 6

    invoke-virtual {p2}, Landroid/support/v4/e40;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object v1

    invoke-virtual {p2}, Landroid/support/v4/e40;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object v2

    invoke-virtual {p2}, Landroid/support/v4/e40;->try()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p2}, Landroid/support/v4/e40;->for()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p2}, Landroid/support/v4/e40;->case()[B

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/e40;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    iput-object p1, p0, Landroid/support/v4/b50;->else:Lorg/bouncycastle/asn1/catch;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;)V
    .locals 7

    sget-object v5, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/b50;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/b50;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/e40;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    iput-object p1, p0, Landroid/support/v4/b50;->else:Lorg/bouncycastle/asn1/catch;

    return-void
.end method


# virtual methods
.method public goto()Lorg/bouncycastle/asn1/catch;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b50;->else:Lorg/bouncycastle/asn1/catch;

    return-object v0
.end method
