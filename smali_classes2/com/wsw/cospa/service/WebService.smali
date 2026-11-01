.class public Lcom/wsw/cospa/service/WebService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static else:Z


# instance fields
.field public case:Ljava/lang/String;

.field private do:Lcom/wsw/cospa/web/HttpServer;

.field private for:Landroid/app/NotificationChannel;

.field private if:Lcom/wsw/cospa/web/WebSocketServer;

.field private new:Landroid/app/NotificationManager;

.field public try:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, "channel_web"

    .line 2
    iput-object v0, p0, Lcom/wsw/cospa/service/WebService;->try:Ljava/lang/String;

    const-string v0, "channel_web_name"

    .line 3
    iput-object v0, p0, Lcom/wsw/cospa/service/WebService;->case:Ljava/lang/String;

    return-void
.end method

.method public static case(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/wsw/cospa/service/WebService;->else:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/service/WebService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "doneService"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/service/WebService;)V
    .locals 0

    invoke-direct {p0}, Lcom/wsw/cospa/service/WebService;->new()V

    return-void
.end method

.method public static else(Landroid/app/Activity;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/wsw/cospa/service/WebService;->else:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/service/WebService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "doneService"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method private for()Landroid/app/PendingIntent;
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

.method private goto()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/service/WebService;->do:Lcom/wsw/cospa/web/HttpServer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lfi/iki/elonen/NanoHTTPD;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/service/WebService;->do:Lcom/wsw/cospa/web/HttpServer;

    invoke-virtual {v0}, Lfi/iki/elonen/NanoHTTPD;->stop()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/service/WebService;->if:Lcom/wsw/cospa/web/WebSocketServer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lfi/iki/elonen/NanoHTTPD;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/service/WebService;->if:Lcom/wsw/cospa/web/WebSocketServer;

    invoke-virtual {v0}, Lfi/iki/elonen/NanoHTTPD;->stop()V

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/wsw/cospa/service/WebService;->if()I

    move-result v0

    .line 6
    new-instance v1, Lcom/wsw/cospa/web/HttpServer;

    invoke-direct {v1, v0}, Lcom/wsw/cospa/web/HttpServer;-><init>(I)V

    iput-object v1, p0, Lcom/wsw/cospa/service/WebService;->do:Lcom/wsw/cospa/web/HttpServer;

    .line 7
    new-instance v1, Lcom/wsw/cospa/web/WebSocketServer;

    add-int/lit8 v2, v0, 0x1

    invoke-direct {v1, v2}, Lcom/wsw/cospa/web/WebSocketServer;-><init>(I)V

    iput-object v1, p0, Lcom/wsw/cospa/service/WebService;->if:Lcom/wsw/cospa/web/WebSocketServer;

    .line 8
    invoke-static {}, Landroid/support/v4/g31;->if()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/wsw/cospa/service/WebService;->do:Lcom/wsw/cospa/web/HttpServer;

    invoke-virtual {v2}, Lfi/iki/elonen/NanoHTTPD;->start()V

    .line 10
    iget-object v2, p0, Lcom/wsw/cospa/service/WebService;->if:Lcom/wsw/cospa/web/WebSocketServer;

    const/16 v3, 0x7530

    invoke-virtual {v2, v3}, Lfi/iki/elonen/NanoHTTPD;->start(I)V

    const/4 v2, 0x1

    .line 11
    sput-boolean v2, Lcom/wsw/cospa/service/WebService;->else:Z

    const v3, 0x7f11005f

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 12
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {p0, v3, v4}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wsw/cospa/service/WebService;->this(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 13
    :catch_0
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :goto_0
    return-void
.end method

.method private if()I
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "webPort"

    const/16 v2, 0x462

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v0

    const v1, 0xfffa

    if-gt v0, v1, :cond_1

    const/16 v1, 0x400

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :cond_1
    :goto_0
    return v2
.end method

.method private synthetic new()V
    .locals 2

    const v0, 0x7f110114

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private this(Ljava/lang/String;)V
    .locals 5

    const-string v0, "notification"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/wsw/cospa/service/WebService;->new:Landroid/app/NotificationManager;

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    .line 3
    new-instance v0, Landroid/app/NotificationChannel;

    iget-object v2, p0, Lcom/wsw/cospa/service/WebService;->try:Ljava/lang/String;

    iget-object v3, p0, Lcom/wsw/cospa/service/WebService;->case:Ljava/lang/String;

    const/4 v4, 0x4

    invoke-direct {v0, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iput-object v0, p0, Lcom/wsw/cospa/service/WebService;->for:Landroid/app/NotificationChannel;

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/service/WebService;->for:Landroid/app/NotificationChannel;

    const/high16 v2, -0x10000

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/service/WebService;->for:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/service/WebService;->for:Landroid/app/NotificationChannel;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/service/WebService;->for:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/service/WebService;->for:Landroid/app/NotificationChannel;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/service/WebService;->new:Landroid/app/NotificationManager;

    iget-object v2, p0, Lcom/wsw/cospa/service/WebService;->for:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 11
    :cond_0
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/wsw/cospa/service/WebService;->try:Ljava/lang/String;

    invoke-direct {v0, p0, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x7f080105

    .line 12
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 13
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const v2, 0x7f110112

    .line 14
    invoke-virtual {p0, v2}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 16
    invoke-direct {p0}, Lcom/wsw/cospa/service/WebService;->for()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 17
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 18
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const/16 v0, 0x462

    .line 19
    invoke-virtual {p0, v0, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method public static try(Landroid/content/Context;)Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/wsw/cospa/service/WebService;->else:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wsw/cospa/service/WebService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "startService"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 p0, 0x1

    return p0
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
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/wsw/cospa/service/WebService;->else:Z

    const v0, 0x7f110115

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wsw/cospa/service/WebService;->this(Ljava/lang/String;)V

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroid/support/v4/pf2;

    invoke-direct {v1, p0}, Landroid/support/v4/pf2;-><init>(Lcom/wsw/cospa/service/WebService;)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/wsw/cospa/service/WebService;->else:Z

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/service/WebService;->do:Lcom/wsw/cospa/web/HttpServer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lfi/iki/elonen/NanoHTTPD;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/service/WebService;->do:Lcom/wsw/cospa/web/HttpServer;

    invoke-virtual {v0}, Lfi/iki/elonen/NanoHTTPD;->stop()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/service/WebService;->if:Lcom/wsw/cospa/web/WebSocketServer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lfi/iki/elonen/NanoHTTPD;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/service/WebService;->if:Lcom/wsw/cospa/web/WebSocketServer;

    invoke-virtual {v0}, Lfi/iki/elonen/NanoHTTPD;->stop()V

    :cond_1
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

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/wsw/cospa/service/WebService;->goto()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 5
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
