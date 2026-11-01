.class public Lcom/luck/picture/lib/rxbus2/do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/luck/picture/lib/rxbus2/do$try;
    }
.end annotation


# static fields
.field private static volatile case:Lcom/luck/picture/lib/rxbus2/do; = null

.field public static final try:Ljava/lang/String; = "RXBUS_LOG"


# instance fields
.field private do:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/util/List<",
            "Lio/reactivex/disposables/Disposable;",
            ">;>;"
        }
    .end annotation
.end field

.field private for:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/util/List<",
            "Landroid/support/v4/b32;",
            ">;>;"
        }
    .end annotation
.end field

.field private if:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;>;"
        }
    .end annotation
.end field

.field private final new:Lio/reactivex/subjects/goto;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/goto<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/rxbus2/do;->do:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/rxbus2/do;->if:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/rxbus2/do;->for:Ljava/util/Map;

    .line 5
    invoke-static {}, Lio/reactivex/subjects/try;->else()Lio/reactivex/subjects/try;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/subjects/goto;->try()Lio/reactivex/subjects/goto;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/rxbus2/do;->new:Lio/reactivex/subjects/goto;

    return-void
.end method

.method private break(Lio/reactivex/for;Landroid/support/v4/b32;)Lio/reactivex/for;
    .locals 2

    .line 1
    sget-object v0, Lcom/luck/picture/lib/rxbus2/do$new;->do:[I

    iget-object v1, p2, Landroid/support/v4/b32;->if:Lcom/luck/picture/lib/rxbus2/new;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lio/reactivex/schedulers/do;->this()Lio/reactivex/try;

    move-result-object p2

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown thread mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroid/support/v4/b32;->if:Lcom/luck/picture/lib/rxbus2/new;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    invoke-static {}, Lio/reactivex/schedulers/do;->try()Lio/reactivex/try;

    move-result-object p2

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {}, Lio/reactivex/android/schedulers/do;->for()Lio/reactivex/try;

    move-result-object p2

    .line 6
    :goto_0
    invoke-virtual {p1, p2}, Lio/reactivex/for;->t3(Lio/reactivex/try;)Lio/reactivex/for;

    move-result-object p1

    return-object p1
.end method

.method private case(Landroid/support/v4/b32;Ljava/lang/Object;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/luck/picture/lib/rxbus2/do;->for:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/b32;

    .line 5
    iget-object v2, v1, Landroid/support/v4/b32;->do:Ljava/lang/reflect/Method;

    const-class v3, Lcom/luck/picture/lib/rxbus2/for;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/luck/picture/lib/rxbus2/for;

    .line 6
    invoke-interface {v2}, Lcom/luck/picture/lib/rxbus2/for;->code()I

    move-result v2

    .line 7
    iget v3, p1, Landroid/support/v4/b32;->try:I

    if-ne v2, v3, :cond_0

    iget-object v2, p1, Landroid/support/v4/b32;->new:Ljava/lang/Object;

    iget-object v3, v1, Landroid/support/v4/b32;->new:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/support/v4/b32;->do:Ljava/lang/reflect/Method;

    iget-object v3, v1, Landroid/support/v4/b32;->do:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {v1, p2}, Landroid/support/v4/b32;->do(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic do(Lcom/luck/picture/lib/rxbus2/do;Landroid/support/v4/b32;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/rxbus2/do;->case(Landroid/support/v4/b32;Ljava/lang/Object;)V

    return-void
.end method

.method public static else()Lcom/luck/picture/lib/rxbus2/do;
    .locals 3

    .line 1
    sget-object v0, Lcom/luck/picture/lib/rxbus2/do;->case:Lcom/luck/picture/lib/rxbus2/do;

    .line 2
    sget-object v1, Lcom/luck/picture/lib/rxbus2/do;->case:Lcom/luck/picture/lib/rxbus2/do;

    if-nez v1, :cond_1

    .line 3
    const-class v1, Lcom/luck/picture/lib/rxbus2/do;

    monitor-enter v1

    .line 4
    :try_start_0
    sget-object v0, Lcom/luck/picture/lib/rxbus2/do;->case:Lcom/luck/picture/lib/rxbus2/do;

    .line 5
    sget-object v2, Lcom/luck/picture/lib/rxbus2/do;->case:Lcom/luck/picture/lib/rxbus2/do;

    if-nez v2, :cond_0

    .line 6
    new-instance v0, Lcom/luck/picture/lib/rxbus2/do;

    invoke-direct {v0}, Lcom/luck/picture/lib/rxbus2/do;-><init>()V

    .line 7
    sput-object v0, Lcom/luck/picture/lib/rxbus2/do;->case:Lcom/luck/picture/lib/rxbus2/do;

    .line 8
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

.method private final(ILjava/lang/Class;)Lio/reactivex/for;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/rxbus2/do;->new:Lio/reactivex/subjects/goto;

    sget-object v1, Lio/reactivex/if;->BUFFER:Lio/reactivex/if;

    invoke-virtual {v0, v1}, Lio/reactivex/new;->toFlowable(Lio/reactivex/if;)Lio/reactivex/for;

    move-result-object v0

    const-class v1, Lcom/luck/picture/lib/rxbus2/do$try;

    invoke-virtual {v0, v1}, Lio/reactivex/for;->w3(Ljava/lang/Class;)Lio/reactivex/for;

    move-result-object v0

    new-instance v1, Lcom/luck/picture/lib/rxbus2/do$if;

    invoke-direct {v1, p0, p1, p2}, Lcom/luck/picture/lib/rxbus2/do$if;-><init>(Lcom/luck/picture/lib/rxbus2/do;ILjava/lang/Class;)V

    .line 2
    invoke-virtual {v0, v1}, Lio/reactivex/for;->v1(Lio/reactivex/functions/Predicate;)Lio/reactivex/for;

    move-result-object p1

    new-instance v0, Lcom/luck/picture/lib/rxbus2/do$do;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/rxbus2/do$do;-><init>(Lcom/luck/picture/lib/rxbus2/do;)V

    .line 3
    invoke-virtual {p1, v0}, Lio/reactivex/for;->S2(Lio/reactivex/functions/Function;)Lio/reactivex/for;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p2}, Lio/reactivex/for;->j(Ljava/lang/Class;)Lio/reactivex/for;

    move-result-object p1

    return-object p1
.end method

.method private for(Landroid/support/v4/b32;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/support/v4/b32;->try:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p1, Landroid/support/v4/b32;->for:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/rxbus2/do;->super(Ljava/lang/Class;)Lio/reactivex/for;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p1, Landroid/support/v4/b32;->for:Ljava/lang/Class;

    invoke-direct {p0, v0, v1}, Lcom/luck/picture/lib/rxbus2/do;->final(ILjava/lang/Class;)Lio/reactivex/for;

    move-result-object v0

    .line 4
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/luck/picture/lib/rxbus2/do;->break(Lio/reactivex/for;Landroid/support/v4/b32;)Lio/reactivex/for;

    move-result-object v0

    new-instance v1, Lcom/luck/picture/lib/rxbus2/do$for;

    invoke-direct {v1, p0, p1}, Lcom/luck/picture/lib/rxbus2/do$for;-><init>(Lcom/luck/picture/lib/rxbus2/do;Landroid/support/v4/b32;)V

    .line 5
    invoke-virtual {v0, v1}, Lio/reactivex/for;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 6
    iget-object p1, p1, Landroid/support/v4/b32;->new:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/luck/picture/lib/rxbus2/do;->try(Ljava/lang/Class;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method private if(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/rxbus2/do;->if:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/luck/picture/lib/rxbus2/do;->if:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private new(Ljava/lang/Class;Landroid/support/v4/b32;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/rxbus2/do;->for:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/luck/picture/lib/rxbus2/do;->for:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private throw(Ljava/lang/Class;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/rxbus2/do;->do:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 3
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 7
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private try(Ljava/lang/Class;Lio/reactivex/disposables/Disposable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/rxbus2/do;->do:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/luck/picture/lib/rxbus2/do;->do:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private while(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/rxbus2/do;->for:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_1

    .line 2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 3
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/b32;

    .line 5
    iget-object v0, v0, Landroid/support/v4/b32;->new:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public catch(Ljava/lang/Object;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v6, v0, v3

    .line 4
    const-class v4, Lcom/luck/picture/lib/rxbus2/for;

    invoke-virtual {v6, v4}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 6
    array-length v5, v4

    const/4 v7, 0x1

    if-ne v5, v7, :cond_0

    .line 7
    aget-object v10, v4, v2

    .line 8
    invoke-direct {p0, p1, v10}, Lcom/luck/picture/lib/rxbus2/do;->if(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 9
    const-class v4, Lcom/luck/picture/lib/rxbus2/for;

    invoke-virtual {v6, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/luck/picture/lib/rxbus2/for;

    .line 10
    invoke-interface {v4}, Lcom/luck/picture/lib/rxbus2/for;->code()I

    move-result v8

    .line 11
    invoke-interface {v4}, Lcom/luck/picture/lib/rxbus2/for;->threadMode()Lcom/luck/picture/lib/rxbus2/new;

    move-result-object v9

    .line 12
    new-instance v11, Landroid/support/v4/b32;

    move-object v4, v11

    move-object v5, p1

    move-object v7, v10

    invoke-direct/range {v4 .. v9}, Landroid/support/v4/b32;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Class;ILcom/luck/picture/lib/rxbus2/new;)V

    .line 13
    invoke-direct {p0, v10, v11}, Lcom/luck/picture/lib/rxbus2/do;->new(Ljava/lang/Class;Landroid/support/v4/b32;)V

    .line 14
    invoke-direct {p0, v11}, Lcom/luck/picture/lib/rxbus2/do;->for(Landroid/support/v4/b32;)V

    goto :goto_1

    :cond_0
    if-eqz v4, :cond_1

    .line 15
    array-length v4, v4

    if-nez v4, :cond_2

    .line 16
    :cond_1
    const-class v10, Landroid/support/v4/td;

    .line 17
    invoke-direct {p0, p1, v10}, Lcom/luck/picture/lib/rxbus2/do;->if(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 18
    const-class v4, Lcom/luck/picture/lib/rxbus2/for;

    invoke-virtual {v6, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/luck/picture/lib/rxbus2/for;

    .line 19
    invoke-interface {v4}, Lcom/luck/picture/lib/rxbus2/for;->code()I

    move-result v8

    .line 20
    invoke-interface {v4}, Lcom/luck/picture/lib/rxbus2/for;->threadMode()Lcom/luck/picture/lib/rxbus2/new;

    move-result-object v9

    .line 21
    new-instance v11, Landroid/support/v4/b32;

    move-object v4, v11

    move-object v5, p1

    move-object v7, v10

    invoke-direct/range {v4 .. v9}, Landroid/support/v4/b32;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Class;ILcom/luck/picture/lib/rxbus2/new;)V

    .line 22
    invoke-direct {p0, v10, v11}, Lcom/luck/picture/lib/rxbus2/do;->new(Ljava/lang/Class;Landroid/support/v4/b32;)V

    .line 23
    invoke-direct {p0, v11}, Lcom/luck/picture/lib/rxbus2/do;->for(Landroid/support/v4/b32;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public class(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/rxbus2/do;->new:Lio/reactivex/subjects/goto;

    new-instance v1, Lcom/luck/picture/lib/rxbus2/do$try;

    new-instance v2, Landroid/support/v4/td;

    invoke-direct {v2}, Landroid/support/v4/td;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/luck/picture/lib/rxbus2/do$try;-><init>(Lcom/luck/picture/lib/rxbus2/do;ILjava/lang/Object;Lcom/luck/picture/lib/rxbus2/do$do;)V

    invoke-interface {v0, v1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public const(ILjava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/rxbus2/do;->new:Lio/reactivex/subjects/goto;

    new-instance v1, Lcom/luck/picture/lib/rxbus2/do$try;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/luck/picture/lib/rxbus2/do$try;-><init>(Lcom/luck/picture/lib/rxbus2/do;ILjava/lang/Object;Lcom/luck/picture/lib/rxbus2/do$do;)V

    invoke-interface {v0, v1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized goto(Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/luck/picture/lib/rxbus2/do;->if:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public import(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/rxbus2/do;->if:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/luck/picture/lib/rxbus2/do;->throw(Ljava/lang/Class;)V

    .line 4
    invoke-direct {p0, p1, v1}, Lcom/luck/picture/lib/rxbus2/do;->while(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/rxbus2/do;->if:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public super(Ljava/lang/Class;)Lio/reactivex/for;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lio/reactivex/for<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/rxbus2/do;->new:Lio/reactivex/subjects/goto;

    sget-object v1, Lio/reactivex/if;->BUFFER:Lio/reactivex/if;

    invoke-virtual {v0, v1}, Lio/reactivex/new;->toFlowable(Lio/reactivex/if;)Lio/reactivex/for;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/for;->w3(Ljava/lang/Class;)Lio/reactivex/for;

    move-result-object p1

    return-object p1
.end method

.method public this(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/rxbus2/do;->new:Lio/reactivex/subjects/goto;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    return-void
.end method
