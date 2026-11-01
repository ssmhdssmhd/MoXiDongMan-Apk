.class public Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/try$case;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/try;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "case"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-static {}, Landroid/support/v4/u00;->case()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    new-instance v1, Landroid/support/v4/lv;

    new-instance v2, Landroid/support/v4/qi0;

    invoke-static {}, Landroid/support/v4/u00;->case()Lorg/bouncycastle/crypto/Digest;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v4/qi0;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    invoke-direct {v1, v2}, Landroid/support/v4/lv;-><init>(Lorg/bouncycastle/crypto/signers/DSAKCalculator;)V

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/try;-><init>(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/DSAExt;)V

    return-void
.end method
