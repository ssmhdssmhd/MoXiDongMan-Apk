.class public Lorg/bouncycastle/pqc/jcajce/provider/qtesla/case$case;
.super Lorg/bouncycastle/pqc/jcajce/provider/qtesla/case;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/qtesla/case;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "case"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/digests/do;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/do;-><init>()V

    new-instance v1, Landroid/support/v4/si1;

    invoke-direct {v1}, Landroid/support/v4/si1;-><init>()V

    const-string v2, "qTESLA"

    invoke-direct {p0, v2, v0, v1}, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/case;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;Landroid/support/v4/si1;)V

    return-void
.end method
