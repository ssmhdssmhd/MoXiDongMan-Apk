.class abstract Lcom/google/common/util/concurrent/g;
.super Lcom/google/common/util/concurrent/a;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/li0;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/g$if;,
        Lcom/google/common/util/concurrent/g$for;
    }
.end annotation


# instance fields
.field private case:J

.field public for:D

.field public new:D

.field public try:D


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/a$do;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/a;-><init>(Lcom/google/common/util/concurrent/a$do;)V

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/google/common/util/concurrent/g;->case:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/a$do;Lcom/google/common/util/concurrent/g$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/g;-><init>(Lcom/google/common/util/concurrent/a$do;)V

    return-void
.end method


# virtual methods
.method public final break(DJ)V
    .locals 2

    .line 1
    invoke-virtual {p0, p3, p4}, Lcom/google/common/util/concurrent/g;->throws(J)V

    .line 2
    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1

    invoke-virtual {p3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide p3

    long-to-double p3, p3

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p3, p1

    .line 3
    iput-wide p3, p0, Lcom/google/common/util/concurrent/g;->try:D

    .line 4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/util/concurrent/g;->switch(DD)V

    return-void
.end method

.method public final const(J)J
    .locals 0

    .line 1
    iget-wide p1, p0, Lcom/google/common/util/concurrent/g;->case:J

    return-wide p1
.end method

.method public abstract default(DD)J
.end method

.method public abstract static()D
.end method

.method public abstract switch(DD)V
.end method

.method public final this()D
    .locals 4

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/google/common/util/concurrent/g;->try:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public final throw(IJ)J
    .locals 8

    .line 1
    invoke-virtual {p0, p2, p3}, Lcom/google/common/util/concurrent/g;->throws(J)V

    .line 2
    iget-wide p2, p0, Lcom/google/common/util/concurrent/g;->case:J

    int-to-double v0, p1

    .line 3
    iget-wide v2, p0, Lcom/google/common/util/concurrent/g;->for:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v0, v2

    .line 5
    iget-wide v4, p0, Lcom/google/common/util/concurrent/g;->for:D

    .line 6
    invoke-virtual {p0, v4, v5, v2, v3}, Lcom/google/common/util/concurrent/g;->default(DD)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/common/util/concurrent/g;->try:D

    mul-double v0, v0, v6

    double-to-long v0, v0

    add-long/2addr v4, v0

    .line 7
    iget-wide v0, p0, Lcom/google/common/util/concurrent/g;->case:J

    invoke-static {v0, v1, v4, v5}, Lcom/google/common/math/case;->switch(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/util/concurrent/g;->case:J

    .line 8
    iget-wide v0, p0, Lcom/google/common/util/concurrent/g;->for:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/util/concurrent/g;->for:D

    return-wide p2
.end method

.method public throws(J)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/google/common/util/concurrent/g;->case:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    sub-long v0, p1, v0

    long-to-double v0, v0

    .line 2
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/g;->static()D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    .line 3
    iget-wide v2, p0, Lcom/google/common/util/concurrent/g;->new:D

    iget-wide v4, p0, Lcom/google/common/util/concurrent/g;->for:D

    add-double/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/util/concurrent/g;->for:D

    .line 4
    iput-wide p1, p0, Lcom/google/common/util/concurrent/g;->case:J

    :cond_0
    return-void
.end method
