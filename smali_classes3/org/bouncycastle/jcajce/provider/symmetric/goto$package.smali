.class public Lorg/bouncycastle/jcajce/provider/symmetric/goto$package;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/new;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/goto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "package"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v0, Lorg/bouncycastle/crypto/macs/case;

    new-instance v1, Lorg/bouncycastle/crypto/modes/throw;

    new-instance v2, Lorg/bouncycastle/crypto/engines/case;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/engines/case;-><init>(I)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/modes/throw;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v0, v1, v3}, Lorg/bouncycastle/crypto/macs/case;-><init>(Lorg/bouncycastle/crypto/modes/throw;I)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/new;-><init>(Lorg/bouncycastle/crypto/Mac;)V

    return-void
.end method
