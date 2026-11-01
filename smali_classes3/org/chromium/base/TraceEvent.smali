.class public Lorg/chromium/base/TraceEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation build Landroid/support/v4/cx0;
.end annotation

.annotation runtime Landroid/support/v4/lo0;
    value = "base::android"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/TraceEvent$Natives;,
        Lorg/chromium/base/TraceEvent$try;,
        Lorg/chromium/base/TraceEvent$new;,
        Lorg/chromium/base/TraceEvent$for;,
        Lorg/chromium/base/TraceEvent$if;
    }
.end annotation


# static fields
.field public static final for:J = 0x10L

.field private static volatile if:Z = false

.field public static final new:J = 0x1000L

.field private static try:Lorg/chromium/base/TraceEvent$if;


# instance fields
.field private final do:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/chromium/base/TraceEvent;->do:Ljava/lang/String;

    .line 3
    invoke-static {p1, p2}, Lorg/chromium/base/TraceEvent;->for(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static break(JZ)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->class()V

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long p2, p0, v0

    if-eqz p2, :cond_1

    .line 2
    new-instance p2, Lorg/chromium/base/TraceEvent$if;

    invoke-direct {p2, p0, p1}, Lorg/chromium/base/TraceEvent$if;-><init>(J)V

    sput-object p2, Lorg/chromium/base/TraceEvent;->try:Lorg/chromium/base/TraceEvent$if;

    .line 3
    :cond_1
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->else()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lorg/chromium/base/TraceEvent;->try:Lorg/chromium/base/TraceEvent$if;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/chromium/base/TraceEvent$if;->break()Z

    move-result p0

    if-nez p0, :cond_3

    .line 4
    :cond_2
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->case()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Lorg/chromium/base/TraceEvent$try;->do()Lorg/chromium/base/TraceEvent$for;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    :cond_3
    return-void
.end method

.method public static case(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lorg/chromium/base/EarlyTraceEvent;->goto(Ljava/lang/String;Z)V

    .line 2
    sget-boolean v0, Lorg/chromium/base/TraceEvent;->if:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lorg/chromium/base/return;->if()Lorg/chromium/base/TraceEvent$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/chromium/base/TraceEvent$Natives;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object p0, Lorg/chromium/base/TraceEvent;->try:Lorg/chromium/base/TraceEvent$if;

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {p0}, Lorg/chromium/base/TraceEvent$if;->public()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static catch()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/return;->if()Lorg/chromium/base/TraceEvent$Natives;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/base/TraceEvent$Natives;->registerEnabledObserver()V

    .line 2
    sget-object v0, Lorg/chromium/base/TraceEvent;->try:Lorg/chromium/base/TraceEvent$if;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent$if;->final()V

    :cond_0
    return-void
.end method

.method public static class()V
    .locals 1

    .line 1
    sget-object v0, Lorg/chromium/base/TraceEvent;->try:Lorg/chromium/base/TraceEvent$if;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent$if;->super()V

    :cond_0
    return-void
.end method

.method public static const(Ljava/lang/String;)Lorg/chromium/base/TraceEvent;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lorg/chromium/base/TraceEvent;->final(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/base/TraceEvent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic do()Z
    .locals 1

    .line 1
    sget-boolean v0, Lorg/chromium/base/TraceEvent;->if:Z

    return v0
.end method

.method public static else(Ljava/lang/String;J)V
    .locals 1

    .line 1
    invoke-static {p0, p1, p2}, Lorg/chromium/base/EarlyTraceEvent;->this(Ljava/lang/String;J)V

    .line 2
    sget-boolean v0, Lorg/chromium/base/TraceEvent;->if:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lorg/chromium/base/return;->if()Lorg/chromium/base/TraceEvent$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lorg/chromium/base/TraceEvent$Natives;->finishAsync(Ljava/lang/String;J)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lorg/chromium/base/TraceEvent;->try:Lorg/chromium/base/TraceEvent$if;

    if-eqz v0, :cond_1

    long-to-int p2, p1

    .line 5
    invoke-virtual {v0, p0, p2}, Lorg/chromium/base/TraceEvent$if;->new(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static final(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/base/TraceEvent;
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->else()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/TraceEvent;->new()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lorg/chromium/base/TraceEvent;

    invoke-direct {v0, p0, p1}, Lorg/chromium/base/TraceEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static for(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lorg/chromium/base/EarlyTraceEvent;->do(Ljava/lang/String;Z)V

    .line 2
    sget-boolean v0, Lorg/chromium/base/TraceEvent;->if:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lorg/chromium/base/return;->if()Lorg/chromium/base/TraceEvent$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/chromium/base/TraceEvent$Natives;->begin(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lorg/chromium/base/TraceEvent;->try:Lorg/chromium/base/TraceEvent$if;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1, p0}, Lorg/chromium/base/TraceEvent$if;->native(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static goto(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-boolean v0, Lorg/chromium/base/TraceEvent;->if:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/base/return;->if()Lorg/chromium/base/TraceEvent$Natives;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lorg/chromium/base/TraceEvent$Natives;->instant(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static if(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lorg/chromium/base/TraceEvent;->for(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static new()Z
    .locals 1

    .line 1
    sget-boolean v0, Lorg/chromium/base/TraceEvent;->if:Z

    return v0
.end method

.method public static setEnabled(Z)V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent;->if()V

    .line 2
    :cond_0
    sget-boolean v0, Lorg/chromium/base/TraceEvent;->if:Z

    if-eq v0, p0, :cond_3

    .line 3
    sput-boolean p0, Lorg/chromium/base/TraceEvent;->if:Z

    .line 4
    sget-object v0, Lorg/chromium/base/TraceEvent;->try:Lorg/chromium/base/TraceEvent$if;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/chromium/base/TraceEvent$if;->break()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    :cond_1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->case()Landroid/os/Looper;

    move-result-object v0

    if-eqz p0, :cond_2

    .line 6
    invoke-static {}, Lorg/chromium/base/TraceEvent$try;->do()Lorg/chromium/base/TraceEvent$for;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 7
    :goto_0
    invoke-virtual {v0, p0}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    :cond_3
    return-void
.end method

.method public static super(Ljava/lang/String;J)V
    .locals 1

    .line 1
    invoke-static {p0, p1, p2}, Lorg/chromium/base/EarlyTraceEvent;->super(Ljava/lang/String;J)V

    .line 2
    sget-boolean v0, Lorg/chromium/base/TraceEvent;->if:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lorg/chromium/base/return;->if()Lorg/chromium/base/TraceEvent$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lorg/chromium/base/TraceEvent$Natives;->startAsync(Ljava/lang/String;J)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lorg/chromium/base/TraceEvent;->try:Lorg/chromium/base/TraceEvent$if;

    if-eqz v0, :cond_1

    long-to-int p2, p1

    .line 5
    invoke-virtual {v0, p0, p2}, Lorg/chromium/base/TraceEvent$if;->for(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static this(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lorg/chromium/base/TraceEvent;->if:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/base/return;->if()Lorg/chromium/base/TraceEvent$Natives;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/chromium/base/TraceEvent$Natives;->instant(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static try(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lorg/chromium/base/TraceEvent;->case(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/base/TraceEvent;->do:Ljava/lang/String;

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->try(Ljava/lang/String;)V

    return-void
.end method
