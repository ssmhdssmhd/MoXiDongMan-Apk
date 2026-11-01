.class public Lorg/bouncycastle/pqc/jcajce/provider/mceliece/class$do;
.super Lorg/bouncycastle/pqc/jcajce/provider/mceliece/class;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/mceliece/class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Landroid/support/v4/u00;->for()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/pqc/crypto/mceliece/case;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/mceliece/case;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/class;-><init>(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/pqc/crypto/mceliece/case;)V

    return-void
.end method
