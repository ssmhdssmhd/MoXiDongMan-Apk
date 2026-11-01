.class public Lorg/bouncycastle/jcajce/provider/symmetric/else$import;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/else;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/else;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "import"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/engines/try;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/try;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/else;-><init>(Lorg/bouncycastle/crypto/Wrapper;)V

    return-void
.end method
