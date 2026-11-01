.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/try$else;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ec/try;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/ec/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "else"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/engines/extends;

    new-instance v1, Landroid/support/v4/wp1;

    invoke-direct {v1}, Landroid/support/v4/wp1;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/engines/extends;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/try;-><init>(Lorg/bouncycastle/crypto/engines/extends;)V

    return-void
.end method
