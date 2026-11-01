.class public Landroid/support/v4/k72;
.super Lorg/bouncycastle/crypto/tls/r;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/tls/r;-><init>()V

    return-void
.end method


# virtual methods
.method public do(S)Lorg/bouncycastle/crypto/DSA;
    .locals 2

    new-instance v0, Landroid/support/v4/lv;

    new-instance v1, Landroid/support/v4/qi0;

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/l0;->throws(S)Lorg/bouncycastle/crypto/Digest;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/support/v4/qi0;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    invoke-direct {v0, v1}, Landroid/support/v4/lv;-><init>(Lorg/bouncycastle/crypto/signers/DSAKCalculator;)V

    return-object v0
.end method

.method public if()S
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public isValidPublicKey(Landroid/support/v4/a4;)Z
    .locals 0

    instance-of p1, p1, Landroid/support/v4/kv;

    return p1
.end method
