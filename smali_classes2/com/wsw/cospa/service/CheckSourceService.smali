.class public Lcom/wsw/cospa/service/CheckSourceService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/service/CheckSourceService$CheckSourceListener;
    }
.end annotation


# static fields
.field public static final class:Ljava/lang/String; = "startService"

.field public static final const:Ljava/lang/String; = "doneService"

.field private static final final:I = 0xd05

.field private static final super:Ljava/lang/String; = "openActivity"

.field private static final throw:Ljava/lang/String; = "channel_id_check_source"

.field private static final while:Ljava/lang/String; = "channel_name_check_source"


# instance fields
.field private break:Landroid/app/Notification;

.field private case:Lio/reactivex/try;

.field private catch:Landroid/app/NotificationChannel;

.field private do:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicSourceBean;",
            ">;"
        }
    .end annotation
.end field

.field private else:Lcom/wsw/cospa/service/CheckSourceService$CheckSourceListener;

.field private for:I

.field private goto:Landroid/app/NotificationManager;

.field private if:I

.field private new:Landroid/support/v4/cq;

.field private this:Landroidx/core/app/NotificationCompat$Builder;

.field private try:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/wsw/cospa/service/CheckSourceService;->this:Landroidx/core/app/NotificationCompat$Builder;

    return-void
.end method

.method public static break(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/service/CheckSourceService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "doneService"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private case()Landroid/app/PendingIntent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "doneService"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    .line 3
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private catch(ILjava/lang/String;)V
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "channel_id_check_source"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1a

    if-lt v0, v4, :cond_0

    .line 2
    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v4, 0x2

    const-string v5, "channel_name_check_source"

    invoke-direct {v0, v1, v5, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iput-object v0, p0, Lcom/wsw/cospa/service/CheckSourceService;->catch:Landroid/app/NotificationChannel;

    .line 3
    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/service/CheckSourceService;->catch:Landroid/app/NotificationChannel;

    const/high16 v4, -0x10000

    invoke-virtual {v0, v4}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/service/CheckSourceService;->catch:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/service/CheckSourceService;->catch:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/service/CheckSourceService;->catch:Landroid/app/NotificationChannel;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/service/CheckSourceService;->catch:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/service/CheckSourceService;->goto:Landroid/app/NotificationManager;

    iget-object v4, p0, Lcom/wsw/cospa/service/CheckSourceService;->catch:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 10
    :cond_0
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v0, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x7f0e000b

    .line 11
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 12
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const v1, 0x7f110040

    .line 13
    invoke-virtual {p0, v1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 14
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 15
    invoke-direct {p0}, Lcom/wsw/cospa/service/CheckSourceService;->try()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    const v0, 0x7f080100

    const v1, 0x7f110039

    .line 16
    invoke-virtual {p0, v1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/wsw/cospa/service/CheckSourceService;->case()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {p2, v0, v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 17
    iget-object v0, p0, Lcom/wsw/cospa/service/CheckSourceService;->do:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0, p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 19
    :cond_1
    invoke-virtual {p2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 20
    invoke-virtual {p2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const/16 p2, 0xd05

    .line 21
    invoke-virtual {p0, p2, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/service/CheckSourceService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/service/CheckSourceService;->else()V

    return-void
.end method

.method private declared-synchronized else()V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/wsw/cospa/service/CheckSourceService;->for:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/wsw/cospa/service/CheckSourceService;->for:I

    .line 2
    iget v2, p0, Lcom/wsw/cospa/service/CheckSourceService;->if:I

    if-le v0, v2, :cond_0

    const v0, 0x7f1100d6

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/wsw/cospa/service/CheckSourceService;->for:I

    iget v5, p0, Lcom/wsw/cospa/service/CheckSourceService;->if:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/wsw/cospa/service/CheckSourceService;->do:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/hwangjr/rxbus/RxBus;->get()Lcom/hwangjr/rxbus/Bus;

    move-result-object v2

    const-string v3, "checkSourceState"

    invoke-virtual {v2, v3, v0}, Lcom/hwangjr/rxbus/Bus;->post(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    iget v2, p0, Lcom/wsw/cospa/service/CheckSourceService;->for:I

    iget v3, p0, Lcom/wsw/cospa/service/CheckSourceService;->if:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v2, v0}, Lcom/wsw/cospa/service/CheckSourceService;->catch(ILjava/lang/String;)V

    .line 6
    :cond_0
    iget v0, p0, Lcom/wsw/cospa/service/CheckSourceService;->for:I

    iget-object v2, p0, Lcom/wsw/cospa/service/CheckSourceService;->do:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 7
    new-instance v0, Lcom/wsw/cospa/model/if;

    iget-object v1, p0, Lcom/wsw/cospa/service/CheckSourceService;->do:Ljava/util/List;

    iget v2, p0, Lcom/wsw/cospa/service/CheckSourceService;->for:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/ComicSourceBean;

    iget-object v2, p0, Lcom/wsw/cospa/service/CheckSourceService;->case:Lio/reactivex/try;

    iget-object v3, p0, Lcom/wsw/cospa/service/CheckSourceService;->else:Lcom/wsw/cospa/service/CheckSourceService$CheckSourceListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/wsw/cospa/model/if;-><init>(Lcom/wsw/cospa/bean/ComicSourceBean;Lio/reactivex/try;Lcom/wsw/cospa/service/CheckSourceService$CheckSourceListener;)V

    .line 8
    invoke-virtual {v0}, Lcom/wsw/cospa/model/if;->const()V

    goto :goto_0

    .line 9
    :cond_1
    iget v0, p0, Lcom/wsw/cospa/service/CheckSourceService;->for:I

    iget-object v2, p0, Lcom/wsw/cospa/service/CheckSourceService;->do:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/wsw/cospa/service/CheckSourceService;->if:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v1

    if-lt v0, v2, :cond_2

    .line 10
    invoke-direct {p0}, Lcom/wsw/cospa/service/CheckSourceService;->new()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic for(Lcom/wsw/cospa/service/CheckSourceService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/wsw/cospa/service/CheckSourceService;->for:I

    return p0
.end method

.method public static goto(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicSourceBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {}, Landroid/support/v4/y8;->for()Landroid/support/v4/y8;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/support/v4/y8;->new(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/service/CheckSourceService;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "data_key"

    .line 5
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "startService"

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static synthetic if(Lcom/wsw/cospa/service/CheckSourceService;)Landroid/support/v4/cq;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/service/CheckSourceService;->new:Landroid/support/v4/cq;

    return-object p0
.end method

.method private new()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/hwangjr/rxbus/RxBus;->get()Lcom/hwangjr/rxbus/Bus;

    move-result-object v0

    const-string v1, "check_source_finish"

    const-string v2, "\u6821\u9a8c\u5b8c\u6210"

    invoke-virtual {v0, v1, v2}, Lcom/hwangjr/rxbus/Bus;->post(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/service/CheckSourceService;->new:Landroid/support/v4/cq;

    invoke-virtual {v0}, Landroid/support/v4/cq;->dispose()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method private try()Landroid/app/PendingIntent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/activity/ComicManagerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "openActivity"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    .line 3
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "notification"

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/wsw/cospa/service/CheckSourceService;->goto:Landroid/app/NotificationManager;

    .line 3
    new-instance v0, Lcom/wsw/cospa/service/CheckSourceService$do;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/service/CheckSourceService$do;-><init>(Lcom/wsw/cospa/service/CheckSourceService;)V

    iput-object v0, p0, Lcom/wsw/cospa/service/CheckSourceService;->else:Lcom/wsw/cospa/service/CheckSourceService$CheckSourceListener;

    .line 4
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "search_thread_num"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/wsw/cospa/service/CheckSourceService;->if:I

    .line 5
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/service/CheckSourceService;->try:Ljava/util/concurrent/ExecutorService;

    .line 6
    invoke-static {v0}, Lio/reactivex/schedulers/do;->if(Ljava/util/concurrent/Executor;)Lio/reactivex/try;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/service/CheckSourceService;->case:Lio/reactivex/try;

    .line 7
    new-instance v0, Landroid/support/v4/cq;

    invoke-direct {v0}, Landroid/support/v4/cq;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/service/CheckSourceService;->new:Landroid/support/v4/cq;

    const/4 v0, 0x0

    const-string v1, "\u6b63\u5728\u52a0\u8f7d"

    .line 8
    invoke-direct {p0, v0, v1}, Lcom/wsw/cospa/service/CheckSourceService;->catch(ILjava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/service/CheckSourceService;->try:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "doneService"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "startService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "data_key"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {}, Landroid/support/v4/y8;->for()Landroid/support/v4/y8;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/y8;->if(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/wsw/cospa/service/CheckSourceService;->do:Ljava/util/List;

    .line 5
    invoke-virtual {p0}, Lcom/wsw/cospa/service/CheckSourceService;->this()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/wsw/cospa/service/CheckSourceService;->new()V

    .line 7
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public this()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/service/CheckSourceService;->do:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/hwangjr/rxbus/RxBus;->get()Lcom/hwangjr/rxbus/Bus;

    move-result-object v0

    const-string v1, "checkSourceState"

    const-string v2, "\u5f00\u59cb\u6548\u9a8c"

    invoke-virtual {v0, v1, v2}, Lcom/hwangjr/rxbus/Bus;->post(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/wsw/cospa/service/CheckSourceService;->for:I

    const/4 v0, 0x1

    .line 4
    :goto_0
    iget v1, p0, Lcom/wsw/cospa/service/CheckSourceService;->if:I

    if-gt v0, v1, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/wsw/cospa/service/CheckSourceService;->else()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
