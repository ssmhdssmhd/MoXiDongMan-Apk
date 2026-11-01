.class Lcom/jayway/jsonpath/internal/PathRef$RootPathRef;
.super Lcom/jayway/jsonpath/internal/PathRef;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jayway/jsonpath/internal/PathRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RootPathRef"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/jayway/jsonpath/internal/PathRef;-><init>(Ljava/lang/Object;Lcom/jayway/jsonpath/internal/PathRef$1;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/jayway/jsonpath/internal/PathRef$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jayway/jsonpath/internal/PathRef$RootPathRef;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/jayway/jsonpath/Configuration;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/jayway/jsonpath/internal/PathRef;->parent:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->isArray(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/jayway/jsonpath/Configuration;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/jayway/jsonpath/internal/PathRef;->parent:Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/jayway/jsonpath/Configuration;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object p2

    iget-object v2, p0, Lcom/jayway/jsonpath/internal/PathRef;->parent:Ljava/lang/Object;

    invoke-interface {p2, v2}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->length(Ljava/lang/Object;)I

    move-result p2

    invoke-interface {v0, v1, p2, p1}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->setArrayIndex(Ljava/lang/Object;ILjava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Lcom/jayway/jsonpath/InvalidModificationException;

    const-string p2, "Invalid add operation. $ is not an array"

    invoke-direct {p1, p2}, Lcom/jayway/jsonpath/InvalidModificationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/jayway/jsonpath/internal/PathRef;

    invoke-super {p0, p1}, Lcom/jayway/jsonpath/internal/PathRef;->compareTo(Lcom/jayway/jsonpath/internal/PathRef;)I

    move-result p1

    return p1
.end method

.method public convert(Lcom/jayway/jsonpath/MapFunction;Lcom/jayway/jsonpath/Configuration;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/jayway/jsonpath/InvalidModificationException;

    const-string p2, "Invalid map operation"

    invoke-direct {p1, p2}, Lcom/jayway/jsonpath/InvalidModificationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public delete(Lcom/jayway/jsonpath/Configuration;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/jayway/jsonpath/InvalidModificationException;

    const-string v0, "Invalid delete operation"

    invoke-direct {p1, v0}, Lcom/jayway/jsonpath/InvalidModificationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAccessor()Ljava/lang/Object;
    .locals 1

    const-string v0, "$"

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;)V
    .locals 2

    .line 1
    invoke-virtual {p3}, Lcom/jayway/jsonpath/Configuration;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/jayway/jsonpath/internal/PathRef;->parent:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->isMap(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p3}, Lcom/jayway/jsonpath/Configuration;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object p3

    iget-object v0, p0, Lcom/jayway/jsonpath/internal/PathRef;->parent:Ljava/lang/Object;

    invoke-interface {p3, v0, p1, p2}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->setProperty(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Lcom/jayway/jsonpath/InvalidModificationException;

    const-string p2, "Invalid put operation. $ is not a map"

    invoke-direct {p1, p2}, Lcom/jayway/jsonpath/InvalidModificationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public renameKey(Ljava/lang/String;Ljava/lang/String;Lcom/jayway/jsonpath/Configuration;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/PathRef;->parent:Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, v0}, Lcom/jayway/jsonpath/internal/PathRef;->targetInvalid(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/jayway/jsonpath/internal/PathRef;->renameInMap(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/jayway/jsonpath/Configuration;)V

    return-void
.end method

.method public set(Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/jayway/jsonpath/InvalidModificationException;

    const-string p2, "Invalid delete operation"

    invoke-direct {p1, p2}, Lcom/jayway/jsonpath/InvalidModificationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
