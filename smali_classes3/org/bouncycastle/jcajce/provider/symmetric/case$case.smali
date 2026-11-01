.class public Lorg/bouncycastle/jcajce/provider/symmetric/case$case;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/new;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/case;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "case"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v0, Landroid/support/v4/ke;

    new-instance v1, Landroid/support/v4/rt;

    invoke-direct {v1}, Landroid/support/v4/rt;-><init>()V

    new-instance v2, Lorg/bouncycastle/crypto/paddings/if;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/paddings/if;-><init>()V

    const/16 v3, 0x40

    invoke-direct {v0, v1, v3, v2}, Landroid/support/v4/ke;-><init>(Lorg/bouncycastle/crypto/BlockCipher;ILorg/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/new;-><init>(Lorg/bouncycastle/crypto/Mac;)V

    return-void
.end method
