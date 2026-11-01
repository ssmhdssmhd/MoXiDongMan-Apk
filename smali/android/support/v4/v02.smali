.class public Landroid/support/v4/v02;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final do:Ljava/lang/String; = "comic"

.field private static for:Landroid/content/Context;

.field private static if:Landroid/support/v4/v02;

.field private static new:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Landroid/support/v4/v02;->for:Landroid/content/Context;

    return-void
.end method

.method public static if(Landroid/content/Context;)Landroid/support/v4/v02;
    .locals 2

    .line 1
    sget-object v0, Landroid/support/v4/v02;->if:Landroid/support/v4/v02;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Landroid/support/v4/v02;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Landroid/support/v4/v02;->if:Landroid/support/v4/v02;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Landroid/support/v4/v02;

    invoke-direct {v1, p0}, Landroid/support/v4/v02;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/support/v4/v02;->if:Landroid/support/v4/v02;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Landroid/support/v4/v02;->if:Landroid/support/v4/v02;

    return-object p0
.end method


# virtual methods
.method public case(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    sget-object v0, Landroid/support/v4/v02;->new:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroid/support/v4/v02;->for:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "comic"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Landroid/support/v4/v02;->new:Landroid/content/SharedPreferences;

    .line 3
    :cond_0
    sget-object v0, Landroid/support/v4/v02;->new:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public do(Ljava/lang/String;Z)Z
    .locals 3

    .line 1
    sget-object v0, Landroid/support/v4/v02;->new:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroid/support/v4/v02;->for:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "comic"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Landroid/support/v4/v02;->new:Landroid/content/SharedPreferences;

    .line 3
    :cond_0
    sget-object v0, Landroid/support/v4/v02;->new:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public else(Ljava/lang/String;I)V
    .locals 3

    .line 1
    sget-object v0, Landroid/support/v4/v02;->new:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroid/support/v4/v02;->for:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "comic"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Landroid/support/v4/v02;->new:Landroid/content/SharedPreferences;

    .line 3
    :cond_0
    sget-object v0, Landroid/support/v4/v02;->new:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public for(Ljava/lang/String;I)I
    .locals 3

    .line 1
    sget-object v0, Landroid/support/v4/v02;->new:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroid/support/v4/v02;->for:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "comic"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Landroid/support/v4/v02;->new:Landroid/content/SharedPreferences;

    .line 3
    :cond_0
    sget-object v0, Landroid/support/v4/v02;->new:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public goto(Ljava/lang/String;J)V
    .locals 3

    .line 1
    sget-object v0, Landroid/support/v4/v02;->new:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroid/support/v4/v02;->for:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "comic"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Landroid/support/v4/v02;->new:Landroid/content/SharedPreferences;

    .line 3
    :cond_0
    sget-object v0, Landroid/support/v4/v02;->new:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public new(Ljava/lang/String;)J
    .locals 3

    .line 1
    sget-object v0, Landroid/support/v4/v02;->new:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroid/support/v4/v02;->for:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "comic"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Landroid/support/v4/v02;->new:Landroid/content/SharedPreferences;

    .line 3
    :cond_0
    sget-object v0, Landroid/support/v4/v02;->new:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public this(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Landroid/support/v4/v02;->new:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroid/support/v4/v02;->for:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "comic"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Landroid/support/v4/v02;->new:Landroid/content/SharedPreferences;

    .line 3
    :cond_0
    sget-object v0, Landroid/support/v4/v02;->new:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public try(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Landroid/support/v4/v02;->new:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Landroid/support/v4/v02;->for:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "comic"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Landroid/support/v4/v02;->new:Landroid/content/SharedPreferences;

    .line 3
    :cond_0
    sget-object v0, Landroid/support/v4/v02;->new:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
