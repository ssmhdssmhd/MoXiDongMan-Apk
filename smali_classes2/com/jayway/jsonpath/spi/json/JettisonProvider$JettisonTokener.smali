.class Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonTokener;
.super Lorg/codehaus/jettison/json/JSONTokener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jayway/jsonpath/spi/json/JettisonProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JettisonTokener"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/codehaus/jettison/json/JSONTokener;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public newJSONArray()Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonArray;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jettison/json/JSONException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonArray;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonArray;-><init>(Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonTokener;Lcom/jayway/jsonpath/spi/json/JettisonProvider$1;)V

    return-object v0
.end method

.method public bridge synthetic newJSONArray()Lorg/codehaus/jettison/json/JSONArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jettison/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonTokener;->newJSONArray()Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonArray;

    move-result-object v0

    return-object v0
.end method

.method public newJSONObject()Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jettison/json/JSONException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonObject;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonObject;-><init>(Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonTokener;Lcom/jayway/jsonpath/spi/json/JettisonProvider$1;)V

    return-object v0
.end method

.method public bridge synthetic newJSONObject()Lorg/codehaus/jettison/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jettison/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonTokener;->newJSONObject()Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonObject;

    move-result-object v0

    return-object v0
.end method
