.class public Lorg/bouncycastle/jcajce/provider/symmetric/else$break;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/else;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "break"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Landroid/support/v4/xt;

    invoke-direct {v0}, Landroid/support/v4/xt;-><init>()V

    const-string v1, "DESede3"

    const/16 v2, 0xc0

    invoke-direct {p0, v1, v2, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/for;-><init>(Ljava/lang/String;ILandroid/support/v4/rl;)V

    return-void
.end method
