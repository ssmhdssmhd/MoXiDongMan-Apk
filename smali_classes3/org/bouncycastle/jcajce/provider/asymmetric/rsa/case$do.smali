.class public Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/case$do;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/case;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/case;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md2:Lorg/bouncycastle/asn1/catch;

    new-instance v1, Landroid/support/v4/mw0;

    invoke-direct {v1}, Landroid/support/v4/mw0;-><init>()V

    new-instance v2, Lorg/bouncycastle/crypto/encodings/for;

    new-instance v3, Lorg/bouncycastle/crypto/engines/return;

    invoke-direct {v3}, Lorg/bouncycastle/crypto/engines/return;-><init>()V

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/encodings/for;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/case;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    return-void
.end method
