.class public Landroid/support/v4/o40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/KeyEncapsulation;


# static fields
.field private static final else:Ljava/math/BigInteger;


# instance fields
.field private case:Z

.field private do:Lorg/bouncycastle/crypto/DerivationFunction;

.field private for:Landroid/support/v4/s40;

.field private if:Ljava/security/SecureRandom;

.field private new:Z

.field private try:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Landroid/support/v4/o40;->else:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/DerivationFunction;Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/o40;->do:Lorg/bouncycastle/crypto/DerivationFunction;

    iput-object p2, p0, Landroid/support/v4/o40;->if:Ljava/security/SecureRandom;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v4/o40;->new:Z

    iput-boolean p1, p0, Landroid/support/v4/o40;->try:Z

    iput-boolean p1, p0, Landroid/support/v4/o40;->case:Z

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/DerivationFunction;Ljava/security/SecureRandom;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/o40;->do:Lorg/bouncycastle/crypto/DerivationFunction;

    iput-object p2, p0, Landroid/support/v4/o40;->if:Ljava/security/SecureRandom;

    iput-boolean p3, p0, Landroid/support/v4/o40;->new:Z

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/support/v4/o40;->try:Z

    goto :goto_0

    :cond_0
    iput-boolean p4, p0, Landroid/support/v4/o40;->try:Z

    :goto_0
    iput-boolean p5, p0, Landroid/support/v4/o40;->case:Z

    return-void
.end method


# virtual methods
.method public decrypt([BIII)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/o40;->for:Landroid/support/v4/s40;

    instance-of v1, v0, Landroid/support/v4/h50;

    if-eqz v1, :cond_3

    check-cast v0, Landroid/support/v4/h50;

    invoke-virtual {v0}, Landroid/support/v4/s40;->if()Landroid/support/v4/e40;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/e40;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object v2

    invoke-virtual {v1}, Landroid/support/v4/e40;->try()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1}, Landroid/support/v4/e40;->for()Ljava/math/BigInteger;

    move-result-object v1

    new-array v4, p3, [B

    const/4 v5, 0x0

    invoke-static {p1, p2, v4, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v2, v4}, Lorg/bouncycastle/math/ec/if;->class([B)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    iget-boolean p2, p0, Landroid/support/v4/o40;->new:Z

    if-nez p2, :cond_0

    iget-boolean p2, p0, Landroid/support/v4/o40;->try:Z

    if-eqz p2, :cond_1

    :cond_0
    invoke-virtual {p1, v1}, Lorg/bouncycastle/math/ec/new;->package(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/h50;->for()Ljava/math/BigInteger;

    move-result-object p2

    iget-boolean p3, p0, Landroid/support/v4/o40;->new:Z

    if-eqz p3, :cond_2

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    :cond_2
    invoke-virtual {p1, p2}, Lorg/bouncycastle/math/ec/new;->package(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->abstract()Lorg/bouncycastle/math/ec/new;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/new;->case()Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/for;->try()[B

    move-result-object p1

    invoke-virtual {p0, p4, v4, p1}, Landroid/support/v4/o40;->for(I[B[B)Landroid/support/v4/gr0;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Private key required for encryption"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public do()Lorg/bouncycastle/math/ec/ECMultiplier;
    .locals 1

    new-instance v0, Landroid/support/v4/ic0;

    invoke-direct {v0}, Landroid/support/v4/ic0;-><init>()V

    return-object v0
.end method

.method public encrypt([BII)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/o40;->for:Landroid/support/v4/s40;

    instance-of v1, v0, Landroid/support/v4/k50;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/support/v4/k50;

    invoke-virtual {v0}, Landroid/support/v4/s40;->if()Landroid/support/v4/e40;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/e40;->do()Lorg/bouncycastle/math/ec/if;

    move-result-object v2

    invoke-virtual {v1}, Landroid/support/v4/e40;->try()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1}, Landroid/support/v4/e40;->for()Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Landroid/support/v4/o40;->else:Ljava/math/BigInteger;

    iget-object v6, p0, Landroid/support/v4/o40;->if:Ljava/security/SecureRandom;

    invoke-static {v5, v3, v6}, Lorg/bouncycastle/util/do;->try(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v5

    iget-boolean v6, p0, Landroid/support/v4/o40;->try:Z

    if-eqz v6, :cond_0

    invoke-virtual {v5, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v5

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/o40;->do()Lorg/bouncycastle/math/ec/ECMultiplier;

    move-result-object v4

    const/4 v6, 0x2

    new-array v6, v6, [Lorg/bouncycastle/math/ec/new;

    invoke-virtual {v1}, Landroid/support/v4/e40;->if()Lorg/bouncycastle/math/ec/new;

    move-result-object v1

    invoke-interface {v4, v1, v5}, Lorg/bouncycastle/math/ec/ECMultiplier;->multiply(Lorg/bouncycastle/math/ec/new;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/new;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v6, v4

    invoke-virtual {v0}, Landroid/support/v4/k50;->for()Lorg/bouncycastle/math/ec/new;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/bouncycastle/math/ec/new;->package(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/new;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v6, v1

    invoke-virtual {v2, v6}, Lorg/bouncycastle/math/ec/if;->abstract([Lorg/bouncycastle/math/ec/new;)V

    aget-object v0, v6, v4

    aget-object v1, v6, v1

    invoke-virtual {v0, v4}, Lorg/bouncycastle/math/ec/new;->const(Z)[B

    move-result-object v0

    array-length v2, v0

    invoke-static {v0, v4, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/new;->case()Lorg/bouncycastle/math/ec/for;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/for;->try()[B

    move-result-object p1

    invoke-virtual {p0, p3, v0, p1}, Landroid/support/v4/o40;->for(I[B[B)Landroid/support/v4/gr0;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Public key required for encryption"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public for(I[B[B)Landroid/support/v4/gr0;
    .locals 3

    iget-boolean v0, p0, Landroid/support/v4/o40;->case:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p2, p3}, Landroid/support/v4/q3;->default([B[B)[B

    move-result-object p2

    invoke-static {p3, v1}, Landroid/support/v4/q3;->c([BB)V

    move-object p3, p2

    :cond_0
    :try_start_0
    iget-object p2, p0, Landroid/support/v4/o40;->do:Lorg/bouncycastle/crypto/DerivationFunction;

    new-instance v0, Landroid/support/v4/kq0;

    const/4 v2, 0x0

    invoke-direct {v0, p3, v2}, Landroid/support/v4/kq0;-><init>([B[B)V

    invoke-interface {p2, v0}, Lorg/bouncycastle/crypto/DerivationFunction;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V

    new-array p2, p1, [B

    iget-object v0, p0, Landroid/support/v4/o40;->do:Lorg/bouncycastle/crypto/DerivationFunction;

    invoke-interface {v0, p2, v1, p1}, Lorg/bouncycastle/crypto/DerivationFunction;->generateBytes([BII)I

    new-instance p1, Landroid/support/v4/gr0;

    invoke-direct {p1, p2}, Landroid/support/v4/gr0;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p3, v1}, Landroid/support/v4/q3;->c([BB)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p3, v1}, Landroid/support/v4/q3;->c([BB)V

    throw p1
.end method

.method public if([BI)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Landroid/support/v4/o40;->decrypt([BIII)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    return-object p1
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    instance-of v0, p1, Landroid/support/v4/s40;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/s40;

    iput-object p1, p0, Landroid/support/v4/o40;->for:Landroid/support/v4/s40;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "EC key required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public new([BI)Lorg/bouncycastle/crypto/CipherParameters;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v4/o40;->encrypt([BII)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    return-object p1
.end method
