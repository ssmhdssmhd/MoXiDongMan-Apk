.class public Lcom/hwangjr/rxbus/entity/SubscriberEvent;
.super Lcom/hwangjr/rxbus/entity/Event;
.source "SourceFile"


# instance fields
.field private final hashCode:I

.field private final method:Ljava/lang/reflect/Method;

.field private subject:Lio/reactivex/subjects/goto;

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
    iput-boolean v0, p0, Lcom/hwangjr/rxbus/entity/SubscriberEvent;->valid:Z

    const-string v1, "SubscriberEvent target cannot be null."

    .line 3
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "SubscriberEvent method cannot be null."

    .line 4
    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "SubscriberEvent thread cannot be null."

    .line 5
    invoke-static {p3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    iput-object p1, p0, Lcom/hwangjr/rxbus/entity/SubscriberEvent;->target:Ljava/lang/Object;

    .line 7
    iput-object p2, p0, Lcom/hwangjr/rxbus/entity/SubscriberEvent;->method:Ljava/lang/reflect/Method;

    .line 8
    iput-object p3, p0, Lcom/hwangjr/rxbus/entity/SubscriberEvent;->thread:Lcom/hwangjr/rxbus/thread/EventThread;

    .line 9
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 10
    invoke-direct {p0}, Lcom/hwangjr/rxbus/entity/SubscriberEvent;->initObservable()V

    .line 11
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->hashCode()I

    move-result p2

    add-int/lit8 p2, p2, 0x1f

    mul-int/lit8 p2, p2, 0x1f

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    add-int/2addr p2, p1

    iput p2, p0, Lcom/hwangjr/rxbus/entity/SubscriberEvent;->hashCode:I

    return-void
.end method

.method public static synthetic access$000(Lcom/hwangjr/rxbus/entity/SubscriberEvent;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/hwangjr/rxbus/entity/SubscriberEvent;->valid:Z

    return p0
.end method

.method private initObservable()V
    .locals 2

    .line 1
    invoke-static {}, Lio/reactivex/subjects/try;->else()Lio/reactivex/subjects/try;

    move-result-object v0

    iput-object v0, p0, Lcom/hwangjr/rxbus/entity/SubscriberEvent;->subject:Lio/reactivex/subjects/goto;

    .line 2
    iget-object v1, p0, Lcom/hwangjr/rxbus/entity/SubscriberEvent;->thread:Lcom/hwangjr/rxbus/thread/EventThread;

    invoke-static {v1}, Lcom/hwangjr/rxbus/thread/EventThread;->getScheduler(Lcom/hwangjr/rxbus/thread/EventThread;)Lio/reactivex/try;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/new;->observeOn(Lio/reactivex/try;)Lio/reactivex/new;

    move-result-object v0

    new-instance v1, Lcom/hwangjr/rxbus/entity/SubscriberEvent$1;

    invoke-direct {v1, p0}, Lcom/hwangjr/rxbus/entity/SubscriberEvent$1;-><init>(Lcom/hwangjr/rxbus/entity/SubscriberEvent;)V

    .line 3
    invoke-virtual {v0, v1}, Lio/reactivex/new;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
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
    check-cast p1, Lcom/hwangjr/rxbus/entity/SubscriberEvent;

    .line 3
    iget-object v2, p0, Lcom/hwangjr/rxbus/entity/SubscriberEvent;->method:Ljava/lang/reflect/Method;

    iget-object v3, p1, Lcom/hwangjr/rxbus/entity/SubscriberEvent;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/hwangjr/rxbus/entity/SubscriberEvent;->target:Ljava/lang/Object;

    iget-object p1, p1, Lcom/hwangjr/rxbus/entity/SubscriberEvent;->target:Ljava/lang/Object;

    if-ne v2, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSubject()Lio/reactivex/subjects/goto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hwangjr/rxbus/entity/SubscriberEvent;->subject:Lio/reactivex/subjects/goto;

    return-object v0
.end method

.method public handle(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hwangjr/rxbus/entity/SubscriberEvent;->subject:Lio/reactivex/subjects/goto;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public handleEvent(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/hwangjr/rxbus/entity/SubscriberEvent;->valid:Z

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/hwangjr/rxbus/entity/SubscriberEvent;->method:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/hwangjr/rxbus/entity/SubscriberEvent;->target:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Error;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/lang/Error;

    throw p1

    .line 5
    :cond_0
    throw p1

    :catch_1
    move-exception p1

    .line 6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/hwangjr/rxbus/entity/SubscriberEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has been invalidated and can no longer handle events."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hwangjr/rxbus/entity/SubscriberEvent;->hashCode:I

    return v0
.end method

.method public invalidate()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/hwangjr/rxbus/entity/SubscriberEvent;->valid:Z

    return-void
.end method

.method public isValid()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hwangjr/rxbus/entity/SubscriberEvent;->valid:Z

    return v0
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

    const-string v1, "[SubscriberEvent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hwangjr/rxbus/entity/SubscriberEvent;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
