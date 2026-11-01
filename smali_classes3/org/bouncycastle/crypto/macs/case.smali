.class public Lorg/bouncycastle/crypto/macs/case;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/Mac;


# instance fields
.field private final do:Lorg/bouncycastle/crypto/modes/throw;

.field private final if:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/modes/throw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/macs/case;->do:Lorg/bouncycastle/crypto/modes/throw;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/modes/throw;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object p1

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p1

    mul-int/lit8 p1, p1, 0x8

    iput p1, p0, Lorg/bouncycastle/crypto/macs/case;->if:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/modes/throw;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/macs/case;->do:Lorg/bouncycastle/crypto/modes/throw;

    iput p2, p0, Lorg/bouncycastle/crypto/macs/case;->if:I

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/tw;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/case;->do:Lorg/bouncycastle/crypto/modes/throw;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/crypto/modes/throw;->doFinal([BI)I

    move-result p1
    :try_end_0
    .catch Landroid/support/v4/tn0; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/case;->do:Lorg/bouncycastle/crypto/modes/throw;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/modes/throw;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-KGMAC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/macs/case;->if:I

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    instance-of v0, p1, Landroid/support/v4/bc1;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v4/bc1;

    invoke-virtual {p1}, Landroid/support/v4/bc1;->do()[B

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/bc1;->if()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Landroid/support/v4/gr0;

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/case;->do:Lorg/bouncycastle/crypto/modes/throw;

    const/4 v2, 0x1

    new-instance v3, Landroid/support/v4/new;

    iget v4, p0, Lorg/bouncycastle/crypto/macs/case;->if:I

    invoke-direct {v3, p1, v4, v0}, Landroid/support/v4/new;-><init>(Landroid/support/v4/gr0;I[B)V

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/crypto/modes/throw;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "KGMAC requires ParametersWithIV"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/case;->do:Lorg/bouncycastle/crypto/modes/throw;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/throw;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/case;->do:Lorg/bouncycastle/crypto/modes/throw;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/modes/throw;->processAADByte(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/tw;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/case;->do:Lorg/bouncycastle/crypto/modes/throw;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/modes/throw;->processAADBytes([BII)V

    return-void
.end method
