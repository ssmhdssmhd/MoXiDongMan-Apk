.class public Lorg/bouncycastle/jcajce/provider/asymmetric/dh/else$public;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/dh/else;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/dh/else;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "public"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Landroid/support/v4/lq;

    invoke-static {}, Landroid/support/v4/u00;->break()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/lq;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    const-string v1, "DHwithSHA512CKDF"

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/else;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/DerivationFunction;)V

    return-void
.end method
