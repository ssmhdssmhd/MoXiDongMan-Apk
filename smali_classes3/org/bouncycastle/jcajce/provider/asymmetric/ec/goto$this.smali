.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/goto$this;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ec/goto;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/ec/goto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "this"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Landroid/support/v4/z30;

    invoke-direct {v0}, Landroid/support/v4/z30;-><init>()V

    const-string v1, "ECCDHU"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/goto;-><init>(Ljava/lang/String;Landroid/support/v4/z30;Lorg/bouncycastle/crypto/DerivationFunction;)V

    return-void
.end method
