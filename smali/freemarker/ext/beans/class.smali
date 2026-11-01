.class Lfreemarker/ext/beans/class;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/beans/class$do;,
        Lfreemarker/ext/beans/class$if;
    }
.end annotation


# static fields
.field private static final import:Ljava/lang/String; = "Error initializing JRebel integration. JRebel integration disabled."

.field public static final native:Z

.field private static final public:Lfreemarker/ext/beans/ClassChangeNotifier;

.field private static final return:Ljava/lang/Object;

.field public static final static:Ljava/lang/Object;

.field public static final switch:Ljava/lang/Object;

.field private static final throw:Lfreemarker/log/if;

.field private static final while:Ljava/lang/String; = "org.zeroturnaround.javarebel.ClassEventListener"


# instance fields
.field private final break:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public final case:Z

.field private final catch:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final class:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final const:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public final do:I

.field private final else:Z

.field private final final:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final for:Lfreemarker/ext/beans/MethodAppearanceFineTuner;

.field private final goto:Z

.field public final if:Z

.field public final new:Lfreemarker/ext/beans/MethodSorter;

.field private super:I

.field private final this:Ljava/lang/Object;

.field public final try:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "Error initializing JRebel integration. JRebel integration disabled."

    const-string v1, "freemarker.beans"

    .line 1
    invoke-static {v1}, Lfreemarker/log/if;->break(Ljava/lang/String;)Lfreemarker/log/if;

    move-result-object v1

    sput-object v1, Lfreemarker/ext/beans/class;->throw:Lfreemarker/log/if;

    const-string v1, "freemarker.development"

    const-string v2, "false"

    .line 2
    invoke-static {v1, v2}, Lfreemarker/template/utility/const;->for(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lfreemarker/ext/beans/class;->native:Z

    :try_start_0
    const-string v1, "org.zeroturnaround.javarebel.ClassEventListener"

    .line 3
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    const/4 v2, 0x0

    .line 4
    :try_start_1
    instance-of v3, v1, Ljava/lang/ClassNotFoundException;

    if-nez v3, :cond_0

    .line 5
    sget-object v3, Lfreemarker/ext/beans/class;->throw:Lfreemarker/log/if;

    invoke-virtual {v3, v0, v1}, Lfreemarker/log/if;->else(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 6
    :try_start_2
    const-class v1, Lfreemarker/ext/beans/switch;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfreemarker/ext/beans/ClassChangeNotifier;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v2, v1

    goto :goto_1

    :catchall_2
    move-exception v1

    .line 7
    :try_start_3
    sget-object v3, Lfreemarker/ext/beans/class;->throw:Lfreemarker/log/if;

    invoke-virtual {v3, v0, v1}, Lfreemarker/log/if;->else(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 8
    :catchall_3
    :cond_1
    :goto_1
    sput-object v2, Lfreemarker/ext/beans/class;->public:Lfreemarker/ext/beans/ClassChangeNotifier;

    .line 9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lfreemarker/ext/beans/class;->return:Ljava/lang/Object;

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lfreemarker/ext/beans/class;->static:Ljava/lang/Object;

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lfreemarker/ext/beans/class;->switch:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lfreemarker/ext/beans/const;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v0}, Lfreemarker/ext/beans/class;-><init>(Lfreemarker/ext/beans/const;Ljava/lang/Object;ZZ)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/ext/beans/const;Ljava/lang/Object;ZZ)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lfreemarker/ext/beans/class;->break:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lfreemarker/ext/beans/class;->catch:Ljava/util/Set;

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lfreemarker/ext/beans/class;->class:Ljava/util/Set;

    .line 6
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lfreemarker/ext/beans/class;->const:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lfreemarker/ext/beans/class;->final:Ljava/lang/ref/ReferenceQueue;

    const-string v0, "sharedLock"

    .line 8
    invoke-static {v0, p2}, Landroid/support/v4/w41;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p1}, Lfreemarker/ext/beans/const;->new()I

    move-result v0

    iput v0, p0, Lfreemarker/ext/beans/class;->do:I

    .line 10
    invoke-virtual {p1}, Lfreemarker/ext/beans/const;->for()Z

    move-result v0

    iput-boolean v0, p0, Lfreemarker/ext/beans/class;->if:Z

    .line 11
    invoke-virtual {p1}, Lfreemarker/ext/beans/const;->case()Lfreemarker/ext/beans/MethodAppearanceFineTuner;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/ext/beans/class;->for:Lfreemarker/ext/beans/MethodAppearanceFineTuner;

    .line 12
    invoke-virtual {p1}, Lfreemarker/ext/beans/const;->else()Lfreemarker/ext/beans/MethodSorter;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/ext/beans/class;->new:Lfreemarker/ext/beans/MethodSorter;

    .line 13
    invoke-virtual {p1}, Lfreemarker/ext/beans/const;->goto()Z

    move-result v0

    iput-boolean v0, p0, Lfreemarker/ext/beans/class;->try:Z

    .line 14
    invoke-virtual {p1}, Lfreemarker/ext/beans/const;->this()Z

    move-result p1

    iput-boolean p1, p0, Lfreemarker/ext/beans/class;->case:Z

    .line 15
    iput-object p2, p0, Lfreemarker/ext/beans/class;->this:Ljava/lang/Object;

    .line 16
    iput-boolean p3, p0, Lfreemarker/ext/beans/class;->else:Z

    .line 17
    iput-boolean p4, p0, Lfreemarker/ext/beans/class;->goto:Z

    .line 18
    sget-object p1, Lfreemarker/ext/beans/class;->public:Lfreemarker/ext/beans/ClassChangeNotifier;

    if-eqz p1, :cond_0

    .line 19
    invoke-interface {p1, p0}, Lfreemarker/ext/beans/ClassChangeNotifier;->subscribe(Lfreemarker/ext/beans/class;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/class;->this:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lfreemarker/ext/beans/class;->const:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lfreemarker/ext/beans/class;->final:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, p1, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-direct {p0}, Lfreemarker/ext/beans/class;->c()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static break(Ljava/lang/Class;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Lfreemarker/ext/beans/class$do;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {p0, v0}, Lfreemarker/ext/beans/class;->catch(Ljava/lang/Class;Ljava/util/Map;)V

    return-object v0
.end method

.method private c()V
    .locals 4

    .line 1
    :goto_0
    iget-object v0, p0, Lfreemarker/ext/beans/class;->final:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Lfreemarker/ext/beans/class;->this:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Lfreemarker/ext/beans/class;->const:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_0

    .line 5
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 6
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    return-void
.end method

.method private static catch(Ljava/lang/Class;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Lfreemarker/ext/beans/class$do;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    .line 3
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 4
    aget-object v3, v0, v2

    .line 5
    new-instance v4, Lfreemarker/ext/beans/class$do;

    invoke-direct {v4, v3}, Lfreemarker/ext/beans/class$do;-><init>(Ljava/lang/reflect/Method;)V

    .line 6
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_0

    .line 7
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 8
    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_0
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 10
    sget-object v2, Lfreemarker/ext/beans/class;->throw:Lfreemarker/log/if;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not discover accessible methods of class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", attemping superclasses/interfaces."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-virtual {v2, v3, v0}, Lfreemarker/log/if;->private(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 14
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 15
    aget-object v2, v0, v1

    invoke-static {v2, p1}, Lfreemarker/ext/beans/class;->catch(Ljava/lang/Class;Ljava/util/Map;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 16
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 17
    invoke-static {p0, p1}, Lfreemarker/ext/beans/class;->catch(Ljava/lang/Class;Ljava/util/Map;)V

    :cond_4
    return-void
.end method

.method private class()V
    .locals 4

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/class;->this:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lfreemarker/ext/beans/class;->break:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 3
    iget-object v1, p0, Lfreemarker/ext/beans/class;->catch:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 4
    iget v1, p0, Lfreemarker/ext/beans/class;->super:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lfreemarker/ext/beans/class;->super:I

    .line 5
    iget-object v1, p0, Lfreemarker/ext/beans/class;->const:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7
    instance-of v3, v2, Lfreemarker/ext/beans/catch;

    if-eqz v3, :cond_1

    .line 8
    check-cast v2, Lfreemarker/ext/beans/catch;

    invoke-virtual {v2}, Lfreemarker/ext/beans/catch;->do()V

    goto :goto_0

    .line 9
    :cond_1
    instance-of v3, v2, Lfreemarker/ext/util/if;

    if-eqz v3, :cond_2

    .line 10
    check-cast v2, Lfreemarker/ext/util/if;

    invoke-virtual {v2}, Lfreemarker/ext/util/if;->do()V

    goto :goto_0

    .line 11
    :cond_2
    new-instance v1, Landroid/support/v4/mc;

    invoke-direct {v1}, Landroid/support/v4/mc;-><init>()V

    throw v1

    .line 12
    :cond_3
    invoke-direct {p0}, Lfreemarker/ext/beans/class;->c()V

    .line 13
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private d(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/beans/MethodDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/class;->new:Lfreemarker/ext/beans/MethodSorter;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lfreemarker/ext/beans/MethodSorter;->sortMethodDescriptors(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private default(Ljava/beans/BeanInfo;Ljava/lang/Class;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/beans/BeanInfo;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/beans/PropertyDescriptor;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/beans/BeanInfo;->getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 4
    :goto_0
    iget-boolean v0, p0, Lfreemarker/ext/beans/class;->try:Z

    if-eqz v0, :cond_f

    sget-object v0, Landroid/support/v4/ml2;->new:Lfreemarker/core/_Java8;

    if-nez v0, :cond_1

    goto/16 :goto_7

    .line 5
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_6

    aget-object v6, v0, v4

    .line 6
    sget-object v7, Landroid/support/v4/ml2;->new:Lfreemarker/core/_Java8;

    invoke-interface {v7, v6}, Lfreemarker/core/_Java8;->isDefaultMethod(Ljava/lang/reflect/Method;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v7, v8, :cond_5

    .line 7
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->isBridge()Z

    move-result v7

    if-nez v7, :cond_5

    .line 8
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 9
    array-length v8, v7

    if-eqz v8, :cond_2

    array-length v8, v7

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    aget-object v8, v7, v2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_5

    .line 10
    :cond_2
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    .line 11
    invoke-static {v8, v9}, Lfreemarker/ext/beans/j;->for(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    if-nez v5, :cond_3

    .line 12
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 13
    :cond_3
    array-length v7, v7

    if-nez v7, :cond_4

    .line 14
    invoke-direct {p0, v5, v8, v6}, Lfreemarker/ext/beans/class;->interface(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    goto :goto_2

    .line 15
    :cond_4
    new-instance v7, Lfreemarker/ext/beans/class$if;

    invoke-direct {v7, v3, v6}, Lfreemarker/ext/beans/class$if;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    invoke-direct {p0, v5, v8, v7}, Lfreemarker/ext/beans/class;->protected(Ljava/util/LinkedHashMap;Ljava/lang/String;Lfreemarker/ext/beans/class$if;)V

    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    if-nez v5, :cond_7

    return-object p1

    .line 16
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/beans/PropertyDescriptor;

    .line 17
    invoke-direct {p0, v5, v0}, Lfreemarker/ext/beans/class;->volatile(Ljava/util/LinkedHashMap;Ljava/beans/PropertyDescriptor;)V

    goto :goto_3

    .line 18
    :cond_8
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 20
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 21
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 22
    instance-of v4, v1, Ljava/beans/PropertyDescriptor;

    if-eqz v4, :cond_a

    .line 23
    check-cast v1, Ljava/beans/PropertyDescriptor;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 24
    :cond_a
    instance-of v4, v1, Ljava/lang/reflect/Method;

    if-eqz v4, :cond_b

    .line 25
    check-cast v1, Ljava/lang/reflect/Method;

    move-object v6, v1

    move-object v8, v3

    goto :goto_5

    .line 26
    :cond_b
    instance-of v4, v1, Lfreemarker/ext/beans/class$if;

    if-eqz v4, :cond_e

    .line 27
    check-cast v1, Lfreemarker/ext/beans/class$if;

    .line 28
    invoke-static {v1}, Lfreemarker/ext/beans/class$if;->do(Lfreemarker/ext/beans/class$if;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 29
    invoke-static {v1}, Lfreemarker/ext/beans/class$if;->if(Lfreemarker/ext/beans/class$if;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v4, :cond_c

    if-eqz v1, :cond_c

    .line 30
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v6

    if-eq v5, v6, :cond_c

    move-object v1, v3

    :cond_c
    move-object v8, v1

    move-object v6, v4

    :goto_5
    if-eqz v8, :cond_d

    .line 31
    :try_start_0
    new-instance v1, Ljava/beans/IndexedPropertyDescriptor;

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, v1

    move-object v5, v2

    invoke-direct/range {v4 .. v9}, Ljava/beans/IndexedPropertyDescriptor;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    goto :goto_6

    :cond_d
    new-instance v1, Ljava/beans/PropertyDescriptor;

    invoke-direct {v1, v2, v6, v3}, Ljava/beans/PropertyDescriptor;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    :goto_6
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/beans/IntrospectionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    .line 32
    sget-object v4, Lfreemarker/ext/beans/class;->throw:Lfreemarker/log/if;

    invoke-virtual {v4}, Lfreemarker/log/if;->public()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 33
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed creating property descriptor for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " property "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2, v1}, Lfreemarker/log/if;->private(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 34
    :cond_e
    new-instance p1, Landroid/support/v4/mc;

    invoke-direct {p1}, Landroid/support/v4/mc;-><init>()V

    throw p1

    :cond_f
    :goto_7
    return-object p1
.end method

.method private do(Ljava/util/Map;Ljava/lang/Class;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Lfreemarker/ext/beans/class$do;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/beans/IntrospectionException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/beans/Introspector;->getBeanInfo(Ljava/lang/Class;)Ljava/beans/BeanInfo;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0, p2}, Lfreemarker/ext/beans/class;->default(Ljava/beans/BeanInfo;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    .line 4
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/beans/PropertyDescriptor;

    .line 5
    invoke-direct {p0, p1, v3, p2, p3}, Lfreemarker/ext/beans/class;->try(Ljava/util/Map;Ljava/beans/PropertyDescriptor;Ljava/lang/Class;Ljava/util/Map;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 6
    :cond_0
    iget v1, p0, Lfreemarker/ext/beans/class;->do:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_b

    .line 7
    new-instance v1, Lfreemarker/ext/beans/try$case;

    invoke-direct {v1}, Lfreemarker/ext/beans/try$case;-><init>()V

    .line 8
    invoke-direct {p0, v0, p2}, Lfreemarker/ext/beans/class;->switch(Ljava/beans/BeanInfo;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 9
    invoke-direct {p0, v0}, Lfreemarker/ext/beans/class;->d(Ljava/util/List;)V

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    :goto_1
    if-ltz v2, :cond_b

    .line 11
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/beans/MethodDescriptor;

    invoke-virtual {v6}, Ljava/beans/MethodDescriptor;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-static {v6, p3}, Lfreemarker/ext/beans/class;->return(Ljava/lang/reflect/Method;Ljava/util/Map;)Ljava/lang/reflect/Method;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 12
    invoke-virtual {p0, v6}, Lfreemarker/ext/beans/class;->private(Ljava/lang/reflect/Method;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 13
    invoke-virtual {v1, v6}, Lfreemarker/ext/beans/try$case;->try(Ljava/lang/reflect/Method;)V

    .line 14
    iget-object v7, p0, Lfreemarker/ext/beans/class;->for:Lfreemarker/ext/beans/MethodAppearanceFineTuner;

    if-eqz v7, :cond_2

    if-nez v4, :cond_1

    .line 15
    new-instance v4, Lfreemarker/ext/beans/try$else;

    invoke-direct {v4}, Lfreemarker/ext/beans/try$else;-><init>()V

    .line 16
    :cond_1
    invoke-virtual {v4, p2}, Lfreemarker/ext/beans/try$else;->for(Ljava/lang/Class;)V

    .line 17
    invoke-virtual {v4, v6}, Lfreemarker/ext/beans/try$else;->new(Ljava/lang/reflect/Method;)V

    .line 18
    iget-object v7, p0, Lfreemarker/ext/beans/class;->for:Lfreemarker/ext/beans/MethodAppearanceFineTuner;

    invoke-interface {v7, v4, v1}, Lfreemarker/ext/beans/MethodAppearanceFineTuner;->process(Lfreemarker/ext/beans/try$else;Lfreemarker/ext/beans/try$case;)V

    .line 19
    :cond_2
    invoke-virtual {v1}, Lfreemarker/ext/beans/try$case;->do()Ljava/beans/PropertyDescriptor;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 20
    invoke-virtual {v1}, Lfreemarker/ext/beans/try$case;->new()Z

    move-result v8

    if-nez v8, :cond_3

    .line 21
    invoke-virtual {v7}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lfreemarker/ext/beans/public;

    if-nez v8, :cond_4

    .line 22
    :cond_3
    invoke-direct {p0, p1, v7, p2, p3}, Lfreemarker/ext/beans/class;->try(Ljava/util/Map;Ljava/beans/PropertyDescriptor;Ljava/lang/Class;Ljava/util/Map;)V

    .line 23
    :cond_4
    invoke-virtual {v1}, Lfreemarker/ext/beans/try$case;->if()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 24
    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 25
    instance-of v9, v8, Ljava/lang/reflect/Method;

    if-eqz v9, :cond_6

    .line 26
    new-instance v9, Lfreemarker/ext/beans/continue;

    iget-boolean v10, p0, Lfreemarker/ext/beans/class;->case:Z

    invoke-direct {v9, v10}, Lfreemarker/ext/beans/continue;-><init>(Z)V

    .line 27
    move-object v10, v8

    check-cast v10, Ljava/lang/reflect/Method;

    invoke-virtual {v9, v10}, Lfreemarker/ext/beans/continue;->case(Ljava/lang/reflect/Method;)V

    .line 28
    invoke-virtual {v9, v6}, Lfreemarker/ext/beans/continue;->case(Ljava/lang/reflect/Method;)V

    .line 29
    invoke-interface {p1, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v5, :cond_5

    .line 30
    invoke-virtual {v5, v8}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 31
    :cond_5
    invoke-static {p1}, Lfreemarker/ext/beans/class;->super(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 32
    :cond_6
    instance-of v9, v8, Lfreemarker/ext/beans/continue;

    if-eqz v9, :cond_7

    .line 33
    check-cast v8, Lfreemarker/ext/beans/continue;

    invoke-virtual {v8, v6}, Lfreemarker/ext/beans/continue;->case(Ljava/lang/reflect/Method;)V

    goto :goto_2

    .line 34
    :cond_7
    invoke-virtual {v1}, Lfreemarker/ext/beans/try$case;->for()Z

    move-result v9

    if-nez v9, :cond_8

    instance-of v8, v8, Lfreemarker/ext/beans/public;

    if-nez v8, :cond_a

    .line 35
    :cond_8
    invoke-interface {p1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static {p1}, Lfreemarker/ext/beans/class;->super(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    .line 37
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    .line 38
    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Class;

    if-eqz v7, :cond_a

    if-nez v5, :cond_9

    .line 39
    new-instance v5, Ljava/util/IdentityHashMap;

    invoke-direct {v5}, Ljava/util/IdentityHashMap;-><init>()V

    .line 40
    :cond_9
    invoke-virtual {v5, v6, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_1

    :cond_b
    return-void
.end method

.method private else(Ljava/util/List;Ljava/lang/reflect/Method;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Ljava/lang/reflect/Method;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p2

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 3
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public static final(Ljava/util/Map;Ljava/lang/reflect/Method;)[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Method;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lfreemarker/ext/beans/class;->return:Ljava/lang/Object;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Class;

    return-object p0
.end method

.method private for(Ljava/util/Map;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object p2

    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 3
    aget-object v1, p2, v0

    .line 4
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private if(Ljava/util/Map;Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 3
    aget-object v0, v0, v2

    .line 4
    sget-object v1, Lfreemarker/ext/beans/class;->static:Ljava/lang/Object;

    new-instance v2, Lfreemarker/ext/beans/b;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lfreemarker/ext/beans/b;-><init>(Ljava/lang/reflect/Member;[Ljava/lang/Class;)V

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 5
    :cond_0
    array-length v1, v0

    if-le v1, v3, :cond_2

    .line 6
    new-instance v1, Lfreemarker/ext/beans/continue;

    iget-boolean v3, p0, Lfreemarker/ext/beans/class;->case:Z

    invoke-direct {v1, v3}, Lfreemarker/ext/beans/continue;-><init>(Z)V

    .line 7
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 8
    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Lfreemarker/ext/beans/continue;->new(Ljava/lang/reflect/Constructor;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_1
    sget-object v0, Lfreemarker/ext/beans/class;->static:Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 10
    sget-object v0, Lfreemarker/ext/beans/class;->throw:Lfreemarker/log/if;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t discover constructors for class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lfreemarker/log/if;->private(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private implements(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/Object;Lfreemarker/ext/beans/class$if;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lfreemarker/ext/beans/class$if;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p3}, Lfreemarker/ext/beans/class$if;->for(Ljava/lang/Object;)Lfreemarker/ext/beans/class$if;

    move-result-object p3

    .line 2
    invoke-static {p3, p4}, Lfreemarker/ext/beans/class$if;->new(Lfreemarker/ext/beans/class$if;Lfreemarker/ext/beans/class$if;)Lfreemarker/ext/beans/class$if;

    move-result-object p3

    .line 3
    invoke-virtual {p3, p4}, Lfreemarker/ext/beans/class$if;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_0

    .line 4
    invoke-virtual {p1, p2, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private interface(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/reflect/Method;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lfreemarker/ext/beans/class$if;

    const/4 v2, 0x0

    invoke-direct {v1, p3, v2}, Lfreemarker/ext/beans/class$if;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lfreemarker/ext/beans/class;->implements(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/Object;Lfreemarker/ext/beans/class$if;)V

    :cond_0
    return-void
.end method

.method private static native(Lfreemarker/ext/beans/class$do;Ljava/util/Map;)Ljava/lang/reflect/Method;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfreemarker/ext/beans/class$do;",
            "Ljava/util/Map<",
            "Lfreemarker/ext/beans/class$do;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    .line 2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Method;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private new(Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Lfreemarker/ext/beans/class$do;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lfreemarker/ext/beans/class$do;->do()Lfreemarker/ext/beans/class$do;

    move-result-object v0

    .line 2
    invoke-static {v0, p2}, Lfreemarker/ext/beans/class;->native(Lfreemarker/ext/beans/class$do;Ljava/util/Map;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lfreemarker/ext/beans/class$do;->if()Lfreemarker/ext/beans/class$do;

    move-result-object v0

    .line 4
    invoke-static {v0, p2}, Lfreemarker/ext/beans/class;->native(Lfreemarker/ext/beans/class$do;Ljava/util/Map;)Ljava/lang/reflect/Method;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 5
    sget-object p2, Lfreemarker/ext/beans/class;->switch:Ljava/lang/Object;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private protected(Ljava/util/LinkedHashMap;Ljava/lang/String;Lfreemarker/ext/beans/class$if;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lfreemarker/ext/beans/class$if;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2, v0, p3}, Lfreemarker/ext/beans/class;->implements(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/Object;Lfreemarker/ext/beans/class$if;)V

    :cond_0
    return-void
.end method

.method private static return(Ljava/lang/reflect/Method;Ljava/util/Map;)Ljava/lang/reflect/Method;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/Map<",
            "Lfreemarker/ext/beans/class$do;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    new-instance v1, Lfreemarker/ext/beans/class$do;

    invoke-direct {v1, p0}, Lfreemarker/ext/beans/class$do;-><init>(Ljava/lang/reflect/Method;)V

    .line 2
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_1

    return-object v0

    .line 3
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 4
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_2

    return-object v1

    :cond_3
    return-object v0
.end method

.method private static super(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lfreemarker/ext/beans/class;->return:Ljava/lang/Object;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method private switch(Ljava/beans/BeanInfo;Ljava/lang/Class;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/beans/BeanInfo;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/beans/MethodDescriptor;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/beans/BeanInfo;->getMethodDescriptors()[Ljava/beans/MethodDescriptor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 4
    :goto_0
    iget-boolean v0, p0, Lfreemarker/ext/beans/class;->try:Z

    if-eqz v0, :cond_b

    sget-object v0, Landroid/support/v4/ml2;->new:Lfreemarker/core/_Java8;

    if-nez v0, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p2

    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_5

    aget-object v4, p2, v3

    .line 6
    sget-object v5, Landroid/support/v4/ml2;->new:Lfreemarker/core/_Java8;

    invoke-interface {v5, v4}, Lfreemarker/core/_Java8;->isDefaultMethod(Ljava/lang/reflect/Method;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->isBridge()Z

    move-result v5

    if-nez v5, :cond_4

    if-nez v0, :cond_2

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    :cond_2
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_3

    .line 9
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_3
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    if-nez v0, :cond_6

    return-object p1

    .line 12
    :cond_6
    new-instance p2, Ljava/util/ArrayList;

    .line 13
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/beans/MethodDescriptor;

    .line 15
    invoke-virtual {v1}, Ljava/beans/MethodDescriptor;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    .line 16
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 17
    invoke-direct {p0, v3, v2}, Lfreemarker/ext/beans/class;->else(Ljava/util/List;Ljava/lang/reflect/Method;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 18
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 19
    :cond_8
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 20
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 21
    new-instance v2, Ljava/beans/MethodDescriptor;

    invoke-direct {v2, v1}, Ljava/beans/MethodDescriptor;-><init>(Ljava/lang/reflect/Method;)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    return-object p2

    :cond_b
    :goto_4
    return-object p1
.end method

.method private this(Ljava/lang/Class;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-boolean v1, p0, Lfreemarker/ext/beans/class;->if:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0, v0, p1}, Lfreemarker/ext/beans/class;->for(Ljava/util/Map;Ljava/lang/Class;)V

    .line 4
    :cond_0
    invoke-static {p1}, Lfreemarker/ext/beans/class;->break(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v1

    .line 5
    invoke-direct {p0, v0, v1}, Lfreemarker/ext/beans/class;->new(Ljava/util/Map;Ljava/util/Map;)V

    .line 6
    iget v2, p0, Lfreemarker/ext/beans/class;->do:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 7
    :try_start_0
    invoke-direct {p0, v0, p1, v1}, Lfreemarker/ext/beans/class;->do(Ljava/util/Map;Ljava/lang/Class;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/beans/IntrospectionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 8
    sget-object v2, Lfreemarker/ext/beans/class;->throw:Lfreemarker/log/if;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t properly perform introspection for class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lfreemarker/log/if;->private(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 10
    :cond_1
    :goto_0
    invoke-direct {p0, v0, p1}, Lfreemarker/ext/beans/class;->if(Ljava/util/Map;Ljava/lang/Class;)V

    .line 11
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_2

    return-object v0

    .line 12
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_3

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 14
    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private transient(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lfreemarker/ext/beans/class;->throw:Lfreemarker/log/if;

    invoke-virtual {v0}, Lfreemarker/log/if;->native()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detected multiple classes with the same name, \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\". Assuming it was a class-reloading. Clearing class introspection caches to release old data."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lfreemarker/log/if;->const(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-direct {p0}, Lfreemarker/ext/beans/class;->class()V

    return-void
.end method

.method private try(Ljava/util/Map;Ljava/beans/PropertyDescriptor;Ljava/lang/Class;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/beans/PropertyDescriptor;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Lfreemarker/ext/beans/class$do;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object p3

    invoke-static {p3, p4}, Lfreemarker/ext/beans/class;->return(Ljava/lang/reflect/Method;Ljava/util/Map;)Ljava/lang/reflect/Method;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p0, p3}, Lfreemarker/ext/beans/class;->private(Ljava/lang/reflect/Method;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p3, v0

    .line 3
    :cond_0
    instance-of v1, p2, Ljava/beans/IndexedPropertyDescriptor;

    if-eqz v1, :cond_2

    .line 4
    move-object v1, p2

    check-cast v1, Ljava/beans/IndexedPropertyDescriptor;

    .line 5
    invoke-virtual {v1}, Ljava/beans/IndexedPropertyDescriptor;->getIndexedReadMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 6
    invoke-static {v1, p4}, Lfreemarker/ext/beans/class;->return(Ljava/lang/reflect/Method;Ljava/util/Map;)Ljava/lang/reflect/Method;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 7
    invoke-virtual {p0, p4}, Lfreemarker/ext/beans/class;->private(Ljava/lang/reflect/Method;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p4

    :goto_0
    if-eqz v0, :cond_2

    .line 8
    invoke-static {p1}, Lfreemarker/ext/beans/class;->super(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p4

    .line 9
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 10
    invoke-interface {p4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-nez p3, :cond_3

    if-eqz v0, :cond_4

    .line 11
    :cond_3
    invoke-virtual {p2}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object p2

    new-instance p4, Lfreemarker/ext/beans/public;

    invoke-direct {p4, p3, v0}, Lfreemarker/ext/beans/public;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method private volatile(Ljava/util/LinkedHashMap;Ljava/beans/PropertyDescriptor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/beans/PropertyDescriptor;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1, v0, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v2, Lfreemarker/ext/beans/class$if;

    invoke-direct {v2, p2}, Lfreemarker/ext/beans/class$if;-><init>(Ljava/beans/PropertyDescriptor;)V

    .line 4
    invoke-direct {p0, p1, v0, v1, v2}, Lfreemarker/ext/beans/class;->implements(Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/Object;Lfreemarker/ext/beans/class$if;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/ext/beans/class;->goto:Z

    return v0
.end method

.method public b(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/class;->this:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lfreemarker/ext/beans/class;->break:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lfreemarker/ext/beans/class;->catch:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    iget v1, p0, Lfreemarker/ext/beans/class;->super:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lfreemarker/ext/beans/class;->super:I

    .line 5
    iget-object v1, p0, Lfreemarker/ext/beans/class;->const:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7
    instance-of v3, v2, Lfreemarker/ext/beans/catch;

    if-eqz v3, :cond_1

    .line 8
    check-cast v2, Lfreemarker/ext/beans/catch;

    invoke-virtual {v2, p1}, Lfreemarker/ext/beans/catch;->try(Ljava/lang/Class;)V

    goto :goto_0

    .line 9
    :cond_1
    instance-of v3, v2, Lfreemarker/ext/util/if;

    if-eqz v3, :cond_2

    .line 10
    check-cast v2, Lfreemarker/ext/util/if;

    invoke-virtual {v2}, Lfreemarker/ext/util/if;->do()V

    goto :goto_0

    .line 11
    :cond_2
    new-instance p1, Landroid/support/v4/mc;

    invoke-direct {p1}, Landroid/support/v4/mc;-><init>()V

    throw p1

    .line 12
    :cond_3
    invoke-direct {p0}, Lfreemarker/ext/beans/class;->c()V

    .line 13
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public case()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lfreemarker/ext/beans/class;->public()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lfreemarker/ext/beans/class;->class()V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "It\'s not allowed to clear the whole cache in a read-only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "instance. Use removeFromClassIntrospectionCache(String prefix) instead."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public const(Ljava/lang/Class;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/class;->break:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lfreemarker/ext/beans/class;->this:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lfreemarker/ext/beans/class;->break:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 4
    monitor-exit v0

    return-object v1

    .line 5
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lfreemarker/ext/beans/class;->catch:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    invoke-direct {p0, v2}, Lfreemarker/ext/beans/class;->transient(Ljava/lang/String;)V

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    .line 8
    iget-object v3, p0, Lfreemarker/ext/beans/class;->class:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v3, :cond_3

    .line 9
    :try_start_1
    iget-object v1, p0, Lfreemarker/ext/beans/class;->this:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 10
    iget-object v1, p0, Lfreemarker/ext/beans/class;->break:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class inrospection data lookup aborded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    if-eqz v1, :cond_4

    .line 12
    monitor-exit v0

    return-object v1

    .line 13
    :cond_4
    iget-object v1, p0, Lfreemarker/ext/beans/class;->class:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 15
    :try_start_3
    invoke-direct {p0, p1}, Lfreemarker/ext/beans/class;->this(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    .line 16
    iget-object v1, p0, Lfreemarker/ext/beans/class;->this:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 17
    :try_start_4
    iget-object v3, p0, Lfreemarker/ext/beans/class;->break:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v3, p0, Lfreemarker/ext/beans/class;->catch:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 19
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 20
    iget-object v2, p0, Lfreemarker/ext/beans/class;->this:Ljava/lang/Object;

    monitor-enter v2

    .line 21
    :try_start_5
    iget-object v1, p0, Lfreemarker/ext/beans/class;->class:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 22
    iget-object p1, p0, Lfreemarker/ext/beans/class;->this:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 23
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1

    :catchall_1
    move-exception v0

    .line 24
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    .line 25
    iget-object v1, p0, Lfreemarker/ext/beans/class;->this:Ljava/lang/Object;

    monitor-enter v1

    .line 26
    :try_start_8
    iget-object v2, p0, Lfreemarker/ext/beans/class;->class:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 27
    iget-object p1, p0, Lfreemarker/ext/beans/class;->this:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 28
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 29
    throw v0

    :catchall_3
    move-exception p1

    .line 30
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw p1

    :catchall_4
    move-exception p1

    .line 31
    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public continue(Ljava/lang/Class;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/ext/beans/class;->const(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    .line 3
    sget-object v1, Lfreemarker/ext/beans/class;->static:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 4
    :cond_0
    sget-object v1, Lfreemarker/ext/beans/class;->switch:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 5
    :cond_1
    sget-object v1, Lfreemarker/ext/beans/class;->return:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    return v0
.end method

.method public e(Lfreemarker/ext/beans/catch;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/ext/beans/class;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public extends()[Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/class;->this:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lfreemarker/ext/beans/class;->const:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public f(Lfreemarker/ext/util/if;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lfreemarker/ext/beans/class;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public finally()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/class;->this:Ljava/lang/Object;

    return-object v0
.end method

.method public g(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/class;->this:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lfreemarker/ext/beans/class;->const:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 5
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public goto()Lfreemarker/ext/beans/const;
    .locals 1

    .line 1
    new-instance v0, Lfreemarker/ext/beans/const;

    invoke-direct {v0, p0}, Lfreemarker/ext/beans/const;-><init>(Lfreemarker/ext/beans/class;)V

    return-object v0
.end method

.method public import()I
    .locals 1

    .line 1
    iget v0, p0, Lfreemarker/ext/beans/class;->do:I

    return v0
.end method

.method public instanceof(Lfreemarker/ext/beans/catch;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/ext/beans/class;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public package()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/ext/beans/class;->try:Z

    return v0
.end method

.method public private(Ljava/lang/reflect/Method;)Z
    .locals 2

    .line 1
    iget v0, p0, Lfreemarker/ext/beans/class;->do:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    invoke-static {p1}, Lfreemarker/ext/beans/h;->for(Ljava/lang/reflect/Method;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public public()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/ext/beans/class;->else:Z

    return v0
.end method

.method public static()Lfreemarker/ext/beans/MethodAppearanceFineTuner;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/class;->for:Lfreemarker/ext/beans/MethodAppearanceFineTuner;

    return-object v0
.end method

.method public strictfp(Ljava/lang/Class;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Lfreemarker/ext/beans/class;->const(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2
    sget-object p1, Lfreemarker/ext/beans/class;->static:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3
    sget-object p1, Lfreemarker/ext/beans/class;->switch:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    sget-object p1, Lfreemarker/ext/beans/class;->return:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public synchronized(Lfreemarker/ext/util/if;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfreemarker/ext/beans/class;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public throw()I
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/class;->this:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lfreemarker/ext/beans/class;->super:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public throws()Lfreemarker/ext/beans/MethodSorter;
    .locals 1

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/class;->new:Lfreemarker/ext/beans/MethodSorter;

    return-object v0
.end method

.method public while()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfreemarker/ext/beans/class;->if:Z

    return v0
.end method
