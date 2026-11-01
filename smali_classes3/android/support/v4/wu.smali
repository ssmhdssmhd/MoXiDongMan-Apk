.class public Landroid/support/v4/wu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private do:Landroid/support/v4/uu;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lorg/bouncycastle/crypto/CipherParameters;)[B
    .locals 3

    check-cast p1, Landroid/support/v4/vu;

    new-instance v0, Landroid/support/v4/du;

    invoke-direct {v0}, Landroid/support/v4/du;-><init>()V

    new-instance v1, Landroid/support/v4/du;

    invoke-direct {v1}, Landroid/support/v4/du;-><init>()V

    iget-object v2, p0, Landroid/support/v4/wu;->do:Landroid/support/v4/uu;

    invoke-virtual {v2}, Landroid/support/v4/uu;->for()Landroid/support/v4/pu;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/du;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    invoke-virtual {p1}, Landroid/support/v4/vu;->if()Landroid/support/v4/ru;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/du;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v4/wu;->do:Landroid/support/v4/uu;

    invoke-virtual {v2}, Landroid/support/v4/uu;->do()Landroid/support/v4/pu;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/du;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    invoke-virtual {p1}, Landroid/support/v4/vu;->do()Landroid/support/v4/ru;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/support/v4/du;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0}, Landroid/support/v4/wu;->if()I

    move-result v1

    invoke-static {v1, p1}, Lorg/bouncycastle/util/do;->do(ILjava/math/BigInteger;)[B

    move-result-object p1

    invoke-virtual {p0}, Landroid/support/v4/wu;->if()I

    move-result v1

    invoke-static {v1, v0}, Lorg/bouncycastle/util/do;->do(ILjava/math/BigInteger;)[B

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/q3;->default([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public for(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 0

    check-cast p1, Landroid/support/v4/uu;

    iput-object p1, p0, Landroid/support/v4/wu;->do:Landroid/support/v4/uu;

    return-void
.end method

.method public if()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/wu;->do:Landroid/support/v4/uu;

    invoke-virtual {v0}, Landroid/support/v4/uu;->for()Landroid/support/v4/pu;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/ku;->if()Landroid/support/v4/ou;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/ou;->case()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method
