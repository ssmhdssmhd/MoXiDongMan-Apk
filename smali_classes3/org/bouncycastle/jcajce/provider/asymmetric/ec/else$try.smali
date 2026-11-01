.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/else$try;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ec/else$new;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/ec/else;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "try"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/modes/do;

    new-instance v1, Landroid/support/v4/wt;

    invoke-direct {v1}, Landroid/support/v4/wt;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/modes/do;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/else$new;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I)V

    return-void
.end method
