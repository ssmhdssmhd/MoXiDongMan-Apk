.class public Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/case$super;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/case;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/case;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "super"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/bouncycastle/asn1/catch;

    invoke-static {}, Landroid/support/v4/u00;->break()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/crypto/encodings/for;

    new-instance v3, Lorg/bouncycastle/crypto/engines/return;

    invoke-direct {v3}, Lorg/bouncycastle/crypto/engines/return;-><init>()V

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/encodings/for;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/case;-><init>(Lorg/bouncycastle/asn1/catch;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    return-void
.end method
