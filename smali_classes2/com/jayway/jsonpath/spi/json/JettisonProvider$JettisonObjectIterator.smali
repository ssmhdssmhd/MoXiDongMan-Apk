.class Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonObjectIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jayway/jsonpath/spi/json/JettisonProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JettisonObjectIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final jsonKeysIt:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "*>;"
        }
    .end annotation
.end field

.field private final jsonObject:Lorg/codehaus/jettison/json/JSONObject;


# direct methods
.method private constructor <init>(Lorg/codehaus/jettison/json/JSONObject;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonObjectIterator;->jsonObject:Lorg/codehaus/jettison/json/JSONObject;

    .line 4
    invoke-virtual {p1}, Lorg/codehaus/jettison/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonObjectIterator;->jsonKeysIt:Ljava/util/Iterator;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/codehaus/jettison/json/JSONObject;Lcom/jayway/jsonpath/spi/json/JettisonProvider$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonObjectIterator;-><init>(Lorg/codehaus/jettison/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonObjectIterator;->jsonKeysIt:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonObjectIterator;->jsonObject:Lorg/codehaus/jettison/json/JSONObject;

    iget-object v1, p0, Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonObjectIterator;->jsonKeysIt:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jettison/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/jayway/jsonpath/spi/json/JettisonProvider;->access$400(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lorg/codehaus/jettison/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-virtual {v0}, Lorg/codehaus/jettison/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public remove()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonObjectIterator;->jsonKeysIt:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
