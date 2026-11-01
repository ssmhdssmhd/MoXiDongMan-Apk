.class public Lorg/bouncycastle/pqc/jcajce/provider/xmss/break$else;
.super Lorg/bouncycastle/pqc/jcajce/provider/xmss/break;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/xmss/break;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "else"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/digests/do;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/do;-><init>()V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/throws;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/xmss/throws;-><init>()V

    const-string v2, "XMSSMT-SHAKE256"

    invoke-direct {p0, v2, v0, v1}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/break;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/pqc/crypto/xmss/throws;)V

    return-void
.end method
