.class public Lorg/chromium/net/impl/CronetUrlRequestContext;
.super Landroid/support/v4/qs;
.source "SourceFile"


# annotations
.annotation runtime Landroid/support/v4/lo0;
    value = "cronet"
.end annotation

.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/impl/CronetUrlRequestContext$Natives;
    }
.end annotation

.annotation build Lorg/chromium/base/annotations/UsedByReflection;
    value = "CronetEngine.java"
.end annotation


# static fields
.field public static final abstract:Ljava/lang/String; = "CronetUrlRequestContext"

.field private static final continue:Ljava/util/HashSet;
    .annotation build Landroid/support/v4/ii0;
        value = "sInUseStoragePaths"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final finally:I = 0x3

.field private static final package:I = -0x1

.field private static final private:I = -0x2


# instance fields
.field private final break:Landroid/os/ConditionVariable;

.field private final catch:Ljava/util/concurrent/atomic/AtomicInteger;

.field private class:J
    .annotation build Landroid/support/v4/ii0;
        value = "mLock"
    .end annotation
.end field

.field private const:Ljava/lang/Thread;

.field private final default:Ljava/lang/String;

.field private extends:Z
    .annotation build Landroid/support/v4/ii0;
        value = "mLock"
    .end annotation
.end field

.field private final final:Z

.field private import:I
    .annotation build Landroid/support/v4/ii0;
        value = "mNetworkQualityLock"
    .end annotation
.end field

.field private native:I
    .annotation build Landroid/support/v4/ii0;
        value = "mNetworkQualityLock"
    .end annotation
.end field

.field private public:I
    .annotation build Landroid/support/v4/ii0;
        value = "mNetworkQualityLock"
    .end annotation
.end field

.field private final return:Lorg/chromium/base/ObserverList;
    .annotation build Landroid/support/v4/ii0;
        value = "mNetworkQualityLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList<",
            "Lorg/chromium/net/impl/VersionSafeCallbacks$for;",
            ">;"
        }
    .end annotation
.end field

.field private final static:Lorg/chromium/base/ObserverList;
    .annotation build Landroid/support/v4/ii0;
        value = "mNetworkQualityLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList<",
            "Lorg/chromium/net/impl/VersionSafeCallbacks$new;",
            ">;"
        }
    .end annotation
.end field

.field private final super:Ljava/lang/Object;

.field private final switch:Ljava/util/Map;
    .annotation build Landroid/support/v4/ii0;
        value = "mFinishedListenerLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/chromium/net/native$do;",
            "Lorg/chromium/net/impl/VersionSafeCallbacks$try;",
            ">;"
        }
    .end annotation
.end field

.field private final this:Ljava/lang/Object;

.field private final throw:Ljava/lang/Object;

.field private volatile throws:Landroid/os/ConditionVariable;

.field private while:I
    .annotation build Landroid/support/v4/ii0;
        value = "mNetworkQualityLock"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/chromium/net/impl/CronetUrlRequestContext;->continue:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/net/impl/if;)V
    .locals 5
    .annotation build Lorg/chromium/base/annotations/UsedByReflection;
        value = "CronetEngine.java"
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/qs;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->this:Ljava/lang/Object;

    .line 3
    new-instance v1, Landroid/os/ConditionVariable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->break:Landroid/os/ConditionVariable;

    .line 4
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->catch:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->super:Ljava/lang/Object;

    .line 6
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->throw:Ljava/lang/Object;

    .line 7
    iput v2, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->while:I

    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->import:I

    .line 9
    iput v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->native:I

    .line 10
    iput v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->public:I

    .line 11
    new-instance v1, Lorg/chromium/base/ObserverList;

    invoke-direct {v1}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->return:Lorg/chromium/base/ObserverList;

    .line 12
    new-instance v1, Lorg/chromium/base/ObserverList;

    invoke-direct {v1}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->static:Lorg/chromium/base/ObserverList;

    .line 13
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->switch:Ljava/util/Map;

    .line 14
    invoke-virtual {p1}, Lorg/chromium/net/impl/if;->implements()Z

    move-result v1

    iput-boolean v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->final:Z

    .line 15
    invoke-virtual {p1}, Lorg/chromium/net/impl/if;->private()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/chromium/net/impl/CronetLibraryLoader;->do(Landroid/content/Context;Lorg/chromium/net/impl/if;)V

    .line 16
    invoke-static {}, Lorg/chromium/net/impl/try;->if()Lorg/chromium/net/impl/CronetUrlRequestContext$Natives;

    move-result-object v1

    invoke-direct {p0}, Lorg/chromium/net/impl/CronetUrlRequestContext;->strictfp()I

    move-result v2

    invoke-interface {v1, v2}, Lorg/chromium/net/impl/CronetUrlRequestContext$Natives;->setMinLogLevel(I)I

    .line 17
    invoke-virtual {p1}, Lorg/chromium/net/impl/if;->interface()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 18
    invoke-virtual {p1}, Lorg/chromium/net/impl/if;->i()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->default:Ljava/lang/String;

    .line 19
    sget-object v2, Lorg/chromium/net/impl/CronetUrlRequestContext;->continue:Ljava/util/HashSet;

    monitor-enter v2

    .line 20
    :try_start_0
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    monitor-exit v2

    goto :goto_1

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Disk cache storage path already in use"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 24
    iput-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->default:Ljava/lang/String;

    .line 25
    :goto_1
    monitor-enter v0

    .line 26
    :try_start_1
    invoke-static {}, Lorg/chromium/net/impl/try;->if()Lorg/chromium/net/impl/CronetUrlRequestContext$Natives;

    move-result-object v1

    .line 27
    invoke-static {p1}, Lorg/chromium/net/impl/CronetUrlRequestContext;->continue(Lorg/chromium/net/impl/if;)J

    move-result-wide v2

    .line 28
    invoke-interface {v1, v2, v3}, Lorg/chromium/net/impl/CronetUrlRequestContext$Natives;->createRequestContextAdapter(J)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->class:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_2

    .line 29
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 30
    new-instance p1, Lorg/chromium/net/impl/CronetUrlRequestContext$do;

    invoke-direct {p1, p0}, Lorg/chromium/net/impl/CronetUrlRequestContext$do;-><init>(Lorg/chromium/net/impl/CronetUrlRequestContext;)V

    invoke-static {p1}, Lorg/chromium/net/impl/CronetLibraryLoader;->new(Ljava/lang/Runnable;)V

    return-void

    .line 31
    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v1, "Context Adapter creation failed."

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 32
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method private static abstract(I)I
    .locals 3

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    return v0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal Error: Illegal EffectiveConnectionType value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static continue(Lorg/chromium/net/impl/if;)J
    .locals 25
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-static {}, Lorg/chromium/net/impl/try;->if()Lorg/chromium/net/impl/CronetUrlRequestContext$Natives;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/net/impl/if;->continue()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/net/impl/if;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/net/impl/if;->a()Z

    move-result v3

    .line 3
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/net/impl/if;->abstract()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/net/impl/if;->strictfp()Z

    move-result v5

    .line 4
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/net/impl/if;->native()Z

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/net/impl/if;->public()Z

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/net/impl/if;->interface()I

    move-result v8

    .line 5
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/net/impl/if;->volatile()J

    move-result-wide v9

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/net/impl/if;->package()Ljava/lang/String;

    move-result-object v11

    .line 6
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/net/impl/if;->transient()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/net/impl/if;->implements()Z

    move-result v14

    .line 7
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/net/impl/if;->instanceof()Z

    move-result v15

    move-object/from16 v17, v0

    const/16 v0, 0xa

    move-object/from16 v18, v1

    move-object/from16 v1, p0

    .line 8
    invoke-virtual {v1, v0}, Lorg/chromium/net/impl/if;->j(I)I

    move-result v16

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    .line 9
    invoke-interface/range {v0 .. v16}, Lorg/chromium/net/impl/CronetUrlRequestContext$Natives;->createRequestContextConfig(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZZIJLjava/lang/String;JZZI)J

    move-result-wide v0

    .line 10
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/net/impl/if;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/chromium/net/impl/if$for;

    .line 11
    invoke-static {}, Lorg/chromium/net/impl/try;->if()Lorg/chromium/net/impl/CronetUrlRequestContext$Natives;

    move-result-object v17

    iget-object v4, v3, Lorg/chromium/net/impl/if$for;->do:Ljava/lang/String;

    iget v5, v3, Lorg/chromium/net/impl/if$for;->if:I

    iget v3, v3, Lorg/chromium/net/impl/if$for;->for:I

    move-wide/from16 v18, v0

    move-object/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v3

    invoke-interface/range {v17 .. v22}, Lorg/chromium/net/impl/CronetUrlRequestContext$Natives;->addQuicHint(JLjava/lang/String;II)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/net/impl/if;->synchronized()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/chromium/net/impl/if$if;

    .line 13
    invoke-static {}, Lorg/chromium/net/impl/try;->if()Lorg/chromium/net/impl/CronetUrlRequestContext$Natives;

    move-result-object v17

    iget-object v4, v3, Lorg/chromium/net/impl/if$if;->do:Ljava/lang/String;

    iget-object v5, v3, Lorg/chromium/net/impl/if$if;->if:[[B

    iget-boolean v6, v3, Lorg/chromium/net/impl/if$if;->for:Z

    iget-object v3, v3, Lorg/chromium/net/impl/if$if;->new:Ljava/util/Date;

    .line 14
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v23

    move-wide/from16 v18, v0

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move/from16 v22, v6

    .line 15
    invoke-interface/range {v17 .. v24}, Lorg/chromium/net/impl/CronetUrlRequestContext$Natives;->addPkp(JLjava/lang/String;[[BZJ)V

    goto :goto_1

    :cond_1
    return-wide v0
.end method

.method public static synthetic finally(Lorg/chromium/net/impl/CronetUrlRequestContext;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->this:Ljava/lang/Object;

    return-object p0
.end method

.method private initNetworkThread()V
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->const:Ljava/lang/Thread;

    .line 2
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->break:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "ChromiumNet"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private onEffectiveConnectionTypeChanged(I)V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->super:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput p1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->while:I

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private onRTTOrThroughputEstimatesComputed(III)V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->super:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput p1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->import:I

    .line 3
    iput p2, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->native:I

    .line 4
    iput p3, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->public:I

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

.method private onRttObservation(IJI)V
    .locals 11
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->super:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->return:Lorg/chromium/base/ObserverList;

    invoke-virtual {v1}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/net/impl/VersionSafeCallbacks$for;

    .line 3
    new-instance v10, Lorg/chromium/net/impl/CronetUrlRequestContext$if;

    move-object v3, v10

    move-object v4, p0

    move-object v5, v2

    move v6, p1

    move-wide v7, p2

    move v9, p4

    invoke-direct/range {v3 .. v9}, Lorg/chromium/net/impl/CronetUrlRequestContext$if;-><init>(Lorg/chromium/net/impl/CronetUrlRequestContext;Lorg/chromium/net/impl/VersionSafeCallbacks$for;IJI)V

    .line 4
    invoke-virtual {v2}, Lorg/chromium/net/impl/VersionSafeCallbacks$for;->do()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-static {v2, v10}, Lorg/chromium/net/impl/CronetUrlRequestContext;->synchronized(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private onThroughputObservation(IJI)V
    .locals 11
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->super:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->static:Lorg/chromium/base/ObserverList;

    invoke-virtual {v1}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/net/impl/VersionSafeCallbacks$new;

    .line 3
    new-instance v10, Lorg/chromium/net/impl/CronetUrlRequestContext$for;

    move-object v3, v10

    move-object v4, p0

    move-object v5, v2

    move v6, p1

    move-wide v7, p2

    move v9, p4

    invoke-direct/range {v3 .. v9}, Lorg/chromium/net/impl/CronetUrlRequestContext$for;-><init>(Lorg/chromium/net/impl/CronetUrlRequestContext;Lorg/chromium/net/impl/VersionSafeCallbacks$new;IJI)V

    .line 4
    invoke-virtual {v2}, Lorg/chromium/net/impl/VersionSafeCallbacks$new;->do()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-static {v2, v10}, Lorg/chromium/net/impl/CronetUrlRequestContext;->synchronized(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public static synthetic package(Lorg/chromium/net/impl/CronetUrlRequestContext;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->class:J

    return-wide v0
.end method

.method private private()V
    .locals 2
    .annotation build Landroid/support/v4/ii0;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetUrlRequestContext;->protected()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Engine is shut down."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private protected()Z
    .locals 5
    .annotation build Landroid/support/v4/ii0;
        value = "mLock"
    .end annotation

    .line 1
    iget-wide v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->class:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private strictfp()I
    .locals 3

    .line 1
    sget-object v0, Lorg/chromium/net/impl/CronetUrlRequestContext;->abstract:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/support/v4/rv0;->break(Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_0

    const/4 v2, -0x2

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v0, v2}, Landroid/support/v4/rv0;->break(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, -0x1

    :cond_1
    :goto_0
    return v2
.end method

.method private static synchronized(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    sget-object p1, Lorg/chromium/net/impl/CronetUrlRequestContext;->abstract:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "Exception posting task to executor"

    invoke-static {p1, p0, v0}, Landroid/support/v4/rv0;->if(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lorg/chromium/net/native;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->throw:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->switch:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 3
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->switch:Ljava/util/Map;

    .line 4
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/net/impl/VersionSafeCallbacks$try;

    .line 7
    new-instance v2, Lorg/chromium/net/impl/CronetUrlRequestContext$new;

    invoke-direct {v2, p0, v1, p1}, Lorg/chromium/net/impl/CronetUrlRequestContext$new;-><init>(Lorg/chromium/net/impl/CronetUrlRequestContext;Lorg/chromium/net/impl/VersionSafeCallbacks$try;Lorg/chromium/net/native;)V

    .line 8
    invoke-virtual {v1}, Lorg/chromium/net/impl/VersionSafeCallbacks$try;->do()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v1, v2}, Lorg/chromium/net/impl/CronetUrlRequestContext;->synchronized(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public break(Lorg/chromium/net/native$do;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->throw:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->switch:Ljava/util/Map;

    new-instance v2, Lorg/chromium/net/impl/VersionSafeCallbacks$try;

    invoke-direct {v2, p1}, Lorg/chromium/net/impl/VersionSafeCallbacks$try;-><init>(Lorg/chromium/net/native$do;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public case(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 1

    .line 1
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {p0, p1, v0}, Lorg/chromium/net/impl/CronetUrlRequestContext;->public(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p1

    return-object p1
.end method

.method public catch(Landroid/support/v4/e31;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->final:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->super:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->return:Lorg/chromium/base/ObserverList;

    invoke-virtual {v1}, Lorg/chromium/base/ObserverList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->this:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetUrlRequestContext;->private()V

    .line 6
    invoke-static {}, Lorg/chromium/net/impl/try;->if()Lorg/chromium/net/impl/CronetUrlRequestContext$Natives;

    move-result-object v2

    iget-wide v3, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->class:J

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, p0, v5}, Lorg/chromium/net/impl/CronetUrlRequestContext$Natives;->provideRTTObservations(JLorg/chromium/net/impl/CronetUrlRequestContext;Z)V

    .line 7
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    .line 8
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->return:Lorg/chromium/base/ObserverList;

    new-instance v2, Lorg/chromium/net/impl/VersionSafeCallbacks$for;

    invoke-direct {v2, p1}, Lorg/chromium/net/impl/VersionSafeCallbacks$for;-><init>(Landroid/support/v4/e31;)V

    invoke-virtual {v1, v2}, Lorg/chromium/base/ObserverList;->try(Ljava/lang/Object;)Z

    .line 9
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Network quality estimator must be enabled"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public class(Landroid/support/v4/f31;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->final:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->super:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->static:Lorg/chromium/base/ObserverList;

    invoke-virtual {v1}, Lorg/chromium/base/ObserverList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->this:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetUrlRequestContext;->private()V

    .line 6
    invoke-static {}, Lorg/chromium/net/impl/try;->if()Lorg/chromium/net/impl/CronetUrlRequestContext$Natives;

    move-result-object v2

    iget-wide v3, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->class:J

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, p0, v5}, Lorg/chromium/net/impl/CronetUrlRequestContext$Natives;->provideThroughputObservations(JLorg/chromium/net/impl/CronetUrlRequestContext;Z)V

    .line 7
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    .line 8
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->static:Lorg/chromium/base/ObserverList;

    new-instance v2, Lorg/chromium/net/impl/VersionSafeCallbacks$new;

    invoke-direct {v2, p1}, Lorg/chromium/net/impl/VersionSafeCallbacks$new;-><init>(Landroid/support/v4/f31;)V

    invoke-virtual {v1, v2}, Lorg/chromium/base/ObserverList;->try(Ljava/lang/Object;)Z

    .line 9
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Network quality estimator must be enabled"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public const(ZZZ)V
    .locals 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->final:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->this:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetUrlRequestContext;->private()V

    .line 4
    invoke-static {}, Lorg/chromium/net/impl/try;->if()Lorg/chromium/net/impl/CronetUrlRequestContext$Natives;

    move-result-object v1

    iget-wide v2, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->class:J

    move-object v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-interface/range {v1 .. v7}, Lorg/chromium/net/impl/CronetUrlRequestContext$Natives;->configureNetworkQualityEstimatorForTesting(JLorg/chromium/net/impl/CronetUrlRequestContext;ZZZ)V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Network quality estimator must be enabled"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public default(Ljava/lang/String;Lorg/chromium/net/if$if;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/util/List;IZLjava/util/Collection;ZIZI)Lorg/chromium/net/try;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/chromium/net/if$if;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;IZ",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;ZIZI)",
            "Lorg/chromium/net/try;"
        }
    .end annotation

    move-object/from16 v15, p0

    .line 1
    iget-object v14, v15, Lorg/chromium/net/impl/CronetUrlRequestContext;->this:Ljava/lang/Object;

    monitor-enter v14

    .line 2
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lorg/chromium/net/impl/CronetUrlRequestContext;->private()V

    .line 3
    new-instance v0, Lorg/chromium/net/impl/CronetBidirectionalStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p6

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move-object/from16 v16, v14

    move/from16 v14, p12

    :try_start_1
    invoke-direct/range {v1 .. v14}, Lorg/chromium/net/impl/CronetBidirectionalStream;-><init>(Lorg/chromium/net/impl/CronetUrlRequestContext;Ljava/lang/String;ILorg/chromium/net/if$if;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/util/List;ZLjava/util/Collection;ZIZI)V

    monitor-exit v16

    return-object v0

    :catchall_0
    move-exception v0

    move-object/from16 v16, v14

    .line 4
    :goto_0
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public else()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->default:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lorg/chromium/net/impl/CronetUrlRequestContext;->continue:Ljava/util/HashSet;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->default:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->this:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_1
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetUrlRequestContext;->private()V

    .line 7
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->catch:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-nez v1, :cond_3

    .line 8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->const:Ljava/lang/Thread;

    if-eq v1, v2, :cond_2

    .line 9
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 10
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->break:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 11
    invoke-virtual {p0}, Lorg/chromium/net/impl/CronetUrlRequestContext;->this()V

    .line 12
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->this:Ljava/lang/Object;

    monitor-enter v1

    .line 13
    :try_start_2
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetUrlRequestContext;->protected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 14
    monitor-exit v1

    return-void

    .line 15
    :cond_1
    invoke-static {}, Lorg/chromium/net/impl/try;->if()Lorg/chromium/net/impl/CronetUrlRequestContext$Natives;

    move-result-object v0

    iget-wide v2, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->class:J

    invoke-interface {v0, v2, v3, p0}, Lorg/chromium/net/impl/CronetUrlRequestContext$Natives;->destroy(JLorg/chromium/net/impl/CronetUrlRequestContext;)V

    const-wide/16 v2, 0x0

    .line 16
    iput-wide v2, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->class:J

    .line 17
    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 18
    :cond_2
    :try_start_3
    new-instance v1, Ljava/lang/IllegalThreadStateException;

    const-string v2, "Cannot shutdown from network thread."

    invoke-direct {v1, v2}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 19
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot shutdown with active requests."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_2
    move-exception v1

    .line 20
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1
.end method

.method public extends(Ljava/lang/String;Lorg/chromium/net/return$if;Ljava/util/concurrent/Executor;ILjava/util/Collection;ZZZZIZILorg/chromium/net/native$do;I)Landroid/support/v4/cd2;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/chromium/net/return$if;",
            "Ljava/util/concurrent/Executor;",
            "I",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;ZZZZIZI",
            "Lorg/chromium/net/native$do;",
            "I)",
            "Landroid/support/v4/cd2;"
        }
    .end annotation

    move-object/from16 v15, p0

    .line 1
    iget-object v14, v15, Lorg/chromium/net/impl/CronetUrlRequestContext;->this:Ljava/lang/Object;

    monitor-enter v14

    .line 2
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lorg/chromium/net/impl/CronetUrlRequestContext;->private()V

    .line 3
    new-instance v0, Lorg/chromium/net/impl/CronetUrlRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p4

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move-object/from16 v17, v14

    move/from16 v14, p12

    move-object/from16 v15, p13

    move/from16 v16, p14

    :try_start_1
    invoke-direct/range {v1 .. v16}, Lorg/chromium/net/impl/CronetUrlRequest;-><init>(Lorg/chromium/net/impl/CronetUrlRequestContext;Ljava/lang/String;ILorg/chromium/net/return$if;Ljava/util/concurrent/Executor;Ljava/util/Collection;ZZZZIZILorg/chromium/net/native$do;I)V

    monitor-exit v17

    return-object v0

    :catchall_0
    move-exception v0

    move-object/from16 v17, v14

    .line 4
    :goto_0
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public final()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->final:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->super:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->public:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 4
    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network quality estimator must be enabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public for()[B
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/net/impl/try;->if()Lorg/chromium/net/impl/CronetUrlRequestContext$Natives;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/net/impl/CronetUrlRequestContext$Natives;->getHistogramDeltas()[B

    move-result-object v0

    return-object v0
.end method

.method public goto(Ljava/lang/String;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->this:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetUrlRequestContext;->private()V

    .line 3
    invoke-static {}, Lorg/chromium/net/impl/try;->if()Lorg/chromium/net/impl/CronetUrlRequestContext$Natives;

    move-result-object v1

    iget-wide v2, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->class:J

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    invoke-interface/range {v1 .. v6}, Lorg/chromium/net/impl/CronetUrlRequestContext$Natives;->startNetLogToFile(JLorg/chromium/net/impl/CronetUrlRequestContext;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->extends:Z

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unable to start NetLog"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public if()Ljava/net/URLStreamHandlerFactory;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/net/urlconnection/goto;

    invoke-direct {v0, p0}, Lorg/chromium/net/urlconnection/goto;-><init>(Lorg/chromium/net/case;)V

    return-object v0
.end method

.method public implements()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->catch:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void
.end method

.method public import(Ljava/lang/String;Lorg/chromium/net/if$if;Ljava/util/concurrent/Executor;)Lorg/chromium/net/try$do;
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/r8;

    invoke-direct {v0, p1, p2, p3, p0}, Landroid/support/v4/r8;-><init>(Ljava/lang/String;Lorg/chromium/net/if$if;Ljava/util/concurrent/Executor;Landroid/support/v4/qs;)V

    return-object v0
.end method

.method public instanceof()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->catch:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public interface()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->throw:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->switch:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public new()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cronet/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/support/v4/im0;->for()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public public(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p2

    sget-object v0, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne p2, v0, :cond_2

    .line 2
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p2

    const-string v0, "http"

    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected protocol:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    :goto_0
    new-instance p2, Lorg/chromium/net/urlconnection/new;

    invoke-direct {p2, p1, p0}, Lorg/chromium/net/urlconnection/new;-><init>(Ljava/net/URL;Lorg/chromium/net/for;)V

    return-object p2

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public return(Lorg/chromium/net/native$do;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->throw:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->switch:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static(Landroid/support/v4/e31;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->final:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->super:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->return:Lorg/chromium/base/ObserverList;

    new-instance v2, Lorg/chromium/net/impl/VersionSafeCallbacks$for;

    invoke-direct {v2, p1}, Lorg/chromium/net/impl/VersionSafeCallbacks$for;-><init>(Landroid/support/v4/e31;)V

    invoke-virtual {v1, v2}, Lorg/chromium/base/ObserverList;->class(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->return:Lorg/chromium/base/ObserverList;

    invoke-virtual {p1}, Lorg/chromium/base/ObserverList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->this:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetUrlRequestContext;->private()V

    .line 7
    invoke-static {}, Lorg/chromium/net/impl/try;->if()Lorg/chromium/net/impl/CronetUrlRequestContext$Natives;

    move-result-object v1

    iget-wide v2, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->class:J

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, p0, v4}, Lorg/chromium/net/impl/CronetUrlRequestContext$Natives;->provideRTTObservations(JLorg/chromium/net/impl/CronetUrlRequestContext;Z)V

    .line 8
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 9
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Network quality estimator must be enabled"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public stopNetLogCompleted()V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->throws:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public super()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->final:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->super:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->while:I

    invoke-static {v1}, Lorg/chromium/net/impl/CronetUrlRequestContext;->abstract(I)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network quality estimator must be enabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public switch(Landroid/support/v4/f31;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->final:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->super:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->static:Lorg/chromium/base/ObserverList;

    new-instance v2, Lorg/chromium/net/impl/VersionSafeCallbacks$new;

    invoke-direct {v2, p1}, Lorg/chromium/net/impl/VersionSafeCallbacks$new;-><init>(Landroid/support/v4/f31;)V

    invoke-virtual {v1, v2}, Lorg/chromium/base/ObserverList;->class(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->static:Lorg/chromium/base/ObserverList;

    invoke-virtual {p1}, Lorg/chromium/base/ObserverList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->this:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetUrlRequestContext;->private()V

    .line 7
    invoke-static {}, Lorg/chromium/net/impl/try;->if()Lorg/chromium/net/impl/CronetUrlRequestContext$Natives;

    move-result-object v1

    iget-wide v2, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->class:J

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, p0, v4}, Lorg/chromium/net/impl/CronetUrlRequestContext$Natives;->provideThroughputObservations(JLorg/chromium/net/impl/CronetUrlRequestContext;Z)V

    .line 8
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 9
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Network quality estimator must be enabled"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public this()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->this:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->extends:Z

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetUrlRequestContext;->private()V

    .line 5
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->throws:Landroid/os/ConditionVariable;

    .line 6
    invoke-static {}, Lorg/chromium/net/impl/try;->if()Lorg/chromium/net/impl/CronetUrlRequestContext$Natives;

    move-result-object v1

    iget-wide v2, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->class:J

    invoke-interface {v1, v2, v3, p0}, Lorg/chromium/net/impl/CronetUrlRequestContext$Natives;->stopNetLog(JLorg/chromium/net/impl/CronetUrlRequestContext;)V

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->extends:Z

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->throws:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    return-void

    :catchall_0
    move-exception v1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public throw()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->final:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->super:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->import:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 4
    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network quality estimator must be enabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public throws(Ljava/lang/String;ZI)V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->this:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetUrlRequestContext;->private()V

    .line 3
    invoke-static {}, Lorg/chromium/net/impl/try;->if()Lorg/chromium/net/impl/CronetUrlRequestContext$Natives;

    move-result-object v1

    iget-wide v2, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->class:J

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-interface/range {v1 .. v7}, Lorg/chromium/net/impl/CronetUrlRequestContext$Natives;->startNetLogToDisk(JLorg/chromium/net/impl/CronetUrlRequestContext;Ljava/lang/String;ZI)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->extends:Z

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

.method public transient(Ljava/lang/Thread;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->const:Ljava/lang/Thread;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic try(Ljava/lang/String;Lorg/chromium/net/return$if;Ljava/util/concurrent/Executor;)Lorg/chromium/net/return$do;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/qs;->native(Ljava/lang/String;Lorg/chromium/net/return$if;Ljava/util/concurrent/Executor;)Lorg/chromium/net/else$do;

    move-result-object p1

    return-object p1
.end method

.method public volatile()J
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->this:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetUrlRequestContext;->private()V

    .line 3
    iget-wide v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->class:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public while()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->final:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->super:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget v1, p0, Lorg/chromium/net/impl/CronetUrlRequestContext;->native:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 4
    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network quality estimator must be enabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
