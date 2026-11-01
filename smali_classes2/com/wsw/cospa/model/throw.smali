.class public Lcom/wsw/cospa/model/throw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static if:Lcom/wsw/cospa/model/throw;


# instance fields
.field private do:Lcom/wsw/cospa/dao/TaskDao;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hw;->const()Lcom/wsw/cospa/dao/TaskDao;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/model/throw;->do:Lcom/wsw/cospa/dao/TaskDao;

    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/model/throw;)Lcom/wsw/cospa/dao/TaskDao;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/model/throw;->do:Lcom/wsw/cospa/dao/TaskDao;

    return-object p0
.end method

.method public static else()Lcom/wsw/cospa/model/throw;
    .locals 2

    .line 1
    sget-object v0, Lcom/wsw/cospa/model/throw;->if:Lcom/wsw/cospa/model/throw;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/wsw/cospa/model/throw;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/wsw/cospa/model/throw;->if:Lcom/wsw/cospa/model/throw;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/wsw/cospa/model/throw;

    invoke-direct {v1}, Lcom/wsw/cospa/model/throw;-><init>()V

    sput-object v1, Lcom/wsw/cospa/model/throw;->if:Lcom/wsw/cospa/model/throw;

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
    sget-object v0, Lcom/wsw/cospa/model/throw;->if:Lcom/wsw/cospa/model/throw;

    return-object v0
.end method


# virtual methods
.method public break(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/wsw/cospa/bean/Task;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/throw;->do:Lcom/wsw/cospa/dao/TaskDao;

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    return-void
.end method

.method public case(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/Task;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/throw;->do:Lcom/wsw/cospa/dao/TaskDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/wsw/cospa/dao/TaskDao$Properties;->if:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, p1, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public catch()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/Task;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/throw;->do:Lcom/wsw/cospa/dao/TaskDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public class(J)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/Task;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/throw;->do:Lcom/wsw/cospa/dao/TaskDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/wsw/cospa/dao/TaskDao$Properties;->if:Lorg/greenrobot/greendao/Property;

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, p1, p2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public const()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/Task;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/throw;->do:Lcom/wsw/cospa/dao/TaskDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/Task;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/throw;->do:Lcom/wsw/cospa/dao/TaskDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/wsw/cospa/dao/TaskDao$Properties;->if:Lorg/greenrobot/greendao/Property;

    .line 2
    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v1, 0x0

    new-array v2, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, p1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/greenrobot/greendao/Property;

    sget-object v2, Lcom/wsw/cospa/dao/TaskDao$Properties;->catch:Lorg/greenrobot/greendao/Property;

    aput-object v2, v0, v1

    .line 3
    invoke-virtual {p1, v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public for(Lcom/wsw/cospa/bean/Task;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/throw;->do:Lcom/wsw/cospa/dao/TaskDao;

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->delete(Ljava/lang/Object;)V

    return-void
.end method

.method public goto(Lcom/wsw/cospa/bean/Task;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/throw;->do:Lcom/wsw/cospa/dao/TaskDao;

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/bean/Task;->setId(Ljava/lang/Long;)V

    return-void
.end method

.method public if(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/throw;->do:Lcom/wsw/cospa/dao/TaskDao;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->deleteByKey(Ljava/lang/Object;)V

    return-void
.end method

.method public new(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/throw;->do:Lcom/wsw/cospa/dao/TaskDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/wsw/cospa/dao/TaskDao$Properties;->if:Lorg/greenrobot/greendao/Property;

    .line 2
    invoke-virtual {v1, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, p1, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/QueryBuilder;->buildDelete()Lorg/greenrobot/greendao/query/DeleteQuery;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lorg/greenrobot/greendao/query/DeleteQuery;->executeDeleteWithoutDetachingEntities()V

    return-void
.end method

.method public super()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/Task;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/throw;->do:Lcom/wsw/cospa/dao/TaskDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/wsw/cospa/dao/TaskDao$Properties;->case:Lorg/greenrobot/greendao/Property;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/greenrobot/greendao/Property;->notEq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    new-array v2, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, v1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public this(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/wsw/cospa/bean/Task;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/throw;->do:Lcom/wsw/cospa/dao/TaskDao;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->getSession()Lorg/greenrobot/greendao/AbstractDaoSession;

    move-result-object v0

    new-instance v1, Lcom/wsw/cospa/model/throw$do;

    invoke-direct {v1, p0, p1}, Lcom/wsw/cospa/model/throw$do;-><init>(Lcom/wsw/cospa/model/throw;Ljava/lang/Iterable;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDaoSession;->runInTx(Ljava/lang/Runnable;)V

    return-void
.end method

.method public throw(Lcom/wsw/cospa/bean/Task;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/throw;->do:Lcom/wsw/cospa/dao/TaskDao;

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->update(Ljava/lang/Object;)V

    return-void
.end method

.method public try(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/wsw/cospa/bean/Task;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/throw;->do:Lcom/wsw/cospa/dao/TaskDao;

    invoke-virtual {v0, p1}, Lorg/greenrobot/greendao/AbstractDao;->deleteInTx(Ljava/lang/Iterable;)V

    return-void
.end method
