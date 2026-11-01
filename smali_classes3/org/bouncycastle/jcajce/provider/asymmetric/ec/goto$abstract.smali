.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/goto$abstract;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ec/goto;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/ec/goto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "abstract"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Landroid/support/v4/x30;

    invoke-direct {v0}, Landroid/support/v4/x30;-><init>()V

    new-instance v1, Landroid/support/v4/gq0;

    new-instance v2, Landroid/support/v4/sj1;

    invoke-direct {v2}, Landroid/support/v4/sj1;-><init>()V

    invoke-direct {v1, v2}, Landroid/support/v4/gq0;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    const-string v2, "ECKAEGwithRIPEMD160KDF"

    invoke-direct {p0, v2, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/goto;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/BasicAgreement;Lorg/bouncycastle/crypto/DerivationFunction;)V

    return-void
.end method
