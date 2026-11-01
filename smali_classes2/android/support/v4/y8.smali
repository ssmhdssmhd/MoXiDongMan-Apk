.class public Landroid/support/v4/y8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static if:Landroid/support/v4/y8;


# instance fields
.field private do:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/y8;->do:Ljava/util/Map;

    return-void
.end method

.method public static for()Landroid/support/v4/y8;
    .locals 2

    .line 1
    sget-object v0, Landroid/support/v4/y8;->if:Landroid/support/v4/y8;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Landroid/support/v4/y8;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Landroid/support/v4/y8;->if:Landroid/support/v4/y8;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Landroid/support/v4/y8;

    invoke-direct {v1}, Landroid/support/v4/y8;-><init>()V

    sput-object v1, Landroid/support/v4/y8;->if:Landroid/support/v4/y8;

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
    sget-object v0, Landroid/support/v4/y8;->if:Landroid/support/v4/y8;

    return-object v0
.end method


# virtual methods
.method public do(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/y8;->do:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public if(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/y8;->do:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public new(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/y8;->do:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
