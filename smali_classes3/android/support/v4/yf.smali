.class public Landroid/support/v4/yf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final do:S = 0x0s

.field public static final if:S = 0x1s


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(S)Z
    .locals 1

    const/4 v0, 0x1

    if-ltz p0, :cond_0

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
