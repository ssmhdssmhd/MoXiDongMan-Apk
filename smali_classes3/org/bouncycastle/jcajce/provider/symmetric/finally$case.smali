.class public final Lorg/bouncycastle/jcajce/provider/symmetric/finally$case;
.super Lorg/bouncycastle/jcajce/provider/symmetric/finally$new;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/finally;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "case"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Landroid/support/v4/pi0;

    new-instance v1, Landroid/support/v4/zp1;

    invoke-direct {v1}, Landroid/support/v4/zp1;-><init>()V

    invoke-direct {v0, v1}, Landroid/support/v4/pi0;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    const-string v1, "TLS12withSHA384KDF"

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/finally$new;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/Mac;)V

    return-void
.end method
