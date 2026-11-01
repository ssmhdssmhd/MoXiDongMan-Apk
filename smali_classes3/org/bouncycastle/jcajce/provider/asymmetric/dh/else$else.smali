.class public Lorg/bouncycastle/jcajce/provider/asymmetric/dh/else$else;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/dh/else;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/dh/else;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "else"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Landroid/support/v4/wu;

    invoke-direct {v0}, Landroid/support/v4/wu;-><init>()V

    new-instance v1, Landroid/support/v4/lq;

    invoke-static {}, Landroid/support/v4/u00;->try()Lorg/bouncycastle/crypto/Digest;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v4/lq;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    const-string v2, "DHUwithSHA384CKDF"

    invoke-direct {p0, v2, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/else;-><init>(Ljava/lang/String;Landroid/support/v4/wu;Lorg/bouncycastle/crypto/DerivationFunction;)V

    return-void
.end method
