.class public Lcom/wsw/cospa/service/DownloadService$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/service/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "for"
.end annotation


# instance fields
.field private do:Lcom/wsw/cospa/bean/Task;

.field public final synthetic if:Lcom/wsw/cospa/service/DownloadService;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/service/DownloadService;Lcom/wsw/cospa/bean/Task;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/service/DownloadService$for;->if:Lcom/wsw/cospa/service/DownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/wsw/cospa/service/DownloadService$for;->do:Lcom/wsw/cospa/bean/Task;

    return-void
.end method

.method public static synthetic case(Lcom/wsw/cospa/service/DownloadService$for;Lcom/wsw/cospa/bean/ChapterListBean;Lcom/wsw/cospa/bean/ComicContentImgBean;Lcom/wsw/cospa/bean/Task;Lcom/wsw/cospa/utils/DocumentFile;Lokhttp3/Request;ILjava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/wsw/cospa/service/DownloadService$for;->do(Lcom/wsw/cospa/bean/ChapterListBean;Lcom/wsw/cospa/bean/ComicContentImgBean;Lcom/wsw/cospa/bean/Task;Lcom/wsw/cospa/utils/DocumentFile;Lokhttp3/Request;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method private declared-synchronized class(Lcom/wsw/cospa/bean/ChapterListBean;I)V
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/wsw/cospa/activity/DownloadTaskActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "cimoc.intent.extra.EXTRA_ID"

    .line 2
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ChapterListBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x8000000

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    const/4 v4, 0x1

    if-lt v1, v2, :cond_0

    .line 5
    iget-object v1, p0, Lcom/wsw/cospa/service/DownloadService$for;->if:Lcom/wsw/cospa/service/DownloadService;

    new-instance v2, Landroid/app/NotificationChannel;

    iget-object v5, p0, Lcom/wsw/cospa/service/DownloadService$for;->if:Lcom/wsw/cospa/service/DownloadService;

    iget-object v6, v5, Lcom/wsw/cospa/service/DownloadService;->const:Ljava/lang/String;

    iget-object v5, v5, Lcom/wsw/cospa/service/DownloadService;->final:Ljava/lang/String;

    const/4 v7, 0x2

    invoke-direct {v2, v6, v5, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-static {v1, v2}, Lcom/wsw/cospa/service/DownloadService;->break(Lcom/wsw/cospa/service/DownloadService;Landroid/app/NotificationChannel;)Landroid/app/NotificationChannel;

    .line 6
    iget-object v1, p0, Lcom/wsw/cospa/service/DownloadService$for;->if:Lcom/wsw/cospa/service/DownloadService;

    invoke-static {v1}, Lcom/wsw/cospa/service/DownloadService;->this(Lcom/wsw/cospa/service/DownloadService;)Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 7
    iget-object v1, p0, Lcom/wsw/cospa/service/DownloadService$for;->if:Lcom/wsw/cospa/service/DownloadService;

    invoke-static {v1}, Lcom/wsw/cospa/service/DownloadService;->this(Lcom/wsw/cospa/service/DownloadService;)Landroid/app/NotificationChannel;

    move-result-object v1

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 8
    iget-object v1, p0, Lcom/wsw/cospa/service/DownloadService$for;->if:Lcom/wsw/cospa/service/DownloadService;

    invoke-static {v1}, Lcom/wsw/cospa/service/DownloadService;->this(Lcom/wsw/cospa/service/DownloadService;)Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 9
    iget-object v1, p0, Lcom/wsw/cospa/service/DownloadService$for;->if:Lcom/wsw/cospa/service/DownloadService;

    invoke-static {v1}, Lcom/wsw/cospa/service/DownloadService;->this(Lcom/wsw/cospa/service/DownloadService;)Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 10
    iget-object v1, p0, Lcom/wsw/cospa/service/DownloadService$for;->if:Lcom/wsw/cospa/service/DownloadService;

    invoke-static {v1}, Lcom/wsw/cospa/service/DownloadService;->this(Lcom/wsw/cospa/service/DownloadService;)Landroid/app/NotificationChannel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 11
    iget-object v1, p0, Lcom/wsw/cospa/service/DownloadService$for;->if:Lcom/wsw/cospa/service/DownloadService;

    invoke-static {v1}, Lcom/wsw/cospa/service/DownloadService;->this(Lcom/wsw/cospa/service/DownloadService;)Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 12
    iget-object v1, p0, Lcom/wsw/cospa/service/DownloadService$for;->if:Lcom/wsw/cospa/service/DownloadService;

    invoke-static {v1}, Lcom/wsw/cospa/service/DownloadService;->catch(Lcom/wsw/cospa/service/DownloadService;)Landroid/app/NotificationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/wsw/cospa/service/DownloadService$for;->if:Lcom/wsw/cospa/service/DownloadService;

    invoke-static {v2}, Lcom/wsw/cospa/service/DownloadService;->this(Lcom/wsw/cospa/service/DownloadService;)Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/wsw/cospa/service/DownloadService$for;->if:Lcom/wsw/cospa/service/DownloadService;

    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    invoke-static {}, Lcom/wsw/cospa/CartoonApplication;->do()Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/wsw/cospa/service/DownloadService$for;->if:Lcom/wsw/cospa/service/DownloadService;

    iget-object v5, v5, Lcom/wsw/cospa/service/DownloadService;->const:Ljava/lang/String;

    invoke-direct {v2, v3, v5}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v3, 0x7f0800c9

    .line 14
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/wsw/cospa/service/DownloadService$for;->if:Lcom/wsw/cospa/service/DownloadService;

    .line 15
    invoke-virtual {v3}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0e0001

    invoke-static {v3, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 16
    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    const/4 v3, -0x1

    .line 17
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6b63\u5728\u4e0b\u8f7d\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/wsw/cospa/service/DownloadService$for;->do:Lcom/wsw/cospa/bean/Task;

    .line 18
    invoke-virtual {v4}, Lcom/wsw/cospa/bean/Task;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ChapterListBean;->getDurChapterName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 20
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 21
    invoke-static {v1, p1}, Lcom/wsw/cospa/service/DownloadService;->for(Lcom/wsw/cospa/service/DownloadService;Landroidx/core/app/NotificationCompat$Builder;)Landroidx/core/app/NotificationCompat$Builder;

    .line 22
    iget-object p1, p0, Lcom/wsw/cospa/service/DownloadService$for;->if:Lcom/wsw/cospa/service/DownloadService;

    invoke-static {p1}, Lcom/wsw/cospa/service/DownloadService;->if(Lcom/wsw/cospa/service/DownloadService;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/wsw/cospa/service/DownloadService;->try(Lcom/wsw/cospa/service/DownloadService;Landroid/app/Notification;)Landroid/app/Notification;

    .line 23
    iget-object p1, p0, Lcom/wsw/cospa/service/DownloadService$for;->if:Lcom/wsw/cospa/service/DownloadService;

    invoke-static {p1}, Lcom/wsw/cospa/service/DownloadService;->catch(Lcom/wsw/cospa/service/DownloadService;)Landroid/app/NotificationManager;

    move-result-object p1

    iget-object p2, p0, Lcom/wsw/cospa/service/DownloadService$for;->if:Lcom/wsw/cospa/service/DownloadService;

    invoke-static {p2}, Lcom/wsw/cospa/service/DownloadService;->case(Lcom/wsw/cospa/service/DownloadService;)I

    move-result p2

    iget-object v0, p0, Lcom/wsw/cospa/service/DownloadService$for;->if:Lcom/wsw/cospa/service/DownloadService;

    invoke-static {v0}, Lcom/wsw/cospa/service/DownloadService;->new(Lcom/wsw/cospa/service/DownloadService;)Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized const()V
    .locals 27

    move-object/from16 v1, p0

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f53\u524d\u7ebf\u7a0b"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2
    iget-object v0, v1, Lcom/wsw/cospa/service/DownloadService$for;->do:Lcom/wsw/cospa/bean/Task;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/bean/Task;->setState(I)V

    .line 3
    invoke-static {}, Landroid/support/v4/r20;->case()Landroid/support/v4/r20;

    move-result-object v0

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    new-instance v5, Landroid/support/v4/gp1;

    const/16 v6, 0x15

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v8, 0x0

    aput-object v2, v7, v8

    iget-object v2, v1, Lcom/wsw/cospa/service/DownloadService$for;->do:Lcom/wsw/cospa/bean/Task;

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/Task;->getId()Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v3

    invoke-direct {v5, v6, v7}, Landroid/support/v4/gp1;-><init>(I[Ljava/lang/Object;)V

    aput-object v5, v4, v8

    invoke-virtual {v0, v4}, Landroid/support/v4/r20;->if([Ljava/lang/Object;)V

    .line 4
    new-instance v0, Lcom/wsw/cospa/bean/ChapterListBean;

    iget-object v2, v1, Lcom/wsw/cospa/service/DownloadService$for;->do:Lcom/wsw/cospa/bean/Task;

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/Task;->getNoteUrl()Ljava/lang/String;

    move-result-object v10

    iget-object v2, v1, Lcom/wsw/cospa/service/DownloadService$for;->do:Lcom/wsw/cospa/bean/Task;

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/Task;->getDurChapterIndex()I

    move-result v11

    iget-object v2, v1, Lcom/wsw/cospa/service/DownloadService$for;->do:Lcom/wsw/cospa/bean/Task;

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/Task;->getParentIdString()Ljava/lang/String;

    move-result-object v12

    iget-object v2, v1, Lcom/wsw/cospa/service/DownloadService$for;->do:Lcom/wsw/cospa/bean/Task;

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/Task;->getParentNameString()Ljava/lang/String;

    move-result-object v13

    iget-object v2, v1, Lcom/wsw/cospa/service/DownloadService$for;->do:Lcom/wsw/cospa/bean/Task;

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/Task;->getChapterId()Ljava/lang/String;

    move-result-object v14

    iget-object v2, v1, Lcom/wsw/cospa/service/DownloadService$for;->do:Lcom/wsw/cospa/bean/Task;

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/Task;->getDurChapterUrl()Ljava/lang/String;

    move-result-object v15

    iget-object v2, v1, Lcom/wsw/cospa/service/DownloadService$for;->do:Lcom/wsw/cospa/bean/Task;

    .line 5
    invoke-virtual {v2}, Lcom/wsw/cospa/bean/Task;->getDurChapterName()Ljava/lang/String;

    move-result-object v16

    iget-object v2, v1, Lcom/wsw/cospa/service/DownloadService$for;->do:Lcom/wsw/cospa/bean/Task;

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/Task;->getNextChapterUrl()Ljava/lang/String;

    move-result-object v17

    iget-object v2, v1, Lcom/wsw/cospa/service/DownloadService$for;->do:Lcom/wsw/cospa/bean/Task;

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/Task;->getVariable()Ljava/lang/String;

    move-result-object v18

    iget-object v2, v1, Lcom/wsw/cospa/service/DownloadService$for;->do:Lcom/wsw/cospa/bean/Task;

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/Task;->getTag()Ljava/lang/String;

    move-result-object v19

    iget-object v2, v1, Lcom/wsw/cospa/service/DownloadService$for;->do:Lcom/wsw/cospa/bean/Task;

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/Task;->getStart()Ljava/lang/Long;

    move-result-object v20

    iget-object v2, v1, Lcom/wsw/cospa/service/DownloadService$for;->do:Lcom/wsw/cospa/bean/Task;

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/Task;->getEnd()Ljava/lang/Long;

    move-result-object v21

    iget-object v2, v1, Lcom/wsw/cospa/service/DownloadService$for;->do:Lcom/wsw/cospa/bean/Task;

    .line 6
    invoke-virtual {v2}, Lcom/wsw/cospa/bean/Task;->getComicInfoUrl()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    iget-object v2, v1, Lcom/wsw/cospa/service/DownloadService$for;->do:Lcom/wsw/cospa/bean/Task;

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/Task;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    move-object v9, v0

    invoke-direct/range {v9 .. v26}, Lcom/wsw/cospa/bean/ChapterListBean;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;ZZJ)V

    .line 7
    invoke-static {}, Lcom/wsw/cospa/model/while;->catch()Lcom/wsw/cospa/model/while;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/wsw/cospa/model/while;->break(Lcom/wsw/cospa/bean/ChapterListBean;)Lio/reactivex/new;

    move-result-object v2

    new-instance v3, Lcom/wsw/cospa/service/DownloadService$for$do;

    invoke-direct {v3, v1, v0}, Lcom/wsw/cospa/service/DownloadService$for$do;-><init>(Lcom/wsw/cospa/service/DownloadService$for;Lcom/wsw/cospa/bean/ChapterListBean;)V

    .line 8
    invoke-virtual {v2, v3}, Lio/reactivex/new;->subscribe(Lio/reactivex/Observer;)V

    .line 9
    iget-object v0, v1, Lcom/wsw/cospa/service/DownloadService$for;->if:Lcom/wsw/cospa/service/DownloadService;

    iget-object v2, v1, Lcom/wsw/cospa/service/DownloadService$for;->do:Lcom/wsw/cospa/bean/Task;

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/Task;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/wsw/cospa/service/DownloadService;->const(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private do(Lcom/wsw/cospa/bean/ChapterListBean;Lcom/wsw/cospa/bean/ComicContentImgBean;Lcom/wsw/cospa/bean/Task;Lcom/wsw/cospa/utils/DocumentFile;Lokhttp3/Request;ILjava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    const-string v0, "error code : "

    const-string v1, "error message : "

    const/4 v2, 0x2

    if-eqz p5, :cond_4

    const/4 v3, 0x0

    .line 1
    :try_start_0
    iget-object v4, p0, Lcom/wsw/cospa/service/DownloadService$for;->if:Lcom/wsw/cospa/service/DownloadService;

    invoke-static {v4}, Lcom/wsw/cospa/service/DownloadService;->do(Lcom/wsw/cospa/service/DownloadService;)Lokhttp3/OkHttpClient;

    move-result-object v4

    invoke-virtual {v4, p5}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p5

    invoke-interface {p5}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v3

    .line 2
    invoke-virtual {v3}, Lokhttp3/Response;->code()I

    .line 3
    invoke-virtual {v3}, Lokhttp3/Response;->isSuccessful()Z

    move-result p5

    if-eqz p5, :cond_1

    .line 4
    invoke-direct {p0, p6, p7}, Lcom/wsw/cospa/service/DownloadService$for;->goto(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 5
    invoke-static {p4, p3}, Lcom/wsw/cospa/utils/switch;->new(Lcom/wsw/cospa/utils/DocumentFile;Ljava/lang/String;)Lcom/wsw/cospa/utils/DocumentFile;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 6
    iget-object p4, p0, Lcom/wsw/cospa/service/DownloadService$for;->if:Lcom/wsw/cospa/service/DownloadService;

    invoke-static {p4}, Lcom/wsw/cospa/service/DownloadService;->else(Lcom/wsw/cospa/service/DownloadService;)Landroid/content/ContentResolver;

    move-result-object p4

    invoke-virtual {v3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p5

    invoke-virtual {p5}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p5

    invoke-static {p1, p2, p4, p3, p5}, Lcom/wsw/cospa/utils/switch;->catch(Lcom/wsw/cospa/bean/ChapterListBean;Lcom/wsw/cospa/bean/ComicContentImgBean;Landroid/content/ContentResolver;Lcom/wsw/cospa/utils/DocumentFile;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    invoke-virtual {v3}, Lokhttp3/Response;->close()V

    return p1

    .line 8
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Lokhttp3/Response;->code()I

    move-result p1

    const/16 p2, 0x194

    if-ne p1, p2, :cond_2

    .line 9
    sget-object p1, Lcom/wsw/cospa/service/DownloadService;->super:Ljava/lang/String;

    const-string p2, "error : \u56fe\u7247404"

    invoke-static {p1, p2}, Landroid/support/v4/vv0;->if(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "\u7ae0\u8282\u56fe\u7247\u5730\u5740\u4e0d\u5b58\u5728"

    .line 10
    invoke-virtual {p3, p1}, Lcom/wsw/cospa/bean/Task;->setErrorMessage(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 11
    invoke-virtual {v3}, Lokhttp3/Response;->close()V

    return p1

    .line 12
    :cond_2
    :try_start_2
    sget-object p1, Lcom/wsw/cospa/service/DownloadService;->super:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lokhttp3/Response;->code()I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/support/v4/vv0;->if(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lokhttp3/Response;->code()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/wsw/cospa/bean/Task;->setErrorMessage(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14
    invoke-virtual {v3}, Lokhttp3/Response;->close()V

    return v2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 15
    :try_start_3
    sget-object p2, Lcom/wsw/cospa/service/DownloadService;->super:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/support/v4/vv0;->if(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    if-eqz v3, :cond_4

    goto :goto_0

    :catch_1
    move-exception p1

    .line 17
    sget-object p2, Lcom/wsw/cospa/service/DownloadService;->super:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/InterruptedIOException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/support/v4/vv0;->if(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    throw p1

    :catch_2
    move-exception p1

    .line 19
    sget-object p2, Lcom/wsw/cospa/service/DownloadService;->super:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/support/v4/vv0;->if(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Ljava/net/SocketTimeoutException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_4

    .line 21
    :goto_0
    invoke-virtual {v3}, Lokhttp3/Response;->close()V

    goto :goto_2

    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lokhttp3/Response;->close()V

    .line 22
    :cond_3
    throw p1

    :cond_4
    :goto_2
    return v2
.end method

.method public static synthetic else(Lcom/wsw/cospa/service/DownloadService$for;Lcom/wsw/cospa/bean/ChapterListBean;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/service/DownloadService$for;->class(Lcom/wsw/cospa/bean/ChapterListBean;I)V

    return-void
.end method

.method private final(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/service/DownloadService$for;->do:Lcom/wsw/cospa/bean/Task;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/bean/Task;->setProgress(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/service/DownloadService$for;->if:Lcom/wsw/cospa/service/DownloadService;

    invoke-static {v0}, Lcom/wsw/cospa/service/DownloadService;->goto(Lcom/wsw/cospa/service/DownloadService;)Lcom/wsw/cospa/model/throw;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/service/DownloadService$for;->do:Lcom/wsw/cospa/bean/Task;

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/model/throw;->throw(Lcom/wsw/cospa/bean/Task;)V

    .line 3
    invoke-static {}, Landroid/support/v4/r20;->case()Landroid/support/v4/r20;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Landroid/support/v4/gp1;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/wsw/cospa/service/DownloadService$for;->do:Lcom/wsw/cospa/bean/Task;

    invoke-virtual {v5}, Lcom/wsw/cospa/bean/Task;->getId()Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    iget-object p1, p0, Lcom/wsw/cospa/service/DownloadService$for;->do:Lcom/wsw/cospa/bean/Task;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/Task;->getMax()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v4, v1

    const/16 p1, 0x16

    invoke-direct {v3, p1, v4}, Landroid/support/v4/gp1;-><init>(I[Ljava/lang/Object;)V

    aput-object v3, v2, v6

    invoke-virtual {v0, v2}, Landroid/support/v4/r20;->if([Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic for(Lcom/wsw/cospa/service/DownloadService$for;)Lcom/wsw/cospa/bean/Task;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/service/DownloadService$for;->do:Lcom/wsw/cospa/bean/Task;

    return-object p0
.end method

.method private goto(ILjava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "jpg"

    .line 1
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "gif"

    const-string v3, "jpeg"

    const-string v4, "webp"

    const-string v5, "png"

    const/4 v6, -0x1

    if-ne v1, v6, :cond_8

    const-string v1, "JPG"

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    invoke-virtual {p2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v6, :cond_7

    const-string v1, "PNG"

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    invoke-virtual {p2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v6, :cond_6

    const-string v1, "WEBP"

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v6, :cond_5

    const-string v1, "JPEG"

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v6, :cond_4

    const-string v1, "GIF"

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    if-eq p2, v6, :cond_8

    :cond_4
    move-object v0, v2

    goto :goto_3

    :cond_5
    :goto_0
    move-object v0, v3

    goto :goto_3

    :cond_6
    :goto_1
    move-object v0, v4

    goto :goto_3

    :cond_7
    :goto_2
    move-object v0, v5

    :cond_8
    :goto_3
    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v1

    const/4 p1, 0x1

    aput-object v0, p2, p1

    const-string p1, "%03d.%s"

    invoke-static {p1, p2}, Landroid/support/v4/l22;->case(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private if(Lokhttp3/Request;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    const/4 v0, 0x2

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/wsw/cospa/service/DownloadService$for;->if:Lcom/wsw/cospa/service/DownloadService;

    invoke-static {v2}, Lcom/wsw/cospa/service/DownloadService;->do(Lcom/wsw/cospa/service/DownloadService;)Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v1}, Lokhttp3/Response;->close()V

    return p1

    .line 4
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result p1
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v2, 0x194

    if-ne p1, v2, :cond_1

    const/4 p1, 0x1

    .line 5
    invoke-virtual {v1}, Lokhttp3/Response;->close()V

    return p1

    :cond_1
    invoke-virtual {v1}, Lokhttp3/Response;->close()V

    return v0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 6
    :try_start_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    if-eqz v1, :cond_3

    goto :goto_0

    :catch_1
    move-exception p1

    .line 7
    throw p1

    :catch_2
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/net/SocketTimeoutException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    .line 9
    :goto_0
    invoke-virtual {v1}, Lokhttp3/Response;->close()V

    goto :goto_2

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lokhttp3/Response;->close()V

    .line 10
    :cond_2
    throw p1

    :cond_3
    :goto_2
    return v0
.end method

.method public static synthetic new(Lcom/wsw/cospa/service/DownloadService$for;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/service/DownloadService$for;->final(I)V

    return-void
.end method

.method private this(Ljava/lang/String;Lcom/wsw/cospa/bean/ComicContentImgBean;)Lokhttp3/Request;
    .locals 7

    const-string v0, "\"]"

    const-string v1, "[\""

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    .line 2
    :cond_0
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 3
    invoke-virtual {v2, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    const-string v4, "User-Agent"

    .line 4
    invoke-virtual {v2, v4}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v2

    :try_start_0
    const-string v5, "(http://|https://)"

    const/4 v6, 0x2

    .line 6
    invoke-static {v5, v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 7
    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 8
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v5

    if-nez v5, :cond_1

    return-object v3

    .line 9
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, ""

    if-eqz v3, :cond_2

    .line 10
    :try_start_1
    invoke-virtual {p1, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 11
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 13
    :cond_3
    sget-object v0, Lcom/wsw/cospa/service/DownloadService;->super:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildRequest  url : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/support/v4/vv0;->if(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicContentImgBean;->getVariableMap()Ljava/util/Map;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    .line 15
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 16
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 17
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 18
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v2, v3, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move p2, v1

    goto :goto_0

    .line 19
    :cond_4
    iget-object p1, p0, Lcom/wsw/cospa/service/DownloadService$for;->do:Lcom/wsw/cospa/bean/Task;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/Task;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/wsw/cospa/utils/while;->goto(Ljava/lang/String;)Lcom/wsw/cospa/bean/ComicSourceBean;

    move-result-object p1

    if-nez p2, :cond_5

    .line 20
    invoke-static {p1}, Lcom/wsw/cospa/utils/analyzeUrl/AnalyzeHeaders;->getDefaultUserAgent(Lcom/wsw/cospa/bean/ComicSourceBean;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    .line 22
    invoke-virtual {v2, v4, p1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    :cond_5
    :goto_1
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic try(Lcom/wsw/cospa/service/DownloadService$for;Ljava/lang/String;Lcom/wsw/cospa/bean/ComicContentImgBean;)Lokhttp3/Request;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/service/DownloadService$for;->this(Ljava/lang/String;Lcom/wsw/cospa/bean/ComicContentImgBean;)Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public break(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 3
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-char v4, v1, v3

    .line 4
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-eq v5, v4, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public catch(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x2e

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public run()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/service/DownloadService$for;->const()V

    return-void
.end method

.method public super(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method
