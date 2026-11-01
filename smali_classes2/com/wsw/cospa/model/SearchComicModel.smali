.class public Lcom/wsw/cospa/model/SearchComicModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/model/SearchComicModel$for;,
        Lcom/wsw/cospa/model/SearchComicModel$OnSearchListener;
    }
.end annotation


# instance fields
.field private break:I

.field private case:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wsw/cospa/model/SearchComicModel$for;",
            ">;"
        }
    .end annotation
.end field

.field private catch:I

.field private class:Landroid/support/v4/cq;

.field private const:Lcom/wsw/cospa/model/SearchComicModel$OnSearchListener;

.field private do:Lcom/wsw/cospa/base/BaseActivity;

.field private else:I

.field private final:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private for:Ljava/util/concurrent/ExecutorService;

.field private goto:I

.field private if:Landroid/os/Handler;

.field private new:Lio/reactivex/try;

.field private super:Z

.field private this:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private try:J


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/wsw/cospa/model/SearchComicModel$OnSearchListener;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/wsw/cospa/model/SearchComicModel;->if:Landroid/os/Handler;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/model/SearchComicModel;->case:Ljava/util/List;

    const/16 v0, 0x20

    .line 4
    iput v0, p0, Lcom/wsw/cospa/model/SearchComicModel;->else:I

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcom/wsw/cospa/model/SearchComicModel;->goto:I

    .line 6
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/wsw/cospa/model/SearchComicModel;->this:Ljava/util/Map;

    .line 7
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/wsw/cospa/model/SearchComicModel;->final:Ljava/util/Map;

    .line 8
    move-object v2, p1

    check-cast v2, Lcom/wsw/cospa/base/BaseActivity;

    iput-object v2, p0, Lcom/wsw/cospa/model/SearchComicModel;->do:Lcom/wsw/cospa/base/BaseActivity;

    .line 9
    iput-object p2, p0, Lcom/wsw/cospa/model/SearchComicModel;->const:Lcom/wsw/cospa/model/SearchComicModel$OnSearchListener;

    .line 10
    invoke-static {p1}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object p1

    const-string p2, "search_thread_num"

    invoke-virtual {p1, p2, v0}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/wsw/cospa/model/SearchComicModel;->else:I

    .line 11
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/model/SearchComicModel;->for:Ljava/util/concurrent/ExecutorService;

    .line 12
    invoke-static {p1}, Lio/reactivex/schedulers/do;->if(Ljava/util/concurrent/Executor;)Lio/reactivex/try;

    move-result-object p1

    iput-object p1, p0, Lcom/wsw/cospa/model/SearchComicModel;->new:Lio/reactivex/try;

    .line 13
    new-instance p1, Landroid/support/v4/cq;

    invoke-direct {p1}, Landroid/support/v4/cq;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/model/SearchComicModel;->class:Landroid/support/v4/cq;

    .line 14
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/dao/DatabaseHelper;->e()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/wsw/cospa/model/SearchComicModel;->public(Ljava/util/List;Z)V

    return-void
.end method

.method public static synthetic break(Lcom/wsw/cospa/model/SearchComicModel;)Landroid/support/v4/cq;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/model/SearchComicModel;->class:Landroid/support/v4/cq;

    return-object p0
.end method

.method public static synthetic case(Lcom/wsw/cospa/model/SearchComicModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/wsw/cospa/model/SearchComicModel;->default()V

    return-void
.end method

.method public static synthetic catch(Lcom/wsw/cospa/model/SearchComicModel;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wsw/cospa/model/SearchComicModel;->try:J

    return-wide v0
.end method

.method public static synthetic class(Lcom/wsw/cospa/model/SearchComicModel;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/wsw/cospa/model/SearchComicModel;->catch:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/wsw/cospa/model/SearchComicModel;->catch:I

    return v0
.end method

.method public static synthetic const(Lcom/wsw/cospa/model/SearchComicModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/model/SearchComicModel;->import(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic default()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/SearchComicModel;->const:Lcom/wsw/cospa/model/SearchComicModel$OnSearchListener;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lcom/wsw/cospa/model/SearchComicModel$OnSearchListener;->refreshFinish(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/model/SearchComicModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/wsw/cospa/model/SearchComicModel;->return()V

    return-void
.end method

.method public static synthetic else(Lcom/wsw/cospa/model/SearchComicModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/wsw/cospa/model/SearchComicModel;->extends()V

    return-void
.end method

.method private synthetic extends()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/SearchComicModel;->const:Lcom/wsw/cospa/model/SearchComicModel$OnSearchListener;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lcom/wsw/cospa/model/SearchComicModel$OnSearchListener;->loadMoreFinish(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic final(Lcom/wsw/cospa/model/SearchComicModel;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/model/SearchComicModel;->this:Ljava/util/Map;

    return-object p0
.end method

.method private synthetic finally()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/SearchComicModel;->const:Lcom/wsw/cospa/model/SearchComicModel$OnSearchListener;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lcom/wsw/cospa/model/SearchComicModel$OnSearchListener;->loadMoreFinish(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic for(Lcom/wsw/cospa/model/SearchComicModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/wsw/cospa/model/SearchComicModel;->switch()V

    return-void
.end method

.method public static synthetic goto(Lcom/wsw/cospa/model/SearchComicModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/wsw/cospa/model/SearchComicModel;->static()V

    return-void
.end method

.method public static synthetic if(Lcom/wsw/cospa/model/SearchComicModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/wsw/cospa/model/SearchComicModel;->throws()V

    return-void
.end method

.method private import(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_2

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Lcom/wsw/cospa/model/SearchComicModel$if;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/model/SearchComicModel$if;-><init>(Lcom/wsw/cospa/model/SearchComicModel;)V

    .line 3
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 4
    invoke-virtual {v0, p2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/model/SearchComicModel;->final:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/model/SearchComicModel;->final:Ljava/util/Map;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/model/SearchComicModel;->final:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wsw/cospa/model/SearchComicModel;->final:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/model/SearchComicModel;->final:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/model/SearchComicModel;->final:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic new(Lcom/wsw/cospa/model/SearchComicModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/wsw/cospa/model/SearchComicModel;->finally()V

    return-void
.end method

.method private synthetic package()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/SearchComicModel;->const:Lcom/wsw/cospa/model/SearchComicModel$OnSearchListener;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lcom/wsw/cospa/model/SearchComicModel$OnSearchListener;->refreshFinish(Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic private()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/SearchComicModel;->const:Lcom/wsw/cospa/model/SearchComicModel$OnSearchListener;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lcom/wsw/cospa/model/SearchComicModel$OnSearchListener;->refreshFinish(Ljava/lang/Boolean;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/model/SearchComicModel;->const:Lcom/wsw/cospa/model/SearchComicModel$OnSearchListener;

    invoke-interface {v0, v1}, Lcom/wsw/cospa/model/SearchComicModel$OnSearchListener;->loadMoreFinish(Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic return()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/SearchComicModel;->const:Lcom/wsw/cospa/model/SearchComicModel$OnSearchListener;

    invoke-interface {v0}, Lcom/wsw/cospa/model/SearchComicModel$OnSearchListener;->refreshSearchBook()V

    return-void
.end method

.method private synthetic static()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/SearchComicModel;->do:Lcom/wsw/cospa/base/BaseActivity;

    const-string v1, "\u6ca1\u6709\u9009\u4e2d\u4efb\u4f55\u56fe\u6e90\uff0c\u8bf7\u53bb\u56fe\u6e90\u4e2d\u9009\u62e9\u76f8\u5e94\u7684\u56fe\u6e90\u8fdb\u884c\u641c\u7d22\uff01"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/model/SearchComicModel;->const:Lcom/wsw/cospa/model/SearchComicModel$OnSearchListener;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lcom/wsw/cospa/model/SearchComicModel$OnSearchListener;->refreshFinish(Ljava/lang/Boolean;)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/model/SearchComicModel;->const:Lcom/wsw/cospa/model/SearchComicModel$OnSearchListener;

    invoke-interface {v0, v1}, Lcom/wsw/cospa/model/SearchComicModel$OnSearchListener;->loadMoreFinish(Ljava/lang/Boolean;)V

    return-void
.end method

.method private declared-synchronized strictfp(Ljava/lang/String;J)V
    .locals 16

    move-object/from16 v9, p0

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, v9, Lcom/wsw/cospa/model/SearchComicModel;->try:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget v0, v9, Lcom/wsw/cospa/model/SearchComicModel;->break:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v9, Lcom/wsw/cospa/model/SearchComicModel;->break:I

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 5
    iget v0, v9, Lcom/wsw/cospa/model/SearchComicModel;->break:I

    iget-object v2, v9, Lcom/wsw/cospa/model/SearchComicModel;->case:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 6
    iget-object v0, v9, Lcom/wsw/cospa/model/SearchComicModel;->case:Ljava/util/List;

    iget v1, v9, Lcom/wsw/cospa/model/SearchComicModel;->break:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/wsw/cospa/model/SearchComicModel$for;

    .line 7
    invoke-virtual {v5}, Lcom/wsw/cospa/model/SearchComicModel$for;->if()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-static {}, Lcom/wsw/cospa/model/while;->catch()Lcom/wsw/cospa/model/while;

    move-result-object v10

    iget v12, v9, Lcom/wsw/cospa/model/SearchComicModel;->goto:I

    .line 9
    invoke-virtual {v5}, Lcom/wsw/cospa/model/SearchComicModel$for;->for()Ljava/lang/String;

    move-result-object v13

    iget-object v0, v9, Lcom/wsw/cospa/model/SearchComicModel;->final:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/wsw/cospa/model/SearchComicModel$for;->for()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/util/Map;

    iget-object v0, v9, Lcom/wsw/cospa/model/SearchComicModel;->this:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/wsw/cospa/model/SearchComicModel$for;->for()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Ljava/lang/String;

    move-object/from16 v11, p1

    invoke-virtual/range {v10 .. v15}, Lcom/wsw/cospa/model/while;->while(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lio/reactivex/new;

    move-result-object v0

    iget-object v1, v9, Lcom/wsw/cospa/model/SearchComicModel;->new:Lio/reactivex/try;

    .line 10
    invoke-virtual {v0, v1}, Lio/reactivex/new;->subscribeOn(Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object v0

    .line 11
    invoke-static {}, Lio/reactivex/android/schedulers/do;->for()Lio/reactivex/try;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/new;->observeOn(Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object v0

    new-instance v10, Lcom/wsw/cospa/model/SearchComicModel$do;

    move-object v1, v10

    move-object/from16 v2, p0

    move-wide/from16 v3, p2

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/wsw/cospa/model/SearchComicModel$do;-><init>(Lcom/wsw/cospa/model/SearchComicModel;JLcom/wsw/cospa/model/SearchComicModel$for;JLjava/lang/String;)V

    .line 12
    invoke-virtual {v0, v10}, Lio/reactivex/new;->subscribe(Lio/reactivex/Observer;)V

    goto/16 :goto_0

    .line 13
    :cond_1
    invoke-direct/range {p0 .. p3}, Lcom/wsw/cospa/model/SearchComicModel;->strictfp(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 14
    :cond_2
    iget v0, v9, Lcom/wsw/cospa/model/SearchComicModel;->break:I

    iget-object v2, v9, Lcom/wsw/cospa/model/SearchComicModel;->case:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, v9, Lcom/wsw/cospa/model/SearchComicModel;->else:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v1

    if-lt v0, v2, :cond_8

    .line 15
    iget v0, v9, Lcom/wsw/cospa/model/SearchComicModel;->catch:I

    if-nez v0, :cond_4

    iget-object v0, v9, Lcom/wsw/cospa/model/SearchComicModel;->const:Lcom/wsw/cospa/model/SearchComicModel$OnSearchListener;

    invoke-interface {v0}, Lcom/wsw/cospa/model/SearchComicModel$OnSearchListener;->getItemCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 16
    iget v0, v9, Lcom/wsw/cospa/model/SearchComicModel;->goto:I

    if-ne v0, v1, :cond_3

    .line 17
    iget-object v0, v9, Lcom/wsw/cospa/model/SearchComicModel;->if:Landroid/os/Handler;

    new-instance v1, Landroid/support/v4/ht1;

    invoke-direct {v1, v9}, Landroid/support/v4/ht1;-><init>(Lcom/wsw/cospa/model/SearchComicModel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 18
    :cond_3
    iget-object v0, v9, Lcom/wsw/cospa/model/SearchComicModel;->if:Landroid/os/Handler;

    new-instance v1, Landroid/support/v4/gt1;

    invoke-direct {v1, v9}, Landroid/support/v4/gt1;-><init>(Lcom/wsw/cospa/model/SearchComicModel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 19
    :cond_4
    iget v0, v9, Lcom/wsw/cospa/model/SearchComicModel;->goto:I

    if-ne v0, v1, :cond_5

    .line 20
    iget-object v0, v9, Lcom/wsw/cospa/model/SearchComicModel;->if:Landroid/os/Handler;

    new-instance v1, Landroid/support/v4/kt1;

    invoke-direct {v1, v9}, Landroid/support/v4/kt1;-><init>(Lcom/wsw/cospa/model/SearchComicModel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    :cond_5
    iget-object v0, v9, Lcom/wsw/cospa/model/SearchComicModel;->case:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/model/SearchComicModel$for;

    .line 22
    invoke-static {v1}, Lcom/wsw/cospa/model/SearchComicModel$for;->do(Lcom/wsw/cospa/model/SearchComicModel$for;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 23
    iget-object v0, v9, Lcom/wsw/cospa/model/SearchComicModel;->if:Landroid/os/Handler;

    new-instance v1, Landroid/support/v4/lt1;

    invoke-direct {v1, v9}, Landroid/support/v4/lt1;-><init>(Lcom/wsw/cospa/model/SearchComicModel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    monitor-exit p0

    return-void

    .line 25
    :cond_7
    :try_start_2
    iget-object v0, v9, Lcom/wsw/cospa/model/SearchComicModel;->if:Landroid/os/Handler;

    new-instance v1, Landroid/support/v4/it1;

    invoke-direct {v1, v9}, Landroid/support/v4/it1;-><init>(Lcom/wsw/cospa/model/SearchComicModel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 26
    :cond_8
    iget-object v0, v9, Lcom/wsw/cospa/model/SearchComicModel;->if:Landroid/os/Handler;

    new-instance v1, Landroid/support/v4/nt1;

    invoke-direct {v1, v9}, Landroid/support/v4/nt1;-><init>(Lcom/wsw/cospa/model/SearchComicModel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static synthetic super(Lcom/wsw/cospa/model/SearchComicModel;)Lcom/wsw/cospa/model/SearchComicModel$OnSearchListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/model/SearchComicModel;->const:Lcom/wsw/cospa/model/SearchComicModel$OnSearchListener;

    return-object p0
.end method

.method private synthetic switch()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/SearchComicModel;->const:Lcom/wsw/cospa/model/SearchComicModel$OnSearchListener;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lcom/wsw/cospa/model/SearchComicModel$OnSearchListener;->searchBookError(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic this(Lcom/wsw/cospa/model/SearchComicModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/wsw/cospa/model/SearchComicModel;->package()V

    return-void
.end method

.method public static synthetic throw(Lcom/wsw/cospa/model/SearchComicModel;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/wsw/cospa/model/SearchComicModel;->strictfp(Ljava/lang/String;J)V

    return-void
.end method

.method private synthetic throws()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/SearchComicModel;->const:Lcom/wsw/cospa/model/SearchComicModel$OnSearchListener;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lcom/wsw/cospa/model/SearchComicModel$OnSearchListener;->searchBookError(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic try(Lcom/wsw/cospa/model/SearchComicModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/wsw/cospa/model/SearchComicModel;->private()V

    return-void
.end method

.method public static synthetic while(Lcom/wsw/cospa/model/SearchComicModel;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/wsw/cospa/model/SearchComicModel;->super:Z

    return p0
.end method


# virtual methods
.method public abstract()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/model/SearchComicModel;->transient()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/model/SearchComicModel;->for:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public continue(Ljava/lang/String;JLjava/lang/Boolean;)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/wsw/cospa/model/SearchComicModel;->try:J

    cmp-long v2, p2, v0

    if-eqz v2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    const/4 v0, 0x1

    if-nez p4, :cond_1

    .line 3
    iget p4, p0, Lcom/wsw/cospa/model/SearchComicModel;->goto:I

    add-int/2addr p4, v0

    iput p4, p0, Lcom/wsw/cospa/model/SearchComicModel;->goto:I

    .line 4
    :cond_1
    iget p4, p0, Lcom/wsw/cospa/model/SearchComicModel;->goto:I

    if-nez p4, :cond_2

    .line 5
    iput v0, p0, Lcom/wsw/cospa/model/SearchComicModel;->goto:I

    .line 6
    :cond_2
    iget p4, p0, Lcom/wsw/cospa/model/SearchComicModel;->goto:I

    if-ne p4, v0, :cond_3

    .line 7
    iget-object p4, p0, Lcom/wsw/cospa/model/SearchComicModel;->if:Landroid/os/Handler;

    new-instance v1, Landroid/support/v4/ft1;

    invoke-direct {v1, p0}, Landroid/support/v4/ft1;-><init>(Lcom/wsw/cospa/model/SearchComicModel;)V

    invoke-virtual {p4, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8
    :cond_3
    iget-object p4, p0, Lcom/wsw/cospa/model/SearchComicModel;->case:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-nez p4, :cond_4

    .line 9
    iget-object p1, p0, Lcom/wsw/cospa/model/SearchComicModel;->if:Landroid/os/Handler;

    new-instance p2, Landroid/support/v4/mt1;

    invoke-direct {p2, p0}, Landroid/support/v4/mt1;-><init>(Lcom/wsw/cospa/model/SearchComicModel;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_4
    const/4 p4, 0x0

    .line 10
    iput p4, p0, Lcom/wsw/cospa/model/SearchComicModel;->catch:I

    const/4 v1, -0x1

    .line 11
    iput v1, p0, Lcom/wsw/cospa/model/SearchComicModel;->break:I

    .line 12
    iget-boolean v1, p0, Lcom/wsw/cospa/model/SearchComicModel;->super:Z

    if-nez v1, :cond_7

    .line 13
    iget-object v1, p0, Lcom/wsw/cospa/model/SearchComicModel;->case:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_6

    .line 14
    iget-object v0, p0, Lcom/wsw/cospa/model/SearchComicModel;->case:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/wsw/cospa/model/SearchComicModel;->else:I

    if-gt v0, v1, :cond_5

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/wsw/cospa/model/SearchComicModel;->case:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p4, v0, :cond_8

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/wsw/cospa/model/SearchComicModel;->strictfp(Ljava/lang/String;J)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 17
    :cond_5
    :goto_1
    iget v0, p0, Lcom/wsw/cospa/model/SearchComicModel;->else:I

    if-ge p4, v0, :cond_8

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/wsw/cospa/model/SearchComicModel;->strictfp(Ljava/lang/String;J)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    .line 19
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lcom/wsw/cospa/model/SearchComicModel;->strictfp(Ljava/lang/String;J)V

    goto :goto_2

    .line 20
    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lcom/wsw/cospa/model/SearchComicModel;->strictfp(Ljava/lang/String;J)V

    :cond_8
    :goto_2
    return-void
.end method

.method public implements(Landroid/widget/TextView;Lcom/wsw/cospa/bean/ComicSourceBean;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u5168\u90e8"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/wsw/cospa/model/SearchComicModel;->super:Z

    .line 4
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/dao/DatabaseHelper;->e()Ljava/util/List;

    move-result-object p1

    iget-boolean p2, p0, Lcom/wsw/cospa/model/SearchComicModel;->super:Z

    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/model/SearchComicModel;->public(Ljava/util/List;Z)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/wsw/cospa/model/SearchComicModel;->super:Z

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-boolean p2, p0, Lcom/wsw/cospa/model/SearchComicModel;->super:Z

    invoke-virtual {p0, p1, p2}, Lcom/wsw/cospa/model/SearchComicModel;->public(Ljava/util/List;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public interface(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/model/SearchComicModel;->goto:I

    return-void
.end method

.method public native()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/model/SearchComicModel;->goto:I

    return v0
.end method

.method public protected(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/wsw/cospa/model/SearchComicModel;->try:J

    return-void
.end method

.method public public(Ljava/util/List;Z)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicSourceBean;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/SearchComicModel;->case:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iput-boolean p2, p0, Lcom/wsw/cospa/model/SearchComicModel;->super:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/wsw/cospa/bean/ComicSourceBean;

    .line 4
    new-instance v1, Lcom/wsw/cospa/model/SearchComicModel$for;

    invoke-direct {v1, p0, v0}, Lcom/wsw/cospa/model/SearchComicModel$for;-><init>(Lcom/wsw/cospa/model/SearchComicModel;Lcom/wsw/cospa/model/SearchComicModel$do;)V

    .line 5
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/wsw/cospa/model/SearchComicModel$for;->try(Ljava/lang/String;)V

    .line 6
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p2}, Lcom/wsw/cospa/model/SearchComicModel$for;->new(Ljava/lang/Boolean;)V

    .line 7
    iget-object p2, p0, Lcom/wsw/cospa/model/SearchComicModel;->case:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/wsw/cospa/bean/ComicSourceBean;

    .line 9
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    new-instance v1, Lcom/wsw/cospa/model/SearchComicModel$for;

    invoke-direct {v1, p0, v0}, Lcom/wsw/cospa/model/SearchComicModel$for;-><init>(Lcom/wsw/cospa/model/SearchComicModel;Lcom/wsw/cospa/model/SearchComicModel$do;)V

    .line 11
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/wsw/cospa/model/SearchComicModel$for;->try(Ljava/lang/String;)V

    .line 12
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p2}, Lcom/wsw/cospa/model/SearchComicModel$for;->new(Ljava/lang/Boolean;)V

    .line 13
    iget-object p2, p0, Lcom/wsw/cospa/model/SearchComicModel;->case:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method public transient()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/SearchComicModel;->class:Landroid/support/v4/cq;

    invoke-virtual {v0}, Landroid/support/v4/cq;->dispose()V

    .line 2
    new-instance v0, Landroid/support/v4/cq;

    invoke-direct {v0}, Landroid/support/v4/cq;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/model/SearchComicModel;->class:Landroid/support/v4/cq;

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/model/SearchComicModel;->if:Landroid/os/Handler;

    new-instance v1, Landroid/support/v4/jt1;

    invoke-direct {v1, p0}, Landroid/support/v4/jt1;-><init>(Lcom/wsw/cospa/model/SearchComicModel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public volatile()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/SearchComicModel;->class:Landroid/support/v4/cq;

    invoke-virtual {v0}, Landroid/support/v4/cq;->dispose()V

    .line 2
    new-instance v0, Landroid/support/v4/cq;

    invoke-direct {v0}, Landroid/support/v4/cq;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/model/SearchComicModel;->class:Landroid/support/v4/cq;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/wsw/cospa/model/SearchComicModel;->goto:I

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/model/SearchComicModel;->case:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/model/SearchComicModel$for;

    .line 5
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/wsw/cospa/model/SearchComicModel$for;->new(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_0
    return-void
.end method
