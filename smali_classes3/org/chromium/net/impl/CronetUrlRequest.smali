.class public final Lorg/chromium/net/impl/CronetUrlRequest;
.super Landroid/support/v4/cd2;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/ko0;
    value = {
        Lorg/chromium/net/impl/VersionSafeCallbacks;
    }
.end annotation

.annotation runtime Landroid/support/v4/lo0;
    value = "cronet"
.end annotation

.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/impl/CronetUrlRequest$Natives;,
        Lorg/chromium/net/impl/CronetUrlRequest$catch;,
        Lorg/chromium/net/impl/CronetUrlRequest$break;
    }
.end annotation


# static fields
.field public static final synthetic strictfp:Z


# instance fields
.field private abstract:Lorg/chromium/net/impl/CronetUrlRequest$catch;

.field private final break:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private case:Z
    .annotation build Landroid/support/v4/ii0;
        value = "mUrlRequestAdapterLock"
    .end annotation
.end field

.field private final catch:Lorg/chromium/net/impl/VersionSafeCallbacks$else;

.field private final class:Ljava/lang/String;

.field private final const:I

.field private continue:Ljava/lang/Runnable;
    .annotation build Landroid/support/v4/ii0;
        value = "mUrlRequestAdapterLock"
    .end annotation
.end field

.field private default:Lorg/chromium/net/impl/CronetUploadDataStream;

.field private final else:Ljava/lang/Object;

.field private extends:Lorg/chromium/net/impl/this;

.field private final final:I

.field private finally:I

.field private for:J
    .annotation build Landroid/support/v4/ii0;
        value = "mUrlRequestAdapterLock"
    .end annotation
.end field

.field private final goto:Lorg/chromium/net/impl/CronetUrlRequestContext;

.field private final if:Z

.field private final import:Z

.field private final native:Z

.field private new:Z
    .annotation build Landroid/support/v4/ii0;
        value = "mUrlRequestAdapterLock"
    .end annotation
.end field

.field private package:Landroid/support/v4/rs;

.field private private:Landroid/support/v4/ts;

.field private final public:Z

.field private final return:I

.field private final static:Z

.field private super:Ljava/lang/String;

.field private final switch:I

.field private final this:Ljava/util/concurrent/Executor;

.field private final throw:Lorg/chromium/net/impl/CronetUrlRequest$break;

.field private final throws:Lorg/chromium/net/impl/VersionSafeCallbacks$try;

.field private try:Z
    .annotation build Landroid/support/v4/ii0;
        value = "mUrlRequestAdapterLock"
    .end annotation
.end field

.field private final while:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/chromium/net/impl/CronetUrlRequestContext;Ljava/lang/String;ILorg/chromium/net/return$if;Ljava/util/concurrent/Executor;Ljava/util/Collection;ZZZZIZILorg/chromium/net/native$do;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/net/impl/CronetUrlRequestContext;",
            "Ljava/lang/String;",
            "I",
            "Lorg/chromium/net/return$if;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;ZZZZIZI",
            "Lorg/chromium/net/native$do;",
            "I)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    move-object v3, p5

    move-object/from16 v4, p14

    .line 1
    invoke-direct {p0}, Landroid/support/v4/cd2;-><init>()V

    .line 2
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, v0, Lorg/chromium/net/impl/CronetUrlRequest;->else:Ljava/lang/Object;

    .line 3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lorg/chromium/net/impl/CronetUrlRequest;->break:Ljava/util/List;

    .line 4
    new-instance v6, Lorg/chromium/net/impl/CronetUrlRequest$break;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lorg/chromium/net/impl/CronetUrlRequest$break;-><init>(Lorg/chromium/net/impl/CronetUrlRequest$do;)V

    iput-object v6, v0, Lorg/chromium/net/impl/CronetUrlRequest;->throw:Lorg/chromium/net/impl/CronetUrlRequest$break;

    const-string v6, "URL is required"

    .line 5
    invoke-static {p2, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v6, "Listener is required"

    .line 6
    invoke-static {p4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v6, "Executor is required"

    .line 7
    invoke-static {p5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move/from16 v6, p9

    .line 8
    iput-boolean v6, v0, Lorg/chromium/net/impl/CronetUrlRequest;->if:Z

    move-object v6, p1

    .line 9
    iput-object v6, v0, Lorg/chromium/net/impl/CronetUrlRequest;->goto:Lorg/chromium/net/impl/CronetUrlRequestContext;

    .line 10
    iput-object v1, v0, Lorg/chromium/net/impl/CronetUrlRequest;->class:Ljava/lang/String;

    .line 11
    invoke-interface {v5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-static {p3}, Lorg/chromium/net/impl/CronetUrlRequest;->package(I)I

    move-result v1

    iput v1, v0, Lorg/chromium/net/impl/CronetUrlRequest;->const:I

    .line 13
    new-instance v1, Lorg/chromium/net/impl/VersionSafeCallbacks$else;

    invoke-direct {v1, p4}, Lorg/chromium/net/impl/VersionSafeCallbacks$else;-><init>(Lorg/chromium/net/return$if;)V

    iput-object v1, v0, Lorg/chromium/net/impl/CronetUrlRequest;->catch:Lorg/chromium/net/impl/VersionSafeCallbacks$else;

    .line 14
    iput-object v3, v0, Lorg/chromium/net/impl/CronetUrlRequest;->this:Ljava/util/concurrent/Executor;

    move-object v1, p6

    .line 15
    iput-object v1, v0, Lorg/chromium/net/impl/CronetUrlRequest;->while:Ljava/util/Collection;

    move v1, p7

    .line 16
    iput-boolean v1, v0, Lorg/chromium/net/impl/CronetUrlRequest;->import:Z

    move/from16 v1, p8

    .line 17
    iput-boolean v1, v0, Lorg/chromium/net/impl/CronetUrlRequest;->native:Z

    move/from16 v1, p10

    .line 18
    iput-boolean v1, v0, Lorg/chromium/net/impl/CronetUrlRequest;->public:Z

    move/from16 v1, p11

    .line 19
    iput v1, v0, Lorg/chromium/net/impl/CronetUrlRequest;->return:I

    move/from16 v1, p12

    .line 20
    iput-boolean v1, v0, Lorg/chromium/net/impl/CronetUrlRequest;->static:Z

    move/from16 v1, p13

    .line 21
    iput v1, v0, Lorg/chromium/net/impl/CronetUrlRequest;->switch:I

    if-eqz v4, :cond_0

    .line 22
    new-instance v7, Lorg/chromium/net/impl/VersionSafeCallbacks$try;

    invoke-direct {v7, v4}, Lorg/chromium/net/impl/VersionSafeCallbacks$try;-><init>(Lorg/chromium/net/native$do;)V

    .line 23
    :cond_0
    iput-object v7, v0, Lorg/chromium/net/impl/CronetUrlRequest;->throws:Lorg/chromium/net/impl/VersionSafeCallbacks$try;

    .line 24
    invoke-static/range {p15 .. p15}, Lorg/chromium/net/impl/CronetUrlRequest;->finally(I)I

    move-result v1

    iput v1, v0, Lorg/chromium/net/impl/CronetUrlRequest;->final:I

    return-void
.end method

.method private abstract(Landroid/support/v4/rs;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->else:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetUrlRequest;->strictfp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    iput-object p1, p0, Lorg/chromium/net/impl/CronetUrlRequest;->package:Landroid/support/v4/rs;

    const/4 p1, 0x1

    .line 5
    invoke-direct {p0, p1}, Lorg/chromium/net/impl/CronetUrlRequest;->private(I)V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private b()V
    .locals 3
    .annotation build Landroid/support/v4/ii0;
        value = "mUrlRequestAdapterLock"
    .end annotation

    .line 1
    invoke-static {}, Lorg/chromium/net/impl/case;->if()Lorg/chromium/net/impl/CronetUrlRequest$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/net/impl/CronetUrlRequest;->for:J

    invoke-interface {v0, v1, v2, p0}, Lorg/chromium/net/impl/CronetUrlRequest$Natives;->start(JLorg/chromium/net/impl/CronetUrlRequest;)V

    return-void
.end method

.method public static synthetic catch(Lorg/chromium/net/impl/CronetUrlRequest;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->else:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic class(Lorg/chromium/net/impl/CronetUrlRequest;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/chromium/net/impl/CronetUrlRequest;->try:Z

    return p1
.end method

.method public static synthetic const(Lorg/chromium/net/impl/CronetUrlRequest;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/chromium/net/impl/CronetUrlRequest;->private(I)V

    return-void
.end method

.method private extends()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->else:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lorg/chromium/net/impl/CronetUrlRequest;->new:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lorg/chromium/net/impl/CronetUrlRequest;->strictfp()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Request is already started."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic final(Lorg/chromium/net/impl/CronetUrlRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetUrlRequest;->interface()V

    return-void
.end method

.method private static finally(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method private implements(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->this:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    sget-object v0, Lorg/chromium/net/impl/CronetUrlRequestContext;->abstract:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "Exception posting task to executor"

    invoke-static {v0, v2, v1}, Landroid/support/v4/rv0;->if(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    new-instance v0, Landroid/support/v4/ss;

    invoke-direct {v0, v2, p1}, Landroid/support/v4/ss;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lorg/chromium/net/impl/CronetUrlRequest;->abstract(Landroid/support/v4/rs;)V

    :goto_0
    return-void
.end method

.method public static synthetic import(Lorg/chromium/net/impl/CronetUrlRequest;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/chromium/net/impl/CronetUrlRequest;->case:Z

    return p1
.end method

.method private instanceof(ILjava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)Lorg/chromium/net/impl/this;
    .locals 12

    move-object v0, p3

    .line 1
    new-instance v4, Lorg/chromium/net/impl/CronetUrlRequest$break;

    const/4 v1, 0x0

    invoke-direct {v4, v1}, Lorg/chromium/net/impl/CronetUrlRequest$break;-><init>(Lorg/chromium/net/impl/CronetUrlRequest$do;)V

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 3
    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    aget-object v3, v0, v1

    add-int/lit8 v5, v1, 0x1

    aget-object v5, v0, v5

    invoke-direct {v2, v3, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 4
    :cond_0
    new-instance v10, Lorg/chromium/net/impl/this;

    new-instance v1, Ljava/util/ArrayList;

    move-object v11, p0

    iget-object v0, v11, Lorg/chromium/net/impl/CronetUrlRequest;->break:Ljava/util/List;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v10

    move v2, p1

    move-object v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lorg/chromium/net/impl/this;-><init>(Ljava/util/List;ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;J)V

    return-object v10
.end method

.method private interface()V
    .locals 8

    .line 1
    iget-object v3, p0, Lorg/chromium/net/impl/CronetUrlRequest;->private:Landroid/support/v4/ts;

    if-eqz v3, :cond_0

    .line 2
    new-instance v7, Landroid/support/v4/cn1;

    iget-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequest;->class:Ljava/lang/String;

    iget-object v2, p0, Lorg/chromium/net/impl/CronetUrlRequest;->while:Ljava/util/Collection;

    iget v4, p0, Lorg/chromium/net/impl/CronetUrlRequest;->finally:I

    iget-object v5, p0, Lorg/chromium/net/impl/CronetUrlRequest;->extends:Lorg/chromium/net/impl/this;

    iget-object v6, p0, Lorg/chromium/net/impl/CronetUrlRequest;->package:Landroid/support/v4/rs;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/cn1;-><init>(Ljava/lang/String;Ljava/util/Collection;Lorg/chromium/net/native$if;ILorg/chromium/net/static;Landroid/support/v4/rs;)V

    .line 3
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->goto:Lorg/chromium/net/impl/CronetUrlRequestContext;

    invoke-virtual {v0, v7}, Lorg/chromium/net/impl/CronetUrlRequestContext;->a(Lorg/chromium/net/native;)V

    .line 4
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->throws:Lorg/chromium/net/impl/VersionSafeCallbacks$try;

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    invoke-virtual {v0}, Lorg/chromium/net/impl/VersionSafeCallbacks$try;->do()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lorg/chromium/net/impl/CronetUrlRequest$this;

    invoke-direct {v1, p0, v7}, Lorg/chromium/net/impl/CronetUrlRequest$this;-><init>(Lorg/chromium/net/impl/CronetUrlRequest;Lorg/chromium/net/native;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    sget-object v1, Lorg/chromium/net/impl/CronetUrlRequestContext;->abstract:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "Exception posting task to executor"

    invoke-static {v1, v0, v2}, Landroid/support/v4/rv0;->if(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static synthetic native(Lorg/chromium/net/impl/CronetUrlRequest;)Lorg/chromium/net/impl/this;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->extends:Lorg/chromium/net/impl/this;

    return-object p0
.end method

.method private onCanceled()V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 1
    new-instance v0, Lorg/chromium/net/impl/CronetUrlRequest$case;

    invoke-direct {v0, p0}, Lorg/chromium/net/impl/CronetUrlRequest$case;-><init>(Lorg/chromium/net/impl/CronetUrlRequest;)V

    .line 2
    invoke-direct {p0, v0}, Lorg/chromium/net/impl/CronetUrlRequest;->implements(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onError(IIILjava/lang/String;J)V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->extends:Lorg/chromium/net/impl/this;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p5, p6}, Lorg/chromium/net/impl/this;->catch(J)V

    :cond_0
    const/16 p5, 0xa

    const-string p6, "Exception in CronetUrlRequest: "

    if-eq p1, p5, :cond_2

    const/4 p5, 0x3

    if-ne p1, p5, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0, p1}, Lorg/chromium/net/impl/CronetUrlRequest;->volatile(I)I

    move-result p1

    .line 4
    new-instance p3, Landroid/support/v4/c31;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4, p1, p2}, Landroid/support/v4/c31;-><init>(Ljava/lang/String;II)V

    invoke-direct {p0, p3}, Lorg/chromium/net/impl/CronetUrlRequest;->abstract(Landroid/support/v4/rs;)V

    goto :goto_1

    .line 5
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

    invoke-direct {p0, p5}, Lorg/chromium/net/impl/CronetUrlRequest;->abstract(Landroid/support/v4/rs;)V

    :goto_1
    return-void
.end method

.method private onMetricsCollected(JJJJJJJJJJJJJZJJ)V
    .locals 35
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget-object v2, v1, Lorg/chromium/net/impl/CronetUrlRequest;->else:Ljava/lang/Object;

    monitor-enter v2

    .line 2
    :try_start_0
    iget-object v0, v1, Lorg/chromium/net/impl/CronetUrlRequest;->private:Landroid/support/v4/ts;

    if-nez v0, :cond_0

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

    iput-object v0, v1, Lorg/chromium/net/impl/CronetUrlRequest;->private:Landroid/support/v4/ts;

    .line 4
    monitor-exit v2

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Metrics collection should only happen once."

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 6
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onNativeAdapterDestroyed()V
    .locals 5
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->else:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequest;->continue:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 4
    :cond_0
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequest;->package:Landroid/support/v4/rs;

    if-nez v1, :cond_1

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    new-instance v0, Lorg/chromium/net/impl/CronetUrlRequest$goto;

    invoke-direct {v0, p0}, Lorg/chromium/net/impl/CronetUrlRequest$goto;-><init>(Lorg/chromium/net/impl/CronetUrlRequest;)V

    .line 8
    :try_start_1
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequest;->this:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    sget-object v1, Lorg/chromium/net/impl/CronetUrlRequestContext;->abstract:Ljava/lang/String;

    const-string v2, "Exception posting task to executor"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Landroid/support/v4/rv0;->if(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 10
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private onReadCompleted(Ljava/nio/ByteBuffer;IIIJ)V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->extends:Lorg/chromium/net/impl/this;

    invoke-virtual {v0, p5, p6}, Lorg/chromium/net/impl/this;->catch(J)V

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p5

    const/4 p6, 0x0

    if-ne p5, p3, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p5

    if-eq p5, p4, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p4, p0, Lorg/chromium/net/impl/CronetUrlRequest;->abstract:Lorg/chromium/net/impl/CronetUrlRequest$catch;

    if-nez p4, :cond_1

    .line 4
    new-instance p4, Lorg/chromium/net/impl/CronetUrlRequest$catch;

    invoke-direct {p4, p0, p6}, Lorg/chromium/net/impl/CronetUrlRequest$catch;-><init>(Lorg/chromium/net/impl/CronetUrlRequest;Lorg/chromium/net/impl/CronetUrlRequest$do;)V

    iput-object p4, p0, Lorg/chromium/net/impl/CronetUrlRequest;->abstract:Lorg/chromium/net/impl/CronetUrlRequest$catch;

    :cond_1
    add-int/2addr p3, p2

    .line 5
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 6
    iget-object p2, p0, Lorg/chromium/net/impl/CronetUrlRequest;->abstract:Lorg/chromium/net/impl/CronetUrlRequest$catch;

    iput-object p1, p2, Lorg/chromium/net/impl/CronetUrlRequest$catch;->do:Ljava/nio/ByteBuffer;

    .line 7
    invoke-direct {p0, p2}, Lorg/chromium/net/impl/CronetUrlRequest;->implements(Ljava/lang/Runnable;)V

    return-void

    .line 8
    :cond_2
    :goto_0
    new-instance p1, Landroid/support/v4/ss;

    const-string p2, "ByteBuffer modified externally during read"

    invoke-direct {p1, p2, p6}, Landroid/support/v4/ss;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, p1}, Lorg/chromium/net/impl/CronetUrlRequest;->abstract(Landroid/support/v4/rs;)V

    return-void
.end method

.method private onRedirectReceived(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
    .locals 11
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    move-object v9, p0

    move-object v10, p1

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-wide/from16 v7, p8

    .line 1
    invoke-direct/range {v0 .. v8}, Lorg/chromium/net/impl/CronetUrlRequest;->instanceof(ILjava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)Lorg/chromium/net/impl/this;

    move-result-object v0

    .line 2
    iget-object v1, v9, Lorg/chromium/net/impl/CronetUrlRequest;->break:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Lorg/chromium/net/impl/CronetUrlRequest$for;

    invoke-direct {v1, p0, v0, p1}, Lorg/chromium/net/impl/CronetUrlRequest$for;-><init>(Lorg/chromium/net/impl/CronetUrlRequest;Lorg/chromium/net/impl/this;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, v1}, Lorg/chromium/net/impl/CronetUrlRequest;->implements(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onResponseStarted(ILjava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p8}, Lorg/chromium/net/impl/CronetUrlRequest;->instanceof(ILjava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)Lorg/chromium/net/impl/this;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/net/impl/CronetUrlRequest;->extends:Lorg/chromium/net/impl/this;

    .line 2
    new-instance p1, Lorg/chromium/net/impl/CronetUrlRequest$new;

    invoke-direct {p1, p0}, Lorg/chromium/net/impl/CronetUrlRequest$new;-><init>(Lorg/chromium/net/impl/CronetUrlRequest;)V

    .line 3
    invoke-direct {p0, p1}, Lorg/chromium/net/impl/CronetUrlRequest;->implements(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onStatus(Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;I)V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 1
    new-instance v0, Lorg/chromium/net/impl/CronetUrlRequest$else;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/net/impl/CronetUrlRequest$else;-><init>(Lorg/chromium/net/impl/CronetUrlRequest;Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;I)V

    .line 2
    invoke-direct {p0, v0}, Lorg/chromium/net/impl/CronetUrlRequest;->implements(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onSucceeded(J)V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->extends:Lorg/chromium/net/impl/this;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/net/impl/this;->catch(J)V

    .line 2
    new-instance p1, Lorg/chromium/net/impl/CronetUrlRequest$try;

    invoke-direct {p1, p0}, Lorg/chromium/net/impl/CronetUrlRequest$try;-><init>(Lorg/chromium/net/impl/CronetUrlRequest;)V

    .line 3
    invoke-direct {p0, p1}, Lorg/chromium/net/impl/CronetUrlRequest;->implements(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static package(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    const/4 v1, 0x2

    if-eq p0, v0, :cond_2

    if-eq p0, v1, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x5

    return p0

    :cond_1
    const/4 p0, 0x3

    return p0

    :cond_2
    return v1

    :cond_3
    return v0
.end method

.method private private(I)V
    .locals 6
    .annotation build Landroid/support/v4/ii0;
        value = "mUrlRequestAdapterLock"
    .end annotation

    .line 1
    iput p1, p0, Lorg/chromium/net/impl/CronetUrlRequest;->finally:I

    .line 2
    iget-wide v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->for:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->goto:Lorg/chromium/net/impl/CronetUrlRequestContext;

    invoke-virtual {v0}, Lorg/chromium/net/impl/CronetUrlRequestContext;->implements()V

    .line 4
    invoke-static {}, Lorg/chromium/net/impl/case;->if()Lorg/chromium/net/impl/CronetUrlRequest$Natives;

    move-result-object v0

    iget-wide v4, p0, Lorg/chromium/net/impl/CronetUrlRequest;->for:J

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, v4, v5, p0, p1}, Lorg/chromium/net/impl/CronetUrlRequest$Natives;->destroy(JLorg/chromium/net/impl/CronetUrlRequest;Z)V

    .line 5
    iput-wide v2, p0, Lorg/chromium/net/impl/CronetUrlRequest;->for:J

    return-void
.end method

.method private protected(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/support/v4/jf;

    const-string v1, "Exception received from UrlRequest.Callback"

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
    invoke-direct {p0, v0}, Lorg/chromium/net/impl/CronetUrlRequest;->abstract(Landroid/support/v4/rs;)V

    return-void
.end method

.method public static synthetic public(Lorg/chromium/net/impl/CronetUrlRequest;)Lorg/chromium/net/impl/VersionSafeCallbacks$else;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->catch:Lorg/chromium/net/impl/VersionSafeCallbacks$else;

    return-object p0
.end method

.method public static synthetic return(Lorg/chromium/net/impl/CronetUrlRequest;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/chromium/net/impl/CronetUrlRequest;->protected(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic static(Lorg/chromium/net/impl/CronetUrlRequest;)Lorg/chromium/net/impl/CronetUploadDataStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->default:Lorg/chromium/net/impl/CronetUploadDataStream;

    return-object p0
.end method

.method private strictfp()Z
    .locals 5
    .annotation build Landroid/support/v4/ii0;
        value = "mUrlRequestAdapterLock"
    .end annotation

    .line 1
    iget-boolean v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->new:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->for:J

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

.method public static synthetic super(Lorg/chromium/net/impl/CronetUrlRequest;)Landroid/support/v4/rs;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->package:Landroid/support/v4/rs;

    return-object p0
.end method

.method public static synthetic switch(Lorg/chromium/net/impl/CronetUrlRequest;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->for:J

    return-wide v0
.end method

.method public static synthetic throw(Lorg/chromium/net/impl/CronetUrlRequest;)Lorg/chromium/net/impl/VersionSafeCallbacks$try;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->throws:Lorg/chromium/net/impl/VersionSafeCallbacks$try;

    return-object p0
.end method

.method public static synthetic throws(Lorg/chromium/net/impl/CronetUrlRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetUrlRequest;->b()V

    return-void
.end method

.method private volatile(I)I
    .locals 3

    packed-switch p1, :pswitch_data_0

    .line 1
    sget-object v0, Lorg/chromium/net/impl/CronetUrlRequestContext;->abstract:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Landroid/support/v4/rv0;->if(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :pswitch_0
    const/16 p1, 0xb

    return p1

    :pswitch_1
    const/16 p1, 0xa

    return p1

    :pswitch_2
    const/16 p1, 0x9

    return p1

    :pswitch_3
    const/16 p1, 0x8

    return p1

    :pswitch_4
    const/4 p1, 0x7

    return p1

    :pswitch_5
    const/4 p1, 0x6

    return p1

    :pswitch_6
    const/4 p1, 0x5

    return p1

    :pswitch_7
    const/4 p1, 0x4

    return p1

    :pswitch_8
    const/4 p1, 0x3

    return p1

    :pswitch_9
    const/4 p1, 0x2

    return p1

    :pswitch_a
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic while(Lorg/chromium/net/impl/CronetUrlRequest;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetUrlRequest;->strictfp()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->default:Lorg/chromium/net/impl/CronetUploadDataStream;

    invoke-virtual {v0, p1}, Lorg/chromium/net/impl/CronetUploadDataStream;->switch(Ljava/lang/Runnable;)V

    return-void
.end method

.method public break(Lorg/chromium/net/public;Ljava/util/concurrent/Executor;)V
    .locals 1

    const-string v0, "Invalid UploadDataProvider."

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->super:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "POST"

    .line 3
    iput-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->super:Ljava/lang/String;

    .line 4
    :cond_0
    new-instance v0, Lorg/chromium/net/impl/CronetUploadDataStream;

    invoke-direct {v0, p1, p2, p0}, Lorg/chromium/net/impl/CronetUploadDataStream;-><init>(Lorg/chromium/net/public;Ljava/util/concurrent/Executor;Lorg/chromium/net/impl/CronetUrlRequest;)V

    iput-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->default:Lorg/chromium/net/impl/CronetUploadDataStream;

    return-void
.end method

.method public case()V
    .locals 19

    move-object/from16 v15, p0

    .line 1
    iget-object v14, v15, Lorg/chromium/net/impl/CronetUrlRequest;->else:Ljava/lang/Object;

    monitor-enter v14

    .line 2
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lorg/chromium/net/impl/CronetUrlRequest;->extends()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v13, 0x1

    .line 3
    :try_start_1
    invoke-static {}, Lorg/chromium/net/impl/case;->if()Lorg/chromium/net/impl/CronetUrlRequest$Natives;

    move-result-object v1

    iget-object v0, v15, Lorg/chromium/net/impl/CronetUrlRequest;->goto:Lorg/chromium/net/impl/CronetUrlRequestContext;

    .line 4
    invoke-virtual {v0}, Lorg/chromium/net/impl/CronetUrlRequestContext;->volatile()J

    move-result-wide v3

    iget-object v5, v15, Lorg/chromium/net/impl/CronetUrlRequest;->class:Ljava/lang/String;

    iget v6, v15, Lorg/chromium/net/impl/CronetUrlRequest;->const:I

    iget-boolean v7, v15, Lorg/chromium/net/impl/CronetUrlRequest;->import:Z

    iget-boolean v8, v15, Lorg/chromium/net/impl/CronetUrlRequest;->native:Z

    iget-object v0, v15, Lorg/chromium/net/impl/CronetUrlRequest;->goto:Lorg/chromium/net/impl/CronetUrlRequestContext;

    .line 5
    invoke-virtual {v0}, Lorg/chromium/net/impl/CronetUrlRequestContext;->interface()Z

    move-result v0

    const/16 v16, 0x0

    if-nez v0, :cond_1

    iget-object v0, v15, Lorg/chromium/net/impl/CronetUrlRequest;->throws:Lorg/chromium/net/impl/VersionSafeCallbacks$try;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v9, 0x1

    :goto_1
    iget-boolean v10, v15, Lorg/chromium/net/impl/CronetUrlRequest;->public:Z

    iget v11, v15, Lorg/chromium/net/impl/CronetUrlRequest;->return:I

    iget-boolean v12, v15, Lorg/chromium/net/impl/CronetUrlRequest;->static:Z

    iget v0, v15, Lorg/chromium/net/impl/CronetUrlRequest;->switch:I

    iget v2, v15, Lorg/chromium/net/impl/CronetUrlRequest;->final:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v17, v2

    move-object/from16 v2, p0

    move v13, v0

    move-object/from16 v18, v14

    move/from16 v14, v17

    .line 6
    :try_start_2
    invoke-interface/range {v1 .. v14}, Lorg/chromium/net/impl/CronetUrlRequest$Natives;->createRequestAdapter(Lorg/chromium/net/impl/CronetUrlRequest;JLjava/lang/String;IZZZZIZII)J

    move-result-wide v0

    iput-wide v0, v15, Lorg/chromium/net/impl/CronetUrlRequest;->for:J

    .line 7
    iget-object v0, v15, Lorg/chromium/net/impl/CronetUrlRequest;->goto:Lorg/chromium/net/impl/CronetUrlRequestContext;

    invoke-virtual {v0}, Lorg/chromium/net/impl/CronetUrlRequestContext;->instanceof()V

    .line 8
    iget-object v0, v15, Lorg/chromium/net/impl/CronetUrlRequest;->super:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 9
    invoke-static {}, Lorg/chromium/net/impl/case;->if()Lorg/chromium/net/impl/CronetUrlRequest$Natives;

    move-result-object v0

    iget-wide v1, v15, Lorg/chromium/net/impl/CronetUrlRequest;->for:J

    iget-object v3, v15, Lorg/chromium/net/impl/CronetUrlRequest;->super:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v15, v3}, Lorg/chromium/net/impl/CronetUrlRequest$Natives;->setHttpMethod(JLorg/chromium/net/impl/CronetUrlRequest;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 10
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid http method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lorg/chromium/net/impl/CronetUrlRequest;->super:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_3
    :goto_2
    iget-object v0, v15, Lorg/chromium/net/impl/CronetUrlRequest;->throw:Lorg/chromium/net/impl/CronetUrlRequest$break;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v13, 0x0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/util/Map$Entry;

    .line 12
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "Content-Type"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 13
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v13, 0x1

    .line 14
    :cond_4
    invoke-static {}, Lorg/chromium/net/impl/case;->if()Lorg/chromium/net/impl/CronetUrlRequest$Natives;

    move-result-object v1

    iget-wide v2, v15, Lorg/chromium/net/impl/CronetUrlRequest;->for:J

    .line 15
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    move-object/from16 v4, p0

    .line 16
    invoke-interface/range {v1 .. v6}, Lorg/chromium/net/impl/CronetUrlRequest$Natives;->addRequestHeader(JLorg/chromium/net/impl/CronetUrlRequest;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    .line 17
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid header "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_6
    iget-object v0, v15, Lorg/chromium/net/impl/CronetUrlRequest;->default:Lorg/chromium/net/impl/CronetUploadDataStream;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_8

    if-eqz v13, :cond_7

    const/4 v1, 0x1

    .line 20
    :try_start_3
    iput-boolean v1, v15, Lorg/chromium/net/impl/CronetUrlRequest;->new:Z

    .line 21
    new-instance v2, Lorg/chromium/net/impl/CronetUrlRequest$do;

    invoke-direct {v2, v15}, Lorg/chromium/net/impl/CronetUrlRequest$do;-><init>(Lorg/chromium/net/impl/CronetUrlRequest;)V

    invoke-virtual {v0, v2}, Lorg/chromium/net/impl/CronetUploadDataStream;->static(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 22
    :try_start_4
    monitor-exit v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_7
    const/4 v1, 0x1

    .line 23
    :try_start_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Requests with upload data must have a Content-Type."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_8
    const/4 v1, 0x1

    .line 24
    :try_start_6
    iput-boolean v1, v15, Lorg/chromium/net/impl/CronetUrlRequest;->new:Z

    .line 25
    invoke-direct/range {p0 .. p0}, Lorg/chromium/net/impl/CronetUrlRequest;->b()V

    .line 26
    monitor-exit v18

    return-void

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v18, v14

    :goto_4
    const/4 v1, 0x1

    .line 27
    :goto_5
    invoke-direct {v15, v1}, Lorg/chromium/net/impl/CronetUrlRequest;->private(I)V

    .line 28
    throw v0

    :catchall_0
    move-exception v0

    move-object/from16 v18, v14

    .line 29
    :goto_6
    monitor-exit v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_6
.end method

.method public continue()J
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->else:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-wide v1, p0, Lorg/chromium/net/impl/CronetUrlRequest;->for:J

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

.method public default()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->if:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->goto:Lorg/chromium/net/impl/CronetUrlRequestContext;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/net/impl/CronetUrlRequestContext;->transient(Ljava/lang/Thread;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Landroid/support/v4/sm0;

    invoke-direct {v0}, Landroid/support/v4/sm0;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public do()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->else:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetUrlRequest;->strictfp()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/chromium/net/impl/CronetUrlRequest;->new:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 3
    invoke-direct {p0, v1}, Lorg/chromium/net/impl/CronetUrlRequest;->private(I)V

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public else(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetUrlRequest;->extends()V

    const-string v0, "Invalid header name."

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Invalid header value."

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->throw:Lorg/chromium/net/impl/CronetUrlRequest$break;

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, p1, p2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public for(Lorg/chromium/net/return$new;)V
    .locals 6

    .line 1
    new-instance v0, Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;

    invoke-direct {v0, p1}, Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;-><init>(Lorg/chromium/net/return$new;)V

    .line 2
    iget-object p1, p0, Lorg/chromium/net/impl/CronetUrlRequest;->else:Ljava/lang/Object;

    monitor-enter p1

    .line 3
    :try_start_0
    iget-wide v1, p0, Lorg/chromium/net/impl/CronetUrlRequest;->for:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 4
    invoke-static {}, Lorg/chromium/net/impl/case;->if()Lorg/chromium/net/impl/CronetUrlRequest$Natives;

    move-result-object v1

    iget-wide v2, p0, Lorg/chromium/net/impl/CronetUrlRequest;->for:J

    invoke-interface {v1, v2, v3, p0, v0}, Lorg/chromium/net/impl/CronetUrlRequest$Natives;->getStatus(JLorg/chromium/net/impl/CronetUrlRequest;Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;)V

    .line 5
    monitor-exit p1

    return-void

    .line 6
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    new-instance p1, Lorg/chromium/net/impl/CronetUrlRequest$if;

    invoke-direct {p1, p0, v0}, Lorg/chromium/net/impl/CronetUrlRequest$if;-><init>(Lorg/chromium/net/impl/CronetUrlRequest;Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;)V

    .line 8
    invoke-direct {p0, p1}, Lorg/chromium/net/impl/CronetUrlRequest;->implements(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public if()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->else:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lorg/chromium/net/impl/CronetUrlRequest;->try:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lorg/chromium/net/impl/CronetUrlRequest;->try:Z

    .line 4
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetUrlRequest;->strictfp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_0
    invoke-static {}, Lorg/chromium/net/impl/case;->if()Lorg/chromium/net/impl/CronetUrlRequest$Natives;

    move-result-object v1

    iget-wide v2, p0, Lorg/chromium/net/impl/CronetUrlRequest;->for:J

    invoke-interface {v1, v2, v3, p0}, Lorg/chromium/net/impl/CronetUrlRequest$Natives;->followDeferredRedirect(JLorg/chromium/net/impl/CronetUrlRequest;)V

    .line 7
    monitor-exit v0

    return-void

    .line 8
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No redirect to follow."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public new()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->else:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetUrlRequest;->strictfp()Z

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

.method public synchronized(Ljava/lang/Runnable;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->else:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Lorg/chromium/net/impl/CronetUrlRequest;->continue:Ljava/lang/Runnable;

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

.method public this(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetUrlRequest;->extends()V

    const-string v0, "Method is required."

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lorg/chromium/net/impl/CronetUrlRequest;->super:Ljava/lang/String;

    return-void
.end method

.method public transient(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/support/v4/jf;

    const-string v1, "Exception received from UploadDataProvider"

    invoke-direct {v0, v1, p1}, Landroid/support/v4/jf;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    sget-object v1, Lorg/chromium/net/impl/CronetUrlRequestContext;->abstract:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Exception in upload method"

    invoke-static {v1, p1, v2}, Landroid/support/v4/rv0;->if(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-direct {p0, v0}, Lorg/chromium/net/impl/CronetUrlRequest;->abstract(Landroid/support/v4/rs;)V

    return-void
.end method

.method public try(Ljava/nio/ByteBuffer;)V
    .locals 8

    .line 1
    invoke-static {p1}, Landroid/support/v4/bf1;->if(Ljava/nio/ByteBuffer;)V

    .line 2
    invoke-static {p1}, Landroid/support/v4/bf1;->do(Ljava/nio/ByteBuffer;)V

    .line 3
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->else:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lorg/chromium/net/impl/CronetUrlRequest;->case:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lorg/chromium/net/impl/CronetUrlRequest;->case:Z

    .line 6
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetUrlRequest;->strictfp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    monitor-exit v0

    return-void

    .line 8
    :cond_0
    invoke-static {}, Lorg/chromium/net/impl/case;->if()Lorg/chromium/net/impl/CronetUrlRequest$Natives;

    move-result-object v1

    iget-wide v2, p0, Lorg/chromium/net/impl/CronetUrlRequest;->for:J

    .line 9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    move-object v4, p0

    move-object v5, p1

    .line 10
    invoke-interface/range {v1 .. v7}, Lorg/chromium/net/impl/CronetUrlRequest$Natives;->readData(JLorg/chromium/net/impl/CronetUrlRequest;Ljava/nio/ByteBuffer;II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 11
    monitor-exit v0

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lorg/chromium/net/impl/CronetUrlRequest;->case:Z

    .line 13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to call native read"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected read attempt."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
