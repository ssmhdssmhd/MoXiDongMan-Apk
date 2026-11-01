.class public final Landroid/support/v4/sm0;
.super Ljava/util/concurrent/RejectedExecutionException;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Inline execution is prohibited for this request"

    .line 1
    invoke-direct {p0, v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    return-void
.end method
