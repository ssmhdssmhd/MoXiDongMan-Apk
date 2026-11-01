.class public Lorg/bouncycastle/jcajce/provider/symmetric/do$c;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/else;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/engines/public;

    new-instance v1, Landroid/support/v4/case;

    invoke-direct {v1}, Landroid/support/v4/case;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/engines/public;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/else;-><init>(Lorg/bouncycastle/crypto/Wrapper;)V

    return-void
.end method
