.class public Landroid/support/v4/dy1$if;
.super Landroid/support/v4/dy1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/dy1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Landroid/support/v4/yp1;

    invoke-direct {v0}, Landroid/support/v4/yp1;-><init>()V

    new-instance v1, Landroid/support/v4/bl1;

    invoke-direct {v1}, Landroid/support/v4/bl1;-><init>()V

    invoke-direct {p0, v0, v1}, Landroid/support/v4/dy1;-><init>(Lorg/bouncycastle/crypto/Digest;Landroid/support/v4/bl1;)V

    return-void
.end method
