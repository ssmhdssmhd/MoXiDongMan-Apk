.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/try$new;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ec/try;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/ec/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "new"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/engines/extends;

    new-instance v1, Landroid/support/v4/y9;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Landroid/support/v4/y9;-><init>(I)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/engines/extends;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/try;-><init>(Lorg/bouncycastle/crypto/engines/extends;)V

    return-void
.end method
