.class public Lorg/chromium/net/ProxyChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Landroid/support/v4/lo0;
    value = "net"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/ProxyChangeListener$Natives;,
        Lorg/chromium/net/ProxyChangeListener$ProxyReceiver;,
        Lorg/chromium/net/ProxyChangeListener$Delegate;,
        Lorg/chromium/net/ProxyChangeListener$if;
    }
.end annotation

.annotation build Lorg/chromium/base/annotations/UsedByReflection;
    value = "WebView embedders call this to override proxy settings"
.end annotation


# static fields
.field private static final else:Ljava/lang/String; = "ProxyChangeListener"

.field private static goto:Z = true

.field public static final synthetic this:Z


# instance fields
.field private case:Lorg/chromium/net/ProxyChangeListener$Delegate;

.field private final do:Landroid/os/Looper;

.field private for:J

.field private final if:Landroid/os/Handler;

.field private new:Lorg/chromium/net/ProxyChangeListener$ProxyReceiver;

.field private try:Landroid/content/BroadcastReceiver;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/ProxyChangeListener;->do:Landroid/os/Looper;

    .line 3
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lorg/chromium/net/ProxyChangeListener;->if:Landroid/os/Handler;

    return-void
.end method

.method private break(Lorg/chromium/net/ProxyChangeListener$if;)V
    .locals 13

    .line 1
    invoke-direct {p0}, Lorg/chromium/net/ProxyChangeListener;->try()V

    .line 2
    sget-boolean v0, Lorg/chromium/net/ProxyChangeListener;->goto:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/chromium/net/ProxyChangeListener;->case:Lorg/chromium/net/ProxyChangeListener$Delegate;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lorg/chromium/net/ProxyChangeListener$Delegate;->proxySettingsChanged()V

    .line 5
    :cond_1
    iget-wide v0, p0, Lorg/chromium/net/ProxyChangeListener;->for:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_3

    .line 6
    invoke-static {}, Lorg/chromium/net/throw;->if()Lorg/chromium/net/ProxyChangeListener$Natives;

    move-result-object v5

    iget-wide v6, p0, Lorg/chromium/net/ProxyChangeListener;->for:J

    iget-object v9, p1, Lorg/chromium/net/ProxyChangeListener$if;->do:Ljava/lang/String;

    iget v10, p1, Lorg/chromium/net/ProxyChangeListener$if;->if:I

    iget-object v11, p1, Lorg/chromium/net/ProxyChangeListener$if;->for:Ljava/lang/String;

    iget-object v12, p1, Lorg/chromium/net/ProxyChangeListener$if;->new:[Ljava/lang/String;

    move-object v8, p0

    invoke-interface/range {v5 .. v12}, Lorg/chromium/net/ProxyChangeListener$Natives;->proxySettingsChangedTo(JLorg/chromium/net/ProxyChangeListener;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_3
    invoke-static {}, Lorg/chromium/net/throw;->if()Lorg/chromium/net/ProxyChangeListener$Natives;

    move-result-object p1

    iget-wide v0, p0, Lorg/chromium/net/ProxyChangeListener;->for:J

    invoke-interface {p1, v0, v1, p0}, Lorg/chromium/net/ProxyChangeListener$Natives;->proxySettingsChanged(JLorg/chromium/net/ProxyChangeListener;)V

    :goto_0
    return-void
.end method

.method private static case(Landroid/content/Intent;)Lorg/chromium/net/ProxyChangeListener$if;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    const-string v0, "android.intent.extra.PROXY_INFO"

    .line 3
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ProxyInfo;

    .line 4
    invoke-static {p0}, Lorg/chromium/net/ProxyChangeListener$if;->do(Landroid/net/ProxyInfo;)Lorg/chromium/net/ProxyChangeListener$if;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "proxy"

    .line 5
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    const-string v3, "android.net.ProxyProperties"

    .line 6
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getHost"

    new-array v5, v2, [Ljava/lang/Class;

    .line 7
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-string v5, "getPort"

    new-array v6, v2, [Ljava/lang/Class;

    .line 8
    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const-string v6, "getExclusionList"

    new-array v7, v2, [Ljava/lang/Class;

    .line 9
    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    .line 10
    invoke-virtual {v4, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-array v7, v2, [Ljava/lang/Object;

    .line 11
    invoke-virtual {v5, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    new-array v7, v2, [Ljava/lang/Object;

    .line 12
    invoke-virtual {v6, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, ","

    .line 13
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x13

    if-lt v1, v7, :cond_3

    const-string v1, "getPacFileUrl"

    new-array v7, v2, [Ljava/lang/Class;

    .line 14
    invoke-virtual {v3, v1, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    .line 15
    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 16
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 17
    new-instance v1, Lorg/chromium/net/ProxyChangeListener$if;

    invoke-direct {v1, v4, v5, p0, v6}, Lorg/chromium/net/ProxyChangeListener$if;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    return-object v1

    .line 18
    :cond_3
    new-instance p0, Lorg/chromium/net/ProxyChangeListener$if;

    invoke-direct {p0, v4, v5, v0, v6}, Lorg/chromium/net/ProxyChangeListener$if;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    goto :goto_0

    :catch_3
    move-exception p0

    goto :goto_0

    :catch_4
    move-exception p0

    .line 19
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using no proxy configuration due to exception:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "ProxyChangeListener"

    invoke-static {v2, p0, v1}, Landroid/support/v4/rv0;->if(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method private catch()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lorg/chromium/net/ProxyChangeListener;->try()V

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PROXY_CHANGE"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    new-instance v1, Lorg/chromium/net/ProxyChangeListener$ProxyReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/chromium/net/ProxyChangeListener$ProxyReceiver;-><init>(Lorg/chromium/net/ProxyChangeListener;Lorg/chromium/net/ProxyChangeListener$do;)V

    iput-object v1, p0, Lorg/chromium/net/ProxyChangeListener;->new:Lorg/chromium/net/ProxyChangeListener$ProxyReceiver;

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    .line 6
    invoke-static {}, Lorg/chromium/base/try;->case()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/net/ProxyChangeListener;->new:Lorg/chromium/net/ProxyChangeListener$ProxyReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lorg/chromium/base/try;->case()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/net/ProxyChangeListener;->new:Lorg/chromium/net/ProxyChangeListener$ProxyReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 8
    new-instance v1, Lorg/chromium/net/final;

    invoke-direct {v1, p0}, Lorg/chromium/net/final;-><init>(Lorg/chromium/net/ProxyChangeListener;)V

    iput-object v1, p0, Lorg/chromium/net/ProxyChangeListener;->try:Landroid/content/BroadcastReceiver;

    .line 9
    invoke-static {}, Lorg/chromium/base/try;->case()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/net/ProxyChangeListener;->try:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void
.end method

.method private class(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/chromium/net/ProxyChangeListener;->this()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/chromium/net/ProxyChangeListener;->if:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public static create()Lorg/chromium/net/ProxyChangeListener;
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 1
    new-instance v0, Lorg/chromium/net/ProxyChangeListener;

    invoke-direct {v0}, Lorg/chromium/net/ProxyChangeListener;-><init>()V

    return-object v0
.end method

.method public static synthetic do(Lorg/chromium/net/ProxyChangeListener;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/net/ProxyChangeListener;->goto(Landroid/content/Intent;)V

    return-void
.end method

.method private else(Landroid/content/Intent;)Lorg/chromium/net/ProxyChangeListener$if;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1
    invoke-static {}, Lorg/chromium/base/try;->case()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getDefaultProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    sget-object p1, Lorg/chromium/net/ProxyChangeListener$if;->try:Lorg/chromium/net/ProxyChangeListener$if;

    return-object p1

    .line 4
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "localhost"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 6
    invoke-static {p1}, Lorg/chromium/net/ProxyChangeListener;->case(Landroid/content/Intent;)Lorg/chromium/net/ProxyChangeListener$if;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    invoke-static {v0}, Lorg/chromium/net/ProxyChangeListener$if;->do(Landroid/net/ProxyInfo;)Lorg/chromium/net/ProxyChangeListener$if;

    move-result-object p1

    return-object p1
.end method

.method public static final(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lorg/chromium/net/ProxyChangeListener;->goto:Z

    return-void
.end method

.method public static synthetic for(Landroid/content/Intent;)Lorg/chromium/net/ProxyChangeListener$if;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/chromium/net/ProxyChangeListener;->case(Landroid/content/Intent;)Lorg/chromium/net/ProxyChangeListener$if;

    move-result-object p0

    return-object p0
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 1
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic goto(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/chromium/net/ProxyChangeListener;->else(Landroid/content/Intent;)Lorg/chromium/net/ProxyChangeListener$if;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/chromium/net/ProxyChangeListener;->break(Lorg/chromium/net/ProxyChangeListener$if;)V

    return-void
.end method

.method public static synthetic if(Lorg/chromium/net/ProxyChangeListener;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/chromium/net/ProxyChangeListener;->class(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic new(Lorg/chromium/net/ProxyChangeListener;Lorg/chromium/net/ProxyChangeListener$if;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/chromium/net/ProxyChangeListener;->break(Lorg/chromium/net/ProxyChangeListener$if;)V

    return-void
.end method

.method private super()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/chromium/net/ProxyChangeListener;->try()V

    .line 2
    invoke-static {}, Lorg/chromium/base/try;->case()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/net/ProxyChangeListener;->new:Lorg/chromium/net/ProxyChangeListener$ProxyReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3
    iget-object v0, p0, Lorg/chromium/net/ProxyChangeListener;->try:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lorg/chromium/base/try;->case()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/net/ProxyChangeListener;->try:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/chromium/net/ProxyChangeListener;->new:Lorg/chromium/net/ProxyChangeListener$ProxyReceiver;

    .line 6
    iput-object v0, p0, Lorg/chromium/net/ProxyChangeListener;->try:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private this()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/net/ProxyChangeListener;->do:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private try()V
    .locals 2

    .line 1
    sget-boolean v0, Landroid/support/v4/ed;->if:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/chromium/net/ProxyChangeListener;->this()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called on ProxyChangeListener thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public const(Lorg/chromium/net/ProxyChangeListener$Delegate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/chromium/net/ProxyChangeListener;->case:Lorg/chromium/net/ProxyChangeListener$Delegate;

    return-void
.end method

.method public start(J)V
    .locals 0
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/chromium/net/ProxyChangeListener;->try()V

    .line 2
    iput-wide p1, p0, Lorg/chromium/net/ProxyChangeListener;->for:J

    .line 3
    invoke-direct {p0}, Lorg/chromium/net/ProxyChangeListener;->catch()V

    return-void
.end method

.method public stop()V
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/chromium/net/ProxyChangeListener;->try()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lorg/chromium/net/ProxyChangeListener;->for:J

    .line 3
    invoke-direct {p0}, Lorg/chromium/net/ProxyChangeListener;->super()V

    return-void
.end method

.method public throw(Landroid/content/Intent;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v4/rg1;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/rg1;-><init>(Lorg/chromium/net/ProxyChangeListener;Landroid/content/Intent;)V

    invoke-direct {p0, v0}, Lorg/chromium/net/ProxyChangeListener;->class(Ljava/lang/Runnable;)V

    return-void
.end method
