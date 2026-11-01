.class public final Landroid/support/v4/z9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final do:Ljava/lang/String; = "BlockCanary-no-op"

.field private static if:Landroid/support/v4/z9;


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

.method public static do()Landroid/support/v4/z9;
    .locals 2

    .line 1
    sget-object v0, Landroid/support/v4/z9;->if:Landroid/support/v4/z9;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Landroid/support/v4/z9;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Landroid/support/v4/z9;->if:Landroid/support/v4/z9;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Landroid/support/v4/z9;

    invoke-direct {v1}, Landroid/support/v4/z9;-><init>()V

    sput-object v1, Landroid/support/v4/z9;->if:Landroid/support/v4/z9;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Landroid/support/v4/z9;->if:Landroid/support/v4/z9;

    return-object v0
.end method

.method public static if(Landroid/content/Context;Landroid/support/v4/aa;)Landroid/support/v4/z9;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/support/v4/aa;->case(Landroid/content/Context;Landroid/support/v4/aa;)V

    .line 2
    invoke-static {}, Landroid/support/v4/z9;->do()Landroid/support/v4/z9;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public case()V
    .locals 0

    return-void
.end method

.method public else()V
    .locals 0

    return-void
.end method

.method public for()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public new()V
    .locals 0

    return-void
.end method

.method public try()V
    .locals 0

    return-void
.end method
