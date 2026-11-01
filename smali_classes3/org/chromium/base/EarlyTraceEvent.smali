.class public Lorg/chromium/base/EarlyTraceEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/cx0;
.end annotation

.annotation runtime Landroid/support/v4/lo0;
    value = "base::android"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/EarlyTraceEvent$Natives;,
        Lorg/chromium/base/EarlyTraceEvent$do;,
        Lorg/chromium/base/EarlyTraceEvent$if;
    }
.end annotation


# static fields
.field public static final break:Ljava/lang/String; = "trace-early-java-in-child"

.field private static final case:Ljava/lang/String; = "bg_startup_tracing"

.field private static final catch:Ljava/lang/Object;

.field public static class:Ljava/util/List; = null
    .annotation build Landroid/support/v4/ii0;
        value = "sLock"
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/chromium/base/EarlyTraceEvent$if;",
            ">;"
        }
    .end annotation
.end field

.field public static const:Ljava/util/List; = null
    .annotation build Landroid/support/v4/ii0;
        value = "sLock"
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/chromium/base/EarlyTraceEvent$do;",
            ">;"
        }
    .end annotation
.end field

.field public static final do:I = 0x0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static else:Z = false

.field public static final synthetic final:Z = false

.field public static final for:I = 0x2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final goto:Ljava/lang/String; = "/data/local/chrome-trace-config.json"

.field public static final if:I = 0x1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static volatile new:I = 0x0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final this:Ljava/lang/String; = "trace-startup"

.field private static volatile try:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/base/EarlyTraceEvent;->catch:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static break(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/chromium/base/EarlyTraceEvent$if;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/chromium/base/EarlyTraceEvent;->catch:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    sget-object v2, Lorg/chromium/base/EarlyTraceEvent;->class:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/chromium/base/EarlyTraceEvent$if;

    .line 4
    iget-object v4, v3, Lorg/chromium/base/EarlyTraceEvent$if;->for:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static case()V
    .locals 2

    .line 1
    sget-object v0, Lorg/chromium/base/EarlyTraceEvent;->catch:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget v1, Lorg/chromium/base/EarlyTraceEvent;->new:I

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 3
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lorg/chromium/base/EarlyTraceEvent;->class:Ljava/util/List;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lorg/chromium/base/EarlyTraceEvent;->const:Ljava/util/List;

    const/4 v1, 0x1

    .line 5
    sput v1, Lorg/chromium/base/EarlyTraceEvent;->new:I

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static catch()J
    .locals 4

    .line 1
    invoke-static {}, Lorg/chromium/base/import;->if()Lorg/chromium/base/TimeUtils$Natives;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/base/TimeUtils$Natives;->getTimeTicksNowUs()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static class()V
    .locals 6

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->for()V

    .line 2
    sget v0, Lorg/chromium/base/EarlyTraceEvent;->new:I

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 4
    :try_start_0
    invoke-static {}, Lorg/chromium/base/CommandLine;->else()Lorg/chromium/base/CommandLine;

    move-result-object v1

    const-string v2, "trace-startup"

    invoke-virtual {v1, v2}, Lorg/chromium/base/CommandLine;->class(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/local/chrome-trace-config.json"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    .line 6
    :goto_0
    :try_start_2
    invoke-static {}, Lorg/chromium/base/try;->new()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "bg_startup_tracing"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v1, :cond_2

    .line 7
    invoke-static {v3}, Lorg/chromium/base/EarlyTraceEvent;->setBackgroundStartupTracingFlag(Z)V

    .line 8
    sput-boolean v3, Lorg/chromium/base/EarlyTraceEvent;->else:Z

    goto :goto_1

    .line 9
    :cond_2
    sput-boolean v2, Lorg/chromium/base/EarlyTraceEvent;->else:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_3
    :goto_1
    move v2, v1

    .line 10
    :goto_2
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    if-eqz v2, :cond_4

    .line 11
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->case()V

    :cond_4
    return-void

    :catchall_0
    move-exception v1

    .line 12
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 13
    throw v1
.end method

.method public static const()V
    .locals 3

    .line 1
    sget-boolean v0, Lorg/chromium/base/EarlyTraceEvent;->try:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lorg/chromium/base/EarlyTraceEvent;->catch:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {}, Lorg/chromium/base/CommandLine;->else()Lorg/chromium/base/CommandLine;

    move-result-object v1

    const-string v2, "trace-early-java-in-child"

    invoke-virtual {v1, v2}, Lorg/chromium/base/CommandLine;->class(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->final()V

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_1
    sget v1, Lorg/chromium/base/EarlyTraceEvent;->new:I

    if-nez v1, :cond_2

    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->case()V

    .line 7
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static do(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->else()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lorg/chromium/base/EarlyTraceEvent$if;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Lorg/chromium/base/EarlyTraceEvent$if;-><init>(Ljava/lang/String;ZZ)V

    .line 3
    sget-object p0, Lorg/chromium/base/EarlyTraceEvent;->catch:Ljava/lang/Object;

    monitor-enter p0

    .line 4
    :try_start_0
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->else()Z

    move-result p1

    if-nez p1, :cond_1

    monitor-exit p0

    return-void

    .line 5
    :cond_1
    sget-object p1, Lorg/chromium/base/EarlyTraceEvent;->class:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static else()Z
    .locals 2

    .line 1
    sget v0, Lorg/chromium/base/EarlyTraceEvent;->new:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static final()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    sget-object v0, Lorg/chromium/base/EarlyTraceEvent;->catch:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    sput v1, Lorg/chromium/base/EarlyTraceEvent;->new:I

    const/4 v1, 0x0

    .line 3
    sput-object v1, Lorg/chromium/base/EarlyTraceEvent;->class:Ljava/util/List;

    .line 4
    sput-object v1, Lorg/chromium/base/EarlyTraceEvent;->const:Ljava/util/List;

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static for(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/chromium/base/EarlyTraceEvent$do;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->catch()J

    move-result-wide v0

    .line 2
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/chromium/base/EarlyTraceEvent$do;

    .line 3
    iget-boolean v4, v3, Lorg/chromium/base/EarlyTraceEvent$do;->do:Z

    if-eqz v4, :cond_0

    .line 4
    invoke-static {}, Lorg/chromium/base/goto;->if()Lorg/chromium/base/EarlyTraceEvent$Natives;

    move-result-object v5

    iget-object v6, v3, Lorg/chromium/base/EarlyTraceEvent$do;->if:Ljava/lang/String;

    iget-wide v7, v3, Lorg/chromium/base/EarlyTraceEvent$do;->for:J

    iget-wide v3, v3, Lorg/chromium/base/EarlyTraceEvent$do;->new:J

    add-long v9, v3, v0

    invoke-interface/range {v5 .. v10}, Lorg/chromium/base/EarlyTraceEvent$Natives;->recordEarlyAsyncBeginEvent(Ljava/lang/String;JJ)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lorg/chromium/base/goto;->if()Lorg/chromium/base/EarlyTraceEvent$Natives;

    move-result-object v11

    iget-object v12, v3, Lorg/chromium/base/EarlyTraceEvent$do;->if:Ljava/lang/String;

    iget-wide v13, v3, Lorg/chromium/base/EarlyTraceEvent$do;->for:J

    iget-wide v3, v3, Lorg/chromium/base/EarlyTraceEvent$do;->new:J

    add-long v15, v3, v0

    invoke-interface/range {v11 .. v16}, Lorg/chromium/base/EarlyTraceEvent$Natives;->recordEarlyAsyncEndEvent(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getBackgroundStartupTracingFlag()Z
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 1
    sget-boolean v0, Lorg/chromium/base/EarlyTraceEvent;->else:Z

    return v0
.end method

.method public static goto(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->else()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lorg/chromium/base/EarlyTraceEvent$if;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lorg/chromium/base/EarlyTraceEvent$if;-><init>(Ljava/lang/String;ZZ)V

    .line 3
    sget-object p0, Lorg/chromium/base/EarlyTraceEvent;->catch:Ljava/lang/Object;

    monitor-enter p0

    .line 4
    :try_start_0
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->else()Z

    move-result p1

    if-nez p1, :cond_1

    monitor-exit p0

    return-void

    .line 5
    :cond_1
    sget-object p1, Lorg/chromium/base/EarlyTraceEvent;->class:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static if()V
    .locals 2

    .line 1
    sget-object v0, Lorg/chromium/base/EarlyTraceEvent;->catch:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->else()Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 3
    :cond_0
    sget-object v1, Lorg/chromium/base/EarlyTraceEvent;->class:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    sget-object v1, Lorg/chromium/base/EarlyTraceEvent;->class:Ljava/util/List;

    invoke-static {v1}, Lorg/chromium/base/EarlyTraceEvent;->new(Ljava/util/List;)V

    .line 5
    sget-object v1, Lorg/chromium/base/EarlyTraceEvent;->class:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 6
    :cond_1
    sget-object v1, Lorg/chromium/base/EarlyTraceEvent;->const:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 7
    sget-object v1, Lorg/chromium/base/EarlyTraceEvent;->const:Ljava/util/List;

    invoke-static {v1}, Lorg/chromium/base/EarlyTraceEvent;->for(Ljava/util/List;)V

    .line 8
    sget-object v1, Lorg/chromium/base/EarlyTraceEvent;->const:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_2
    const/4 v1, 0x2

    .line 9
    sput v1, Lorg/chromium/base/EarlyTraceEvent;->new:I

    const/4 v1, 0x0

    .line 10
    sput-object v1, Lorg/chromium/base/EarlyTraceEvent;->class:Ljava/util/List;

    .line 11
    sput-object v1, Lorg/chromium/base/EarlyTraceEvent;->const:Ljava/util/List;

    .line 12
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static new(Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/chromium/base/EarlyTraceEvent$if;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->catch()J

    move-result-wide v0

    .line 2
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/chromium/base/EarlyTraceEvent$if;

    .line 3
    iget-boolean v4, v3, Lorg/chromium/base/EarlyTraceEvent$if;->do:Z

    if-eqz v4, :cond_1

    .line 4
    iget-boolean v4, v3, Lorg/chromium/base/EarlyTraceEvent$if;->if:Z

    if-eqz v4, :cond_0

    .line 5
    invoke-static {}, Lorg/chromium/base/goto;->if()Lorg/chromium/base/EarlyTraceEvent$Natives;

    move-result-object v5

    iget-object v6, v3, Lorg/chromium/base/EarlyTraceEvent$if;->for:Ljava/lang/String;

    iget-wide v7, v3, Lorg/chromium/base/EarlyTraceEvent$if;->try:J

    add-long/2addr v7, v0

    iget v9, v3, Lorg/chromium/base/EarlyTraceEvent$if;->new:I

    iget-wide v10, v3, Lorg/chromium/base/EarlyTraceEvent$if;->case:J

    invoke-interface/range {v5 .. v11}, Lorg/chromium/base/EarlyTraceEvent$Natives;->recordEarlyToplevelBeginEvent(Ljava/lang/String;JIJ)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lorg/chromium/base/goto;->if()Lorg/chromium/base/EarlyTraceEvent$Natives;

    move-result-object v12

    iget-object v13, v3, Lorg/chromium/base/EarlyTraceEvent$if;->for:Ljava/lang/String;

    iget-wide v4, v3, Lorg/chromium/base/EarlyTraceEvent$if;->try:J

    add-long v14, v4, v0

    iget v4, v3, Lorg/chromium/base/EarlyTraceEvent$if;->new:I

    iget-wide v5, v3, Lorg/chromium/base/EarlyTraceEvent$if;->case:J

    move/from16 v16, v4

    move-wide/from16 v17, v5

    invoke-interface/range {v12 .. v18}, Lorg/chromium/base/EarlyTraceEvent$Natives;->recordEarlyBeginEvent(Ljava/lang/String;JIJ)V

    goto :goto_0

    .line 7
    :cond_1
    iget-boolean v4, v3, Lorg/chromium/base/EarlyTraceEvent$if;->if:Z

    if-eqz v4, :cond_2

    .line 8
    invoke-static {}, Lorg/chromium/base/goto;->if()Lorg/chromium/base/EarlyTraceEvent$Natives;

    move-result-object v5

    iget-object v6, v3, Lorg/chromium/base/EarlyTraceEvent$if;->for:Ljava/lang/String;

    iget-wide v7, v3, Lorg/chromium/base/EarlyTraceEvent$if;->try:J

    add-long/2addr v7, v0

    iget v9, v3, Lorg/chromium/base/EarlyTraceEvent$if;->new:I

    iget-wide v10, v3, Lorg/chromium/base/EarlyTraceEvent$if;->case:J

    invoke-interface/range {v5 .. v11}, Lorg/chromium/base/EarlyTraceEvent$Natives;->recordEarlyToplevelEndEvent(Ljava/lang/String;JIJ)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {}, Lorg/chromium/base/goto;->if()Lorg/chromium/base/EarlyTraceEvent$Natives;

    move-result-object v12

    iget-object v13, v3, Lorg/chromium/base/EarlyTraceEvent$if;->for:Ljava/lang/String;

    iget-wide v4, v3, Lorg/chromium/base/EarlyTraceEvent$if;->try:J

    add-long v14, v4, v0

    iget v4, v3, Lorg/chromium/base/EarlyTraceEvent$if;->new:I

    iget-wide v5, v3, Lorg/chromium/base/EarlyTraceEvent$if;->case:J

    move/from16 v16, v4

    move-wide/from16 v17, v5

    invoke-interface/range {v12 .. v18}, Lorg/chromium/base/EarlyTraceEvent$Natives;->recordEarlyEndEvent(Ljava/lang/String;JIJ)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static setBackgroundStartupTracingFlag(Z)V
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 1
    invoke-static {}, Lorg/chromium/base/try;->new()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "bg_startup_tracing"

    .line 3
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 4
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static super(Ljava/lang/String;J)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->else()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lorg/chromium/base/EarlyTraceEvent$do;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/chromium/base/EarlyTraceEvent$do;-><init>(Ljava/lang/String;JZ)V

    .line 3
    sget-object p0, Lorg/chromium/base/EarlyTraceEvent;->catch:Ljava/lang/Object;

    monitor-enter p0

    .line 4
    :try_start_0
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->else()Z

    move-result p1

    if-nez p1, :cond_1

    monitor-exit p0

    return-void

    .line 5
    :cond_1
    sget-object p1, Lorg/chromium/base/EarlyTraceEvent;->const:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static this(Ljava/lang/String;J)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->else()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lorg/chromium/base/EarlyTraceEvent$do;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/chromium/base/EarlyTraceEvent$do;-><init>(Ljava/lang/String;JZ)V

    .line 3
    sget-object p0, Lorg/chromium/base/EarlyTraceEvent;->catch:Ljava/lang/Object;

    monitor-enter p0

    .line 4
    :try_start_0
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->else()Z

    move-result p1

    if-nez p1, :cond_1

    monitor-exit p0

    return-void

    .line 5
    :cond_1
    sget-object p1, Lorg/chromium/base/EarlyTraceEvent;->const:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static try()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lorg/chromium/base/EarlyTraceEvent;->try:Z

    .line 2
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->case()V

    return-void
.end method
