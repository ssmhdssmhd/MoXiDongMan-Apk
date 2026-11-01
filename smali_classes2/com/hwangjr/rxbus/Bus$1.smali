.class Lcom/hwangjr/rxbus/Bus$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hwangjr/rxbus/Bus;->dispatchProducerResult(Lcom/hwangjr/rxbus/entity/SubscriberEvent;Lcom/hwangjr/rxbus/entity/ProducerEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/hwangjr/rxbus/Bus;

.field public final synthetic val$subscriberEvent:Lcom/hwangjr/rxbus/entity/SubscriberEvent;


# direct methods
.method public constructor <init>(Lcom/hwangjr/rxbus/Bus;Lcom/hwangjr/rxbus/entity/SubscriberEvent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hwangjr/rxbus/Bus$1;->this$0:Lcom/hwangjr/rxbus/Bus;

    iput-object p2, p0, Lcom/hwangjr/rxbus/Bus$1;->val$subscriberEvent:Lcom/hwangjr/rxbus/entity/SubscriberEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/hwangjr/rxbus/Bus$1;->this$0:Lcom/hwangjr/rxbus/Bus;

    iget-object v1, p0, Lcom/hwangjr/rxbus/Bus$1;->val$subscriberEvent:Lcom/hwangjr/rxbus/entity/SubscriberEvent;

    invoke-virtual {v0, p1, v1}, Lcom/hwangjr/rxbus/Bus;->dispatch(Ljava/lang/Object;Lcom/hwangjr/rxbus/entity/SubscriberEvent;)V

    :cond_0
    return-void
.end method
