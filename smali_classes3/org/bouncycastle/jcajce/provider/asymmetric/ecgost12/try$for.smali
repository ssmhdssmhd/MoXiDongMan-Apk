.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/try$for;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/try;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "for"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Landroid/support/v4/m50;

    new-instance v1, Landroid/support/v4/lg0;

    invoke-direct {v1}, Landroid/support/v4/lg0;-><init>()V

    invoke-direct {v0, v1}, Landroid/support/v4/m50;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    const-string v1, "ECGOST3410-2012-512"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/try;-><init>(Ljava/lang/String;Landroid/support/v4/m50;Lorg/bouncycastle/crypto/DerivationFunction;)V

    return-void
.end method
