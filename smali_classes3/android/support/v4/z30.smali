.class public Landroid/support/v4/z30;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private do:Landroid/support/v4/b40;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lorg/bouncycastle/crypto/CipherParameters;)[B
    .locals 3

    check-cast p1, Landroid/support/v4/c40;

    new-instance v0, Landroid/support/v4/y30;

    invoke-direct {v0}, Landroid/support/v4/y30;-><init>()V

    new-instance v1, Landroid/support/v4/y30;

    invoke-direct {v1}, Landroid/support/v4/y30;-><init>()V

    iget-object v2, p0, Landroid/support/v4/z30;->do:Landroid/support/v4/b40;

    invoke-virtual {v2}, Landroid/support/v4/b40;->for()Landroid/support/v4/h50;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/y30;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    invoke-virtual {p1}, Landroid/support/v4/c40;->if()Landroid/support/v4/k50;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/y30;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v4/z30;->do:Landroid/support/v4/b40;

    invoke-virtual {v2}, Landroid/support/v4/b40;->do()Landroid/support/v4/h50;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/y30;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    invoke-virtual {p1}, Landroid/support/v4/c40;->do()Landroid/support/v4/k50;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/support/v4/y30;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0}, Landroid/support/v4/z30;->if()I

    move-result v1

    invoke-static {v1, p1}, Lorg/bouncycastle/util/do;->do(ILjava/math/BigInteger;)[B

    move-result-object p1

    invoke-virtual {p0}, Landroid/support/v4/z30;->if()I

    move-result v1

    invoke-static {v1, v0}, Lorg/bouncycastle/util/do;->do(ILjava/math/BigInteger;)[B

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/q3;->default([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public for(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 0

    check-cast p1, Landroid/support/v4/b40;

    iput-object p1, p0, Landroid/support/v4/z30;->do:Landroid/support/v4/b40;

    return-void
.end method

.method public if()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/z30;->do:Landroid/support/v4/b40;

    invoke-virtual {v0}, Landroid/support/v4/b40;->for()Landroid/support/v4/h50;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/s40;->if()Landroid/support/v4/e40;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/e40;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/if;->switch()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method
