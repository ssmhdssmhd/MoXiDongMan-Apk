.class public Landroid/support/v4/s8;
.super Landroid/support/v4/c31;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Landroid/support/v4/s8;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/c31;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public immediatelyRetryable()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/support/v4/c31;->mCronetInternalErrorCode:I

    const/16 v1, -0x166

    if-eq v0, v1, :cond_0

    const/16 v1, -0x160

    if-eq v0, v1, :cond_0

    .line 2
    invoke-super {p0}, Landroid/support/v4/c31;->immediatelyRetryable()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
