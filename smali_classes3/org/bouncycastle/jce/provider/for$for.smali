.class public Lorg/bouncycastle/jce/provider/for$for;
.super Lorg/bouncycastle/jce/provider/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "for"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 6

    new-instance v1, Lorg/bouncycastle/crypto/modes/do;

    new-instance v0, Landroid/support/v4/wt;

    invoke-direct {v0}, Landroid/support/v4/wt;-><init>()V

    invoke-direct {v1, v0}, Lorg/bouncycastle/crypto/modes/do;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x80

    const/16 v5, 0x40

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/jce/provider/for;-><init>(Lorg/bouncycastle/crypto/BlockCipher;IIII)V

    return-void
.end method
