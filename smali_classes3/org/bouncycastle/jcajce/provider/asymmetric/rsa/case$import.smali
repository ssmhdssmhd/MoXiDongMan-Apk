.class public Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/case$import;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/case;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/case;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "import"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/digests/do;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/do;-><init>()V

    new-instance v1, Lorg/bouncycastle/crypto/encodings/for;

    new-instance v2, Lorg/bouncycastle/crypto/engines/return;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/engines/return;-><init>()V

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/encodings/for;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/case;-><init>(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    return-void
.end method
