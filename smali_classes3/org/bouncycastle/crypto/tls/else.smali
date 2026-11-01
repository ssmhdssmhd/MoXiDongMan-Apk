.class public abstract Lorg/bouncycastle/crypto/tls/else;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/tls/TlsSigner;


# instance fields
.field public do:Lorg/bouncycastle/crypto/tls/TlsContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSigner(Landroid/support/v4/a4;)Lorg/bouncycastle/crypto/Signer;
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/bouncycastle/crypto/tls/TlsSigner;->createSigner(Lorg/bouncycastle/crypto/tls/i;Landroid/support/v4/a4;)Lorg/bouncycastle/crypto/Signer;

    move-result-object p1

    return-object p1
.end method

.method public createVerifyer(Landroid/support/v4/a4;)Lorg/bouncycastle/crypto/Signer;
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/bouncycastle/crypto/tls/TlsSigner;->createVerifyer(Lorg/bouncycastle/crypto/tls/i;Landroid/support/v4/a4;)Lorg/bouncycastle/crypto/Signer;

    move-result-object p1

    return-object p1
.end method

.method public generateRawSignature(Landroid/support/v4/a4;[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/xs;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Lorg/bouncycastle/crypto/tls/TlsSigner;->generateRawSignature(Lorg/bouncycastle/crypto/tls/i;Landroid/support/v4/a4;[B)[B

    move-result-object p1

    return-object p1
.end method

.method public init(Lorg/bouncycastle/crypto/tls/TlsContext;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/else;->do:Lorg/bouncycastle/crypto/tls/TlsContext;

    return-void
.end method

.method public verifyRawSignature([BLandroid/support/v4/a4;[B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/xs;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2, p3}, Lorg/bouncycastle/crypto/tls/TlsSigner;->verifyRawSignature(Lorg/bouncycastle/crypto/tls/i;[BLandroid/support/v4/a4;[B)Z

    move-result p1

    return p1
.end method
