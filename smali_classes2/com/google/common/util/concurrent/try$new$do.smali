.class final Lcom/google/common/util/concurrent/try$new$do;
.super Lcom/google/common/util/concurrent/try$new;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/try$new;->do(JJLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/try$new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic do:J

.field public final synthetic for:Ljava/util/concurrent/TimeUnit;

.field public final synthetic if:J


# direct methods
.method public constructor <init>(JJLjava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/common/util/concurrent/try$new$do;->do:J

    iput-wide p3, p0, Lcom/google/common/util/concurrent/try$new$do;->if:J

    iput-object p5, p0, Lcom/google/common/util/concurrent/try$new$do;->for:Ljava/util/concurrent/TimeUnit;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/try$new;-><init>(Lcom/google/common/util/concurrent/try$do;)V

    return-void
.end method


# virtual methods
.method public for(Lcom/google/common/util/concurrent/case;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/case;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-wide v2, p0, Lcom/google/common/util/concurrent/try$new$do;->do:J

    iget-wide v4, p0, Lcom/google/common/util/concurrent/try$new$do;->if:J

    iget-object v6, p0, Lcom/google/common/util/concurrent/try$new$do;->for:Ljava/util/concurrent/TimeUnit;

    move-object v0, p2

    move-object v1, p3

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method
