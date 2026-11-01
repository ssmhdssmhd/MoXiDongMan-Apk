.class public Lorg/bouncycastle/jcajce/provider/symmetric/try$case;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/try;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "case"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "Camellia"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/try;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/catch;)V

    return-void
.end method
