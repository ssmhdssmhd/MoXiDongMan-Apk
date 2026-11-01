.class public Lfreemarker/ext/beans/case;
.super Lfreemarker/ext/beans/else;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/beans/case$do;
    }
.end annotation


# static fields
.field private static final break:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lfreemarker/ext/beans/try;",
            ">;"
        }
    .end annotation
.end field

.field private static final this:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map<",
            "Lfreemarker/ext/beans/else;",
            "Ljava/lang/ref/WeakReference<",
            "Lfreemarker/ext/beans/try;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lfreemarker/ext/beans/case;->this:Ljava/util/Map;

    .line 2
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lfreemarker/ext/beans/case;->break:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/we2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/ext/beans/else;-><init>(Landroid/support/v4/we2;)V

    return-void
.end method

.method public static finally()V
    .locals 2

    .line 1
    sget-object v0, Lfreemarker/ext/beans/case;->this:Ljava/util/Map;

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

.method public static package()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map<",
            "Lfreemarker/ext/beans/else;",
            "Ljava/lang/ref/WeakReference<",
            "Lfreemarker/ext/beans/try;",
            ">;>;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lfreemarker/ext/beans/case;->this:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public extends()Lfreemarker/ext/beans/try;
    .locals 3

    .line 1
    sget-object v0, Lfreemarker/ext/beans/case;->this:Ljava/util/Map;

    sget-object v1, Lfreemarker/ext/beans/case;->break:Ljava/lang/ref/ReferenceQueue;

    .line 2
    invoke-static {}, Lfreemarker/ext/beans/case$do;->do()Lfreemarker/ext/beans/case$do;

    move-result-object v2

    .line 3
    invoke-static {p0, v0, v1, v2}, Lfreemarker/ext/beans/_BeansAPI;->for(Lfreemarker/ext/beans/else;Ljava/util/Map;Ljava/lang/ref/ReferenceQueue;Lfreemarker/ext/beans/_BeansAPI$_BeansWrapperSubclassFactory;)Lfreemarker/ext/beans/try;

    move-result-object v0

    return-object v0
.end method
