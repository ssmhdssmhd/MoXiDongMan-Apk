.class public Landroid/support/v4/qh2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private do:Ljava/security/SecureRandom;

.field private for:[B

.field private if:Lorg/bouncycastle/crypto/prng/EntropySourceProvider;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Lorg/bouncycastle/crypto/for;->case()Ljava/security/SecureRandom;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v4/qh2;-><init>(Ljava/security/SecureRandom;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/qh2;->do:Ljava/security/SecureRandom;

    new-instance v0, Lorg/bouncycastle/crypto/prng/do;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/crypto/prng/do;-><init>(Ljava/security/SecureRandom;Z)V

    iput-object v0, p0, Landroid/support/v4/qh2;->if:Lorg/bouncycastle/crypto/prng/EntropySourceProvider;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/prng/EntropySourceProvider;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/qh2;->do:Ljava/security/SecureRandom;

    iput-object p1, p0, Landroid/support/v4/qh2;->if:Lorg/bouncycastle/crypto/prng/EntropySourceProvider;

    return-void
.end method


# virtual methods
.method public do(Lorg/bouncycastle/crypto/BlockCipher;Landroid/support/v4/gr0;Z)Landroid/support/v4/ph2;
    .locals 5

    iget-object v0, p0, Landroid/support/v4/qh2;->for:[B

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/support/v4/qh2;->for:[B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Landroid/support/v4/qh2;->for:[B

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/ib1;->static(J[BI)V

    :cond_0
    const/4 v0, 0x1

    invoke-interface {p1, v0, p2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    new-instance p2, Landroid/support/v4/ph2;

    iget-object v0, p0, Landroid/support/v4/qh2;->do:Ljava/security/SecureRandom;

    new-instance v1, Landroid/support/v4/oh2;

    iget-object v2, p0, Landroid/support/v4/qh2;->for:[B

    iget-object v3, p0, Landroid/support/v4/qh2;->if:Lorg/bouncycastle/crypto/prng/EntropySourceProvider;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v4

    mul-int/lit8 v4, v4, 0x8

    invoke-interface {v3, v4}, Lorg/bouncycastle/crypto/prng/EntropySourceProvider;->get(I)Lorg/bouncycastle/crypto/prng/EntropySource;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Landroid/support/v4/oh2;-><init>(Lorg/bouncycastle/crypto/BlockCipher;[BLorg/bouncycastle/crypto/prng/EntropySource;)V

    invoke-direct {p2, v0, v1, p3}, Landroid/support/v4/ph2;-><init>(Ljava/security/SecureRandom;Landroid/support/v4/oh2;Z)V

    return-object p2
.end method

.method public if([B)Landroid/support/v4/qh2;
    .locals 0

    invoke-static {p1}, Landroid/support/v4/q3;->final([B)[B

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/qh2;->for:[B

    return-object p0
.end method
