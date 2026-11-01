.class Lcom/jayway/jsonpath/spi/json/JettisonProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jayway/jsonpath/spi/json/JettisonProvider;->toIterable(Ljava/lang/Object;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/jayway/jsonpath/spi/json/JettisonProvider;

.field public final synthetic val$obj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/jayway/jsonpath/spi/json/JettisonProvider;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/jayway/jsonpath/spi/json/JettisonProvider$1;->this$0:Lcom/jayway/jsonpath/spi/json/JettisonProvider;

    iput-object p2, p0, Lcom/jayway/jsonpath/spi/json/JettisonProvider$1;->val$obj:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/spi/json/JettisonProvider$1;->val$obj:Ljava/lang/Object;

    instance-of v1, v0, Lorg/codehaus/jettison/json/JSONArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    new-instance v1, Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonArrayIterator;

    check-cast v0, Lorg/codehaus/jettison/json/JSONArray;

    invoke-direct {v1, v0, v2}, Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonArrayIterator;-><init>(Lorg/codehaus/jettison/json/JSONArray;Lcom/jayway/jsonpath/spi/json/JettisonProvider$1;)V

    return-object v1

    .line 3
    :cond_0
    instance-of v1, v0, Lorg/codehaus/jettison/json/JSONObject;

    if-eqz v1, :cond_1

    .line 4
    new-instance v1, Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonObjectIterator;

    check-cast v0, Lorg/codehaus/jettison/json/JSONObject;

    invoke-direct {v1, v0, v2}, Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonObjectIterator;-><init>(Lorg/codehaus/jettison/json/JSONObject;Lcom/jayway/jsonpath/spi/json/JettisonProvider$1;)V

    return-object v1

    .line 5
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
