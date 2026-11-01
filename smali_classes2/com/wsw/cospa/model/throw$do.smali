.class Lcom/wsw/cospa/model/throw$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/model/throw;->this(Ljava/lang/Iterable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/Iterable;

.field public final synthetic if:Lcom/wsw/cospa/model/throw;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/model/throw;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/model/throw$do;->if:Lcom/wsw/cospa/model/throw;

    iput-object p2, p0, Lcom/wsw/cospa/model/throw$do;->do:Ljava/lang/Iterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/model/throw$do;->do:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wsw/cospa/bean/Task;

    .line 2
    iget-object v2, p0, Lcom/wsw/cospa/model/throw$do;->if:Lcom/wsw/cospa/model/throw;

    invoke-static {v2}, Lcom/wsw/cospa/model/throw;->do(Lcom/wsw/cospa/model/throw;)Lcom/wsw/cospa/dao/TaskDao;

    move-result-object v2

    invoke-virtual {v2}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/wsw/cospa/dao/TaskDao$Properties;->if:Lorg/greenrobot/greendao/Property;

    .line 3
    invoke-virtual {v1}, Lcom/wsw/cospa/bean/Task;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    const/4 v5, 0x0

    sget-object v6, Lcom/wsw/cospa/dao/TaskDao$Properties;->for:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/Task;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/wsw/cospa/model/throw$do;->if:Lcom/wsw/cospa/model/throw;

    invoke-static {v2}, Lcom/wsw/cospa/model/throw;->do(Lcom/wsw/cospa/model/throw;)Lcom/wsw/cospa/dao/TaskDao;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    goto :goto_0

    :cond_1
    return-void
.end method
