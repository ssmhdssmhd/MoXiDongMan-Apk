.class public interface abstract Lorg/bouncycastle/crypto/tls/TlsSigner;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract createSigner(Landroid/support/v4/a4;)Lorg/bouncycastle/crypto/Signer;
.end method

.method public abstract createSigner(Lorg/bouncycastle/crypto/tls/i;Landroid/support/v4/a4;)Lorg/bouncycastle/crypto/Signer;
.end method

.method public abstract createVerifyer(Landroid/support/v4/a4;)Lorg/bouncycastle/crypto/Signer;
.end method

.method public abstract createVerifyer(Lorg/bouncycastle/crypto/tls/i;Landroid/support/v4/a4;)Lorg/bouncycastle/crypto/Signer;
.end method

.method public abstract generateRawSignature(Landroid/support/v4/a4;[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/xs;
        }
    .end annotation
.end method

.method public abstract generateRawSignature(Lorg/bouncycastle/crypto/tls/i;Landroid/support/v4/a4;[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/xs;
        }
    .end annotation
.end method

.method public abstract init(Lorg/bouncycastle/crypto/tls/TlsContext;)V
.end method

.method public abstract isValidPublicKey(Landroid/support/v4/a4;)Z
.end method

.method public abstract verifyRawSignature(Lorg/bouncycastle/crypto/tls/i;[BLandroid/support/v4/a4;[B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/xs;
        }
    .end annotation
.end method

.method public abstract verifyRawSignature([BLandroid/support/v4/a4;[B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/xs;
        }
    .end annotation
.end method
