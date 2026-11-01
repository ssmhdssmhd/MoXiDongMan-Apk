.class public Lorg/chromium/base/metrics/RecordUserAction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Landroid/support/v4/lo0;
    value = "base::android"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/metrics/RecordUserAction$Natives;,
        Lorg/chromium/base/metrics/RecordUserAction$UserActionCallback;
    }
.end annotation


# static fields
.field private static do:J

.field public static final synthetic if:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lorg/chromium/base/metrics/else;->do()Lorg/chromium/base/metrics/UmaRecorder;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-interface {v0, p0, v1, v2}, Lorg/chromium/base/metrics/UmaRecorder;->recordUserAction(Ljava/lang/String;J)V

    return-void
.end method

.method public static for(Lorg/chromium/base/metrics/RecordUserAction$UserActionCallback;)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/chromium/base/metrics/try;->if()Lorg/chromium/base/metrics/RecordUserAction$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/chromium/base/metrics/RecordUserAction$Natives;->addActionCallbackForTesting(Lorg/chromium/base/metrics/RecordUserAction$UserActionCallback;)J

    move-result-wide v0

    sput-wide v0, Lorg/chromium/base/metrics/RecordUserAction;->do:J

    return-void
.end method

.method public static if()V
    .locals 3

    .line 1
    invoke-static {}, Lorg/chromium/base/metrics/try;->if()Lorg/chromium/base/metrics/RecordUserAction$Natives;

    move-result-object v0

    sget-wide v1, Lorg/chromium/base/metrics/RecordUserAction;->do:J

    invoke-interface {v0, v1, v2}, Lorg/chromium/base/metrics/RecordUserAction$Natives;->removeActionCallbackForTesting(J)V

    const-wide/16 v0, 0x0

    .line 2
    sput-wide v0, Lorg/chromium/base/metrics/RecordUserAction;->do:J

    return-void
.end method
