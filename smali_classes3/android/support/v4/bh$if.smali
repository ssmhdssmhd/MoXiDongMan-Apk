.class public Landroid/support/v4/bh$if;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/case;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/bh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Landroid/support/v4/ch;

    invoke-direct {v0}, Landroid/support/v4/ch;-><init>()V

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/case;-><init>(Lorg/bouncycastle/crypto/StreamCipher;I)V

    return-void
.end method
