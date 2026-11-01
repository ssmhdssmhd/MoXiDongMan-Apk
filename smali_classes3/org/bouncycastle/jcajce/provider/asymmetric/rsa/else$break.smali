.class public Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/else$break;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/else;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/else;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "break"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Landroid/support/v4/xf2;

    invoke-direct {v0}, Landroid/support/v4/xf2;-><init>()V

    new-instance v1, Lorg/bouncycastle/crypto/engines/return;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/return;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/else;-><init>(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    return-void
.end method
