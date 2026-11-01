.class final Lorg/chromium/base/EarlyTraceEvent$if;
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
    name = "if"
.end annotation


# instance fields
.field public final case:J

.field public final do:Z

.field public final for:Ljava/lang/String;

.field public final if:Z

.field public final new:I

.field public final try:J


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p2, p0, Lorg/chromium/base/EarlyTraceEvent$if;->do:Z

    .line 3
    iput-boolean p3, p0, Lorg/chromium/base/EarlyTraceEvent$if;->if:Z

    .line 4
    iput-object p1, p0, Lorg/chromium/base/EarlyTraceEvent$if;->for:Ljava/lang/String;

    .line 5
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p1

    iput p1, p0, Lorg/chromium/base/EarlyTraceEvent$if;->new:I

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/chromium/base/EarlyTraceEvent$if;->try:J

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/chromium/base/EarlyTraceEvent$if;->case:J

    return-void
.end method
