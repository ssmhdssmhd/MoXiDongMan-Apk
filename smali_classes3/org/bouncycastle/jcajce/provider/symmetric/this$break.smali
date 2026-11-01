.class public Lorg/bouncycastle/jcajce/provider/symmetric/this$break;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/new;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/this;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "break"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/macs/try;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/macs/try;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/new;-><init>(Lorg/bouncycastle/crypto/Mac;)V

    return-void
.end method
