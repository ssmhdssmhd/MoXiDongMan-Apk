.class public Lorg/chromium/net/impl/CronetBidirectionalStream;
.super Lorg/chromium/net/try;
.source "SourceFile"


# annotations
.annotation runtime Landroid/support/v4/lo0;
    value = "cronet"
.end annotation

.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/impl/CronetBidirectionalStream$Natives;,
        Lorg/chromium/net/impl/CronetBidirectionalStream$else;,
        Lorg/chromium/net/impl/CronetBidirectionalStream$case;,
        Lorg/chromium/net/impl/CronetBidirectionalStream$goto;
    }
.end annotation


# static fields
.field public static final synthetic finally:Z


# instance fields
.field private final break:Z

.field private final case:Ljava/lang/String;

.field private final catch:I

.field private final class:Z

.field private final const:I

.field private default:Lorg/chromium/net/impl/CronetBidirectionalStream$case;

.field private final do:Lorg/chromium/net/impl/CronetUrlRequestContext;

.field private final else:[Ljava/lang/String;

.field private extends:Ljava/lang/Runnable;

.field private final:Landroid/support/v4/rs;

.field private final for:Lorg/chromium/net/impl/VersionSafeCallbacks$do;

.field private final goto:Z

.field private final if:Ljava/util/concurrent/Executor;

.field private import:Z
    .annotation build Landroid/support/v4/ii0;
        value = "mNativeStreamLock"
    .end annotation
.end field

.field private native:Z
    .annotation build Landroid/support/v4/ii0;
        value = "mNativeStreamLock"
    .end annotation
.end field

.field private final new:Ljava/lang/String;

.field private public:Lorg/chromium/net/native$if;
    .annotation build Landroid/support/v4/ii0;
        value = "mNativeStreamLock"
    .end annotation
.end field

.field private return:J
    .annotation build Landroid/support/v4/ii0;
        value = "mNativeStreamLock"
    .end annotation
.end field

.field private static:I
    .annotation build Landroid/support/v4/ii0;
        value = "mNativeStreamLock"
    .end annotation
.end field

.field private final super:Ljava/lang/Object;

.field private switch:I
    .annotation build Landroid/support/v4/ii0;
        value = "mNativeStreamLock"
    .end annotation
.end field

.field private final this:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private throw:Ljava/util/LinkedList;
    .annotation build Landroid/support/v4/ii0;
        value = "mNativeStreamLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private throws:Lorg/chromium/net/impl/this;

.field private final try:I

.field private while:Ljava/util/LinkedList;
    .annotation build Landroid/support/v4/ii0;
        value = "mNativeStreamLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/chromium/net/impl/CronetUrlRequestContext;Ljava/lang/String;ILorg/chromium/net/if$if;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/util/List;ZLjava/util/Collection;ZIZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/net/impl/CronetUrlRequestContext;",
            "Ljava/lang/String;",
            "I",
            "Lorg/chromium/net/if$if;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;Z",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;ZIZI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/chromium/net/try;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->super:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->static:I

    .line 4
    iput v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->switch:I

    .line 5
    iput-object p1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->do:Lorg/chromium/net/impl/CronetUrlRequestContext;

    .line 6
    iput-object p2, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->new:Ljava/lang/String;

    .line 7
    invoke-static {p3}, Lorg/chromium/net/impl/CronetBidirectionalStream;->static(I)I

    move-result p1

    iput p1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->try:I

    .line 8
    new-instance p1, Lorg/chromium/net/impl/VersionSafeCallbacks$do;

    invoke-direct {p1, p4}, Lorg/chromium/net/impl/VersionSafeCallbacks$do;-><init>(Lorg/chromium/net/if$if;)V

    iput-object p1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->for:Lorg/chromium/net/impl/VersionSafeCallbacks$do;

    .line 9
    iput-object p5, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->if:Ljava/util/concurrent/Executor;

    .line 10
    iput-object p6, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->case:Ljava/lang/String;

    .line 11
    invoke-static {p7}, Lorg/chromium/net/impl/CronetBidirectionalStream;->implements(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->else:[Ljava/lang/String;

    .line 12
    iput-boolean p8, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->goto:Z

    .line 13
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->throw:Ljava/util/LinkedList;

    .line 14
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->while:Ljava/util/LinkedList;

    .line 15
    iput-object p9, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->this:Ljava/util/Collection;

    .line 16
    iput-boolean p10, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->break:Z

    .line 17
    iput p11, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->catch:I

    .line 18
    iput-boolean p12, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->class:Z

    .line 19
    iput p13, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->const:I

    return-void
.end method

.method private abstract()Z
    .locals 5
    .annotation build Landroid/support/v4/ii0;
        value = "mNativeStreamLock"
    .end annotation

    .line 1
    iget v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->static:I

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->return:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic break(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->throws(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic catch(Lorg/chromium/net/impl/CronetBidirectionalStream;Landroid/support/v4/rs;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/chromium/net/impl/CronetBidirectionalStream;->extends(Landroid/support/v4/rs;)V

    return-void
.end method

.method public static synthetic class(Lorg/chromium/net/impl/CronetBidirectionalStream;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->static:I

    return p0
.end method

.method public static synthetic const(Lorg/chromium/net/impl/CronetBidirectionalStream;I)I
    .locals 0

    .line 1
    iput p1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->static:I

    return p1
.end method

.method private continue()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->super:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->abstract()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    iget v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->switch:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    iget v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->static:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x7

    .line 5
    iput v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->switch:I

    iput v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->static:I

    const/4 v1, 0x0

    .line 6
    invoke-direct {p0, v1}, Lorg/chromium/net/impl/CronetBidirectionalStream;->switch(Z)V

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->for:Lorg/chromium/net/impl/VersionSafeCallbacks$do;

    iget-object v2, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->throws:Lorg/chromium/net/impl/this;

    invoke-virtual {v0, p0, v2}, Lorg/chromium/net/impl/VersionSafeCallbacks$do;->else(Lorg/chromium/net/if;Lorg/chromium/net/static;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    sget-object v2, Lorg/chromium/net/impl/CronetUrlRequestContext;->abstract:Ljava/lang/String;

    const-string v3, "Exception in onSucceeded method"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Landroid/support/v4/rv0;->if(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 10
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 11
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private default(Landroid/support/v4/rs;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/net/impl/CronetBidirectionalStream$try;

    invoke-direct {v0, p0, p1}, Lorg/chromium/net/impl/CronetBidirectionalStream$try;-><init>(Lorg/chromium/net/impl/CronetBidirectionalStream;Landroid/support/v4/rs;)V

    invoke-direct {p0, v0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->volatile(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic else(Lorg/chromium/net/impl/CronetBidirectionalStream;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->super:Ljava/lang/Object;

    return-object p0
.end method

.method private extends(Landroid/support/v4/rs;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->final:Landroid/support/v4/rs;

    .line 2
    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->super:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->abstract()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x6

    .line 5
    iput v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->switch:I

    iput v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->static:I

    const/4 v1, 0x0

    .line 6
    invoke-direct {p0, v1}, Lorg/chromium/net/impl/CronetBidirectionalStream;->switch(Z)V

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->for:Lorg/chromium/net/impl/VersionSafeCallbacks$do;

    iget-object v2, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->throws:Lorg/chromium/net/impl/this;

    invoke-virtual {v0, p0, v2, p1}, Lorg/chromium/net/impl/VersionSafeCallbacks$do;->if(Lorg/chromium/net/if;Lorg/chromium/net/static;Landroid/support/v4/rs;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    sget-object v0, Lorg/chromium/net/impl/CronetUrlRequestContext;->abstract:Ljava/lang/String;

    const-string v2, "Exception notifying of failed request"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {v0, v2, v3}, Landroid/support/v4/rv0;->if(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public static synthetic final(Lorg/chromium/net/impl/CronetBidirectionalStream;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->switch:I

    return p0
.end method

.method public static synthetic goto(Lorg/chromium/net/impl/CronetBidirectionalStream;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->abstract()Z

    move-result p0

    return p0
.end method

.method private static implements(Ljava/util/List;)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    add-int/lit8 v3, v1, 0x1

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v1

    add-int/lit8 v1, v3, 0x1

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static synthetic import(Lorg/chromium/net/impl/CronetBidirectionalStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->continue()V

    return-void
.end method

.method private interface(ILjava/lang/String;[Ljava/lang/String;J)Lorg/chromium/net/impl/this;
    .locals 12

    .line 1
    new-instance v10, Lorg/chromium/net/impl/this;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    move-object v11, p0

    iget-object v1, v11, Lorg/chromium/net/impl/CronetBidirectionalStream;->new:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2
    invoke-static {p3}, Lorg/chromium/net/impl/CronetBidirectionalStream;->private([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v3, ""

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, v10

    move v2, p1

    move-object v6, p2

    move-wide/from16 v8, p4

    invoke-direct/range {v0 .. v9}, Lorg/chromium/net/impl/this;-><init>(Ljava/util/List;ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;J)V

    return-object v10
.end method

.method public static synthetic native(Lorg/chromium/net/impl/CronetBidirectionalStream;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/chromium/net/impl/CronetBidirectionalStream;->strictfp(Ljava/lang/Exception;)V

    return-void
.end method

.method private onCanceled()V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 1
    new-instance v0, Lorg/chromium/net/impl/CronetBidirectionalStream$new;

    invoke-direct {v0, p0}, Lorg/chromium/net/impl/CronetBidirectionalStream$new;-><init>(Lorg/chromium/net/impl/CronetBidirectionalStream;)V

    invoke-direct {p0, v0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->volatile(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onError(IIILjava/lang/String;J)V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->throws:Lorg/chromium/net/impl/this;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p5, p6}, Lorg/chromium/net/impl/this;->catch(J)V

    :cond_0
    const/16 p5, 0xa

    const-string p6, "Exception in BidirectionalStream: "

    if-eq p1, p5, :cond_2

    const/4 p5, 0x3

    if-ne p1, p5, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance p3, Landroid/support/v4/s8;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4, p1, p2}, Landroid/support/v4/s8;-><init>(Ljava/lang/String;II)V

    invoke-direct {p0, p3}, Lorg/chromium/net/impl/CronetBidirectionalStream;->default(Landroid/support/v4/rs;)V

    goto :goto_1

    .line 4
    :cond_2
    :goto_0
    new-instance p5, Landroid/support/v4/xi1;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p5, p4, p1, p2, p3}, Landroid/support/v4/xi1;-><init>(Ljava/lang/String;III)V

    invoke-direct {p0, p5}, Lorg/chromium/net/impl/CronetBidirectionalStream;->default(Landroid/support/v4/rs;)V

    :goto_1
    return-void
.end method

.method private onMetricsCollected(JJJJJJJJJJJJJZJJ)V
    .locals 35
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget-object v2, v1, Lorg/chromium/net/impl/CronetBidirectionalStream;->super:Ljava/lang/Object;

    monitor-enter v2

    .line 2
    :try_start_0
    iget-object v0, v1, Lorg/chromium/net/impl/CronetBidirectionalStream;->public:Lorg/chromium/net/native$if;

    if-nez v0, :cond_2

    .line 3
    new-instance v0, Landroid/support/v4/ts;

    move-object v3, v0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move-wide/from16 v16, p13

    move-wide/from16 v18, p15

    move-wide/from16 v20, p17

    move-wide/from16 v22, p19

    move-wide/from16 v24, p21

    move-wide/from16 v26, p23

    move-wide/from16 v28, p25

    move/from16 v30, p27

    move-wide/from16 v31, p28

    move-wide/from16 v33, p30

    invoke-direct/range {v3 .. v34}, Landroid/support/v4/ts;-><init>(JJJJJJJJJJJJJZJJ)V

    iput-object v0, v1, Lorg/chromium/net/impl/CronetBidirectionalStream;->public:Lorg/chromium/net/native$if;

    .line 4
    iget v3, v1, Lorg/chromium/net/impl/CronetBidirectionalStream;->static:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    const/4 v3, 0x2

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    .line 5
    :goto_0
    new-instance v4, Landroid/support/v4/cn1;

    iget-object v5, v1, Lorg/chromium/net/impl/CronetBidirectionalStream;->new:Ljava/lang/String;

    iget-object v6, v1, Lorg/chromium/net/impl/CronetBidirectionalStream;->this:Ljava/util/Collection;

    iget-object v7, v1, Lorg/chromium/net/impl/CronetBidirectionalStream;->throws:Lorg/chromium/net/impl/this;

    iget-object v8, v1, Lorg/chromium/net/impl/CronetBidirectionalStream;->final:Landroid/support/v4/rs;

    move-object/from16 p1, v4

    move-object/from16 p2, v5

    move-object/from16 p3, v6

    move-object/from16 p4, v0

    move/from16 p5, v3

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    invoke-direct/range {p1 .. p7}, Landroid/support/v4/cn1;-><init>(Ljava/lang/String;Ljava/util/Collection;Lorg/chromium/net/native$if;ILorg/chromium/net/static;Landroid/support/v4/rs;)V

    .line 6
    iget-object v0, v1, Lorg/chromium/net/impl/CronetBidirectionalStream;->do:Lorg/chromium/net/impl/CronetUrlRequestContext;

    invoke-virtual {v0, v4}, Lorg/chromium/net/impl/CronetUrlRequestContext;->a(Lorg/chromium/net/native;)V

    .line 7
    monitor-exit v2

    return-void

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Metrics collection should only happen once."

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 9
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onReadCompleted(Ljava/nio/ByteBuffer;IIIJ)V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->throws:Lorg/chromium/net/impl/this;

    invoke-virtual {v0, p5, p6}, Lorg/chromium/net/impl/this;->catch(J)V

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p5

    const/4 p6, 0x0

    if-ne p5, p3, :cond_4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p5

    if-eq p5, p4, :cond_0

    goto :goto_2

    :cond_0
    if-ltz p2, :cond_3

    add-int/2addr p3, p2

    if-le p3, p4, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 4
    iget-object p3, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->default:Lorg/chromium/net/impl/CronetBidirectionalStream$case;

    iput-object p1, p3, Lorg/chromium/net/impl/CronetBidirectionalStream$case;->do:Ljava/nio/ByteBuffer;

    if-nez p2, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 5
    :goto_0
    iput-boolean p1, p3, Lorg/chromium/net/impl/CronetBidirectionalStream$case;->if:Z

    .line 6
    invoke-direct {p0, p3}, Lorg/chromium/net/impl/CronetBidirectionalStream;->volatile(Ljava/lang/Runnable;)V

    return-void

    .line 7
    :cond_3
    :goto_1
    new-instance p1, Landroid/support/v4/ss;

    const-string p2, "Invalid number of bytes read"

    invoke-direct {p1, p2, p6}, Landroid/support/v4/ss;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, p1}, Lorg/chromium/net/impl/CronetBidirectionalStream;->default(Landroid/support/v4/rs;)V

    return-void

    .line 8
    :cond_4
    :goto_2
    new-instance p1, Landroid/support/v4/ss;

    const-string p2, "ByteBuffer modified externally during read"

    invoke-direct {p1, p2, p6}, Landroid/support/v4/ss;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, p1}, Lorg/chromium/net/impl/CronetBidirectionalStream;->default(Landroid/support/v4/rs;)V

    return-void
.end method

.method private onResponseHeadersReceived(ILjava/lang/String;[Ljava/lang/String;J)V
    .locals 0
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 1
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lorg/chromium/net/impl/CronetBidirectionalStream;->interface(ILjava/lang/String;[Ljava/lang/String;J)Lorg/chromium/net/impl/this;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->throws:Lorg/chromium/net/impl/this;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    new-instance p1, Lorg/chromium/net/impl/CronetBidirectionalStream$if;

    invoke-direct {p1, p0}, Lorg/chromium/net/impl/CronetBidirectionalStream$if;-><init>(Lorg/chromium/net/impl/CronetBidirectionalStream;)V

    invoke-direct {p0, p1}, Lorg/chromium/net/impl/CronetBidirectionalStream;->volatile(Ljava/lang/Runnable;)V

    return-void

    .line 3
    :catch_0
    new-instance p1, Landroid/support/v4/ss;

    const/4 p2, 0x0

    const-string p3, "Cannot prepare ResponseInfo"

    invoke-direct {p1, p3, p2}, Landroid/support/v4/ss;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, p1}, Lorg/chromium/net/impl/CronetBidirectionalStream;->default(Landroid/support/v4/rs;)V

    return-void
.end method

.method private onResponseTrailersReceived([Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 1
    new-instance v0, Lorg/chromium/net/impl/this$do;

    .line 2
    invoke-static {p1}, Lorg/chromium/net/impl/CronetBidirectionalStream;->private([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/chromium/net/impl/this$do;-><init>(Ljava/util/List;)V

    .line 3
    new-instance p1, Lorg/chromium/net/impl/CronetBidirectionalStream$for;

    invoke-direct {p1, p0, v0}, Lorg/chromium/net/impl/CronetBidirectionalStream$for;-><init>(Lorg/chromium/net/impl/CronetBidirectionalStream;Lorg/chromium/net/static$do;)V

    invoke-direct {p0, p1}, Lorg/chromium/net/impl/CronetBidirectionalStream;->volatile(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onStreamReady(Z)V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 1
    new-instance v0, Lorg/chromium/net/impl/CronetBidirectionalStream$do;

    invoke-direct {v0, p0, p1}, Lorg/chromium/net/impl/CronetBidirectionalStream$do;-><init>(Lorg/chromium/net/impl/CronetBidirectionalStream;Z)V

    invoke-direct {p0, v0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->volatile(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onWritevCompleted([Ljava/nio/ByteBuffer;[I[IZ)V
    .locals 6
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->super:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->abstract()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/16 v1, 0x8

    .line 3
    iput v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->switch:I

    .line 4
    iget-object v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->while:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->protected()V

    .line 6
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 7
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_5

    .line 8
    aget-object v2, p1, v1

    .line 9
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    aget v4, p2, v1

    if-ne v3, v4, :cond_4

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    aget v4, p3, v1

    if-eq v3, v4, :cond_2

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 11
    new-instance v3, Lorg/chromium/net/impl/CronetBidirectionalStream$else;

    const/4 v4, 0x1

    if-eqz p4, :cond_3

    array-length v5, p1

    sub-int/2addr v5, v4

    if-ne v1, v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    invoke-direct {v3, p0, v2, v4}, Lorg/chromium/net/impl/CronetBidirectionalStream$else;-><init>(Lorg/chromium/net/impl/CronetBidirectionalStream;Ljava/nio/ByteBuffer;Z)V

    invoke-direct {p0, v3}, Lorg/chromium/net/impl/CronetBidirectionalStream;->volatile(Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_4
    :goto_2
    new-instance p1, Landroid/support/v4/ss;

    const-string p2, "ByteBuffer modified externally during write"

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Landroid/support/v4/ss;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, p1}, Lorg/chromium/net/impl/CronetBidirectionalStream;->default(Landroid/support/v4/rs;)V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method private static private([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    div-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 3
    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    aget-object v3, p0, v1

    add-int/lit8 v4, v1, 0x1

    aget-object v4, p0, v4

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private protected()V
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->while:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 2
    new-array v5, v0, [Ljava/nio/ByteBuffer;

    .line 3
    new-array v6, v0, [I

    .line 4
    new-array v7, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 5
    iget-object v3, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->while:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 6
    aput-object v3, v5, v2

    .line 7
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    aput v4, v6, v2

    .line 8
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    aput v3, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    .line 9
    iput v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->switch:I

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->native:Z

    .line 11
    invoke-static {}, Lorg/chromium/net/impl/do;->if()Lorg/chromium/net/impl/CronetBidirectionalStream$Natives;

    move-result-object v2

    iget-wide v3, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->return:J

    iget-boolean v8, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->import:Z

    if-eqz v8, :cond_1

    iget-object v8, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->throw:Ljava/util/LinkedList;

    .line 12
    invoke-virtual {v8}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    move-object v1, v2

    move-wide v2, v3

    move-object v4, p0

    .line 13
    invoke-interface/range {v1 .. v8}, Lorg/chromium/net/impl/CronetBidirectionalStream$Natives;->writevData(JLorg/chromium/net/impl/CronetBidirectionalStream;[Ljava/nio/ByteBuffer;[I[IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/16 v0, 0x8

    .line 14
    iput v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->switch:I

    .line 15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to call native writev."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public static synthetic public(Lorg/chromium/net/impl/CronetBidirectionalStream;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->native:Z

    return p0
.end method

.method public static synthetic return(Lorg/chromium/net/impl/CronetBidirectionalStream;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->native:Z

    return p1
.end method

.method private static static(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_4

    const/4 v1, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x4

    if-eq p0, v0, :cond_1

    if-ne p0, v1, :cond_0

    const/4 p0, 0x5

    return p0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid stream priority."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return v1

    :cond_2
    return v0

    :cond_3
    return v1

    :cond_4
    return v0
.end method

.method private strictfp(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/support/v4/jf;

    const-string v1, "CalledByNative method has thrown an exception"

    invoke-direct {v0, v1, p1}, Landroid/support/v4/jf;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    sget-object v1, Lorg/chromium/net/impl/CronetUrlRequestContext;->abstract:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Exception in CalledByNative method"

    invoke-static {v1, p1, v2}, Landroid/support/v4/rv0;->if(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-direct {p0, v0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->extends(Landroid/support/v4/rs;)V

    return-void
.end method

.method public static synthetic super(Lorg/chromium/net/impl/CronetBidirectionalStream;I)I
    .locals 0

    .line 1
    iput p1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->switch:I

    return p1
.end method

.method private switch(Z)V
    .locals 6
    .annotation build Landroid/support/v4/ii0;
        value = "mNativeStreamLock"
    .end annotation

    .line 1
    sget-object v0, Lorg/chromium/net/impl/CronetUrlRequestContext;->abstract:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyNativeStreamLocked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Landroid/support/v4/rv0;->goto(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-wide v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->return:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lorg/chromium/net/impl/do;->if()Lorg/chromium/net/impl/CronetBidirectionalStream$Natives;

    move-result-object v0

    iget-wide v4, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->return:J

    invoke-interface {v0, v4, v5, p0, p1}, Lorg/chromium/net/impl/CronetBidirectionalStream$Natives;->destroy(JLorg/chromium/net/impl/CronetBidirectionalStream;Z)V

    .line 4
    iget-object p1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->do:Lorg/chromium/net/impl/CronetUrlRequestContext;

    invoke-virtual {p1}, Lorg/chromium/net/impl/CronetUrlRequestContext;->implements()V

    .line 5
    iput-wide v2, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->return:J

    .line 6
    iget-object p1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->extends:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public static synthetic this(Lorg/chromium/net/impl/CronetBidirectionalStream;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->case:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic throw(Lorg/chromium/net/impl/CronetBidirectionalStream;)Lorg/chromium/net/impl/this;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->throws:Lorg/chromium/net/impl/this;

    return-object p0
.end method

.method private static throws(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "GET"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HEAD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private volatile(Ljava/lang/Runnable;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->if:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    sget-object v0, Lorg/chromium/net/impl/CronetUrlRequestContext;->abstract:Ljava/lang/String;

    const-string v1, "Exception posting task to executor"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Landroid/support/v4/rv0;->if(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->super:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x6

    .line 4
    :try_start_1
    iput v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->switch:I

    iput v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->static:I

    .line 5
    invoke-direct {p0, v3}, Lorg/chromium/net/impl/CronetBidirectionalStream;->switch(Z)V

    .line 6
    monitor-exit p1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static synthetic while(Lorg/chromium/net/impl/CronetBidirectionalStream;)Lorg/chromium/net/impl/VersionSafeCallbacks$do;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->for:Lorg/chromium/net/impl/VersionSafeCallbacks$do;

    return-object p0
.end method


# virtual methods
.method public case(Ljava/nio/ByteBuffer;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->super:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p1}, Landroid/support/v4/bf1;->do(Ljava/nio/ByteBuffer;)V

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Empty buffer before end of stream."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->import:Z

    if-nez v1, :cond_4

    .line 6
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->abstract()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    monitor-exit v0

    return-void

    .line 8
    :cond_2
    iget-object v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->throw:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_3

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->import:Z

    .line 10
    :cond_3
    monitor-exit v0

    return-void

    .line 11
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Write after writing end of stream."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public do()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->super:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->abstract()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->static:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    .line 3
    iput v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->switch:I

    iput v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->static:I

    const/4 v1, 0x1

    .line 4
    invoke-direct {p0, v1}, Lorg/chromium/net/impl/CronetBidirectionalStream;->switch(Z)V

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public finally()Ljava/util/List;
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->super:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 3
    iget-object v2, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->while:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public for()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->super:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->abstract()Z

    move-result v1

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

.method public if()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->super:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->abstract()Z

    move-result v1

    if-nez v1, :cond_5

    iget v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->switch:I

    const/16 v2, 0x8

    const/16 v3, 0x9

    if-eq v1, v2, :cond_0

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->throw:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->while:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    iget-boolean v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->native:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->native:Z

    .line 6
    invoke-static {}, Lorg/chromium/net/impl/do;->if()Lorg/chromium/net/impl/CronetBidirectionalStream$Natives;

    move-result-object v1

    iget-wide v2, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->return:J

    invoke-interface {v1, v2, v3, p0}, Lorg/chromium/net/impl/CronetBidirectionalStream$Natives;->sendRequestHeaders(JLorg/chromium/net/impl/CronetBidirectionalStream;)V

    .line 7
    iget-object v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->case:Ljava/lang/String;

    invoke-static {v1}, Lorg/chromium/net/impl/CronetBidirectionalStream;->throws(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0xa

    .line 8
    iput v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->switch:I

    .line 9
    :cond_1
    monitor-exit v0

    return-void

    .line 10
    :cond_2
    iget-object v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->throw:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 11
    iget-object v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->while:Ljava/util/LinkedList;

    iget-object v2, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->throw:Ljava/util/LinkedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 12
    iget-object v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->throw:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 13
    :cond_3
    iget v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->switch:I

    if-ne v1, v3, :cond_4

    .line 14
    monitor-exit v0

    return-void

    .line 15
    :cond_4
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->protected()V

    .line 16
    monitor-exit v0

    return-void

    .line 17
    :cond_5
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public new(Ljava/nio/ByteBuffer;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->super:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {p1}, Landroid/support/v4/bf1;->if(Ljava/nio/ByteBuffer;)V

    .line 3
    invoke-static {p1}, Landroid/support/v4/bf1;->do(Ljava/nio/ByteBuffer;)V

    .line 4
    iget v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->static:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 5
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->abstract()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_0
    iget-object v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->default:Lorg/chromium/net/impl/CronetBidirectionalStream$case;

    if-nez v1, :cond_1

    .line 8
    new-instance v1, Lorg/chromium/net/impl/CronetBidirectionalStream$case;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lorg/chromium/net/impl/CronetBidirectionalStream$case;-><init>(Lorg/chromium/net/impl/CronetBidirectionalStream;Lorg/chromium/net/impl/CronetBidirectionalStream$do;)V

    iput-object v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->default:Lorg/chromium/net/impl/CronetBidirectionalStream$case;

    :cond_1
    const/4 v1, 0x3

    .line 9
    iput v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->static:I

    .line 10
    invoke-static {}, Lorg/chromium/net/impl/do;->if()Lorg/chromium/net/impl/CronetBidirectionalStream$Natives;

    move-result-object v3

    iget-wide v4, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->return:J

    .line 11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    .line 12
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    move-object v6, p0

    move-object v7, p1

    .line 13
    invoke-interface/range {v3 .. v9}, Lorg/chromium/net/impl/CronetBidirectionalStream$Natives;->readData(JLorg/chromium/net/impl/CronetBidirectionalStream;Ljava/nio/ByteBuffer;II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14
    monitor-exit v0

    return-void

    .line 15
    :cond_2
    iput v2, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->static:I

    .line 16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to call native read"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected read attempt."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public package()Ljava/util/List;
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->super:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 3
    iget-object v2, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->throw:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public transient(Ljava/lang/Runnable;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->extends:Ljava/lang/Runnable;

    return-void
.end method

.method public try()V
    .locals 13

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->super:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->static:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_4

    const/4 v1, 0x0

    .line 3
    :try_start_1
    invoke-static {}, Lorg/chromium/net/impl/do;->if()Lorg/chromium/net/impl/CronetBidirectionalStream$Natives;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->do:Lorg/chromium/net/impl/CronetUrlRequestContext;

    .line 4
    invoke-virtual {v3}, Lorg/chromium/net/impl/CronetUrlRequestContext;->volatile()J

    move-result-wide v4

    iget-boolean v3, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->goto:Z

    const/4 v12, 0x1

    if-nez v3, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    iget-object v3, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->do:Lorg/chromium/net/impl/CronetUrlRequestContext;

    .line 5
    invoke-virtual {v3}, Lorg/chromium/net/impl/CronetUrlRequestContext;->interface()Z

    move-result v7

    iget-boolean v8, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->break:Z

    iget v9, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->catch:I

    iget-boolean v10, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->class:Z

    iget v11, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->const:I

    move-object v3, p0

    .line 6
    invoke-interface/range {v2 .. v11}, Lorg/chromium/net/impl/CronetBidirectionalStream$Natives;->createBidirectionalStream(Lorg/chromium/net/impl/CronetBidirectionalStream;JZZZIZI)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->return:J

    .line 7
    iget-object v2, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->do:Lorg/chromium/net/impl/CronetUrlRequestContext;

    invoke-virtual {v2}, Lorg/chromium/net/impl/CronetUrlRequestContext;->instanceof()V

    .line 8
    invoke-static {}, Lorg/chromium/net/impl/do;->if()Lorg/chromium/net/impl/CronetBidirectionalStream$Natives;

    move-result-object v3

    iget-wide v4, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->return:J

    iget-object v7, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->new:Ljava/lang/String;

    iget v8, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->try:I

    iget-object v9, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->case:Ljava/lang/String;

    iget-object v10, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->else:[Ljava/lang/String;

    .line 9
    invoke-static {v9}, Lorg/chromium/net/impl/CronetBidirectionalStream;->throws(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    :goto_1
    move-object v6, p0

    .line 10
    invoke-interface/range {v3 .. v11}, Lorg/chromium/net/impl/CronetBidirectionalStream$Natives;->start(JLorg/chromium/net/impl/CronetBidirectionalStream;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Z)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    if-gtz v2, :cond_2

    .line 11
    iput v12, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->switch:I

    iput v12, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->static:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_2
    sub-int/2addr v2, v12

    .line 13
    :try_start_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid header "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->else:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->else:[Ljava/lang/String;

    add-int/2addr v2, v12

    aget-object v2, v5, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 14
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid http method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->case:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    move-exception v2

    .line 15
    :try_start_4
    invoke-direct {p0, v1}, Lorg/chromium/net/impl/CronetBidirectionalStream;->switch(Z)V

    .line 16
    throw v2

    .line 17
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Stream is already started."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 18
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method
