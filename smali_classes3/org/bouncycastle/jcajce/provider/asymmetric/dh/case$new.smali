.class public Lorg/bouncycastle/jcajce/provider/asymmetric/dh/case$new;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/dh/case;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/dh/case;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "new"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 7

    new-instance v0, Lorg/bouncycastle/crypto/engines/final;

    new-instance v1, Landroid/support/v4/du;

    invoke-direct {v1}, Landroid/support/v4/du;-><init>()V

    new-instance v2, Landroid/support/v4/gq0;

    invoke-static {}, Landroid/support/v4/u00;->if()Lorg/bouncycastle/crypto/Digest;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v4/gq0;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    new-instance v3, Landroid/support/v4/pi0;

    invoke-static {}, Landroid/support/v4/u00;->if()Lorg/bouncycastle/crypto/Digest;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v4/pi0;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    new-instance v4, Lorg/bouncycastle/crypto/paddings/new;

    new-instance v5, Lorg/bouncycastle/crypto/modes/do;

    new-instance v6, Landroid/support/v4/wt;

    invoke-direct {v6}, Landroid/support/v4/wt;-><init>()V

    invoke-direct {v5, v6}, Lorg/bouncycastle/crypto/modes/do;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v4, v5}, Lorg/bouncycastle/crypto/paddings/new;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/final;-><init>(Lorg/bouncycastle/crypto/BasicAgreement;Lorg/bouncycastle/crypto/DerivationFunction;Lorg/bouncycastle/crypto/Mac;Lorg/bouncycastle/crypto/if;)V

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/case;-><init>(Lorg/bouncycastle/crypto/engines/final;I)V

    return-void
.end method
