.class public final Landroid/support/v4/f2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1b
.end annotation

.annotation build Landroid/support/v4/oe2;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Landroid/view/Window;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/Window;->isWideColorGamut()Z

    move-result p0

    return p0
.end method
