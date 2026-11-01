.class public Lorg/bouncycastle/pqc/jcajce/provider/qtesla/case$try;
.super Lorg/bouncycastle/pqc/jcajce/provider/qtesla/case;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/qtesla/case;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "try"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x4

    invoke-static {v0}, Landroid/support/v4/ri1;->do(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/digests/do;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/do;-><init>()V

    new-instance v2, Landroid/support/v4/si1;

    invoke-direct {v2}, Landroid/support/v4/si1;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/case;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;Landroid/support/v4/si1;)V

    return-void
.end method
