.class public Lcom/wsw/cospa/service/DownloadService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/service/DownloadService$if;,
        Lcom/wsw/cospa/service/DownloadService$for;
    }
.end annotation


# static fields
.field private static final import:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public static final super:Ljava/lang/String;

.field public static throw:Z

.field private static final while:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private break:Landroidx/core/app/NotificationCompat$Builder;

.field private case:Lcom/wsw/cospa/model/throw;

.field private catch:Landroid/app/Notification;

.field private class:Landroid/app/NotificationChannel;

.field public const:Ljava/lang/String;

.field private do:I

.field private else:Landroid/content/ContentResolver;

.field public final:Ljava/lang/String;

.field private for:Ljava/util/concurrent/ExecutorService;

.field private goto:I

.field private if:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Landroid/util/Pair<",
            "Lcom/wsw/cospa/service/DownloadService$for;",
            "Ljava/util/concurrent/Future;",
            ">;>;"
        }
    .end annotation
.end field

.field private new:Lio/reactivex/try;

.field private this:Landroid/app/NotificationManager;

.field private try:Lokhttp3/OkHttpClient;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/wsw/cospa/service/DownloadService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wsw/cospa/service/DownloadService;->super:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/wsw/cospa/service/DownloadService;->throw:Z

    .line 3
    new-instance v0, Lcom/wsw/cospa/service/DownloadService$do;

    invoke-direct {v0}, Lcom/wsw/cospa/service/DownloadService$do;-><init>()V

    sput-object v0, Lcom/wsw/cospa/service/DownloadService;->while:Ljava/util/concurrent/ThreadFactory;

    .line 4
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/wsw/cospa/service/DownloadService;->import:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/16 v0, 0x3e8

    .line 2
    iput v0, p0, Lcom/wsw/cospa/service/DownloadService;->goto:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/wsw/cospa/service/DownloadService;->break:Landroidx/core/app/NotificationCompat$Builder;

    const-string v0, "channel_id"

    .line 4
    iput-object v0, p0, Lcom/wsw/cospa/service/DownloadService;->const:Ljava/lang/String;

    const-string v0, "channel_name"

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/service/DownloadService;->final:Ljava/lang/String;

    return-void
.end method

.method public static synthetic break(Lcom/wsw/cospa/service/DownloadService;Landroid/app/NotificationChannel;)Landroid/app/NotificationChannel;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/service/DownloadService;->class:Landroid/app/NotificationChannel;

    return-object p1
.end method

.method public static synthetic case(Lcom/wsw/cospa/service/DownloadService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/wsw/cospa/service/DownloadService;->goto:I

    return p0
.end method

.method public static synthetic catch(Lcom/wsw/cospa/service/DownloadService;)Landroid/app/NotificationManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/service/DownloadService;->this:Landroid/app/NotificationManager;

    return-object p0
.end method

.method public static synthetic do(Lcom/wsw/cospa/service/DownloadService;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/service/DownloadService;->try:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method public static synthetic else(Lcom/wsw/cospa/service/DownloadService;)Landroid/content/ContentResolver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/service/DownloadService;->else:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public static final(Landroid/content/Context;Lcom/wsw/cospa/bean/Task;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-static {p0, v0}, Lcom/wsw/cospa/service/DownloadService;->super(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic for(Lcom/wsw/cospa/service/DownloadService;Landroidx/core/app/NotificationCompat$Builder;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/service/DownloadService;->break:Landroidx/core/app/NotificationCompat$Builder;

    return-object p1
.end method

.method public static synthetic goto(Lcom/wsw/cospa/service/DownloadService;)Lcom/wsw/cospa/model/throw;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/service/DownloadService;->case:Lcom/wsw/cospa/model/throw;

    return-object p0
.end method

.method public static synthetic if(Lcom/wsw/cospa/service/DownloadService;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/service/DownloadService;->break:Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method public static synthetic new(Lcom/wsw/cospa/service/DownloadService;)Landroid/app/Notification;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/service/DownloadService;->catch:Landroid/app/Notification;

    return-object p0
.end method

.method public static super(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/wsw/cospa/bean/Task;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/service/DownloadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-static {p1}, Lcom/wsw/cospa/utils/package;->do(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "cimoc.intent.extra.EXTRA_TASK"

    .line 3
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static synthetic this(Lcom/wsw/cospa/service/DownloadService;)Landroid/app/NotificationChannel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/service/DownloadService;->class:Landroid/app/NotificationChannel;

    return-object p0
.end method

.method public static synthetic try(Lcom/wsw/cospa/service/DownloadService;Landroid/app/Notification;)Landroid/app/Notification;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/service/DownloadService;->catch:Landroid/app/Notification;

    return-object p1
.end method

.method private while()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/service/DownloadService;->if:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 3
    invoke-static {}, Landroid/support/v4/ep1;->do()Landroid/support/v4/ep1;

    move-result-object v0

    new-instance v1, Landroid/support/v4/gp1;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x2b

    invoke-direct {v1, v3, v2}, Landroid/support/v4/gp1;-><init>(I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/ep1;->for(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized class(JLcom/wsw/cospa/service/DownloadService$for;Ljava/util/concurrent/Future;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/service/DownloadService;->if:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/service/DownloadService;->if:Landroidx/collection/LongSparseArray;

    invoke-static {p3, p4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized const(J)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/service/DownloadService;->if:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/service/DownloadService;->if:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/wsw/cospa/service/DownloadService;->while()V

    .line 4
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized import(J)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wsw/cospa/service/DownloadService;->if:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/service/DownloadService;->if:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->remove(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized native(Landroid/content/Intent;)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Landroid/support/v4/ep1;->do()Landroid/support/v4/ep1;

    move-result-object v0

    new-instance v1, Landroid/support/v4/gp1;

    const/16 v2, 0x2a

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Landroid/support/v4/gp1;-><init>(I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/ep1;->for(Ljava/lang/Object;)V

    const-string v0, "cimoc.intent.extra.EXTRA_TASK"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lorg/apache/commons/lang3/class;->E(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    const-class v0, Lcom/wsw/cospa/bean/Task;

    invoke-static {p1, v0}, Landroid/support/v4/hi0;->do(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/Task;

    .line 7
    new-instance v1, Lcom/wsw/cospa/service/DownloadService$for;

    invoke-direct {v1, p0, v0}, Lcom/wsw/cospa/service/DownloadService$for;-><init>(Lcom/wsw/cospa/service/DownloadService;Lcom/wsw/cospa/bean/Task;)V

    .line 8
    iget-object v2, p0, Lcom/wsw/cospa/service/DownloadService;->for:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 9
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/Task;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4, v1, v2}, Lcom/wsw/cospa/service/DownloadService;->class(JLcom/wsw/cospa/service/DownloadService$for;Ljava/util/concurrent/Future;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 10
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    new-instance p1, Lcom/wsw/cospa/service/DownloadService$if;

    invoke-direct {p1, p0}, Lcom/wsw/cospa/service/DownloadService$if;-><init>(Lcom/wsw/cospa/service/DownloadService;)V

    return-object p1
.end method

.method public onCreate()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/wsw/cospa/service/DownloadService;->throw:Z

    const-string v1, "notification"

    .line 3
    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/wsw/cospa/service/DownloadService;->this:Landroid/app/NotificationManager;

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_0

    .line 5
    new-instance v1, Landroid/app/NotificationChannel;

    iget-object v3, p0, Lcom/wsw/cospa/service/DownloadService;->const:Ljava/lang/String;

    iget-object v4, p0, Lcom/wsw/cospa/service/DownloadService;->final:Ljava/lang/String;

    const/4 v5, 0x4

    invoke-direct {v1, v3, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iput-object v1, p0, Lcom/wsw/cospa/service/DownloadService;->class:Landroid/app/NotificationChannel;

    .line 6
    invoke-virtual {v1, v0}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 7
    iget-object v1, p0, Lcom/wsw/cospa/service/DownloadService;->class:Landroid/app/NotificationChannel;

    const/high16 v3, -0x10000

    invoke-virtual {v1, v3}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 8
    iget-object v1, p0, Lcom/wsw/cospa/service/DownloadService;->class:Landroid/app/NotificationChannel;

    invoke-virtual {v1, v0}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 9
    iget-object v1, p0, Lcom/wsw/cospa/service/DownloadService;->class:Landroid/app/NotificationChannel;

    invoke-virtual {v1, v2, v2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 10
    iget-object v1, p0, Lcom/wsw/cospa/service/DownloadService;->class:Landroid/app/NotificationChannel;

    invoke-virtual {v1, v0}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 11
    iget-object v1, p0, Lcom/wsw/cospa/service/DownloadService;->class:Landroid/app/NotificationChannel;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 12
    iget-object v1, p0, Lcom/wsw/cospa/service/DownloadService;->this:Landroid/app/NotificationManager;

    iget-object v3, p0, Lcom/wsw/cospa/service/DownloadService;->class:Landroid/app/NotificationChannel;

    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 13
    :cond_0
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, p0, Lcom/wsw/cospa/service/DownloadService;->const:Ljava/lang/String;

    invoke-direct {v1, p0, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v3, 0x7f0800c9

    .line 14
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 15
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0001

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 16
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 17
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 18
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 19
    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 20
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/service/DownloadService;->break:Landroidx/core/app/NotificationCompat$Builder;

    .line 21
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/service/DownloadService;->catch:Landroid/app/Notification;

    .line 22
    iget v1, p0, Lcom/wsw/cospa/service/DownloadService;->goto:I

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 23
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/service/DownloadService;->do:I

    .line 24
    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "download_thread_num"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v0

    .line 25
    new-instance v1, Landroidx/collection/LongSparseArray;

    invoke-direct {v1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v1, p0, Lcom/wsw/cospa/service/DownloadService;->if:Landroidx/collection/LongSparseArray;

    .line 26
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/service/DownloadService;->for:Ljava/util/concurrent/ExecutorService;

    .line 27
    invoke-static {}, Lcom/wsw/cospa/utils/volatile;->else()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/service/DownloadService;->try:Lokhttp3/OkHttpClient;

    .line 28
    invoke-static {}, Lcom/wsw/cospa/model/throw;->else()Lcom/wsw/cospa/model/throw;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/service/DownloadService;->case:Lcom/wsw/cospa/model/throw;

    .line 29
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/service/DownloadService;->else:Landroid/content/ContentResolver;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/wsw/cospa/service/DownloadService;->throw:Z

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/service/DownloadService;->for:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/service/DownloadService;->this:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Landroid/support/v4/ep1;->do()Landroid/support/v4/ep1;

    move-result-object v0

    new-instance v1, Landroid/support/v4/gp1;

    const/16 v2, 0x2a

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Landroid/support/v4/gp1;-><init>(I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/ep1;->for(Ljava/lang/Object;)V

    const-string v0, "cimoc.intent.extra.EXTRA_TASK"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lorg/apache/commons/lang3/class;->E(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    const-class v1, Lcom/wsw/cospa/bean/Task;

    invoke-static {v0, v1}, Landroid/support/v4/hi0;->do(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/Task;

    .line 7
    new-instance v2, Lcom/wsw/cospa/service/DownloadService$for;

    invoke-direct {v2, p0, v1}, Lcom/wsw/cospa/service/DownloadService$for;-><init>(Lcom/wsw/cospa/service/DownloadService;Lcom/wsw/cospa/bean/Task;)V

    .line 8
    iget-object v3, p0, Lcom/wsw/cospa/service/DownloadService;->for:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v3

    .line 9
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/Task;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5, v2, v3}, Lcom/wsw/cospa/service/DownloadService;->class(JLcom/wsw/cospa/service/DownloadService$for;Ljava/util/concurrent/Future;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public declared-synchronized throw(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/Task;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/Task;

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/service/DownloadService;->if:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/Task;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/wsw/cospa/service/DownloadService$for;

    invoke-static {v1}, Lcom/wsw/cospa/service/DownloadService$for;->for(Lcom/wsw/cospa/service/DownloadService$for;)Lcom/wsw/cospa/bean/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/Task;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/bean/Task;->setState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
