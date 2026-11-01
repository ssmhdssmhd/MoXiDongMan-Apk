.class public abstract Lcom/google/common/util/concurrent/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/li0;
.end annotation

.annotation build Landroid/support/v4/o8;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/a$do;
    }
.end annotation


# instance fields
.field private final do:Lcom/google/common/util/concurrent/a$do;

.field private volatile if:Ljava/lang/Object;
    .annotation runtime Landroid/support/v4/l01;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/a$do;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/a$do;

    iput-object p1, p0, Lcom/google/common/util/concurrent/a;->do:Lcom/google/common/util/concurrent/a$do;

    return-void
.end method

.method public static case(DJLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/a;
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "warmupPeriod must not be negative: %s"

    .line 1
    invoke-static {v0, v1, p2, p3}, Landroid/support/v4/af1;->throw(ZLjava/lang/String;J)V

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    .line 2
    invoke-static {}, Lcom/google/common/util/concurrent/a$do;->do()Lcom/google/common/util/concurrent/a$do;

    move-result-object v9

    move-wide v2, p0

    move-wide v4, p2

    move-object v6, p4

    .line 3
    invoke-static/range {v2 .. v9}, Lcom/google/common/util/concurrent/a;->else(DJLjava/util/concurrent/TimeUnit;DLcom/google/common/util/concurrent/a$do;)Lcom/google/common/util/concurrent/a;

    move-result-object p0

    return-object p0
.end method

.method private class()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/a;->if:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/a;->if:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/a;->if:Ljava/lang/Object;

    .line 5
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static else(DJLjava/util/concurrent/TimeUnit;DLcom/google/common/util/concurrent/a$do;)Lcom/google/common/util/concurrent/a;
    .locals 8
    .annotation build Landroid/support/v4/af2;
    .end annotation

    .line 1
    new-instance v7, Lcom/google/common/util/concurrent/g$for;

    move-object v0, v7

    move-object v1, p7

    move-wide v2, p2

    move-object v4, p4

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/common/util/concurrent/g$for;-><init>(Lcom/google/common/util/concurrent/a$do;JLjava/util/concurrent/TimeUnit;D)V

    .line 2
    invoke-virtual {v7, p0, p1}, Lcom/google/common/util/concurrent/a;->while(D)V

    return-object v7
.end method

.method private for(JJ)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/util/concurrent/a;->const(J)J

    move-result-wide v0

    sub-long/2addr v0, p3

    cmp-long p3, v0, p1

    if-gtz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static goto(DLcom/google/common/util/concurrent/a$do;)Lcom/google/common/util/concurrent/a;
    .locals 3
    .annotation build Landroid/support/v4/af2;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/g$if;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, p2, v1, v2}, Lcom/google/common/util/concurrent/g$if;-><init>(Lcom/google/common/util/concurrent/a$do;D)V

    .line 2
    invoke-virtual {v0, p0, p1}, Lcom/google/common/util/concurrent/a;->while(D)V

    return-object v0
.end method

.method private static new(I)V
    .locals 2

    if-lez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Requested permits (%s) must be positive"

    .line 1
    invoke-static {v0, v1, p0}, Landroid/support/v4/af1;->catch(ZLjava/lang/String;I)V

    return-void
.end method

.method public static try(D)Lcom/google/common/util/concurrent/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/common/util/concurrent/a$do;->do()Lcom/google/common/util/concurrent/a$do;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/common/util/concurrent/a;->goto(DLcom/google/common/util/concurrent/a$do;)Lcom/google/common/util/concurrent/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract break(DJ)V
.end method

.method public final catch()D
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/common/util/concurrent/a;->class()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/a;->this()D

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public abstract const(J)J
.end method

.method public do()D
    .locals 2
    .annotation build Landroid/support/v4/lf;
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/a;->if(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public final final(I)J
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/common/util/concurrent/a;->new(I)V

    .line 2
    invoke-direct {p0}, Lcom/google/common/util/concurrent/a;->class()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/a;->do:Lcom/google/common/util/concurrent/a$do;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/a$do;->if()J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/common/util/concurrent/a;->super(IJ)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public if(I)D
    .locals 4
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/a;->final(I)J

    move-result-wide v0

    .line 2
    iget-object p1, p0, Lcom/google/common/util/concurrent/a;->do:Lcom/google/common/util/concurrent/a$do;

    invoke-virtual {p1, v0, v1}, Lcom/google/common/util/concurrent/a$do;->for(J)V

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public import()Z
    .locals 4

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/google/common/util/concurrent/a;->public(IJLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public native(I)Z
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/google/common/util/concurrent/a;->public(IJLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public public(IJLjava/util/concurrent/TimeUnit;)Z
    .locals 2

    .line 1
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide p2

    const-wide/16 v0, 0x0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    .line 2
    invoke-static {p1}, Lcom/google/common/util/concurrent/a;->new(I)V

    .line 3
    invoke-direct {p0}, Lcom/google/common/util/concurrent/a;->class()Ljava/lang/Object;

    move-result-object p4

    monitor-enter p4

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/a;->do:Lcom/google/common/util/concurrent/a$do;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/a$do;->if()J

    move-result-wide v0

    .line 5
    invoke-direct {p0, v0, v1, p2, p3}, Lcom/google/common/util/concurrent/a;->for(JJ)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 6
    monitor-exit p4

    return p1

    .line 7
    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/util/concurrent/a;->super(IJ)J

    move-result-wide p1

    .line 8
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object p3, p0, Lcom/google/common/util/concurrent/a;->do:Lcom/google/common/util/concurrent/a$do;

    invoke-virtual {p3, p1, p2}, Lcom/google/common/util/concurrent/a$do;->for(J)V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public return(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/common/util/concurrent/a;->public(IJLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    return p1
.end method

.method public final super(IJ)J
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/a;->throw(IJ)J

    move-result-wide v0

    sub-long/2addr v0, p2

    const-wide/16 p1, 0x0

    .line 2
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public abstract this()D
.end method

.method public abstract throw(IJ)J
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/a;->catch()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "RateLimiter[stableRate=%3.1fqps]"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final while(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "rate must be positive"

    .line 2
    invoke-static {v0, v1}, Landroid/support/v4/af1;->try(ZLjava/lang/Object;)V

    .line 3
    invoke-direct {p0}, Lcom/google/common/util/concurrent/a;->class()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/a;->do:Lcom/google/common/util/concurrent/a$do;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/a$do;->if()J

    move-result-wide v1

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/google/common/util/concurrent/a;->break(DJ)V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
