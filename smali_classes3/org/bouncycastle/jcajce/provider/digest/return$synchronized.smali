.class public Lorg/bouncycastle/jcajce/provider/digest/return$synchronized;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/new;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/digest/return;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "synchronized"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v0, Landroid/support/v4/pi0;

    new-instance v1, Landroid/support/v4/f02;

    const/16 v2, 0x200

    const/16 v3, 0xe0

    invoke-direct {v1, v2, v3}, Landroid/support/v4/f02;-><init>(II)V

    invoke-direct {v0, v1}, Landroid/support/v4/pi0;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/new;-><init>(Lorg/bouncycastle/crypto/Mac;)V

    return-void
.end method
