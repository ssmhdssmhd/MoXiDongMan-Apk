.class public Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/try$catch;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/try;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "catch"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Landroid/support/v4/u00;->new()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    new-instance v1, Landroid/support/v4/lv;

    invoke-direct {v1}, Landroid/support/v4/lv;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/try;-><init>(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/DSAExt;)V

    return-void
.end method
