.class public Landroid/support/v4/tl$do;
.super Landroid/support/v4/tl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/tl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Landroid/support/v4/e60;

    invoke-direct {v0}, Landroid/support/v4/e60;-><init>()V

    invoke-direct {p0, v0}, Landroid/support/v4/tl;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    return-void
.end method
