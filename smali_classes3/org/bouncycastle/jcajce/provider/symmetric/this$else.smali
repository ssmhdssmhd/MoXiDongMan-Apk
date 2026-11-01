.class public Lorg/bouncycastle/jcajce/provider/symmetric/this$else;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/this;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "else"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/if;

    new-instance v1, Lorg/bouncycastle/crypto/modes/break;

    new-instance v2, Landroid/support/v4/mf0;

    invoke-direct {v2}, Landroid/support/v4/mf0;-><init>()V

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/modes/break;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/if;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    const/16 v1, 0x40

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lorg/bouncycastle/crypto/if;I)V

    return-void
.end method
