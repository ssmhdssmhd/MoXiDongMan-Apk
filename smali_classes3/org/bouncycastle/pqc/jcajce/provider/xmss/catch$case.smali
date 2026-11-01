.class public Lorg/bouncycastle/pqc/jcajce/provider/xmss/catch$case;
.super Lorg/bouncycastle/pqc/jcajce/provider/xmss/catch;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/xmss/catch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "case"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Landroid/support/v4/dq1;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroid/support/v4/dq1;-><init>(I)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/xmss/strictfp;-><init>()V

    const-string v2, "SHAKE128withXMSSMT-SHAKE128"

    invoke-direct {p0, v2, v0, v1}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/catch;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/pqc/crypto/xmss/strictfp;)V

    return-void
.end method
