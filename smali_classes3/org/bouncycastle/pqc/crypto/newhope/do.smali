.class Lorg/bouncycastle/pqc/crypto/newhope/do;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do([B[B[BII)V
    .locals 6

    new-instance v0, Landroid/support/v4/dh;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/support/v4/dh;-><init>(I)V

    new-instance v1, Landroid/support/v4/bc1;

    new-instance v2, Landroid/support/v4/gr0;

    invoke-direct {v2, p0}, Landroid/support/v4/gr0;-><init>([B)V

    invoke-direct {v1, v2, p1}, Landroid/support/v4/bc1;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/vr1;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/vr1;->processBytes([BII[BI)I

    return-void
.end method
