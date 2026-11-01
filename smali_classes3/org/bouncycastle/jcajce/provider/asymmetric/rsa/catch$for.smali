.class public Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/catch$for;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/catch;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/catch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "for"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Landroid/support/v4/u00;->if()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/engines/return;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/return;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/catch;-><init>(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    return-void
.end method
