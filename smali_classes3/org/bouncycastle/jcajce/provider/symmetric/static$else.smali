.class public Lorg/bouncycastle/jcajce/provider/symmetric/static$else;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/try;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/static;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "else"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "SEED"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/try;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/catch;)V

    return-void
.end method
