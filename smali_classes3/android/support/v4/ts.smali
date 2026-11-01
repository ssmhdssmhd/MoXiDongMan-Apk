.class public final Landroid/support/v4/ts;
.super Lorg/chromium/net/native$if;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation


# static fields
.field public static final synthetic native:Z


# instance fields
.field private final break:J

.field private final case:J

.field private final catch:J

.field private final class:J

.field private final const:J

.field private final do:J

.field private final else:J

.field private final final:Z

.field private final for:J

.field private final goto:J

.field private final if:J

.field private final import:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final new:J

.field private final super:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final this:J

.field private final throw:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final try:J

.field private final while:Ljava/lang/Long;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(JJJJJJJJJJJJJZJJ)V
    .locals 11

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p23

    move-wide/from16 v5, p25

    .line 20
    invoke-direct {p0}, Lorg/chromium/net/native$if;-><init>()V

    .line 21
    iput-wide v1, v0, Landroid/support/v4/ts;->do:J

    move-wide v7, p3

    .line 22
    iput-wide v7, v0, Landroid/support/v4/ts;->if:J

    move-wide/from16 v7, p5

    .line 23
    iput-wide v7, v0, Landroid/support/v4/ts;->for:J

    move-wide/from16 v7, p7

    .line 24
    iput-wide v7, v0, Landroid/support/v4/ts;->new:J

    move-wide/from16 v7, p9

    .line 25
    iput-wide v7, v0, Landroid/support/v4/ts;->try:J

    move-wide/from16 v7, p11

    .line 26
    iput-wide v7, v0, Landroid/support/v4/ts;->case:J

    move-wide/from16 v7, p13

    .line 27
    iput-wide v7, v0, Landroid/support/v4/ts;->else:J

    move-wide/from16 v7, p15

    .line 28
    iput-wide v7, v0, Landroid/support/v4/ts;->goto:J

    move-wide/from16 v7, p17

    .line 29
    iput-wide v7, v0, Landroid/support/v4/ts;->this:J

    move-wide/from16 v7, p19

    .line 30
    iput-wide v7, v0, Landroid/support/v4/ts;->break:J

    move-wide/from16 v7, p21

    .line 31
    iput-wide v7, v0, Landroid/support/v4/ts;->catch:J

    .line 32
    iput-wide v3, v0, Landroid/support/v4/ts;->class:J

    .line 33
    iput-wide v5, v0, Landroid/support/v4/ts;->const:J

    move/from16 v7, p27

    .line 34
    iput-boolean v7, v0, Landroid/support/v4/ts;->final:Z

    .line 35
    invoke-static/range {p28 .. p29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v0, Landroid/support/v4/ts;->while:Ljava/lang/Long;

    .line 36
    invoke-static/range {p30 .. p31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v0, Landroid/support/v4/ts;->import:Ljava/lang/Long;

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    cmp-long v10, v1, v8

    if-eqz v10, :cond_0

    cmp-long v10, v3, v8

    if-eqz v10, :cond_0

    sub-long/2addr v3, v1

    .line 37
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Landroid/support/v4/ts;->super:Ljava/lang/Long;

    goto :goto_0

    .line 38
    :cond_0
    iput-object v7, v0, Landroid/support/v4/ts;->super:Ljava/lang/Long;

    :goto_0
    cmp-long v3, v1, v8

    if-eqz v3, :cond_1

    cmp-long v3, v5, v8

    if-eqz v3, :cond_1

    sub-long v1, v5, v1

    .line 39
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/ts;->throw:Ljava/lang/Long;

    goto :goto_1

    .line 40
    :cond_1
    iput-object v7, v0, Landroid/support/v4/ts;->throw:Ljava/lang/Long;

    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lorg/chromium/net/native$if;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/ts;->super:Ljava/lang/Long;

    .line 3
    iput-object p2, p0, Landroid/support/v4/ts;->throw:Ljava/lang/Long;

    .line 4
    iput-object p3, p0, Landroid/support/v4/ts;->while:Ljava/lang/Long;

    .line 5
    iput-object p4, p0, Landroid/support/v4/ts;->import:Ljava/lang/Long;

    const-wide/16 p1, -0x1

    .line 6
    iput-wide p1, p0, Landroid/support/v4/ts;->do:J

    .line 7
    iput-wide p1, p0, Landroid/support/v4/ts;->if:J

    .line 8
    iput-wide p1, p0, Landroid/support/v4/ts;->for:J

    .line 9
    iput-wide p1, p0, Landroid/support/v4/ts;->new:J

    .line 10
    iput-wide p1, p0, Landroid/support/v4/ts;->try:J

    .line 11
    iput-wide p1, p0, Landroid/support/v4/ts;->case:J

    .line 12
    iput-wide p1, p0, Landroid/support/v4/ts;->else:J

    .line 13
    iput-wide p1, p0, Landroid/support/v4/ts;->goto:J

    .line 14
    iput-wide p1, p0, Landroid/support/v4/ts;->this:J

    .line 15
    iput-wide p1, p0, Landroid/support/v4/ts;->break:J

    .line 16
    iput-wide p1, p0, Landroid/support/v4/ts;->catch:J

    .line 17
    iput-wide p1, p0, Landroid/support/v4/ts;->class:J

    .line 18
    iput-wide p1, p0, Landroid/support/v4/ts;->const:J

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Landroid/support/v4/ts;->final:Z

    return-void
.end method

.method private static native(JJ)Z
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p2, p0

    if-ltz v2, :cond_0

    cmp-long v2, p0, v0

    if-nez v2, :cond_1

    :cond_0
    cmp-long p0, p2, v0

    if-nez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static public(J)Ljava/util/Date;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-wide/16 v0, -0x1

    cmp-long v2, p0, v0

    if-eqz v2, :cond_0

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public break()Ljava/util/Date;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-wide v0, p0, Landroid/support/v4/ts;->class:J

    invoke-static {v0, v1}, Landroid/support/v4/ts;->public(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public case()Ljava/util/Date;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-wide v0, p0, Landroid/support/v4/ts;->break:J

    invoke-static {v0, v1}, Landroid/support/v4/ts;->public(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public catch()Ljava/util/Date;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-wide v0, p0, Landroid/support/v4/ts;->this:J

    invoke-static {v0, v1}, Landroid/support/v4/ts;->public(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public class()Ljava/util/Date;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-wide v0, p0, Landroid/support/v4/ts;->goto:J

    invoke-static {v0, v1}, Landroid/support/v4/ts;->public(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public const()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/ts;->while:Ljava/lang/Long;

    return-object v0
.end method

.method public do()Ljava/util/Date;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-wide v0, p0, Landroid/support/v4/ts;->try:J

    invoke-static {v0, v1}, Landroid/support/v4/ts;->public(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public else()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/ts;->import:Ljava/lang/Long;

    return-object v0
.end method

.method public final()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v4/ts;->final:Z

    return v0
.end method

.method public for()Ljava/util/Date;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-wide v0, p0, Landroid/support/v4/ts;->for:J

    invoke-static {v0, v1}, Landroid/support/v4/ts;->public(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public goto()Ljava/util/Date;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-wide v0, p0, Landroid/support/v4/ts;->const:J

    invoke-static {v0, v1}, Landroid/support/v4/ts;->public(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public if()Ljava/util/Date;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-wide v0, p0, Landroid/support/v4/ts;->new:J

    invoke-static {v0, v1}, Landroid/support/v4/ts;->public(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public import()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/ts;->super:Ljava/lang/Long;

    return-object v0
.end method

.method public new()Ljava/util/Date;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-wide v0, p0, Landroid/support/v4/ts;->if:J

    invoke-static {v0, v1}, Landroid/support/v4/ts;->public(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public super()Ljava/util/Date;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-wide v0, p0, Landroid/support/v4/ts;->else:J

    invoke-static {v0, v1}, Landroid/support/v4/ts;->public(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public this()Ljava/util/Date;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-wide v0, p0, Landroid/support/v4/ts;->do:J

    invoke-static {v0, v1}, Landroid/support/v4/ts;->public(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public throw()Ljava/util/Date;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-wide v0, p0, Landroid/support/v4/ts;->case:J

    invoke-static {v0, v1}, Landroid/support/v4/ts;->public(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public try()Ljava/util/Date;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-wide v0, p0, Landroid/support/v4/ts;->catch:J

    invoke-static {v0, v1}, Landroid/support/v4/ts;->public(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public while()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/ts;->throw:Ljava/lang/Long;

    return-object v0
.end method
