.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/catch$extends;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ec/catch;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/ec/catch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "extends"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Landroid/support/v4/u00;->for()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    new-instance v1, Landroid/support/v4/v40;

    invoke-direct {v1}, Landroid/support/v4/v40;-><init>()V

    sget-object v2, Lorg/bouncycastle/crypto/signers/break;->do:Lorg/bouncycastle/crypto/signers/break;

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/catch;-><init>(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/DSAExt;Lorg/bouncycastle/crypto/signers/DSAEncoding;)V

    return-void
.end method
