.class public Lorg/bouncycastle/jcajce/provider/symmetric/else$try;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/new;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/else;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "try"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Landroid/support/v4/ke;

    new-instance v1, Landroid/support/v4/wt;

    invoke-direct {v1}, Landroid/support/v4/wt;-><init>()V

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2}, Landroid/support/v4/ke;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/new;-><init>(Lorg/bouncycastle/crypto/Mac;)V

    return-void
.end method
