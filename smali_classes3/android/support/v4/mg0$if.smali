.class public Landroid/support/v4/mg0$if;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/mg0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/if;

    new-instance v1, Lorg/bouncycastle/crypto/modes/goto;

    new-instance v2, Lorg/bouncycastle/crypto/engines/this;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/engines/this;-><init>()V

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/modes/goto;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/if;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    const/16 v1, 0x80

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lorg/bouncycastle/crypto/if;I)V

    return-void
.end method
