.class public Lorg/apache/commons/lang3/time/case;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/time/case$if;,
        Lorg/apache/commons/lang3/time/case$for;
    }
.end annotation


# static fields
.field private static final case:J = 0xf4240L


# instance fields
.field private do:Lorg/apache/commons/lang3/time/case$for;

.field private for:J

.field private if:Lorg/apache/commons/lang3/time/case$if;

.field private new:J

.field private try:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lorg/apache/commons/lang3/time/case$for;->UNSTARTED:Lorg/apache/commons/lang3/time/case$for;

    iput-object v0, p0, Lorg/apache/commons/lang3/time/case;->do:Lorg/apache/commons/lang3/time/case$for;

    .line 3
    sget-object v0, Lorg/apache/commons/lang3/time/case$if;->UNSPLIT:Lorg/apache/commons/lang3/time/case$if;

    iput-object v0, p0, Lorg/apache/commons/lang3/time/case;->if:Lorg/apache/commons/lang3/time/case$if;

    return-void
.end method


# virtual methods
.method public break()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/time/case;->do:Lorg/apache/commons/lang3/time/case$for;

    sget-object v1, Lorg/apache/commons/lang3/time/case$for;->SUSPENDED:Lorg/apache/commons/lang3/time/case$for;

    if-ne v0, v1, :cond_0

    .line 2
    iget-wide v0, p0, Lorg/apache/commons/lang3/time/case;->for:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/lang3/time/case;->try:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/time/case;->for:J

    .line 3
    sget-object v0, Lorg/apache/commons/lang3/time/case$for;->RUNNING:Lorg/apache/commons/lang3/time/case$for;

    iput-object v0, p0, Lorg/apache/commons/lang3/time/case;->do:Lorg/apache/commons/lang3/time/case$for;

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch must be suspended to resume. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public case()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/time/case;->do:Lorg/apache/commons/lang3/time/case$for;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/time/case$for;->isStarted()Z

    move-result v0

    return v0
.end method

.method public catch()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/time/case;->do:Lorg/apache/commons/lang3/time/case$for;

    sget-object v1, Lorg/apache/commons/lang3/time/case$for;->RUNNING:Lorg/apache/commons/lang3/time/case$for;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/time/case;->try:J

    .line 3
    sget-object v0, Lorg/apache/commons/lang3/time/case$if;->SPLIT:Lorg/apache/commons/lang3/time/case$if;

    iput-object v0, p0, Lorg/apache/commons/lang3/time/case;->if:Lorg/apache/commons/lang3/time/case$if;

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch is not running. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public class()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/time/case;->do:Lorg/apache/commons/lang3/time/case$for;

    sget-object v1, Lorg/apache/commons/lang3/time/case$for;->STOPPED:Lorg/apache/commons/lang3/time/case$for;

    if-eq v0, v1, :cond_1

    .line 2
    sget-object v1, Lorg/apache/commons/lang3/time/case$for;->UNSTARTED:Lorg/apache/commons/lang3/time/case$for;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/time/case;->for:J

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/time/case;->new:J

    .line 5
    sget-object v0, Lorg/apache/commons/lang3/time/case$for;->RUNNING:Lorg/apache/commons/lang3/time/case$for;

    iput-object v0, p0, Lorg/apache/commons/lang3/time/case;->do:Lorg/apache/commons/lang3/time/case$for;

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch already started. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch must be reset before being restarted. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public const()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/time/case;->do:Lorg/apache/commons/lang3/time/case$for;

    sget-object v1, Lorg/apache/commons/lang3/time/case$for;->RUNNING:Lorg/apache/commons/lang3/time/case$for;

    if-eq v0, v1, :cond_1

    sget-object v2, Lorg/apache/commons/lang3/time/case$for;->SUSPENDED:Lorg/apache/commons/lang3/time/case$for;

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch is not running. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-ne v0, v1, :cond_2

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/time/case;->try:J

    .line 4
    :cond_2
    sget-object v0, Lorg/apache/commons/lang3/time/case$for;->STOPPED:Lorg/apache/commons/lang3/time/case$for;

    iput-object v0, p0, Lorg/apache/commons/lang3/time/case;->do:Lorg/apache/commons/lang3/time/case$for;

    return-void
.end method

.method public do()J
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/time/case;->do:Lorg/apache/commons/lang3/time/case$for;

    sget-object v1, Lorg/apache/commons/lang3/time/case$for;->STOPPED:Lorg/apache/commons/lang3/time/case$for;

    if-eq v0, v1, :cond_3

    sget-object v1, Lorg/apache/commons/lang3/time/case$for;->SUSPENDED:Lorg/apache/commons/lang3/time/case$for;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    sget-object v1, Lorg/apache/commons/lang3/time/case$for;->UNSTARTED:Lorg/apache/commons/lang3/time/case$for;

    if-ne v0, v1, :cond_1

    const-wide/16 v0, 0x0

    return-wide v0

    .line 3
    :cond_1
    sget-object v1, Lorg/apache/commons/lang3/time/case$for;->RUNNING:Lorg/apache/commons/lang3/time/case$for;

    if-ne v0, v1, :cond_2

    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/lang3/time/case;->for:J

    :goto_0
    sub-long/2addr v0, v2

    return-wide v0

    .line 5
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Illegal running state has occurred."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_3
    :goto_1
    iget-wide v0, p0, Lorg/apache/commons/lang3/time/case;->try:J

    iget-wide v2, p0, Lorg/apache/commons/lang3/time/case;->for:J

    goto :goto_0
.end method

.method public else()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/time/case;->do:Lorg/apache/commons/lang3/time/case$for;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/time/case$for;->isStopped()Z

    move-result v0

    return v0
.end method

.method public final()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/time/case;->do:Lorg/apache/commons/lang3/time/case$for;

    sget-object v1, Lorg/apache/commons/lang3/time/case$for;->RUNNING:Lorg/apache/commons/lang3/time/case$for;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/time/case;->try:J

    .line 3
    sget-object v0, Lorg/apache/commons/lang3/time/case$for;->SUSPENDED:Lorg/apache/commons/lang3/time/case$for;

    iput-object v0, p0, Lorg/apache/commons/lang3/time/case;->do:Lorg/apache/commons/lang3/time/case$for;

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch must be running to suspend. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public for()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/case;->if()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public goto()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/time/case;->do:Lorg/apache/commons/lang3/time/case$for;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/time/case$for;->isSuspended()Z

    move-result v0

    return v0
.end method

.method public if()J
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/time/case;->if:Lorg/apache/commons/lang3/time/case$if;

    sget-object v1, Lorg/apache/commons/lang3/time/case$if;->SPLIT:Lorg/apache/commons/lang3/time/case$if;

    if-ne v0, v1, :cond_0

    .line 2
    iget-wide v0, p0, Lorg/apache/commons/lang3/time/case;->try:J

    iget-wide v2, p0, Lorg/apache/commons/lang3/time/case;->for:J

    sub-long/2addr v0, v2

    return-wide v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch must be split to get the split time. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public new()J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/time/case;->do:Lorg/apache/commons/lang3/time/case$for;

    sget-object v1, Lorg/apache/commons/lang3/time/case$for;->UNSTARTED:Lorg/apache/commons/lang3/time/case$for;

    if-eq v0, v1, :cond_0

    .line 2
    iget-wide v0, p0, Lorg/apache/commons/lang3/time/case;->new:J

    return-wide v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch has not been started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public super()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/case;->for()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/time/if;->new(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public this()V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/lang3/time/case$for;->UNSTARTED:Lorg/apache/commons/lang3/time/case$for;

    iput-object v0, p0, Lorg/apache/commons/lang3/time/case;->do:Lorg/apache/commons/lang3/time/case$for;

    .line 2
    sget-object v0, Lorg/apache/commons/lang3/time/case$if;->UNSPLIT:Lorg/apache/commons/lang3/time/case$if;

    iput-object v0, p0, Lorg/apache/commons/lang3/time/case;->if:Lorg/apache/commons/lang3/time/case$if;

    return-void
.end method

.method public throw()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/time/case;->if:Lorg/apache/commons/lang3/time/case$if;

    sget-object v1, Lorg/apache/commons/lang3/time/case$if;->SPLIT:Lorg/apache/commons/lang3/time/case$if;

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lorg/apache/commons/lang3/time/case$if;->UNSPLIT:Lorg/apache/commons/lang3/time/case$if;

    iput-object v0, p0, Lorg/apache/commons/lang3/time/case;->if:Lorg/apache/commons/lang3/time/case$if;

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch has not been split. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/case;->try()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/time/if;->new(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public try()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/case;->do()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method
