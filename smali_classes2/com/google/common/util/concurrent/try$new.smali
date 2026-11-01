.class public abstract Lcom/google/common/util/concurrent/try$new;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "new"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/try$do;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/util/concurrent/try$new;-><init>()V

    return-void
.end method

.method public static do(JJLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/try$new;
    .locals 8

    .line 1
    invoke-static {p4}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "delay must be > 0, found %s"

    .line 2
    invoke-static {v0, v1, p2, p3}, Landroid/support/v4/af1;->throw(ZLjava/lang/String;J)V

    .line 3
    new-instance v0, Lcom/google/common/util/concurrent/try$new$do;

    move-object v2, v0

    move-wide v3, p0

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/google/common/util/concurrent/try$new$do;-><init>(JJLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method public static if(JJLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/try$new;
    .locals 8

    .line 1
    invoke-static {p4}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "period must be > 0, found %s"

    .line 2
    invoke-static {v0, v1, p2, p3}, Landroid/support/v4/af1;->throw(ZLjava/lang/String;J)V

    .line 3
    new-instance v0, Lcom/google/common/util/concurrent/try$new$if;

    move-object v2, v0

    move-wide v3, p0

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/google/common/util/concurrent/try$new$if;-><init>(JJLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method


# virtual methods
.method public abstract for(Lcom/google/common/util/concurrent/case;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
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
.end method
