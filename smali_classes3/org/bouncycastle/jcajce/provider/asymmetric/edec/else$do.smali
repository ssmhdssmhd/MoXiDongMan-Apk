.class public final Lorg/bouncycastle/jcajce/provider/asymmetric/edec/else$do;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/edec/else;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/edec/else;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Landroid/support/v4/t50;

    invoke-direct {v0}, Landroid/support/v4/t50;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/else;-><init>(ILorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;)V

    return-void
.end method
