.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/else$if;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ec/else;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/ec/else;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 5

    new-instance v0, Lorg/bouncycastle/crypto/engines/final;

    new-instance v1, Landroid/support/v4/x30;

    invoke-direct {v1}, Landroid/support/v4/x30;-><init>()V

    new-instance v2, Landroid/support/v4/gq0;

    invoke-static {}, Landroid/support/v4/u00;->if()Lorg/bouncycastle/crypto/Digest;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v4/gq0;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    new-instance v3, Landroid/support/v4/pi0;

    invoke-static {}, Landroid/support/v4/u00;->if()Lorg/bouncycastle/crypto/Digest;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v4/pi0;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/final;-><init>(Lorg/bouncycastle/crypto/BasicAgreement;Lorg/bouncycastle/crypto/DerivationFunction;Lorg/bouncycastle/crypto/Mac;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/else;-><init>(Lorg/bouncycastle/crypto/engines/final;)V

    return-void
.end method
