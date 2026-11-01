.class public interface abstract Lcom/hwangjr/rxbus/finder/Finder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ANNOTATED:Lcom/hwangjr/rxbus/finder/Finder;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/hwangjr/rxbus/finder/Finder$1;

    invoke-direct {v0}, Lcom/hwangjr/rxbus/finder/Finder$1;-><init>()V

    sput-object v0, Lcom/hwangjr/rxbus/finder/Finder;->ANNOTATED:Lcom/hwangjr/rxbus/finder/Finder;

    return-void
.end method


# virtual methods
.method public abstract findAllProducers(Ljava/lang/Object;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Lcom/hwangjr/rxbus/entity/EventType;",
            "Lcom/hwangjr/rxbus/entity/ProducerEvent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract findAllSubscribers(Ljava/lang/Object;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Lcom/hwangjr/rxbus/entity/EventType;",
            "Ljava/util/Set<",
            "Lcom/hwangjr/rxbus/entity/SubscriberEvent;",
            ">;>;"
        }
    .end annotation
.end method
