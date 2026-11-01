.class public Landroid/support/v4/const$if;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/for;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Landroid/support/v4/rl;

    invoke-direct {v0}, Landroid/support/v4/rl;-><init>()V

    const-string v1, "RC4"

    const/16 v2, 0x80

    invoke-direct {p0, v1, v2, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/for;-><init>(Ljava/lang/String;ILandroid/support/v4/rl;)V

    return-void
.end method
