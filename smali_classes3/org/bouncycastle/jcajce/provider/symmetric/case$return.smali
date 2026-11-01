.class public Lorg/bouncycastle/jcajce/provider/symmetric/case$return;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/else;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/case;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "return"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/engines/import;

    new-instance v1, Landroid/support/v4/rt;

    invoke-direct {v1}, Landroid/support/v4/rt;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/engines/import;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/else;-><init>(Lorg/bouncycastle/crypto/Wrapper;I)V

    return-void
.end method
