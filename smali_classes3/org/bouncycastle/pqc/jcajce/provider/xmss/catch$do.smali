.class public Lorg/bouncycastle/pqc/jcajce/provider/xmss/catch$do;
.super Lorg/bouncycastle/pqc/jcajce/provider/xmss/catch;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/xmss/catch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/digests/do;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/do;-><init>()V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;-><init>()V

    const-string v2, "XMSS-SHA256"

    invoke-direct {p0, v2, v0, v1}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/catch;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/pqc/crypto/xmss/strictfp;)V

    return-void
.end method
