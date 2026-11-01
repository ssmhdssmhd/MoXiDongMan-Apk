.class Lcom/jayway/jsonpath/internal/PathRef$ObjectMultiPropertyPathRef;
.super Lcom/jayway/jsonpath/internal/PathRef;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jayway/jsonpath/internal/PathRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ObjectMultiPropertyPathRef"
.end annotation


# instance fields
.field private properties:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/jayway/jsonpath/internal/PathRef;-><init>(Ljava/lang/Object;Lcom/jayway/jsonpath/internal/PathRef$1;)V

    .line 3
    iput-object p2, p0, Lcom/jayway/jsonpath/internal/PathRef$ObjectMultiPropertyPathRef;->properties:Ljava/util/Collection;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/util/Collection;Lcom/jayway/jsonpath/internal/PathRef$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/jayway/jsonpath/internal/PathRef$ObjectMultiPropertyPathRef;-><init>(Ljava/lang/Object;Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/jayway/jsonpath/InvalidModificationException;

    const-string p2, "Add can not be performed to multiple properties"

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
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/PathRef$ObjectMultiPropertyPathRef;->properties:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    invoke-virtual {p2}, Lcom/jayway/jsonpath/Configuration;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/jayway/jsonpath/internal/PathRef;->parent:Ljava/lang/Object;

    invoke-interface {v2, v3, v1}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->getMapValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 3
    invoke-virtual {p2}, Lcom/jayway/jsonpath/Configuration;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/jayway/jsonpath/internal/PathRef;->parent:Ljava/lang/Object;

    invoke-interface {p1, v2, p2}, Lcom/jayway/jsonpath/MapFunction;->map(Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v4, v1, v2}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->setProperty(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public delete(Lcom/jayway/jsonpath/Configuration;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/PathRef$ObjectMultiPropertyPathRef;->properties:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/jayway/jsonpath/Configuration;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/jayway/jsonpath/internal/PathRef;->parent:Ljava/lang/Object;

    invoke-interface {v2, v3, v1}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->removeProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAccessor()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/PathRef$ObjectMultiPropertyPathRef;->properties:Ljava/util/Collection;

    const-string v1, "&&"

    invoke-static {v1, v0}, Lcom/jayway/jsonpath/internal/Utils;->join(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/jayway/jsonpath/InvalidModificationException;

    const-string p2, "Put can not be performed to multiple properties"

    invoke-direct {p1, p2}, Lcom/jayway/jsonpath/InvalidModificationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public renameKey(Ljava/lang/String;Ljava/lang/String;Lcom/jayway/jsonpath/Configuration;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/jayway/jsonpath/InvalidModificationException;

    const-string p2, "Rename can not be performed to multiple properties"

    invoke-direct {p1, p2}, Lcom/jayway/jsonpath/InvalidModificationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/PathRef$ObjectMultiPropertyPathRef;->properties:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    invoke-virtual {p2}, Lcom/jayway/jsonpath/Configuration;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/jayway/jsonpath/internal/PathRef;->parent:Ljava/lang/Object;

    invoke-interface {v2, v3, v1, p1}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->setProperty(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
