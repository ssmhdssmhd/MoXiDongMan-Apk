.class public Landroid/support/v4/kr1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public do:Ljava/math/BigInteger;

.field public for:Lorg/bouncycastle/crypto/Digest;

.field public if:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public do([B[B[B)Ljava/math/BigInteger;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/kr1;->for:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Landroid/support/v4/kr1;->do:Ljava/math/BigInteger;

    invoke-static {v0, v1, p1, p2, p3}, Landroid/support/v4/jr1;->case(Lorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;[B[B[B)Ljava/math/BigInteger;

    move-result-object p1

    iget-object p2, p0, Landroid/support/v4/kr1;->if:Ljava/math/BigInteger;

    iget-object p3, p0, Landroid/support/v4/kr1;->do:Ljava/math/BigInteger;

    invoke-virtual {p2, p1, p3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public for(Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/Digest;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/kr1;->do:Ljava/math/BigInteger;

    iput-object p2, p0, Landroid/support/v4/kr1;->if:Ljava/math/BigInteger;

    iput-object p3, p0, Landroid/support/v4/kr1;->for:Lorg/bouncycastle/crypto/Digest;

    return-void
.end method

.method public if(Landroid/support/v4/gr1;Lorg/bouncycastle/crypto/Digest;)V
    .locals 1

    invoke-virtual {p1}, Landroid/support/v4/gr1;->if()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/kr1;->do:Ljava/math/BigInteger;

    invoke-virtual {p1}, Landroid/support/v4/gr1;->do()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/kr1;->if:Ljava/math/BigInteger;

    iput-object p2, p0, Landroid/support/v4/kr1;->for:Lorg/bouncycastle/crypto/Digest;

    return-void
.end method
