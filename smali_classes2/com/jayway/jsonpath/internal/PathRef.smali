.class public abstract Lcom/jayway/jsonpath/internal/PathRef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jayway/jsonpath/internal/PathRef$ObjectMultiPropertyPathRef;,
        Lcom/jayway/jsonpath/internal/PathRef$ObjectPropertyPathRef;,
        Lcom/jayway/jsonpath/internal/PathRef$ArrayIndexPathRef;,
        Lcom/jayway/jsonpath/internal/PathRef$RootPathRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/jayway/jsonpath/internal/PathRef;",
        ">;"
    }
.end annotation


# static fields
.field public static final NO_OP:Lcom/jayway/jsonpath/internal/PathRef;


# instance fields
.field public parent:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/internal/PathRef$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jayway/jsonpath/internal/PathRef$1;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/jayway/jsonpath/internal/PathRef;->NO_OP:Lcom/jayway/jsonpath/internal/PathRef;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/jayway/jsonpath/internal/PathRef;->parent:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/jayway/jsonpath/internal/PathRef$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/jayway/jsonpath/internal/PathRef;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static create(Ljava/lang/Object;I)Lcom/jayway/jsonpath/internal/PathRef;
    .locals 2

    .line 3
    new-instance v0, Lcom/jayway/jsonpath/internal/PathRef$ArrayIndexPathRef;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/jayway/jsonpath/internal/PathRef$ArrayIndexPathRef;-><init>(Ljava/lang/Object;ILcom/jayway/jsonpath/internal/PathRef$1;)V

    return-object v0
.end method

.method public static create(Ljava/lang/Object;Ljava/lang/String;)Lcom/jayway/jsonpath/internal/PathRef;
    .locals 2

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/internal/PathRef$ObjectPropertyPathRef;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/jayway/jsonpath/internal/PathRef$ObjectPropertyPathRef;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef$1;)V

    return-object v0
.end method

.method public static create(Ljava/lang/Object;Ljava/util/Collection;)Lcom/jayway/jsonpath/internal/PathRef;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/jayway/jsonpath/internal/PathRef;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/jayway/jsonpath/internal/PathRef$ObjectMultiPropertyPathRef;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/jayway/jsonpath/internal/PathRef$ObjectMultiPropertyPathRef;-><init>(Ljava/lang/Object;Ljava/util/Collection;Lcom/jayway/jsonpath/internal/PathRef$1;)V

    return-object v0
.end method

.method public static createRoot(Ljava/lang/Object;)Lcom/jayway/jsonpath/internal/PathRef;
    .locals 2

    .line 1
    new-instance v0, Lcom/jayway/jsonpath/internal/PathRef$RootPathRef;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/jayway/jsonpath/internal/PathRef$RootPathRef;-><init>(Ljava/lang/Object;Lcom/jayway/jsonpath/internal/PathRef$1;)V

    return-object v0
.end method


# virtual methods
.method public abstract add(Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;)V
.end method

.method public compareTo(Lcom/jayway/jsonpath/internal/PathRef;)I
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/PathRef;->getAccessor()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jayway/jsonpath/internal/PathRef;->getAccessor()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/jayway/jsonpath/internal/PathRef;

    invoke-virtual {p0, p1}, Lcom/jayway/jsonpath/internal/PathRef;->compareTo(Lcom/jayway/jsonpath/internal/PathRef;)I

    move-result p1

    return p1
.end method

.method public abstract convert(Lcom/jayway/jsonpath/MapFunction;Lcom/jayway/jsonpath/Configuration;)V
.end method

.method public abstract delete(Lcom/jayway/jsonpath/Configuration;)V
.end method

.method public abstract getAccessor()Ljava/lang/Object;
.end method

.method public abstract put(Ljava/lang/String;Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;)V
.end method

.method public renameInMap(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Lcom/jayway/jsonpath/Configuration;)V
    .locals 2

    .line 1
    invoke-virtual {p4}, Lcom/jayway/jsonpath/Configuration;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->isMap(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p4}, Lcom/jayway/jsonpath/Configuration;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->getMapValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/jayway/jsonpath/spi/json/JsonProvider;->UNDEFINED:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {p4}, Lcom/jayway/jsonpath/Configuration;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object v0

    invoke-virtual {p4}, Lcom/jayway/jsonpath/Configuration;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->getMapValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, p3, v1}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->setProperty(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p4}, Lcom/jayway/jsonpath/Configuration;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->removeProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Lcom/jayway/jsonpath/PathNotFoundException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "No results for Key "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " found in map!"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/jayway/jsonpath/PathNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Lcom/jayway/jsonpath/InvalidModificationException;

    const-string p2, "Can only rename properties in a map"

    invoke-direct {p1, p2}, Lcom/jayway/jsonpath/InvalidModificationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract renameKey(Ljava/lang/String;Ljava/lang/String;Lcom/jayway/jsonpath/Configuration;)V
.end method

.method public abstract set(Ljava/lang/Object;Lcom/jayway/jsonpath/Configuration;)V
.end method

.method public targetInvalid(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/jayway/jsonpath/spi/json/JsonProvider;->UNDEFINED:Ljava/lang/Object;

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
