.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/goto$final;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ec/goto;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/ec/goto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "final"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Landroid/support/v4/z30;

    invoke-direct {v0}, Landroid/support/v4/z30;-><init>()V

    new-instance v1, Landroid/support/v4/lq;

    invoke-static {}, Landroid/support/v4/u00;->new()Lorg/bouncycastle/crypto/Digest;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v4/lq;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    const-string v2, "ECCDHUwithSHA256CKDF"

    invoke-direct {p0, v2, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/goto;-><init>(Ljava/lang/String;Landroid/support/v4/z30;Lorg/bouncycastle/crypto/DerivationFunction;)V

    return-void
.end method
