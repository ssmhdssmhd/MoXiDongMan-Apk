.class public Lcom/jayway/jsonpath/internal/path/ArrayPathToken;
.super Lcom/jayway/jsonpath/internal/path/PathToken;
.source "SourceFile"


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private final arrayIndexOperation:Lcom/jayway/jsonpath/internal/path/ArrayIndexOperation;

.field private final arraySliceOperation:Lcom/jayway/jsonpath/internal/path/ArraySliceOperation;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/jayway/jsonpath/internal/path/ArrayPathToken;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/jayway/jsonpath/internal/path/ArrayPathToken;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/jayway/jsonpath/internal/path/ArrayIndexOperation;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/path/PathToken;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/jayway/jsonpath/internal/path/ArrayPathToken;->arrayIndexOperation:Lcom/jayway/jsonpath/internal/path/ArrayIndexOperation;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/jayway/jsonpath/internal/path/ArrayPathToken;->arraySliceOperation:Lcom/jayway/jsonpath/internal/path/ArraySliceOperation;

    return-void
.end method

.method public constructor <init>(Lcom/jayway/jsonpath/internal/path/ArraySliceOperation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jayway/jsonpath/internal/path/PathToken;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/jayway/jsonpath/internal/path/ArrayPathToken;->arraySliceOperation:Lcom/jayway/jsonpath/internal/path/ArraySliceOperation;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/jayway/jsonpath/internal/path/ArrayPathToken;->arrayIndexOperation:Lcom/jayway/jsonpath/internal/path/ArrayIndexOperation;

    return-void
.end method


# virtual methods
.method public checkArrayModel(Ljava/lang/String;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/path/PathToken;->isUpstreamDefinite()Z

    move-result p2

    if-nez p2, :cond_0

    return v0

    .line 2
    :cond_0
    new-instance p2, Lcom/jayway/jsonpath/PathNotFoundException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The path "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is null"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/jayway/jsonpath/PathNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3
    :cond_1
    invoke-virtual {p3}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->isArray(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x1

    if-nez p1, :cond_3

    .line 4
    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/path/PathToken;->isUpstreamDefinite()Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    .line 5
    :cond_2
    new-instance p1, Lcom/jayway/jsonpath/PathNotFoundException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/path/PathToken;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    aput-object p2, v1, p3

    const-string p2, "Filter: %s can only be applied to arrays. Current context is: %s"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/jayway/jsonpath/PathNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return p3
.end method

.method public evaluate(Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p3, p4}, Lcom/jayway/jsonpath/internal/path/ArrayPathToken;->checkArrayModel(Ljava/lang/String;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/ArrayPathToken;->arraySliceOperation:Lcom/jayway/jsonpath/internal/path/ArraySliceOperation;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/jayway/jsonpath/internal/path/ArrayPathToken;->evaluateSliceOperation(Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/jayway/jsonpath/internal/path/ArrayPathToken;->evaluateIndexOperation(Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)V

    :goto_0
    return-void
.end method

.method public evaluateIndexOperation(Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p3, p4}, Lcom/jayway/jsonpath/internal/path/ArrayPathToken;->checkArrayModel(Ljava/lang/String;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/jayway/jsonpath/internal/path/ArrayPathToken;->arrayIndexOperation:Lcom/jayway/jsonpath/internal/path/ArrayIndexOperation;

    invoke-virtual {p2}, Lcom/jayway/jsonpath/internal/path/ArrayIndexOperation;->isSingleIndexOperation()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3
    iget-object p2, p0, Lcom/jayway/jsonpath/internal/path/ArrayPathToken;->arrayIndexOperation:Lcom/jayway/jsonpath/internal/path/ArrayIndexOperation;

    invoke-virtual {p2}, Lcom/jayway/jsonpath/internal/path/ArrayIndexOperation;->indexes()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/jayway/jsonpath/internal/path/PathToken;->handleArrayIndex(ILjava/lang/String;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)V

    goto :goto_1

    .line 4
    :cond_1
    iget-object p2, p0, Lcom/jayway/jsonpath/internal/path/ArrayPathToken;->arrayIndexOperation:Lcom/jayway/jsonpath/internal/path/ArrayIndexOperation;

    invoke-virtual {p2}, Lcom/jayway/jsonpath/internal/path/ArrayIndexOperation;->indexes()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p1, p3, p4}, Lcom/jayway/jsonpath/internal/path/PathToken;->handleArrayIndex(ILjava/lang/String;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public evaluateSliceOperation(Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1, p3, p4}, Lcom/jayway/jsonpath/internal/path/ArrayPathToken;->checkArrayModel(Ljava/lang/String;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/jayway/jsonpath/internal/path/ArrayPathToken$1;->$SwitchMap$com$jayway$jsonpath$internal$path$ArraySliceOperation$Operation:[I

    iget-object v1, p0, Lcom/jayway/jsonpath/internal/path/ArrayPathToken;->arraySliceOperation:Lcom/jayway/jsonpath/internal/path/ArraySliceOperation;

    invoke-virtual {v1}, Lcom/jayway/jsonpath/internal/path/ArraySliceOperation;->operation()Lcom/jayway/jsonpath/internal/path/ArraySliceOperation$Operation;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/path/ArrayPathToken;->arraySliceOperation:Lcom/jayway/jsonpath/internal/path/ArraySliceOperation;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/jayway/jsonpath/internal/path/ArrayPathToken;->sliceTo(Lcom/jayway/jsonpath/internal/path/ArraySliceOperation;Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/path/ArrayPathToken;->arraySliceOperation:Lcom/jayway/jsonpath/internal/path/ArraySliceOperation;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/jayway/jsonpath/internal/path/ArrayPathToken;->sliceBetween(Lcom/jayway/jsonpath/internal/path/ArraySliceOperation;Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)V

    goto :goto_0

    .line 5
    :cond_3
    iget-object v1, p0, Lcom/jayway/jsonpath/internal/path/ArrayPathToken;->arraySliceOperation:Lcom/jayway/jsonpath/internal/path/ArraySliceOperation;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/jayway/jsonpath/internal/path/ArrayPathToken;->sliceFrom(Lcom/jayway/jsonpath/internal/path/ArraySliceOperation;Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)V

    :goto_0
    return-void
.end method

.method public getPathFragment()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/ArrayPathToken;->arrayIndexOperation:Lcom/jayway/jsonpath/internal/path/ArrayIndexOperation;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/path/ArrayIndexOperation;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/ArrayPathToken;->arraySliceOperation:Lcom/jayway/jsonpath/internal/path/ArraySliceOperation;

    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/path/ArraySliceOperation;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isTokenDefinite()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jayway/jsonpath/internal/path/ArrayPathToken;->arrayIndexOperation:Lcom/jayway/jsonpath/internal/path/ArrayIndexOperation;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/jayway/jsonpath/internal/path/ArrayIndexOperation;->isSingleIndexOperation()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public sliceBetween(Lcom/jayway/jsonpath/internal/path/ArraySliceOperation;Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)V
    .locals 4

    .line 1
    invoke-virtual {p5}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object p3

    invoke-interface {p3, p4}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->length(Ljava/lang/Object;)I

    move-result p3

    .line 2
    invoke-virtual {p1}, Lcom/jayway/jsonpath/internal/path/ArraySliceOperation;->from()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Lcom/jayway/jsonpath/internal/path/ArraySliceOperation;->to()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 4
    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-ge v0, p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    sget-object v1, Lcom/jayway/jsonpath/internal/path/ArrayPathToken;->logger:Lorg/slf4j/Logger;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v2, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 p3, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p3

    const/4 p3, 0x3

    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/path/PathToken;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p3

    const-string p3, "Slice between indexes on array with length: {}. From index: {} to: {}. Input: {}"

    invoke-interface {v1, p3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    if-ge v0, p1, :cond_1

    .line 6
    invoke-virtual {p0, v0, p2, p4, p5}, Lcom/jayway/jsonpath/internal/path/PathToken;->handleArrayIndex(ILjava/lang/String;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public sliceFrom(Lcom/jayway/jsonpath/internal/path/ArraySliceOperation;Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)V
    .locals 4

    .line 1
    invoke-virtual {p5}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object p3

    invoke-interface {p3, p4}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->length(Ljava/lang/Object;)I

    move-result p3

    .line 2
    invoke-virtual {p1}, Lcom/jayway/jsonpath/internal/path/ArraySliceOperation;->from()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gez p1, :cond_0

    add-int/2addr p1, p3

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 4
    sget-object v1, Lcom/jayway/jsonpath/internal/path/ArrayPathToken;->logger:Lorg/slf4j/Logger;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    add-int/lit8 v3, p3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/path/PathToken;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "Slice from index on array with length: {}. From index: {} to: {}. Input: {}"

    invoke-interface {v1, v0, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_2

    if-lt p1, p3, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    if-ge p1, p3, :cond_2

    .line 5
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/jayway/jsonpath/internal/path/PathToken;->handleArrayIndex(ILjava/lang/String;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public sliceTo(Lcom/jayway/jsonpath/internal/path/ArraySliceOperation;Ljava/lang/String;Lcom/jayway/jsonpath/internal/PathRef;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)V
    .locals 4

    .line 1
    invoke-virtual {p5}, Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;->jsonProvider()Lcom/jayway/jsonpath/spi/json/JsonProvider;

    move-result-object p3

    invoke-interface {p3, p4}, Lcom/jayway/jsonpath/spi/json/JsonProvider;->length(Ljava/lang/Object;)I

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/jayway/jsonpath/internal/path/ArraySliceOperation;->to()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gez p1, :cond_1

    add-int/2addr p1, p3

    .line 3
    :cond_1
    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 4
    sget-object v0, Lcom/jayway/jsonpath/internal/path/ArrayPathToken;->logger:Lorg/slf4j/Logger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v3, 0x1

    aput-object p3, v1, v3

    const/4 p3, 0x2

    invoke-virtual {p0}, Lcom/jayway/jsonpath/internal/path/PathToken;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, p3

    const-string p3, "Slice to index on array with length: {}. From index: 0 to: {}. Input: {}"

    invoke-interface {v0, p3, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    if-ge v2, p1, :cond_2

    .line 5
    invoke-virtual {p0, v2, p2, p4, p5}, Lcom/jayway/jsonpath/internal/path/PathToken;->handleArrayIndex(ILjava/lang/String;Ljava/lang/Object;Lcom/jayway/jsonpath/internal/path/EvaluationContextImpl;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
