.class public Landroid/support/v4/x40;
.super Landroid/support/v4/d50;
.source "SourceFile"


# instance fields
.field private case:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Landroid/support/v4/d50;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;)V

    iput-object p1, p0, Landroid/support/v4/x40;->case:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/support/v4/d50;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object p1, p0, Landroid/support/v4/x40;->case:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/d50;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    iput-object p1, p0, Landroid/support/v4/x40;->case:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/x40;->case:Ljava/lang/String;

    return-object v0
.end method
