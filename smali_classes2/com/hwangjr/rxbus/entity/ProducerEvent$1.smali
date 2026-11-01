.class Lcom/hwangjr/rxbus/entity/ProducerEvent$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/FlowableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hwangjr/rxbus/entity/ProducerEvent;->produce()Lio/reactivex/for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/hwangjr/rxbus/entity/ProducerEvent;


# direct methods
.method public constructor <init>(Lcom/hwangjr/rxbus/entity/ProducerEvent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hwangjr/rxbus/entity/ProducerEvent$1;->this$0:Lcom/hwangjr/rxbus/entity/ProducerEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/FlowableEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/hwangjr/rxbus/entity/ProducerEvent$1;->this$0:Lcom/hwangjr/rxbus/entity/ProducerEvent;

    invoke-static {v0}, Lcom/hwangjr/rxbus/entity/ProducerEvent;->access$000(Lcom/hwangjr/rxbus/entity/ProducerEvent;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    .line 2
    invoke-interface {p1}, Lio/reactivex/Emitter;->onComplete()V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    iget-object v0, p0, Lcom/hwangjr/rxbus/entity/ProducerEvent$1;->this$0:Lcom/hwangjr/rxbus/entity/ProducerEvent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Producer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hwangjr/rxbus/entity/ProducerEvent$1;->this$0:Lcom/hwangjr/rxbus/entity/ProducerEvent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " threw an exception."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/hwangjr/rxbus/entity/ProducerEvent;->throwRuntimeException(Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    :goto_0
    return-void
.end method
