.class public Landroid/support/v4/const$new;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/case;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "new"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v0, Landroid/support/v4/jj1;

    invoke-direct {v0}, Landroid/support/v4/jj1;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x80

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/jcajce/provider/symmetric/util/case;-><init>(Lorg/bouncycastle/crypto/StreamCipher;III)V

    return-void
.end method
