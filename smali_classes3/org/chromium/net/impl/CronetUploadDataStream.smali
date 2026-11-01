.class public final Lorg/chromium/net/impl/CronetUploadDataStream;
.super Landroid/support/v4/yc2;
.source "SourceFile"


# annotations
.annotation runtime Landroid/support/v4/lo0;
    value = "cronet"
.end annotation

.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/impl/CronetUploadDataStream$Natives;,
        Lorg/chromium/net/impl/CronetUploadDataStream$new;
    }
.end annotation


# static fields
.field private static final final:Ljava/lang/String; = "CronetUploadDataStream"


# instance fields
.field private break:J
    .annotation build Landroid/support/v4/ii0;
        value = "mLock"
    .end annotation
.end field

.field private case:J

.field private catch:I
    .annotation build Landroid/support/v4/ii0;
        value = "mLock"
    .end annotation
.end field

.field private class:Z
    .annotation build Landroid/support/v4/ii0;
        value = "mLock"
    .end annotation
.end field

.field private const:Ljava/lang/Runnable;

.field private final do:Ljava/util/concurrent/Executor;

.field private final else:Ljava/lang/Runnable;

.field private final for:Lorg/chromium/net/impl/CronetUrlRequest;

.field private goto:Ljava/nio/ByteBuffer;

.field private final if:Lorg/chromium/net/impl/VersionSafeCallbacks$case;

.field private new:J

.field private final this:Ljava/lang/Object;

.field private try:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/chromium/net/public;Ljava/util/concurrent/Executor;Lorg/chromium/net/impl/CronetUrlRequest;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v4/yc2;-><init>()V

    .line 2
    new-instance v0, Lorg/chromium/net/impl/CronetUploadDataStream$do;

    invoke-direct {v0, p0}, Lorg/chromium/net/impl/CronetUploadDataStream$do;-><init>(Lorg/chromium/net/impl/CronetUploadDataStream;)V

    iput-object v0, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->else:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->this:Ljava/lang/Object;

    const/4 v0, 0x3

    .line 4
    iput v0, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->catch:I

    .line 5
    iput-object p2, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->do:Ljava/util/concurrent/Executor;

    .line 6
    new-instance p2, Lorg/chromium/net/impl/VersionSafeCallbacks$case;

    invoke-direct {p2, p1}, Lorg/chromium/net/impl/VersionSafeCallbacks$case;-><init>(Lorg/chromium/net/public;)V

    iput-object p2, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->if:Lorg/chromium/net/impl/VersionSafeCallbacks$case;

    .line 7
    iput-object p3, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->for:Lorg/chromium/net/impl/CronetUrlRequest;

    return-void
.end method

.method public static synthetic break(Lorg/chromium/net/impl/CronetUploadDataStream;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetUploadDataStream;->super()V

    return-void
.end method

.method public static synthetic case(Lorg/chromium/net/impl/CronetUploadDataStream;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->break:J

    return-wide v0
.end method

.method public static synthetic catch(Lorg/chromium/net/impl/CronetUploadDataStream;)Lorg/chromium/net/impl/VersionSafeCallbacks$case;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->if:Lorg/chromium/net/impl/VersionSafeCallbacks$case;

    return-object p0
.end method

.method public static synthetic class(Lorg/chromium/net/impl/CronetUploadDataStream;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/chromium/net/impl/CronetUploadDataStream;->return(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic const()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/chromium/net/impl/CronetUploadDataStream;->final:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic else(Lorg/chromium/net/impl/CronetUploadDataStream;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/chromium/net/impl/CronetUploadDataStream;->throw(I)V

    return-void
.end method

.method public static synthetic goto(Lorg/chromium/net/impl/CronetUploadDataStream;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->goto:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method private import()V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->this:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->catch:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->class:Z

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    iget-wide v1, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->break:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_1
    invoke-static {}, Lorg/chromium/net/impl/new;->if()Lorg/chromium/net/impl/CronetUploadDataStream$Natives;

    move-result-object v1

    iget-wide v5, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->break:J

    invoke-interface {v1, v5, v6}, Lorg/chromium/net/impl/CronetUploadDataStream$Natives;->destroy(J)V

    .line 8
    iput-wide v3, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->break:J

    .line 9
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->const:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 10
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 11
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    new-instance v0, Lorg/chromium/net/impl/CronetUploadDataStream$for;

    invoke-direct {v0, p0}, Lorg/chromium/net/impl/CronetUploadDataStream$for;-><init>(Lorg/chromium/net/impl/CronetUploadDataStream;)V

    invoke-virtual {p0, v0}, Lorg/chromium/net/impl/CronetUploadDataStream;->static(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v1

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private native()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->this:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->catch:I

    if-eqz v1, :cond_1

    .line 3
    iget-boolean v1, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->class:Z

    if-eqz v1, :cond_0

    .line 4
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetUploadDataStream;->import()V

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    .line 6
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Method should not be called when read has not completed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private return(Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->this:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->catch:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    iput v2, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->catch:I

    const/4 v2, 0x0

    .line 4
    iput-object v2, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->goto:Ljava/nio/ByteBuffer;

    .line 5
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetUploadDataStream;->native()V

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 7
    :try_start_1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->if:Lorg/chromium/net/impl/VersionSafeCallbacks$case;

    invoke-virtual {v0}, Lorg/chromium/net/impl/VersionSafeCallbacks$case;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 8
    sget-object v1, Lorg/chromium/net/impl/CronetUploadDataStream;->final:Ljava/lang/String;

    const-string v2, "Failure closing data provider"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Landroid/support/v4/rv0;->if(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->for:Lorg/chromium/net/impl/CronetUrlRequest;

    invoke-virtual {v0, p1}, Lorg/chromium/net/impl/CronetUrlRequest;->transient(Ljava/lang/Throwable;)V

    return-void

    .line 10
    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "There is no read or rewind or length check in progress."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private super()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->for:Lorg/chromium/net/impl/CronetUrlRequest;

    invoke-virtual {v0}, Lorg/chromium/net/impl/CronetUrlRequest;->default()V

    return-void
.end method

.method public static synthetic this(Lorg/chromium/net/impl/CronetUploadDataStream;I)I
    .locals 0

    .line 1
    iput p1, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->catch:I

    return p1
.end method

.method private throw(I)V
    .locals 3
    .annotation build Landroid/support/v4/ii0;
        value = "mLock"
    .end annotation

    .line 1
    iget v0, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->catch:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", but was "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->catch:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic try(Lorg/chromium/net/impl/CronetUploadDataStream;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->this:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public do(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->this:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0, v1}, Lorg/chromium/net/impl/CronetUploadDataStream;->throw(I)V

    .line 3
    invoke-direct {p0, p1}, Lorg/chromium/net/impl/CronetUploadDataStream;->return(Ljava/lang/Throwable;)V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final(J)V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->this:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lorg/chromium/net/impl/new;->if()Lorg/chromium/net/impl/CronetUploadDataStream$Natives;

    move-result-object v1

    iget-wide v5, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->new:J

    move-object v2, p0

    move-wide v3, p1

    invoke-interface/range {v1 .. v6}, Lorg/chromium/net/impl/CronetUploadDataStream$Natives;->attachUploadDataToRequest(Lorg/chromium/net/impl/CronetUploadDataStream;JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->break:J

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

.method public for(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->this:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    invoke-direct {p0, v1}, Lorg/chromium/net/impl/CronetUploadDataStream;->throw(I)V

    .line 3
    invoke-direct {p0, p1}, Lorg/chromium/net/impl/CronetUploadDataStream;->return(Ljava/lang/Throwable;)V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public if(Z)V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->this:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0, v1}, Lorg/chromium/net/impl/CronetUploadDataStream;->throw(I)V

    .line 3
    iget-wide v2, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->case:J

    iget-object v4, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->goto:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_5

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_1

    .line 4
    iget-wide v4, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->new:J

    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-chunked upload can\'t have last chunk"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    :goto_0
    iget-object v4, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->goto:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    .line 7
    iget-wide v4, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->try:J

    int-to-long v6, v9

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->try:J

    cmp-long v6, v4, v2

    if-gez v6, :cond_3

    .line 8
    iget-wide v4, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->new:J

    cmp-long v6, v4, v2

    if-gez v6, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Read upload data length %d exceeds expected length %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v4, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->new:J

    iget-wide v6, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->try:J

    sub-long/2addr v4, v6

    .line 10
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    iget-wide v4, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->new:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    .line 11
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_3
    :goto_1
    iget-object v4, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->goto:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v1, 0x0

    .line 13
    iput-object v1, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->goto:Ljava/nio/ByteBuffer;

    const/4 v1, 0x3

    .line 14
    iput v1, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->catch:I

    .line 15
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetUploadDataStream;->native()V

    .line 16
    iget-wide v4, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->break:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_4

    .line 17
    monitor-exit v0

    return-void

    .line 18
    :cond_4
    invoke-static {}, Lorg/chromium/net/impl/new;->if()Lorg/chromium/net/impl/CronetUploadDataStream$Natives;

    move-result-object v5

    iget-wide v6, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->break:J

    move-object v8, p0

    move v10, p1

    invoke-interface/range {v5 .. v10}, Lorg/chromium/net/impl/CronetUploadDataStream$Natives;->onReadSucceeded(JLorg/chromium/net/impl/CronetUploadDataStream;IZ)V

    .line 19
    monitor-exit v0

    return-void

    .line 20
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "ByteBuffer limit changed"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public new()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->this:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    invoke-direct {p0, v1}, Lorg/chromium/net/impl/CronetUploadDataStream;->throw(I)V

    const/4 v1, 0x3

    .line 3
    iput v1, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->catch:I

    .line 4
    iget-wide v1, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->new:J

    iput-wide v1, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->try:J

    .line 5
    iget-wide v1, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->break:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lorg/chromium/net/impl/new;->if()Lorg/chromium/net/impl/CronetUploadDataStream$Natives;

    move-result-object v1

    iget-wide v2, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->break:J

    invoke-interface {v1, v2, v3, p0}, Lorg/chromium/net/impl/CronetUploadDataStream$Natives;->onRewindSucceeded(JLorg/chromium/net/impl/CronetUploadDataStream;)V

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUploadDataStreamDestroyed()V
    .locals 0
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetUploadDataStream;->import()V

    return-void
.end method

.method public public()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->this:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x2

    .line 2
    :try_start_0
    iput v1, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->catch:I

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4
    :try_start_1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->for:Lorg/chromium/net/impl/CronetUrlRequest;

    invoke-virtual {v0}, Lorg/chromium/net/impl/CronetUrlRequest;->default()V

    .line 5
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->if:Lorg/chromium/net/impl/VersionSafeCallbacks$case;

    invoke-virtual {v0}, Lorg/chromium/net/impl/VersionSafeCallbacks$case;->do()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->new:J

    .line 6
    iput-wide v0, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->try:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    invoke-direct {p0, v0}, Lorg/chromium/net/impl/CronetUploadDataStream;->return(Ljava/lang/Throwable;)V

    .line 8
    :goto_0
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->this:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x3

    .line 9
    :try_start_2
    iput v0, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->catch:I

    .line 10
    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    .line 11
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1
.end method

.method public readData(Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->goto:Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->case:J

    .line 3
    iget-object p1, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->else:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/CronetUploadDataStream;->static(Ljava/lang/Runnable;)V

    return-void
.end method

.method public rewind()V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 1
    new-instance v0, Lorg/chromium/net/impl/CronetUploadDataStream$if;

    invoke-direct {v0, p0}, Lorg/chromium/net/impl/CronetUploadDataStream$if;-><init>(Lorg/chromium/net/impl/CronetUploadDataStream;)V

    .line 2
    invoke-virtual {p0, v0}, Lorg/chromium/net/impl/CronetUploadDataStream;->static(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->do:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->for:Lorg/chromium/net/impl/CronetUrlRequest;

    invoke-virtual {v0, p1}, Lorg/chromium/net/impl/CronetUrlRequest;->transient(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public switch(Ljava/lang/Runnable;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->const:Ljava/lang/Runnable;

    return-void
.end method

.method public while()J
    .locals 9
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->this:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lorg/chromium/net/impl/new;->if()Lorg/chromium/net/impl/CronetUploadDataStream$Natives;

    move-result-object v1

    invoke-interface {v1, p0}, Lorg/chromium/net/impl/CronetUploadDataStream$Natives;->createAdapterForTesting(Lorg/chromium/net/impl/CronetUploadDataStream;)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->break:J

    .line 3
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->if:Lorg/chromium/net/impl/VersionSafeCallbacks$case;

    invoke-virtual {v1}, Lorg/chromium/net/impl/VersionSafeCallbacks$case;->do()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->new:J

    .line 4
    iput-wide v1, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->try:J

    .line 5
    invoke-static {}, Lorg/chromium/net/impl/new;->if()Lorg/chromium/net/impl/CronetUploadDataStream$Natives;

    move-result-object v3

    iget-wide v5, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->new:J

    iget-wide v7, p0, Lorg/chromium/net/impl/CronetUploadDataStream;->break:J

    move-object v4, p0

    invoke-interface/range {v3 .. v8}, Lorg/chromium/net/impl/CronetUploadDataStream$Natives;->createUploadDataStreamForTesting(Lorg/chromium/net/impl/CronetUploadDataStream;JJ)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
