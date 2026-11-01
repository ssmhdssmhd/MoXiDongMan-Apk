.class public Lorg/bouncycastle/pqc/jcajce/provider/mceliece/catch$do;
.super Lorg/bouncycastle/pqc/jcajce/provider/mceliece/catch;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/mceliece/catch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mceliece/for;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/mceliece/for;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/catch;-><init>(Lorg/bouncycastle/pqc/crypto/mceliece/for;)V

    return-void
.end method
