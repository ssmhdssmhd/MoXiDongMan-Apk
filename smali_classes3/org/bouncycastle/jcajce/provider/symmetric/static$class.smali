.class public Lorg/bouncycastle/jcajce/provider/symmetric/static$class;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/else;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/static;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "class"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Landroid/support/v4/vp1;

    invoke-direct {v0}, Landroid/support/v4/vp1;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/else;-><init>(Lorg/bouncycastle/crypto/Wrapper;)V

    return-void
.end method
