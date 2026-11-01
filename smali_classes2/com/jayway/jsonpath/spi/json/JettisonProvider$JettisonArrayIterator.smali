.class Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonArrayIterator;
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
    name = "JettisonArrayIterator"
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
.field private index:I

.field private final jsonArray:Lorg/codehaus/jettison/json/JSONArray;


# direct methods
.method private constructor <init>(Lorg/codehaus/jettison/json/JSONArray;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonArrayIterator;->index:I

    .line 4
    iput-object p1, p0, Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonArrayIterator;->jsonArray:Lorg/codehaus/jettison/json/JSONArray;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/codehaus/jettison/json/JSONArray;Lcom/jayway/jsonpath/spi/json/JettisonProvider$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonArrayIterator;-><init>(Lorg/codehaus/jettison/json/JSONArray;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonArrayIterator;->index:I

    iget-object v1, p0, Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonArrayIterator;->jsonArray:Lorg/codehaus/jettison/json/JSONArray;

    invoke-virtual {v1}, Lorg/codehaus/jettison/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonArrayIterator;->jsonArray:Lorg/codehaus/jettison/json/JSONArray;

    iget v1, p0, Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonArrayIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jayway/jsonpath/spi/json/JettisonProvider$JettisonArrayIterator;->index:I

    invoke-virtual {v0, v1}, Lorg/codehaus/jettison/json/JSONArray;->get(I)Ljava/lang/Object;

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
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
