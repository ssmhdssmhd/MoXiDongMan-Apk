.class public Lorg/bouncycastle/jcajce/provider/symmetric/throws$break;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/new;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/throws;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "break"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/macs/new;

    new-instance v1, Lorg/bouncycastle/crypto/modes/catch;

    new-instance v2, Lorg/bouncycastle/crypto/engines/package;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/engines/package;-><init>()V

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/modes/catch;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/macs/new;-><init>(Lorg/bouncycastle/crypto/modes/catch;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/new;-><init>(Lorg/bouncycastle/crypto/Mac;)V

    return-void
.end method
