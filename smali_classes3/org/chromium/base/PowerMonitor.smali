.class public Lorg/chromium/base/PowerMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Landroid/support/v4/lo0;
    value = "base::android"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/PowerMonitor$Natives;
    }
.end annotation


# static fields
.field public static final synthetic for:Z

.field private static if:Lorg/chromium/base/PowerMonitor;


# instance fields
.field private do:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic do(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/chromium/base/PowerMonitor;->try(Z)V

    return-void
.end method

.method public static for()V
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/base/PowerMonitor;

    invoke-direct {v0}, Lorg/chromium/base/PowerMonitor;-><init>()V

    sput-object v0, Lorg/chromium/base/PowerMonitor;->if:Lorg/chromium/base/PowerMonitor;

    return-void
.end method

.method private static getRemainingBatteryCapacity()I
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    sget-object v0, Lorg/chromium/base/PowerMonitor;->if:Lorg/chromium/base/PowerMonitor;

    if-nez v0, :cond_1

    invoke-static {}, Lorg/chromium/base/PowerMonitor;->if()V

    .line 3
    :cond_1
    invoke-static {}, Lorg/chromium/base/PowerMonitor;->new()I

    move-result v0

    return v0
.end method

.method public static if()V
    .locals 4

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->for()V

    .line 2
    sget-object v0, Lorg/chromium/base/PowerMonitor;->if:Lorg/chromium/base/PowerMonitor;

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lorg/chromium/base/try;->case()Landroid/content/Context;

    move-result-object v0

    .line 4
    new-instance v1, Lorg/chromium/base/PowerMonitor;

    invoke-direct {v1}, Lorg/chromium/base/PowerMonitor;-><init>()V

    sput-object v1, Lorg/chromium/base/PowerMonitor;->if:Lorg/chromium/base/PowerMonitor;

    .line 5
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "plugged"

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v3, 0x1

    .line 8
    :cond_1
    invoke-static {v3}, Lorg/chromium/base/PowerMonitor;->try(Z)V

    .line 9
    :cond_2
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 10
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 11
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 12
    new-instance v2, Lorg/chromium/base/PowerMonitor$do;

    invoke-direct {v2}, Lorg/chromium/base/PowerMonitor$do;-><init>()V

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private static isBatteryPower()Z
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 1
    sget-object v0, Lorg/chromium/base/PowerMonitor;->if:Lorg/chromium/base/PowerMonitor;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/PowerMonitor;->if()V

    .line 2
    :cond_0
    sget-object v0, Lorg/chromium/base/PowerMonitor;->if:Lorg/chromium/base/PowerMonitor;

    iget-boolean v0, v0, Lorg/chromium/base/PowerMonitor;->do:Z

    return v0
.end method

.method private static new()I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    invoke-static {}, Lorg/chromium/base/try;->case()Landroid/content/Context;

    move-result-object v0

    const-string v1, "batterymanager"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    return v0
.end method

.method private static try(Z)V
    .locals 1

    .line 1
    sget-object v0, Lorg/chromium/base/PowerMonitor;->if:Lorg/chromium/base/PowerMonitor;

    iput-boolean p0, v0, Lorg/chromium/base/PowerMonitor;->do:Z

    .line 2
    invoke-static {}, Lorg/chromium/base/while;->if()Lorg/chromium/base/PowerMonitor$Natives;

    move-result-object p0

    invoke-interface {p0}, Lorg/chromium/base/PowerMonitor$Natives;->onBatteryChargingChanged()V

    return-void
.end method
