.class public Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/try$case;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/try;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "case"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/encodings/for;

    new-instance v1, Lorg/bouncycastle/crypto/engines/return;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/return;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/encodings/for;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/try;-><init>(ZZLorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    return-void
.end method
