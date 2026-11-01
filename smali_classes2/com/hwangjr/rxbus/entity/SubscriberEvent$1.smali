.class Lcom/hwangjr/rxbus/entity/SubscriberEvent$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hwangjr/rxbus/entity/SubscriberEvent;->initObservable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/hwangjr/rxbus/entity/SubscriberEvent;


# direct methods
.method public constructor <init>(Lcom/hwangjr/rxbus/entity/SubscriberEvent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hwangjr/rxbus/entity/SubscriberEvent$1;->this$0:Lcom/hwangjr/rxbus/entity/SubscriberEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/hwangjr/rxbus/entity/SubscriberEvent$1;->this$0:Lcom/hwangjr/rxbus/entity/SubscriberEvent;

    invoke-static {v0}, Lcom/hwangjr/rxbus/entity/SubscriberEvent;->access$000(Lcom/hwangjr/rxbus/entity/SubscriberEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hwangjr/rxbus/entity/SubscriberEvent$1;->this$0:Lcom/hwangjr/rxbus/entity/SubscriberEvent;

    invoke-virtual {v0, p1}, Lcom/hwangjr/rxbus/entity/SubscriberEvent;->handleEvent(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    iget-object v1, p0, Lcom/hwangjr/rxbus/entity/SubscriberEvent$1;->this$0:Lcom/hwangjr/rxbus/entity/SubscriberEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not dispatch event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to subscriber "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/hwangjr/rxbus/entity/SubscriberEvent$1;->this$0:Lcom/hwangjr/rxbus/entity/SubscriberEvent;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/hwangjr/rxbus/entity/SubscriberEvent;->throwRuntimeException(Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    :cond_0
    :goto_0
    return-void
.end method
