.class public Lcom/hwangjr/rxbus/entity/ProducerEvent;
.super Lcom/hwangjr/rxbus/entity/Event;
.source "SourceFile"


# instance fields
.field private final hashCode:I

.field private final method:Ljava/lang/reflect/Method;

.field private final target:Ljava/lang/Object;

.field private final thread:Lcom/hwangjr/rxbus/thread/EventThread;

.field private valid:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;Lcom/hwangjr/rxbus/thread/EventThread;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/hwangjr/rxbus/entity/Event;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/hwangjr/rxbus/entity/ProducerEvent;->valid:Z

    const-string v1, "EventProducer target cannot be null."

    .line 3
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "EventProducer method cannot be null."

    .line 4
    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lcom/hwangjr/rxbus/entity/ProducerEvent;->target:Ljava/lang/Object;

    .line 6
    iput-object p3, p0, Lcom/hwangjr/rxbus/entity/ProducerEvent;->thread:Lcom/hwangjr/rxbus/thread/EventThread;

    .line 7
    iput-object p2, p0, Lcom/hwangjr/rxbus/entity/ProducerEvent;->method:Ljava/lang/reflect/Method;

    .line 8
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 9
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->hashCode()I

    move-result p2

    add-int/lit8 p2, p2, 0x1f

    mul-int/lit8 p2, p2, 0x1f

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    add-int/2addr p2, p1

    iput p2, p0, Lcom/hwangjr/rxbus/entity/ProducerEvent;->hashCode:I

    return-void
.end method

.method public static synthetic access$000(Lcom/hwangjr/rxbus/entity/ProducerEvent;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/hwangjr/rxbus/entity/ProducerEvent;->produceEvent()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private produceEvent()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/hwangjr/rxbus/entity/ProducerEvent;->valid:Z

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/hwangjr/rxbus/entity/ProducerEvent;->method:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/hwangjr/rxbus/entity/ProducerEvent;->target:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Error;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 5
    :cond_0
    throw v0

    :catch_1
    move-exception v0

    .line 6
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hwangjr/rxbus/entity/ProducerEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has been invalidated and can no longer produce events."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 2
    :cond_2
    check-cast p1, Lcom/hwangjr/rxbus/entity/ProducerEvent;

    .line 3
    iget-object v2, p0, Lcom/hwangjr/rxbus/entity/ProducerEvent;->method:Ljava/lang/reflect/Method;

    iget-object v3, p1, Lcom/hwangjr/rxbus/entity/ProducerEvent;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/hwangjr/rxbus/entity/ProducerEvent;->target:Ljava/lang/Object;

    iget-object p1, p1, Lcom/hwangjr/rxbus/entity/ProducerEvent;->target:Ljava/lang/Object;

    if-ne v2, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hwangjr/rxbus/entity/ProducerEvent;->target:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hwangjr/rxbus/entity/ProducerEvent;->hashCode:I

    return v0
.end method

.method public invalidate()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/hwangjr/rxbus/entity/ProducerEvent;->valid:Z

    return-void
.end method

.method public isValid()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hwangjr/rxbus/entity/ProducerEvent;->valid:Z

    return v0
.end method

.method public produce()Lio/reactivex/for;
    .locals 2

    .line 1
    new-instance v0, Lcom/hwangjr/rxbus/entity/ProducerEvent$1;

    invoke-direct {v0, p0}, Lcom/hwangjr/rxbus/entity/ProducerEvent$1;-><init>(Lcom/hwangjr/rxbus/entity/ProducerEvent;)V

    sget-object v1, Lio/reactivex/if;->BUFFER:Lio/reactivex/if;

    invoke-static {v0, v1}, Lio/reactivex/for;->E0(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/if;)Lio/reactivex/for;

    move-result-object v0

    iget-object v1, p0, Lcom/hwangjr/rxbus/entity/ProducerEvent;->thread:Lcom/hwangjr/rxbus/thread/EventThread;

    .line 2
    invoke-static {v1}, Lcom/hwangjr/rxbus/thread/EventThread;->getScheduler(Lcom/hwangjr/rxbus/thread/EventThread;)Lio/reactivex/try;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/for;->o5(Lio/reactivex/try;)Lio/reactivex/for;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic throwRuntimeException(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/hwangjr/rxbus/entity/Event;->throwRuntimeException(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic throwRuntimeException(Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lcom/hwangjr/rxbus/entity/Event;->throwRuntimeException(Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[EventProducer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hwangjr/rxbus/entity/ProducerEvent;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
