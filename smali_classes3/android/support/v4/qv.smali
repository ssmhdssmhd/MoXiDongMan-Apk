.class public Landroid/support/v4/qv;
.super Landroid/support/v4/r40;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/r40;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Landroid/support/v4/y3;
    .locals 4

    invoke-super {p0}, Landroid/support/v4/r40;->generateKeyPair()Landroid/support/v4/y3;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/y3;->if()Landroid/support/v4/a4;

    move-result-object v1

    check-cast v1, Landroid/support/v4/k50;

    invoke-virtual {v0}, Landroid/support/v4/y3;->do()Landroid/support/v4/a4;

    move-result-object v0

    check-cast v0, Landroid/support/v4/h50;

    new-instance v2, Landroid/support/v4/k50;

    invoke-virtual {v1}, Landroid/support/v4/k50;->for()Lorg/bouncycastle/math/ec/new;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/new;->private()Lorg/bouncycastle/math/ec/new;

    move-result-object v3

    invoke-virtual {v1}, Landroid/support/v4/s40;->if()Landroid/support/v4/e40;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/support/v4/k50;-><init>(Lorg/bouncycastle/math/ec/new;Landroid/support/v4/e40;)V

    new-instance v1, Landroid/support/v4/y3;

    invoke-direct {v1, v2, v0}, Landroid/support/v4/y3;-><init>(Landroid/support/v4/a4;Landroid/support/v4/a4;)V

    return-object v1
.end method
