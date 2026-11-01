.class public Landroid/support/v4/vp1;
.super Lorg/bouncycastle/crypto/engines/native;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/engines/default;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/default;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/native;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    return-void
.end method
