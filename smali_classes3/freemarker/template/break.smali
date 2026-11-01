.class public Lfreemarker/template/break;
.super Landroid/support/v4/ry;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/template/break$do;
    }
.end annotation


# static fields
.field private static final class:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map<",
            "Landroid/support/v4/ry;",
            "Ljava/lang/ref/WeakReference<",
            "Lfreemarker/template/this;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final const:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lfreemarker/template/this;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfreemarker/template/break;->class:Ljava/util/Map;

    .line 2
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lfreemarker/template/break;->const:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/we2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v4/ry;-><init>(Landroid/support/v4/we2;)V

    return-void
.end method

.method public static volatile()V
    .locals 2

    .line 1
    sget-object v0, Lfreemarker/template/break;->class:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public strictfp()Lfreemarker/template/this;
    .locals 3

    .line 1
    sget-object v0, Lfreemarker/template/break;->class:Ljava/util/Map;

    sget-object v1, Lfreemarker/template/break;->const:Ljava/lang/ref/ReferenceQueue;

    .line 2
    invoke-static {}, Lfreemarker/template/break$do;->do()Lfreemarker/template/break$do;

    move-result-object v2

    .line 3
    invoke-static {p0, v0, v1, v2}, Lfreemarker/ext/beans/_BeansAPI;->for(Lfreemarker/ext/beans/else;Ljava/util/Map;Ljava/lang/ref/ReferenceQueue;Lfreemarker/ext/beans/_BeansAPI$_BeansWrapperSubclassFactory;)Lfreemarker/ext/beans/try;

    move-result-object v0

    check-cast v0, Lfreemarker/template/this;

    return-object v0
.end method
