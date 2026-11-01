.class public Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/try$import;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/try;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "import"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/digests/do;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/do;-><init>()V

    new-instance v1, Landroid/support/v4/lv;

    invoke-direct {v1}, Landroid/support/v4/lv;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/try;-><init>(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/DSAExt;)V

    return-void
.end method
