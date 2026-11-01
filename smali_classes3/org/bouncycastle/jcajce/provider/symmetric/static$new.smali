.class public Lorg/bouncycastle/jcajce/provider/symmetric/static$new;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/new;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/static;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "new"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Landroid/support/v4/ue;

    new-instance v1, Lorg/bouncycastle/crypto/engines/default;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/default;-><init>()V

    invoke-direct {v0, v1}, Landroid/support/v4/ue;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/new;-><init>(Lorg/bouncycastle/crypto/Mac;)V

    return-void
.end method
