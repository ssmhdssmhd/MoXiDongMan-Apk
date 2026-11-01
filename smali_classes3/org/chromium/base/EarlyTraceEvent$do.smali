.class final Lorg/chromium/base/EarlyTraceEvent$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/EarlyTraceEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation


# instance fields
.field public final do:Z

.field public final for:J

.field public final if:Ljava/lang/String;

.field public final new:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/chromium/base/EarlyTraceEvent$do;->if:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Lorg/chromium/base/EarlyTraceEvent$do;->for:J

    .line 4
    iput-boolean p4, p0, Lorg/chromium/base/EarlyTraceEvent$do;->do:Z

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/chromium/base/EarlyTraceEvent$do;->new:J

    return-void
.end method
