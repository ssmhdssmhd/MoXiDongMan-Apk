.class public Lorg/bouncycastle/jcajce/provider/symmetric/do$a;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Landroid/support/v4/me1;

    invoke-direct {v0}, Landroid/support/v4/me1;-><init>()V

    const-string v1, "Poly1305-AES"

    const/16 v2, 0x100

    invoke-direct {p0, v1, v2, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/for;-><init>(Ljava/lang/String;ILandroid/support/v4/rl;)V

    return-void
.end method
