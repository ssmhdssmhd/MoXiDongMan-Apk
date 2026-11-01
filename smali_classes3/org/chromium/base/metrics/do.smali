.class final Lorg/chromium/base/metrics/do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/metrics/UmaRecorder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/metrics/do$if;,
        Lorg/chromium/base/metrics/do$do;
    }
.end annotation


# static fields
.field public static final synthetic break:Z = false

.field private static final else:Ljava/lang/String; = "CachingUmaRecorder"

.field private static final goto:I = 0x100

.field public static final this:I = 0x100
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private case:Lorg/chromium/base/metrics/UmaRecorder;
    .annotation build Landroid/support/v4/ii0;
        value = "mRwLock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final do:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private for:Ljava/util/concurrent/atomic/AtomicInteger;

.field private if:Ljava/util/Map;
    .annotation build Landroid/support/v4/ii0;
        value = "mRwLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/chromium/base/metrics/do$do;",
            ">;"
        }
    .end annotation
.end field

.field private new:Ljava/util/List;
    .annotation build Landroid/support/v4/ii0;
        value = "mRwLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/chromium/base/metrics/do$if;",
            ">;"
        }
    .end annotation
.end field

.field private try:I
    .annotation build Landroid/support/v4/ii0;
        value = "mRwLock"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v0, p0, Lorg/chromium/base/metrics/do;->do:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/metrics/do;->if:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/metrics/do;->for:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/metrics/do;->new:Ljava/util/List;

    return-void
.end method

.method private do(ILjava/lang/String;IIII)V
    .locals 8
    .annotation build Landroid/support/v4/ii0;
        value = "mRwLock"
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/base/metrics/do;->if:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/metrics/do$do;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lorg/chromium/base/metrics/do;->if:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x100

    if-lt v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lorg/chromium/base/metrics/do;->for:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void

    .line 4
    :cond_0
    new-instance v7, Lorg/chromium/base/metrics/do$do;

    move-object v0, v7

    move v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/chromium/base/metrics/do$do;-><init>(ILjava/lang/String;III)V

    .line 5
    iget-object v0, p0, Lorg/chromium/base/metrics/do;->if:Ljava/util/Map;

    invoke-interface {v0, p2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v7

    :cond_1
    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 6
    invoke-virtual/range {v0 .. v6}, Lorg/chromium/base/metrics/do$do;->do(ILjava/lang/String;IIII)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lorg/chromium/base/metrics/do;->for:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_2
    return-void
.end method

.method private else(ILjava/lang/String;IIII)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/chromium/base/metrics/do;->do:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/chromium/base/metrics/do;->case:Lorg/chromium/base/metrics/UmaRecorder;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3
    invoke-direct/range {p0 .. p6}, Lorg/chromium/base/metrics/do;->try(ILjava/lang/String;IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/chromium/base/metrics/do;->do:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v1

    .line 5
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/chromium/base/metrics/do;->if:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/chromium/base/metrics/do$do;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_2

    const/4 p1, 0x0

    .line 6
    iget-object p2, p0, Lorg/chromium/base/metrics/do;->do:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return p1

    :cond_2
    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    .line 7
    :try_start_2
    invoke-virtual/range {v2 .. v8}, Lorg/chromium/base/metrics/do$do;->do(ILjava/lang/String;IIII)Z

    move-result p1

    if-nez p1, :cond_0

    .line 8
    iget-object p1, p0, Lorg/chromium/base/metrics/do;->for:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 9
    iget-object p2, p0, Lorg/chromium/base/metrics/do;->do:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 10
    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private for(Ljava/util/Map;I)V
    .locals 13
    .annotation build Landroid/support/v4/ii0;
        value = "mRwLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/chromium/base/metrics/do$do;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/base/metrics/do$do;

    .line 3
    iget-object v3, p0, Lorg/chromium/base/metrics/do;->case:Lorg/chromium/base/metrics/UmaRecorder;

    invoke-virtual {v1, v3}, Lorg/chromium/base/metrics/do$do;->if(Lorg/chromium/base/metrics/UmaRecorder;)I

    move-result v1

    add-int/2addr v6, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x1

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "CachingUmaRecorder"

    const-string v1, "Flushed %d samples from %d histograms."

    .line 6
    invoke-static {v0, v1, p1}, Landroid/support/v4/rv0;->goto(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iget-object v7, p0, Lorg/chromium/base/metrics/do;->case:Lorg/chromium/base/metrics/UmaRecorder;

    const/4 v10, 0x1

    const v11, 0xf4240

    const/16 v12, 0x32

    const-string v8, "UMA.JavaCachingRecorder.DroppedHistogramSampleCount"

    move v9, p2

    invoke-interface/range {v7 .. v12}, Lorg/chromium/base/metrics/UmaRecorder;->recordExponentialHistogram(Ljava/lang/String;IIII)V

    .line 8
    iget-object v0, p0, Lorg/chromium/base/metrics/do;->case:Lorg/chromium/base/metrics/UmaRecorder;

    const/4 v3, 0x1

    const v4, 0x186a0

    const/16 v5, 0x32

    const-string v1, "UMA.JavaCachingRecorder.FlushedHistogramCount"

    invoke-interface/range {v0 .. v5}, Lorg/chromium/base/metrics/UmaRecorder;->recordExponentialHistogram(Ljava/lang/String;IIII)V

    .line 9
    iget-object v7, p0, Lorg/chromium/base/metrics/do;->case:Lorg/chromium/base/metrics/UmaRecorder;

    add-int v9, v6, p2

    const-string v8, "UMA.JavaCachingRecorder.InputHistogramSampleCount"

    invoke-interface/range {v7 .. v12}, Lorg/chromium/base/metrics/UmaRecorder;->recordExponentialHistogram(Ljava/lang/String;IIII)V

    return-void
.end method

.method private if(ILjava/lang/String;IIII)V
    .locals 1

    .line 1
    invoke-direct/range {p0 .. p6}, Lorg/chromium/base/metrics/do;->else(ILjava/lang/String;IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/chromium/base/metrics/do;->do:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lorg/chromium/base/metrics/do;->case:Lorg/chromium/base/metrics/UmaRecorder;

    if-nez v0, :cond_1

    .line 4
    invoke-direct/range {p0 .. p6}, Lorg/chromium/base/metrics/do;->do(ILjava/lang/String;IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    iget-object p1, p0, Lorg/chromium/base/metrics/do;->do:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    .line 6
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/chromium/base/metrics/do;->do:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    iget-object v0, p0, Lorg/chromium/base/metrics/do;->do:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 8
    :try_start_2
    invoke-direct/range {p0 .. p6}, Lorg/chromium/base/metrics/do;->try(ILjava/lang/String;IIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    iget-object p1, p0, Lorg/chromium/base/metrics/do;->do:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/chromium/base/metrics/do;->do:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 10
    throw p1

    :catchall_1
    move-exception p1

    .line 11
    iget-object p2, p0, Lorg/chromium/base/metrics/do;->do:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 12
    throw p1
.end method

.method private new(Ljava/util/List;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/chromium/base/metrics/do$if;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/base/metrics/do$if;

    .line 2
    iget-object v3, v0, Lorg/chromium/base/metrics/do;->case:Lorg/chromium/base/metrics/UmaRecorder;

    invoke-virtual {v2, v3}, Lorg/chromium/base/metrics/do$if;->do(Lorg/chromium/base/metrics/UmaRecorder;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v4, v0, Lorg/chromium/base/metrics/do;->case:Lorg/chromium/base/metrics/UmaRecorder;

    const/4 v7, 0x1

    const/16 v8, 0x3e8

    const/16 v9, 0x32

    const-string v5, "UMA.JavaCachingRecorder.DroppedUserActionCount"

    move/from16 v6, p2

    invoke-interface/range {v4 .. v9}, Lorg/chromium/base/metrics/UmaRecorder;->recordExponentialHistogram(Ljava/lang/String;IIII)V

    .line 4
    iget-object v10, v0, Lorg/chromium/base/metrics/do;->case:Lorg/chromium/base/metrics/UmaRecorder;

    .line 5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    add-int v12, v1, p2

    const/4 v13, 0x1

    const/16 v14, 0x2710

    const/16 v15, 0x32

    const-string v11, "UMA.JavaCachingRecorder.InputUserActionCount"

    .line 6
    invoke-interface/range {v10 .. v15}, Lorg/chromium/base/metrics/UmaRecorder;->recordExponentialHistogram(Ljava/lang/String;IIII)V

    return-void
.end method

.method private try(ILjava/lang/String;IIII)V
    .locals 7
    .annotation build Landroid/support/v4/ii0;
        value = "mRwLock"
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 p4, 0x4

    if-ne p1, p4, :cond_0

    .line 1
    iget-object p1, p0, Lorg/chromium/base/metrics/do;->case:Lorg/chromium/base/metrics/UmaRecorder;

    invoke-interface {p1, p2, p3}, Lorg/chromium/base/metrics/UmaRecorder;->recordSparseHistogram(Ljava/lang/String;I)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown histogram type "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3
    :cond_1
    iget-object v0, p0, Lorg/chromium/base/metrics/do;->case:Lorg/chromium/base/metrics/UmaRecorder;

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-interface/range {v0 .. v5}, Lorg/chromium/base/metrics/UmaRecorder;->recordLinearHistogram(Ljava/lang/String;IIII)V

    goto :goto_1

    .line 4
    :cond_2
    iget-object v1, p0, Lorg/chromium/base/metrics/do;->case:Lorg/chromium/base/metrics/UmaRecorder;

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v1 .. v6}, Lorg/chromium/base/metrics/UmaRecorder;->recordExponentialHistogram(Ljava/lang/String;IIII)V

    goto :goto_1

    .line 5
    :cond_3
    iget-object p1, p0, Lorg/chromium/base/metrics/do;->case:Lorg/chromium/base/metrics/UmaRecorder;

    if-eqz p3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, p2, v0}, Lorg/chromium/base/metrics/UmaRecorder;->recordBooleanHistogram(Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method public case(Lorg/chromium/base/metrics/UmaRecorder;)Lorg/chromium/base/metrics/UmaRecorder;
    .locals 5
    .param p1    # Lorg/chromium/base/metrics/UmaRecorder;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lorg/chromium/base/metrics/do;->do:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/chromium/base/metrics/do;->case:Lorg/chromium/base/metrics/UmaRecorder;

    .line 3
    iput-object p1, p0, Lorg/chromium/base/metrics/do;->case:Lorg/chromium/base/metrics/UmaRecorder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lorg/chromium/base/metrics/do;->do:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-object v0

    .line 5
    :cond_0
    :try_start_1
    iget-object p1, p0, Lorg/chromium/base/metrics/do;->if:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lorg/chromium/base/metrics/do;->if:Ljava/util/Map;

    .line 7
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/chromium/base/metrics/do;->if:Ljava/util/Map;

    .line 8
    iget-object v3, p0, Lorg/chromium/base/metrics/do;->for:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v3

    goto :goto_0

    :cond_1
    move-object p1, v1

    const/4 v3, 0x0

    .line 9
    :goto_0
    iget-object v4, p0, Lorg/chromium/base/metrics/do;->new:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 10
    iget-object v1, p0, Lorg/chromium/base/metrics/do;->new:Ljava/util/List;

    .line 11
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/chromium/base/metrics/do;->new:Ljava/util/List;

    .line 12
    iget v4, p0, Lorg/chromium/base/metrics/do;->try:I

    .line 13
    iput v2, p0, Lorg/chromium/base/metrics/do;->try:I

    move v2, v4

    .line 14
    :cond_2
    iget-object v4, p0, Lorg/chromium/base/metrics/do;->do:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 15
    iget-object v4, p0, Lorg/chromium/base/metrics/do;->do:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    if-eqz p1, :cond_3

    .line 16
    :try_start_2
    invoke-direct {p0, p1, v3}, Lorg/chromium/base/metrics/do;->for(Ljava/util/Map;I)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 17
    invoke-direct {p0, v1, v2}, Lorg/chromium/base/metrics/do;->new(Ljava/util/List;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 18
    :goto_2
    iget-object v0, p0, Lorg/chromium/base/metrics/do;->do:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 19
    throw p1

    .line 20
    :cond_4
    :goto_3
    iget-object p1, p0, Lorg/chromium/base/metrics/do;->do:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    :catchall_1
    move-exception p1

    .line 21
    iget-object v0, p0, Lorg/chromium/base/metrics/do;->do:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 22
    throw p1
.end method

.method public recordBooleanHistogram(Ljava/lang/String;Z)V
    .locals 7

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    .line 1
    invoke-direct/range {v0 .. v6}, Lorg/chromium/base/metrics/do;->if(ILjava/lang/String;IIII)V

    return-void
.end method

.method public recordExponentialHistogram(Ljava/lang/String;IIII)V
    .locals 7

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lorg/chromium/base/metrics/do;->if(ILjava/lang/String;IIII)V

    return-void
.end method

.method public recordLinearHistogram(Ljava/lang/String;IIII)V
    .locals 7

    const/4 v1, 0x3

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lorg/chromium/base/metrics/do;->if(ILjava/lang/String;IIII)V

    return-void
.end method

.method public recordSparseHistogram(Ljava/lang/String;I)V
    .locals 7

    const/4 v1, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    .line 1
    invoke-direct/range {v0 .. v6}, Lorg/chromium/base/metrics/do;->if(ILjava/lang/String;IIII)V

    return-void
.end method

.method public recordUserAction(Ljava/lang/String;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/base/metrics/do;->do:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/chromium/base/metrics/do;->case:Lorg/chromium/base/metrics/UmaRecorder;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1, p2, p3}, Lorg/chromium/base/metrics/UmaRecorder;->recordUserAction(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4
    iget-object p1, p0, Lorg/chromium/base/metrics/do;->do:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/base/metrics/do;->do:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 5
    iget-object v0, p0, Lorg/chromium/base/metrics/do;->do:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 6
    :try_start_1
    iget-object v0, p0, Lorg/chromium/base/metrics/do;->case:Lorg/chromium/base/metrics/UmaRecorder;

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lorg/chromium/base/metrics/do;->new:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x100

    if-ge v0, v1, :cond_1

    .line 8
    iget-object v0, p0, Lorg/chromium/base/metrics/do;->new:Ljava/util/List;

    new-instance v1, Lorg/chromium/base/metrics/do$if;

    invoke-direct {v1, p1, p2, p3}, Lorg/chromium/base/metrics/do$if;-><init>(Ljava/lang/String;J)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    iget p1, p0, Lorg/chromium/base/metrics/do;->try:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/chromium/base/metrics/do;->try:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    :goto_0
    iget-object p1, p0, Lorg/chromium/base/metrics/do;->do:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    .line 11
    :cond_2
    :try_start_2
    iget-object v0, p0, Lorg/chromium/base/metrics/do;->do:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 12
    iget-object v0, p0, Lorg/chromium/base/metrics/do;->do:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 13
    :try_start_3
    iget-object v0, p0, Lorg/chromium/base/metrics/do;->case:Lorg/chromium/base/metrics/UmaRecorder;

    invoke-interface {v0, p1, p2, p3}, Lorg/chromium/base/metrics/UmaRecorder;->recordUserAction(Ljava/lang/String;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14
    iget-object p1, p0, Lorg/chromium/base/metrics/do;->do:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/chromium/base/metrics/do;->do:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 15
    throw p1

    :catchall_1
    move-exception p1

    .line 16
    iget-object p2, p0, Lorg/chromium/base/metrics/do;->do:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 17
    throw p1

    :catchall_2
    move-exception p1

    .line 18
    iget-object p2, p0, Lorg/chromium/base/metrics/do;->do:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 19
    throw p1
.end method
