.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/case$do;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ec/case;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/ec/case;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/signers/this;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/signers/this;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/case;-><init>(Lorg/bouncycastle/crypto/signers/this;)V

    return-void
.end method
