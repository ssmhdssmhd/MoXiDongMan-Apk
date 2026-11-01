.class public Landroid/support/v4/catch;
.super Lorg/bouncycastle/crypto/engines/native;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Landroid/support/v4/case;

    invoke-direct {v0}, Landroid/support/v4/case;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/native;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    new-instance v0, Landroid/support/v4/case;

    invoke-direct {v0}, Landroid/support/v4/case;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/engines/native;-><init>(Lorg/bouncycastle/crypto/BlockCipher;Z)V

    return-void
.end method
