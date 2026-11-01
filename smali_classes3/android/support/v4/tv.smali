.class public Landroid/support/v4/tv;
.super Landroid/support/v4/e40;
.source "SourceFile"


# instance fields
.field private final else:[B


# direct methods
.method public constructor <init>(Landroid/support/v4/e40;[B)V
    .locals 6

    invoke-virtual {p1}, Landroid/support/v4/e40;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object v1

    invoke-virtual {p1}, Landroid/support/v4/e40;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v4/e40;->try()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Landroid/support/v4/e40;->for()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Landroid/support/v4/e40;->case()[B

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/e40;-><init>(Lorg/bouncycastle/math/ec/if;Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-static {p2}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/tv;->else:[B

    return-void
.end method


# virtual methods
.method public goto()[B
    .locals 1

    iget-object v0, p0, Landroid/support/v4/tv;->else:[B

    invoke-static {v0}, Landroid/support/v4/q3;->final([B)[B

    move-result-object v0

    return-object v0
.end method
