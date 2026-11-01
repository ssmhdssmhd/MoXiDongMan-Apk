.class public Lorg/chromium/net/do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/cx0;
.end annotation

.annotation build Landroidx/annotation/AnyThread;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/do$if;
    }
.end annotation


# static fields
.field private static volatile try:Lorg/chromium/net/do;


# instance fields
.field private volatile do:Ljava/lang/String;
    .annotation runtime Landroid/support/v4/el;
    .end annotation
.end field

.field private volatile for:Ljava/lang/String;
    .annotation runtime Landroid/support/v4/el;
    .end annotation
.end field

.field private volatile if:Ljava/lang/String;
    .annotation runtime Landroid/support/v4/el;
    .end annotation
.end field

.field private new:Lorg/chromium/net/do$if;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic break(Lorg/chromium/net/do;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/net/do;->this()Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, v0}, Lorg/chromium/net/do;->catch(Landroid/telephony/TelephonyManager;)V

    :cond_0
    return-void
.end method

.method private catch(Landroid/telephony/TelephonyManager;)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->for()V

    .line 2
    new-instance v0, Lorg/chromium/net/do$if;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/net/do$if;-><init>(Lorg/chromium/net/do;Lorg/chromium/net/do$do;)V

    iput-object v0, p0, Lorg/chromium/net/do;->new:Lorg/chromium/net/do$if;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method private class(Landroid/telephony/TelephonyManager;)V
    .locals 1
    .param p1    # Landroid/telephony/TelephonyManager;
        .annotation runtime Landroid/support/v4/el;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/do;->do:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/do;->if:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/net/do;->for:Ljava/lang/String;

    return-void
.end method

.method public static synthetic do(Lorg/chromium/net/do;)V
    .locals 0

    invoke-static {p0}, Lorg/chromium/net/do;->break(Lorg/chromium/net/do;)V

    return-void
.end method

.method public static synthetic for(Lorg/chromium/net/do;Landroid/telephony/TelephonyManager;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/chromium/net/do;->class(Landroid/telephony/TelephonyManager;)V

    return-void
.end method

.method public static synthetic if()Landroid/telephony/TelephonyManager;
    .locals 1

    .line 1
    invoke-static {}, Lorg/chromium/net/do;->this()Landroid/telephony/TelephonyManager;

    move-result-object v0

    return-object v0
.end method

.method private static new()Lorg/chromium/net/do;
    .locals 2

    .line 1
    new-instance v0, Lorg/chromium/net/do;

    invoke-direct {v0}, Lorg/chromium/net/do;-><init>()V

    .line 2
    new-instance v1, Landroid/support/v4/v1;

    invoke-direct {v1, v0}, Landroid/support/v4/v1;-><init>(Lorg/chromium/net/do;)V

    invoke-static {v1}, Lorg/chromium/base/ThreadUtils;->class(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private static this()Landroid/telephony/TelephonyManager;
    .locals 2
    .annotation runtime Landroid/support/v4/el;
    .end annotation

    .line 1
    invoke-static {}, Lorg/chromium/base/try;->case()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public static try()Lorg/chromium/net/do;
    .locals 2

    .line 1
    sget-object v0, Lorg/chromium/net/do;->try:Lorg/chromium/net/do;

    if-nez v0, :cond_1

    .line 2
    const-class v1, Lorg/chromium/net/do;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, Lorg/chromium/net/do;->try:Lorg/chromium/net/do;

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lorg/chromium/net/do;->new()Lorg/chromium/net/do;

    move-result-object v0

    .line 5
    sput-object v0, Lorg/chromium/net/do;->try:Lorg/chromium/net/do;

    .line 6
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public case()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/net/do;->do:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lorg/chromium/net/do;->this()Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/do;->do:Ljava/lang/String;

    .line 4
    :cond_1
    iget-object v0, p0, Lorg/chromium/net/do;->do:Ljava/lang/String;

    return-object v0
.end method

.method public else()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/net/do;->if:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lorg/chromium/net/do;->this()Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/do;->if:Ljava/lang/String;

    .line 4
    :cond_1
    iget-object v0, p0, Lorg/chromium/net/do;->if:Ljava/lang/String;

    return-object v0
.end method

.method public goto()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/net/do;->for:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lorg/chromium/net/do;->this()Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/do;->for:Ljava/lang/String;

    .line 4
    :cond_1
    iget-object v0, p0, Lorg/chromium/net/do;->for:Ljava/lang/String;

    return-object v0
.end method
